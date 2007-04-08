%% -*- Mode: scheme -*-
#(use-modules (ice-9 format)
              (srfi srfi-39))

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
   (if (not (ly:music? global-music))
       (let* ((global-file (string-append (*current-piece*) "/global.ily")))
         (set! global-music #{ \context Voice = "" \notemode { \include $global-file } #})
         (ly:parser-define! parser global-symbol global-music)))
   (ly:music-deep-copy global-music)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Misc commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

unis=\markup "unis."

twoVoices =
#(define-music-function (parser location voice1 voice2) (ly:music? ly:music?)
   #{ << \new Voice { \voiceOne $voice1 }
         { \voiceTwo $voice2 } >> \oneVoice #})

#(use-modules (srfi srfi-1))
#(define* (has-some-member? list1 list2 #:key (test eqv?))
   "Return a true value iif there exists an element of list1 that also 
belongs to list2 under test."
   (if (null? list1)
       #f
       (or (member (car list1) list2 test)
           (has-some-member? (cdr list1) list2 #:test test))))

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
%% Shortcuts for including notes, lyrics, figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(use-modules (srfi srfi-39))

#(define *current-piece* (make-parameter ""))

includeNotes =
#(define-music-function (parser location pathname) (string?)
   (let ((include-file (string-append (*current-piece*) "/" pathname ".ily")))
     #{ \context Voice = "" \notemode { \include $include-file } #}))

includeNotesWithName =
#(define-music-function (parser location pathname context-name) (string? symbol?)
   (let ((include-file (string-append (*current-piece*) "/" pathname ".ily")))
     #{ \context Voice = $(symbol->string context-name) \notemode { \include $include-file } #}))

includeLyrics =
#(define-music-function (parser location pathname) (string?)
   (let ((include-file (string-append (*current-piece*) "/" pathname ".ily")))
     #{ \lyricmode { \include $include-file } #}))

includeFigures =
#(define-music-function (parser location pathname) (string?)
   (let ((include-file (string-append (*current-piece*) "/" pathname ".ily")))
     #{ \context Voice = "" \markupfigures \figuremode { \include $include-file } #}))

includeScore =
#(define-music-function (parser location name) (string?)
   (parameterize ((*current-piece* name))
     (ly:parser-parse-string (ly:clone-parser parser)
                             (string-append "\\include \"" name "/score.ily\""))
     (make-music 'SequentialMusic 'void #t)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Shortcuts for defining staves
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Define a new instrumental Staff:
%%   \instrStaff <instrument name markup> <music>
instrStaff =
#(define-music-function (parser location instr-markup music)
                        (markup? ly:music?)
   #{ \new Staff <<
      \set Staff . instrument = #(markup #:instrument-name $instr-markup)
      $music
      >> #})

instrStaffWithName =
#(define-music-function (parser location context-name instr-name music)
                        (string? string? ly:music?)
   #{ \context Staff = $context-name <<
      \set Staff . instrument = #(markup #:instrument-name $instr-name)
      $music
      >> #})

#(use-modules (ice-9 format))
#(define gen-unique-context
  ;; Generate a uniqueSchemeContextXX symbol, that may be (hopefully) unique.
  (let ((var-idx -1))
    (lambda ()
      (set! var-idx (1+ var-idx))
      (string->symbol
       (format #f "uniqueSchemeContext~a"
               (list->string (map (lambda (chr)
                                    (integer->char (+ (char->integer #\a)
                                                      (- (char->integer chr)
                                                         (char->integer #\0)))))
                                  (string->list (number->string var-idx)))))))))

%% Define a new lyric staff:
%%  \lyricStaff <name markup> <music> <lyrics>
lyricStaff =
#(define-music-function (parser location voice-markup music lyrics)
                        (markup? ly:music? ly:music?)
   (let ((name (symbol->string (gen-unique-context))))
     #{  << \context Voice = $name << 
            \set Voice . autoBeaming = ##f
            \set Staff . instrument = #(markup #:character-name $voice-markup)
            $music >>
            \lyricsto $name \new Lyrics $lyrics
            >> #}))

lyricStaffWithName =
#(define-music-function (parser location context-name+voice-name music lyrics)
                        (list? ly:music? ly:music?)
   (let ((context-name (car context-name+voice-name))
         (voice-name (cadr context-name+voice-name))
         (name (symbol->string (gen-unique-context))))
     #{  \context Staff = $context-name << 
         \context Voice = $name << 
         \set Voice . autoBeaming = ##f
         \set Staff . instrument = #(markup #:character-name $voice-name)
         $music 
         >>
         \lyricsto $name \new Lyrics $lyrics
         >> #}))

recitStaff =
#(define-music-function (parser location music lyrics)
                        (ly:music? ly:music?)
   #{ << \context Voice = "" << 
         \set Voice . autoBeaming = ##f
         \override Staff . Clef #'full-size-change = ##t
         \set Staff . explicitClefVisibility = #end-of-line-invisible
         \override Score.BreakAlignment #'break-align-orders =
         ##(; end-of-line:
            (instrument-name left-edge ambitus breathing-sign
                             clef key-cancellation key-signature
                             time-signature custos staff-bar)
                                        ; unbroken
            (instrument-name left-edge ambitus breathing-sign
                             staff-bar clef key-cancellation key-signature
                             staff time-signature custos)
                                        ; begin of line
            (instrument-name left-edge ambitus breathing-sign
                             clef key-cancellation key-signature staff-bar
                             time-signature custos))
         $music >>
         \lyricsto "" \new Lyrics $lyrics
         >> #})


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Character specific commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define *cesare-baryton* (make-parameter #f))
#(define *tolomeo-baryton* (make-parameter #f))
#(define *nireno-baryton* (make-parameter #f))

%% Cesare
cesareBaryton = #(define-music-function (parser location) ()
                  (*cesare-baryton* #t)
                  (make-music 'SequentialMusic))

cesare = #(define-music-function (parser location music) (ly:music?)
           (if (*cesare-baryton*)
               #{ \clef bass \notemode { \transpose c c, $music } #}
               #{ \clef treble $music #}))

cesareRecit = #(define-music-function (parser location music) (ly:music?)
           (if (*cesare-baryton*)
               #{ << { \set Staff.forceClef = ##t \clef bass }
                     s8 ^\markup \character Cesare.
                     \notemode { \transpose c c, $music } >> #}
               #{ << { \set Staff.forceClef = ##t \clef treble }
                     s8 ^\markup \character Cesare.
                     $music >> #}))

cesareRecitMarkup = #(define-music-function (parser location markp music) (markup? ly:music?)
           (if (*cesare-baryton*)
               #{ << { \set Staff.forceClef = ##t \clef bass }
                     s8 ^\markup $markp
                     \notemode { \transpose c c, $music } >> #}
               #{ << { \set Staff.forceClef = ##t \clef treble }
                     s8 ^\markup $markp
                     $music >> #}))

%% Curio
curioRecit = #(define-music-function (parser location music) (ly:music?)
               #{ << { \set Staff.forceClef = ##t \clef bass }
                     s8 ^\markup \character Curio.
                     $music >> #})

curioRecitMarkup  = #(define-music-function (parser location markp music) (markup? ly:music?)
               #{ << { \set Staff.forceClef = ##t \clef bass }
                     s8 ^\markup $markp
                     $music >> #})

%% Achilla
achilla = #(define-music-function (parser location music) (ly:music?)
            #{ \clef bass $music #})

achillaRecit = #(define-music-function (parser location music) (ly:music?)
               #{ << { \set Staff.forceClef = ##t \clef bass }
                     s8 ^\markup \character Achilla.
                     $music >> #})

achillaRecitMarkup  = #(define-music-function (parser location markp music) (markup? ly:music?)
               #{ << { \set Staff.forceClef = ##t \clef bass }
                     s8 ^\markup $markp
                     $music >> #})

%% Cornelia
#(define *cornelia-g-clef* (make-parameter #f))

corneliaGClef = #(define-music-function (parser location) ()
                  (*cornelia-g-clef* #t)
                  (make-music 'SequentialMusic))

cornelia = #(define-music-function (parser location music) (ly:music?)
             (if (*cornelia-g-clef*)
                 #{ \clef treble $music #}
                 #{ \clef alto $music #}))

corneliaRecit = #(define-music-function (parser location music) (ly:music?)
             (if (*cornelia-g-clef*)
               #{ << { \set Staff.forceClef = ##t \clef treble }
                     s8 ^\markup \character Cornelia.
                     $music >> #}
               #{ << { \set Staff.forceClef = ##t \clef alto }
                     s8 ^\markup \character Cornelia.
                     $music >> #}))

corneliaRecitMarkup  = #(define-music-function (parser location markp music) (markup? ly:music?)
             (if (*cornelia-g-clef*)
               #{ << { \set Staff.forceClef = ##t \clef treble }
                     s8 ^\markup $markp
                     $music >> #}
               #{ << { \set Staff.forceClef = ##t \clef alto }
                     s8 ^\markup $markp
                     $music >> #}))

%% Tolomeo
tolomeoBaryton = #(define-music-function (parser location) ()
                  (*tolomeo-baryton* #t)
                  (make-music 'SequentialMusic))

tolomeo = #(define-music-function (parser location music) (ly:music?)
           (if (*tolomeo-baryton*)
               #{ \clef bass \notemode { \transpose c c, $music } #}
               #{ \clef alto $music #}))

tolomeoRecit = #(define-music-function (parser location music) (ly:music?)
           (if (*tolomeo-baryton*)
               #{ << { \set Staff.forceClef = ##t \clef bass }
                     s8 ^\markup \character Tolomeo.
                     \notemode { \transpose c c, $music } >> #}
               #{ << { \set Staff.forceClef = ##t \clef alto }
                     s8 ^\markup \character Tolomeo.
                     $music >> #}))

tolomeoRecitMarkup  = #(define-music-function (parser location markp music) (markup? ly:music?)
           (if (*tolomeo-baryton*)
               #{ << { \set Staff.forceClef = ##t \clef bass }
                     s8 ^\markup $markp
                     \notemode { \transpose c c, $music } >> #}
               #{ << { \set Staff.forceClef = ##t \clef alto }
                     s8 ^\markup $markp
                     $music >> #}))

%% Nireno
nirenoBaryton = #(define-music-function (parser location) ()
                  (*nireno-baryton* #t)
                  (make-music 'SequentialMusic))

nireno = #(define-music-function (parser location music) (ly:music?)
           (if (*nireno-baryton*)
               #{ \clef bass \notemode { \transpose c c, $music } #}
               #{ \clef alto $music #}))

nirenoRecit = #(define-music-function (parser location music) (ly:music?)
           (if (*nireno-baryton*)
               #{ << { \set Staff.forceClef = ##t \clef bass }
                     s8 ^\markup \character Nireno.
                     \notemode { \transpose c c, $music } >> #}
               #{ << { \set Staff.forceClef = ##t \clef alto }
                     s8 ^\markup \character Nireno.
                     $music >> #}))

%% Sesto
sesto = #(define-music-function (parser location music) (ly:music?)
            #{ \clef treble $music #})

sestoRecit = #(define-music-function (parser location music) (ly:music?)
               #{ << { \set Staff.forceClef = ##t \clef treble }
                     s8 ^\markup \character Sesto.
                     $music >> #})

sestoRecitMarkup  = #(define-music-function (parser location markp music) (markup? ly:music?)
               #{ << { \set Staff.forceClef = ##t \clef treble }
                     s8 ^\markup $markp
                     $music >> #})

%% Cleopatra
cleopatra = #(define-music-function (parser location music) (ly:music?)
            #{ \clef treble $music #})

cleopatraRecit = #(define-music-function (parser location music) (ly:music?)
               #{ << { \set Staff.forceClef = ##t \clef treble }
                     s8 ^\markup \character Cleopatra.
                     $music >> #})

cleopatraRecitMarkup  = #(define-music-function (parser location markp music) (markup? ly:music?)
               #{ << { \set Staff.forceClef = ##t \clef treble }
                     s8 ^\markup $markp
                     $music >> #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page breaks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% hack to add page breaks between scores

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
