
#(use-modules (srfi srfi-39) (ice-9 format))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Paper size
%% 
%% Default is A4
%% -d letter to use letter paper size.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *use-letter-paper* (make-parameter (ly:get-option 'letter)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Tags
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define (symbol-or-symbols? x)
   (or (null? x)
       (symbol? x)
       (and (list? x) (every symbol? x))))

keepWithTag =
#(define-music-function (parser location tags music)
                        (symbol-or-symbols? ly:music?)
   (music-filter
    (lambda (m)
      (let ((m.tags (ly:music-property m 'tags)))
        (cond ((symbol? tags)
               (or (null? m.tags) (memq tags m.tags)))
              ((null? tags)
               (null? m.tags))
              ((list? tags)
               (or (null? m.tags) (has-some-member? tags m.tags)))
              (else #t))))
    music))

tag =
#(define-music-function (parser location tags arg)
                        (symbol-or-symbols? ly:music?)
   "Add @var{tags} (a single tag or a list of tags) to the @code{tags} 
property of @var{arg}."
   (set! (ly:music-property arg 'tags)
         (if (symbol? tags)
             (cons tags (ly:music-property arg 'tags))
             (append tags (ly:music-property arg 'tags))))
   arg)

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
%% Auto score tweak include
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreInit = 
#(define-music-function (parser location) ()
   (let ((tweak-music (ly:parser-lookup parser (string->symbol (*current-piece*)))))
     (if (ly:music? tweak-music)
         (begin ;(format #t "Using tweak \\~a~%" (*current-piece*))
          tweak-music)
         (make-music 'SequentialMusic))))

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

voixDessus =
 #(define-music-function (parser location music) (ly:music?)
    (if (*use-modern-clefs*)
        #{ \set Staff.forceClef = ##t \clef treble $music #}
        #{ \set Staff.forceClef = ##t \clef treble $music #}))

basDessus =
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \set Staff.forceClef = ##t \clef treble $music #}
   #{ \set Staff.forceClef = ##t \clef soprano $music #}))

petiteHauteContre =
 #(define-music-function (parser location music) (ly:music?)
   (if (*use-modern-clefs*)
    #{ \set Staff.forceClef = ##t \clef treble $music #}
    #{ \set Staff.forceClef = ##t \clef mezzosoprano $music #}))

voixHauteContre = 
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \set Staff.forceClef = ##t \clef "G_8" $music #}
   #{ \set Staff.forceClef = ##t \clef alto $music #}))

voixBasseTaille = 
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \set Staff.forceClef = ##t \clef bass $music #}
   #{ \set Staff.forceClef = ##t \clef varbaritone $music #}))

voixTaille = 
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \set Staff.forceClef = ##t \clef "G_8" $music #}
   #{ \set Staff.forceClef = ##t \clef tenor $music #}))

%%% Instruments

dessus = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef treble $music #}
            #{ \set Staff.forceClef = ##t \clef french $music #}))

hauteContre = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef treble $music #}
            #{ \set Staff.forceClef = ##t \clef soprano $music #}))

taille = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef treble $music #}
            #{ \set Staff.forceClef = ##t \clef mezzosoprano $music #}))

quinte = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef "G_8" $music #}
            #{ \set Staff.forceClef = ##t \clef alto $music #}))

basse = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef bass $music #}
            #{ \set Staff.forceClef = ##t \clef bass $music #}))

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
                         (format #f "\\include \"~a\""
                          (include-pathname "score")))))
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

newHaraKiriStaff = 
#(define-music-function (parser location music) (ly:music?)
   #{ \new Staff \with { 
        \remove "Axis_group_engraver"
        \consists "Hara_kiri_engraver"
        \override Beam #'auto-knee-gap = #'()
        \override VerticalAxisGroup #'remove-empty = ##t
        \override VerticalAxisGroup #'remove-first = ##t
      } $music #})

newStaffWithLyrics = 
#(define-music-function (parser location music lyrics) (ly:music? ly:music?)
   (let ((name (symbol->string (gen-unique-context))))
     #{  << \context Voice = $name << 
               \set Voice . autoBeaming = ##f
               $music >>
            \lyricsto $name \new Lyrics $lyrics
         >> #}))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Instrument names
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define-markup-command (hcenter-pad layout props width arg)
  (number? markup?)
  (let* ((arg-stencil (interpret-markup layout props arg))
         (w (interval-length (ly:stencil-extent arg-stencil X)))
         (pad-stencil (ly:make-stencil "" 
                       (cons 0 (if (> w width)
                                0
                                (/ (- width w) 2.0)))
                       '(-0.1 . 0.1))))
   (stack-stencil-line 0 
    (list pad-stencil arg-stencil pad-stencil))))

#(define-markup-command (right-pad layout props pad arg)
  (number? markup?)
  (interpret-markup layout props (markup arg #:hspace pad)))

%% for more-than-one-line instrument names
#(define-markup-command (instruments layout props texts) (markup-list?)
  (interpret-markup layout props
   (make-column-markup
    (map (lambda (m) (markup #:hcenter-pad 15 #:huge m))
     texts))))

#(define-markup-command (instrument-name layout props text) (markup?)
  (interpret-markup layout props
   (markup #:right-pad 1 #:instruments (text))))

#(define-markup-command (character-name layout props text) (markup?)
  (let ((char-markup (if (string? text)
                         (markup #:smallCaps text)
                         text)))
   (interpret-markup layout props
    (markup  #:right-pad 1 #:instruments (char-markup)))))

instrumentName =
#(define-music-function (parser location name) (markup?)
  #{ 
  \set Staff . instrumentName = #(markup #:instrument-name $name)
  #})

characterName =
#(define-music-function (parser location name) (markup?)
  #{ 
  \set Staff . instrumentName = #(markup #:character-name $name)
  #})

characterMark =
#(define-music-function (parser location name) (string?)
  #{ 
  s1*0 ^\markup { \null \translate #'(-4 . 2) \huge \smallCaps $name }
  #})

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
   (markup #:column (#:fill-line (#:override '(line-width . 80) #:italic arg)))))

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
   (markup #:column (#:fill-line (#:override '(line-width . 50)
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
  #{
  \overrideProperty #"Score.NonMusicalPaperColumn"
  #'line-break-system-details #'((void . #t) (break-before . #t))
  r 
  #})

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
              \once \override Voice.NoteHead #'stencil = 
              #ly:text-interface::print
              \once \override Voice.NoteHead #'text = 
              #(markup #:null #:raise 0.0 
                #:musicglyph "custodes.mensural.u0")
              \once \override Voice.Stem #'stencil = ##f #}
              note)))

%%%
%%% Segno, da capo
%%%

segnoMark = { 
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #1
  \once \override Score . RehearsalMark #'self-alignment-X = #0
  \mark \markup \musicglyph #"scripts.segno"
}

fineMark = {
    \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Score . RehearsalMark #'direction = #-1
    \once \override Score . RehearsalMark #'no-spacing-rods = ##t
    \once \override Score . RehearsalMark #'self-alignment-X = #1
    \once \override Score . RehearsalMark #'padding = #2
    \mark \markup { \italic Fin. \translate #(cons -1 2) \null }
}

dalSegnoMark = {
    \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Score . RehearsalMark #'direction = #-1
    \once \override Score . RehearsalMark #'no-spacing-rods = ##t
    \once \override Score . RehearsalMark #'self-alignment-X = #1
    \once \override Score . RehearsalMark #'padding = #2
    \mark \markup { \italic "Dal Segno." \translate #(cons -1 2) \null }
}

dacapoMark = {
    \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Score . RehearsalMark #'direction = #-1
    \once \override Score . RehearsalMark #'no-spacing-rods = ##t
    \once \override Score . RehearsalMark #'self-alignment-X = #1
    \once \override Score . RehearsalMark #'padding = #2
    \mark \markup { \italic "Da Capo." \translate #(cons -1 2) \null }
}