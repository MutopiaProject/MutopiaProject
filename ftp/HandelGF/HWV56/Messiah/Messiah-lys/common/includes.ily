%%% -*- Mode: scheme -*-
%%% includes.ily -- commands for including files from a project hierarchy
%%%
%%% Author: Nicolas Sceaux <nicolas.sceaux@free.fr>
%%%
%%% Directory hierarchy:
%%%   Composer > Category > Opus > Piece
%%%
%%% For instance:
%%%
%%%   Lully/Ballets/AmourMalade/AAouverture
%%%
%%% LilyPond should be invoked from the hierarchy root,
%%% or the hierarchy root should be in LilyPond include path.
%%%
%%% Special variables
%%% =================
%%%   (*composer*)
%%%     the composer identifier in the project herarchy (a string)
%%%
%%%   (*category*)
%%%     the category identifier in the project herarchy (a string)
%%%
%%%   (*opus*)
%%%     the opus identifier in the project herarchy (a string)
%%%
%%%   (*piece*)
%%%     the piece identifier in the project herarchy (a string)
%%%
%%% Scheme functions
%%% ================
%%%
%%%  (include-pathname name)
%%%    Composer, category, opus and piece special variables being set,
%%%    possibly to an empty string, return the complete pathname of
%%%    file <name>.ily
%%%
%%%  (include-score parser name)
%%%    Set the piece special variable to `name', then parse the 
%%%    following LilyPond code:
%%%       \include "<complete piece pathname>/score.ily"
%%%
%%% Music functions
%%% ===============
%%% Functions setting the current composer, category and opus:
%%%
%%%   \setComposer "composer"
%%%     define the current composer
%%%
%%%   \setCategory "category"
%%%   \setCategory "composer/category"
%%%     define the current category, and possibly the current composer
%%%
%%%   \setOpus "opus"
%%%   \setOpus "category/opus"
%%%   \setOpus "composer/category/opus"
%%%     define the current opus, and possibly the current composer and
%%%     category
%%%
%%% Functions for parsing a piece score:
%%%
%%%   \includeScore "piece"
%%%     set the current piece to `piece', and parse the file
%%%     "<piece pathname>/score.ily"
%%%
%%% Functions parsing a file and returning its music:
%%%
%%%   \global
%%%     Return the music of the current piece "global.ily" file,
%%%     parsing it if that has not been done yet.
%%%
%%%   \includeNotes "name"
%%%     == \notemode { \include "<piece pathname>/name.ily" }
%%%
%%%   \includeLyrics "name"
%%%     == \lyricmode { \include "<piece pathname>/name.ily" }
%%%
%%%   \includeFigures "name"
%%%     == \figuremode { \include "<piece pathname>/name.ily" }
%%%
%%% Depedencies
%%% ===========
%%% None

%%%
%%%
%%%
#(use-modules (srfi srfi-39)
              (ice-9 optargs)
              (ice-9 regex))

#(define *composer* (make-parameter ""))
#(define *category* (make-parameter ""))
#(define *opus* (make-parameter ""))
#(define *piece* (make-parameter ""))

#(define-public (include-pathname name)
   (let ((hierarchy (list (*composer*)
                          (*category*)
                          (*opus*)
                          (*piece*))))
     (string-append
      (apply string-append
             (map (lambda (dir)
                    (if (string-null? dir)
                        ""
                        (string-append dir "/")))
                  hierarchy))
      name
      ".ily")))

#(define*-public (include-score parser name #:optional label)
   (add-music parser
              (make-music 'Music
                          'page-marker #t
                          'page-label (string->symbol (or label name))))
   (parameterize ((*piece* name))
     (ly:parser-parse-string
      (ly:parser-clone parser)
      (format #f "\\include \"~a\""
              (include-pathname "score")))))

%%%
%%% Separate parts
%%%
#(define *opus-part-specs* (make-parameter #f)) % all part global specs
#(define *part* (make-parameter #f)) % The chosen part identifer
#(define *part-name* (make-parameter "")) % The chosen part name
#(define *piece-description* (make-parameter #f)) % the current piece description
#(define *note-filename* (make-parameter #f))
#(define *instrument-name* (make-parameter #f))
#(define *score-ragged* (make-parameter #f))
#(define *score-indent* (make-parameter #f))
#(define *score-extra-music* (make-parameter #f))
#(define *tag-global* (make-parameter #f))
#(define *tag-notes* (make-parameter #f))
#(define *figures* (make-parameter #f))
#(define *clef* (make-parameter #f))

#(define*-public (include-part-score parser
                                    name
                                    score-filename
                                    from-templates
                                    #:optional label)
   (add-music parser
              (make-music 'Music
                          'page-marker #t
                          'page-label (string->symbol (or label name))))
   (parameterize ((*piece* name))
     (ly:parser-parse-string
      (ly:parser-clone parser)
      (format #f "\\include \"~a\""
              (if from-templates
                  (string-append "templates/" score-filename ".ily")
                  (include-pathname score-filename))))))

#(define* (make-piece piece-spec
                      #:key
                      (score #f)
                      (score-template "score")
                      notes
                      (instrument #f)
                      (ragged #f)
                      (clef "treble")
                      (figures "chiffres")
                      (tag-global #f)
                      (tag-notes #f))
  "Return an associative list defining a part piece, with the following keys:
 - name          the piece name.
 - score         the part piece filename (without directory, nor extension)
                   Default: \"score\"
 - from-template should the score filename be found in templates directory?
                   Is #t when #:score has been explicitely specified, #f otherwise.
 - ragged        the value of the layout ragged-last variable
                   Default: #f
 - indent        the value of the layout indent variable
                   Default: #f (which means that the globally defined indent is used)
 - tag-global    the tag to be used when including the 'global.ily' file:
                   \\keepWithTag #tag \\global
                   Default: #f (do not use a tag)
 - tag-notes     the tag to be used when including the note file:
                   Default: #f (do not use a tag)
 - notes         the note filename (without directory, nor extension)
                   Default: default-note-filename
 - instrument    the instrument name to be printed before the first staff
                   Default: #f (do not print instrument name)

`piece-spec' should be a list, which first-element is the piece name,
then consisting of alterning keywords and values, the keywords being any
combination from the following list:
  #:score #:score-template #:ragged #:indent #:tag-global #:tag-notes
  #:notes #:instrument #:music
#:music allows to include some extra music
The keyword arguments give default values to be used when non-specified in `piece-spec'."
  (let ((score (or score score-template))
        (from-templates (not score))
        (ragged ragged)
        (indent #f)
        (tag-global tag-global)
        (tag-notes tag-notes)
        (notes notes)
        (clef clef)
        (instrument instrument)
        (music #f))
    (if clef (*clef* clef)) ;; hack: set *clef* for silence scores
    (let parse-props ((props piece-spec))
      (if (not (or (null? props) (null? (cdr props))))
          (begin
            (case (car props)
              ((#:notes) (set! notes (cadr props)))
              ((#:clef) (set! clef (cadr props)))
              ((#:ragged) (set! ragged (cadr props)))
              ((#:indent) (set! indent (cadr props)))
              ((#:tag-global) (set! tag-global (cadr props)))
              ((#:tag-notes) (set! tag-notes (cadr props)))
              ((#:score)
               (set! score (cadr props))
               (set! from-templates #f))
              ((#:score-template)
               (set! score (cadr props))
               (set! from-templates #t))
              ((#:instrument) (set! instrument (cadr props)))
              ((#:music) (set! music (cadr props))))
            (parse-props (cddr props)))))
    `((score . ,score)
      (from-templates . ,from-templates)
      (ragged . ,ragged)
      (indent . ,indent)
      (tag-global . ,tag-global)
      (tag-notes . ,tag-notes)
      (notes . ,notes)
      (clef . ,clef)
      (instrument . ,instrument)
      (figures . ,figures)
      (music . ,music))))

piecePartSpecs =
#(define-music-function (parser location piece-specs) (list?)
   "Define the part spec for a piece, by setting the *piece-description* special variable"
   (define (get-part-opus-spec part)
     (let ((spec (assoc part (*opus-part-specs*))))
       (and spec (cdr spec))))
   (define (get-fallbacks part)
     (let ((part-opus-spec (get-part-opus-spec part)))
       (or (and part-opus-spec (cadr part-opus-spec)) (list))))
   (define (get-defaults part)
     (let ((part-opus-spec (get-part-opus-spec part)))
       (or (and part-opus-spec (caddr part-opus-spec)) (list))))
   
   (define (get-part-piece parts piece-specs)
     (if (null? parts)
         ;; default silent piece
         (make-piece (list #:ragged #t
                           #:notes "silence"
                           #:score-template "score-silence")
                     #:clef #f)
         (let* ((part (caar parts))
                (part-name (cadar parts))
                (forced-clef (if (null? (cddar parts)) #f (caddar parts)))
                (spec-result (assoc part piece-specs))
                (spec (and spec-result (cdr spec-result))))
           (if spec
               (let* ((default-spec (append (get-defaults part)
                                            (if forced-clef
                                                (list #:clef forced-clef)
                                                (list))))
                       (piece (apply make-piece spec default-spec)))
                 (if (and part-name (not (assoc-ref piece 'instrument)))
                     (assoc-set! piece 'instrument part-name))
                 piece)
               (get-part-piece (cdr parts) piece-specs)))))
   
   (let* ((part-opus-spec (get-part-opus-spec (*part*)))
          (parts (append (list (list (*part*) #f))
                         (get-fallbacks (*part*))
                         (list (list 'silence #f)))))
     (*piece-description* (get-part-piece parts piece-specs)))
   (make-music 'Music 'void #t))

opusPartSpecs =
#(define-music-function (parser location opus-specs) (list?)
   (let* ((silence-specs '(silence "" ()
                                   (#:ragged #t #:notes "silence"
                                    #:score-template "score-silence")))
          (full-opus-specs (if (not (assoc 'silence opus-specs))
                               (cons silence-specs opus-specs)
                               opus-specs)))
     (*opus-part-specs* full-opus-specs))
   (let* ((name (ly:get-option 'part))
          (spec (assoc name (*opus-part-specs*))))
     (cond (spec
            (*part* name)
            (*part-name* (cadr spec)))
           (name
            (ly:warning "No `~a' part defined for this opus" name))))
   (make-music 'Music 'void #t))

%%%
%%% Music functions
%%%

global = 
#(define-music-function (parser location) ()
  (let* ((global-symbol (string->symbol (format "global~a~a" (*opus*) (*piece*))))
         (global-music (ly:parser-lookup parser global-symbol)))
   (if (not (ly:music? global-music))
       (let* ((global-file (include-pathname "global")))
         (set! global-music #{ \notemode { \staffStart \include $global-file } #})
         (ly:parser-define! parser global-symbol global-music)))
   (ly:music-deep-copy global-music)))

includeNotes = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
   #{ \notemode { \include $include-file } #}))

includeLyrics = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
   #{ \lyricmode { \include $include-file } #}))

includeFigures = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
     #{ \figuremode { \include $include-file } #}))

setComposer =
#(define-music-function (parser location name) (string?)
   (*composer* name)
   (make-music 'Music 'void #t))

setCategory =
#(define-music-function (parser location name) (string?)
   (let ((match (string-match "^(.*)/(.*)$" name)))
     (if match
         (begin ;; composer/category
           (*composer* (match:substring match 1))
           (*category* (match:substring match 2)))
         ;; category
         (*category* name)))
   (make-music 'Music 'void #t))

setOpus =
#(define-music-function (parser location name) (string?)
   (let ((match (string-match "^(.*)/(.*)/(.*)$" name)))
     (if match
         (begin ;; composet/category/opus
           (*composer* (match:substring match 1))
           (*category* (match:substring match 2))
           (*opus* (match:substring match 3)))
         (let ((match (string-match "^(.*)/(.*)$" name)))
           (if match
               (begin ;; category/opus
                 (*category* (match:substring match 1))
                 (*opus* (match:substring match 2)))
               ;; opus
               (*opus* name)))))
   (make-music 'Music 'void #t))

#(define (include-score-helper parser name label allow-page-turn)
   ;;(format #t "Including score `~a'~%" name)
   (parameterize ((*piece* name))
     ;;(format #t "Reading ~a~%" name)
     (if (*part*)
         (begin ;; a part score
           ;; Include the parts.ily file, describing
           ;; the parts defined for this piece.
           ;; It should contain a call to \piecePartSpec
           ;; which set *piece-description*
           (ly:parser-parse-string (ly:parser-clone parser)
                                   (format #f "\\include \"~a\""
                                           (include-pathname "parts")))
           (let ((piece (*piece-description*)))
             (parameterize ((*score-ragged* (assoc-ref piece 'ragged))
                            (*note-filename* (assoc-ref piece 'notes))
                            (*instrument-name* (assoc-ref piece 'instrument))
                            (*score-indent* (assoc-ref piece 'indent))
                            (*tag-global* (assoc-ref piece 'tag-global))
                            (*tag-notes* (assoc-ref piece 'tag-notes))
                            (*figures* (assoc-ref piece 'figures))
                            (*clef* (or (assoc-ref piece 'clef) (*clef*) "treble"))
                            (*score-extra-music* (assoc-ref piece 'music)))
               (include-part-score parser
                                   name
                                   (assoc-ref piece 'score)
                                   (assoc-ref piece 'from-templates))))
           (if allow-page-turn
               (add-allow-page-turn parser)))
         ;; conductor score
         (if label
             (include-score parser name label)
             (include-score parser name))))
   (make-music 'Music 'void #t))

includeScore =
#(define-music-function (parser location name) (string?)
   (include-score-helper parser name #f #t))

includeScoreNoPageTurn =
#(define-music-function (parser location name) (string?)
   (include-score-helper parser name #f #f))

reIncludeScore =
#(define-music-function (parser location name label) (string? string?)
   (include-score-helper parser name label #t))

%%%
%%%
%%%
#(define (toplevel-score-handler parser score)
    (cond ((ly:parser-lookup parser '$current-bookpart)
          ((ly:parser-lookup parser 'bookpart-score-handler)
           (ly:parser-lookup parser '$current-bookpart) score))
          ((ly:parser-lookup parser '$current-book)
           ((ly:parser-lookup parser 'book-score-handler)
            (ly:parser-lookup parser '$current-book) score))
          (else
           (collect-scores-for-book parser score))))
