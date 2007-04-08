
#(use-modules (srfi srfi-39) (ice-9 format))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Paper size
%% 
%% Default is A4
%% -d letter to use letter paper size.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *use-letter-paper* (make-parameter (ly:get-option 'letter)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% \global auto include
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = 
#(define-music-function (parser location) ()
  (let* ((global-symbol (string->symbol (format "global~a" (*current-piece*))))
         (global-music (ly:parser-lookup parser global-symbol)))
   (if (ly:music? global-music)
       global-music
       (let* ((global-file (include-pathname "global"))
              (global-music #{ \context Voice = "" \notemode { \include $global-file } #}))
         (ly:parser-define! parser global-symbol global-music)
         global-music))))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Semi-automatic vertical spacement
%%
%% -d write-tweaks to write the tweaks file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *write-tweaks* (make-parameter (ly:get-option 'write-tweaks)))

scoreInit = 
#(define-music-function (parser location) ()
   (let ((tweak-music (ly:parser-lookup parser (string->symbol (*current-piece*)))))
     (if (ly:music? tweak-music)
         (begin ;(format #t "Using tweak \\~a~%" (*current-piece*))
          tweak-music)
         (make-music 'SequentialMusic))))

#(define page-tweaks (list))

spacingTweaks = 
#(define-music-function (parser location props) (list?)
   (define (get-prop prop)
     (cdr (assoc prop props)))
   (let ((page-number (get-prop 'page-number))
         (space-left (get-prop 'page-space-left))
         (index (get-prop 'this-system-index))
         (system-count (get-prop 'system-count))
         (system-heights (get-prop 'system-heights))
         (system-paddings (get-prop 'system-paddings))
         (music-systems (get-prop 'music-systems)))
  (let* ((music-system-count (length (remove not music-systems)))
            (total-music-height (loop for music? in music-systems
                                      for height in system-heights
                                      if music? sum height))
            (sorted-data (sort (loop for i from 0
                                     for h in system-heights
                                     for m? in music-systems
                                  collect (list i h m?))
                               (lambda (e1 e2) (< (cadr e1) (cadr e2)))))
            (sorted-stretches (loop for rest-height = total-music-height 
                                      then (if music?
                                               (- rest-height height)
                                               rest-height)
                                    for left = space-left then (- left real-stretch)
                                    for i-h-m in sorted-data
                                    for i = (car i-h-m)
                                    for height = (cadr i-h-m)
                                    for music? = (caddr i-h-m)
                                    for stretch = (if (and music? (> rest-height 0))
                                                      (/ (* height left) 
                                                            rest-height)
                                                      0.0)
                                    for real-stretch = (if music?
                                                           (min stretch (* height 
                                                                           (/ height 100.0)))
                                                           0.0)
                                 collect (list i real-stretch)))
            (stretches-theo (map cadr (sort sorted-stretches
                                            (lambda (e1 e2)
                                              (< (car e1) (car e2))))))
            (stretches (if (< (apply + stretches-theo)
                              (- space-left 5.0))
                           stretches-theo
                           (map (lambda (s) (max 0.0 (- s 1.0)))
                                stretches-theo))))
       #{
         \overrideProperty #"Score.NonMusicalPaperColumn"
           #'line-break-system-details
           #$(list (cons 'alignment-extra-space (list-ref stretches index))
                   (cons 'next-padding (list-ref system-paddings index)))
       #})))

includeTweaks = 
#(define-music-function (parser location) ()
  (if (not (*write-tweaks*))
   (let ((tweak-filename (format #f "~a-page-layout.ly" (ly:parser-output-name parser))))
     (if (access? tweak-filename R_OK)
        (begin
          (format #t "Including tweak file ~a~%" tweak-filename)
          (ly:parser-parse-string parser
            (format #f "\\include \"~a\"" tweak-filename))))))
   (make-music 'SequentialMusic 'void #t))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Clefs
%%
%% -d modern-clefs to use modern (only G and F) clefs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *use-modern-clefs* (make-parameter (ly:get-option 'modern-clefs)))

ancientClef = #(define-music-function (parser location) ()
                (*use-modern-clefs* #f)
                (make-music 'SequentialMusic 'void #t))

modernClef = #(define-music-function (parser location) ()
                (*use-modern-clefs* #t)
                (make-music 'SequentialMusic 'void #t))

withClefTag = #(define-music-function (parser location music) (ly:music?)
                #{ \removeWithTag #$(*remove-clef-tag*) $music #})

%%% Voices

basDessus =
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \clef treble $music #}
   #{ \clef soprano $music #}))

petiteHauteContre =
 #(define-music-function (parser location music) (ly:music?)
   (if (*use-modern-clefs*)
    #{ \clef treble $music #}
    #{ \clef mezzosoprano $music #}))

voixHauteContre = 
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \clef "G_8" $music #}
   #{ \clef alto $music #}))

voixTaille = 
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \clef "G_8" $music #}
   #{ \clef tenor $music #}))

%%% Instruments

dessus = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \clef treble $music #}
            #{ \clef french $music #}))

hauteContre = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \clef treble $music #}
            #{ \clef soprano $music #}))

taille = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \clef "G_8" $music #}
            #{ \clef mezzosoprano $music #}))

quinte = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \clef "G_8" $music #}
            #{ \clef alto $music #}))

basse = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \clef bass $music #}
            #{ \clef bass $music #}))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Usual staff groups
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dessusHauteContreTailleBasse =
#(define-music-function (parser location) ()
  #{ \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \hauteContre \includeNotes #"haute-contre" >>
    \newStaff << \global \taille \includeNotes #"taille" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >> #})

dessusHauteContreTailleQuinteBasse =
#(define-music-function (parser location) ()
  #{ \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \hauteContre \includeNotes #"haute-contre" >>
    \newStaff << \global \taille \includeNotes #"taille" >>
    \newStaff << \global \quinte \includeNotes #"quinte" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >> #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Repeats
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

firstAndSecondTime = #(define-music-function (parser location first second) (ly:music? ly:music?)
                    #{ \set Score.repeatCommands = #'((volta "1."))
                       $first
                       \bar ":|"
                       \set Score.repeatCommands = #'((volta #f) (volta "2."))
                       $second
                       \set Score.repeatCommands = #'((volta #f)) 
                    #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Shortcuts for including scores, notes, etc.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *current-opus* (make-parameter ""))
#(define *current-piece* (make-parameter ""))

#(define (include-pathname name)
   (string-append (if (string-null? (*current-opus*))
                      ""
                      (string-append (*current-opus*) "/"))
                  (if (string-null? (*current-piece*))
                      ""
                      (string-append (*current-piece*) "/"))
                  name ".ily"))

includeNotes = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
   #{ \context Voice = "" \notemode { \include $include-file } #}))

includeLyrics = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
   #{ \lyricmode { \include $include-file } #}))

includeFigures = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
   #{ \context Voice = "" \markupfigures \figuremode { \include $include-file } #}))

currentOpus = #(define-music-function (parser location name) (string?)
                 (*current-opus* name)
                 (make-music 'SequentialMusic 'void #t))

#(define *include-score?* (make-parameter #t))

includeScore = #(define-music-function (parser location name) (string?)
                  (if (*include-score?*)
                      (parameterize ((*current-piece* name))
                        (ly:parser-parse-string (ly:clone-parser parser) 
                          (string-append "\\include \"" 
                            (include-pathname "score") 
                            "\""))))
                  (make-music 'SequentialMusic 'void #t))

IncludeScores = #(define-music-function (parser location) ()
                  (*include-score?* #t)
                  (make-music 'SequentialMusic 'void #t))

dontIncludeScores = #(define-music-function (parser location) ()
                  (*include-score?* #f)
                  (make-music 'SequentialMusic 'void #t))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Shortcuts for defining staves
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(use-modules (ice-9 format))
#(define gen-unique-context
  ;; Generate a uniqueSchemeContextXX symbol, that may be (hopefully) unique.
  (let ((var-idx -1))
    (lambda ()
      (set! var-idx (1+ var-idx))
      (string->symbol (format #f "uniqueSchemeContext~a"
                              (list->string (map (lambda (chr)
                                                   (integer->char (+ (char->integer #\a) (- (char->integer chr)
                                                                                            (char->integer #\0)))))
                                                 (string->list (number->string var-idx)))))))))

newStaff = 
#(define-music-function (parser location music) (ly:music?)
   #{ \new Staff << $music >> #})

newStaffWithLyrics = 
#(define-music-function (parser location music lyrics) (ly:music? ly:music?)
   (let ((name (symbol->string (gen-unique-context))))
     #{  << \context Voice = $name << 
               \set Voice . autoBeaming = ##f
               $music >>
            \lyricsto $name \new Lyrics $lyrics
         >> #}))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Markup commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Scene description in titles
#(define-markup-command (medium paper props arg) (markup?)
  "Switch to medium font-series"
  (interpret-markup paper (prepend-alist-chain 'font-series 'medium props) arg))

%% for book and score titling
#(define-markup-command (when-property layout props symbol markp) (symbol? markup?)
  (if (chain-assoc-get symbol props)
      (interpret-markup layout props markp)
      (ly:make-stencil '()  '(1 . -1) '(1 . -1))))

%% vertical space skip
#(define-markup-command (vspace layout props amount) (number?)
  "This produces a invisible object taking vertical space."
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))

%% Verses

#(define-markup-command (verTitre layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 1
                     #:fill-line (#:null #:fontsize 4 arg #:null)
                     #:vspace 0.5))))

#(define-markup-command (ver layout props markp) (markup?)
  (interpret-markup layout props
   (markup #:fontsize 1 #:line (#:hspace 40 markp))))

#(define-markup-command (verCourt layout props markp) (markup?)
  (interpret-markup layout props
   (markup #:fontsize 1 #:line (#:hspace 50 markp))))

#(define-markup-command (verTexte layout props markups) (markup-list?)
  (interpret-markup layout props 
   (make-column-markup (map-in-order (lambda (m)
                                       (make-ver-markup m))
                                     markups))))

#(define-markup-command (verInv layout props arg1 arg2) (markup? markup?)
  (interpret-markup layout props 
   (markup #:ver #:line (#:invisible arg1 arg2))))

#(define-markup-command (personnage layout props markp) (markup?)
  (interpret-markup layout props
   (markup #:fill-line (#:null
                        #:fontsize 2 #:italic markp
                        #:null))))

#(define-markup-command (invisible layout props arg) (markup?)
  (interpret-markup layout props (make-with-color-markup white arg)))

#(define-markup-command (texte layout props arg) (markup?)
  (interpret-markup layout props arg))

#(define-markup-command (didascalie layout props arg) (markup?)
  (interpret-markup layout props 
   (markup #:column (#:fill-line (#:override '(linewidth . 80) #:italic arg)))))

%% Actes, scènes
#(define-markup-command (act layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 3
                     #:fill-line (#:fontsize 6 arg)))))

#(define-markup-command (scene layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 1
                     #:fill-line (#:fontsize 4 arg)
                     #:vspace 1))))

#(define-markup-command (scenePersonnages layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:fill-line (#:override '(linewidth . 50)
                                  #:italic #:fontsize 2 arg)
                     #:vspace 1))))

#(define-markup-command (titre layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 1
                     #:fill-line (#:italic #:fontsize 3 arg)
                     #:vspace 1))))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page breaks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *page-break-next* (make-parameter #f))

pageBreakNext =
#(define-music-function (parser location) ()
  (*page-break-next* #t)
  (make-music 'SequentialMusic 'void #t))

pageBreakNextAFour =
#(define-music-function (parser location) ()
  (if (not (*use-letter-paper*))
      (*page-break-next* #t))
  (make-music 'SequentialMusic 'void #t))

pageBreakNextLetter =
#(define-music-function (parser location) ()
  (if (*use-letter-paper*)
      (*page-break-next* #t))
  (make-music 'SequentialMusic 'void #t))

#(define (break-before?)
  (let ((break (*page-break-next*)))
   (*page-break-next* #f)
   break))

%% hack to add page breaks between scores or markups

#(define (page-break-hack parser)
  (ly:parser-parse-string (ly:clone-parser parser) "
\\score {
  { 
    \\noPageBreak
    \\overrideProperty #\"Score.NonMusicalPaperColumn\"
    #'line-break-system-details
    #'((Y-extent . (0 . 0)) (refpoint-Y-extent . (0 . 0))
       (next-padding . 0) (next-space . 0.1))
    s4 \\bar \"\"
    \\pageBreak
    \\overrideProperty #\"Score.NonMusicalPaperColumn\"
    #'line-break-system-details
    #'((Y-extent . (0 . 0)) (refpoint-Y-extent . (0 . 0))
       (next-padding . 0) (next-space . 0.1))
    s4 }
  \\layout {
    \\context {
      \\Staff
      \\remove Time_signature_engraver
      \\remove Key_engraver
      \\remove Clef_engraver
      \\remove Staff_symbol_engraver
    }
  }
}
"))

pageBreakHack = 
#(define-music-function (parser location) ()
  (page-break-hack parser)
  (make-music 'SequentialMusic 'void #t))

pageBreakHackAFour = 
#(define-music-function (parser location) ()
  (if (not (*use-letter-paper*))
      (page-break-hack parser))
  (make-music 'SequentialMusic 'void #t))

pageBreakHackLetter = 
#(define-music-function (parser location) ()
  (if (*use-letter-paper*)
      (page-break-hack parser))
  (make-music 'SequentialMusic 'void #t))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Custos note heads
custosNote = 
#(define-music-function (parser location note) (ly:music?)
  (make-music 'SequentialMusic
   'elements (list #{ 
              \once \override Voice.NoteHead #'print-function = 
              #ly:text-interface::print
              \once \override Voice.NoteHead #'text = 
              #(markup #:null #:raise 0.0 
                #:musicglyph "custodes.mensural.u0")
              \once \override Voice.Stem #'print-function = ##f #}
              note)))
