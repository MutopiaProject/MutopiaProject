% LSR 467
#(define-markup-command (markupWithHeader layout props markup) (markup?)
  "Interpret the given markup with the header fields added to the props. 
   This way, one can re-use the same functions (using fromproperty 
   #'header:field) in the header block and as top-level markup."
  (let* (
      ; TODO: If we are inside a score, add the score's local header block, too!
      ; Currently, I only use the global header block, stored in $defaultheader
      (scopes (list $defaultheader))
      (alists (map ly:module->alist scopes))
  
      (prefixed-alist
        (map (lambda (alist)
          (map (lambda (entry)
            (cons
              (string->symbol (string-append "header:" (symbol->string (car entry))))
              (cdr entry)))
            alist))
          alists))
      (props (append prefixed-alist
              props
              (layout-extract-page-properties layout)))
    )
    (interpret-markup layout props markup)
  )
)
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% LSR 312 display multibar-lines on demand 
showMultiRests = { \set Score.keepAliveInterfaces = #'(
    rhythmic-grob-interface
    multi-measure-rest-interface
    lyric-interface
    stanza-number-interface
    percent-repeat-interface) 
	}
hideMultiRests = { \set Score.keepAliveInterfaces = #'(
    rhythmic-grob-interface
    lyric-interface
    stanza-number-interface
    percent-repeat-interface) 
	}

showStaff = {
 \set Staff.keepAliveInterfaces = #'(
    rhythmic-grob-interface
    multi-measure-rest-interface
    lyric-interface
    stanza-number-interface
    percent-repeat-interface)
}
showStaffReset = \unset Staff.keepAliveInterfaces

% markups usage: \markUpBegin \mark \markup { \bold "Sonata" } 
markUpBegin = {
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #UP
  \once \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score . RehearsalMark #'padding = #1
}

markDownBegin = {
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #DOWN
  \once \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score . RehearsalMark #'padding = #1
}

markUpEnd = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #UP
  \once \override Score . RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score . RehearsalMark #'padding = #1
}

markDownEnd = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #DOWN
  \once \override Score . RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score . RehearsalMark #'padding = #1
}

custosNote = 
#(define-music-function (parser location note) (ly:music?)
  (make-music 'SequentialMusic
   'elements (list #{ 
              \once \override Voice.NoteHead #'stencil = #ly:text-interface::print
              \once \override Voice.NoteHead #'text =
              #(markup #:null #:raise 0.0 #:musicglyph "custodes.mensural.u0")
              \once \override Voice.Stem #'stencil = ##f #}
              note)))


%twoline markup
% usage: \markup \twolines #"firstline" #"secondline" 
#(define-markup-command (twolines layout props a b) (string? string?)
(interpret-markup layout props
(markup #:center-column (a  b) )))

% Incipit Clefs
% usage: \incipitClef #'<clef> \markup instrumentname 
incipitClef =
#(define-music-function (parser location a b)  (string? markup?)
#{ \set Staff.instrumentName = \markup{ \score{
		\new Staff \with { \remove "Time_signature_engraver" }
		{ \set Staff.instrumentName = $b \clef $a s4 }
		\layout {\context { \Staff \override VerticalAxisGroup #'Y-extent = #'(-4 . 4)} }
	}}
#})

addIncipitClef =
#(define-music-function (parser location a b)  (string? string?)
#{ \set Staff.instrumentName = \markup{ \score{
		\new Staff \with { \remove "Time_signature_engraver" }
		{ \set Staff.instrumentName = $b \clef $a s4 }
		\layout {\context { \Staff \override VerticalAxisGroup #'Y-extent = #'(-4 . 4)} }
	}}
#})
%32tel in 16tel verbinden
srbcsq = { \set stemRightBeamCount = #2 } 
%
slbcsq = { \set stemLeftBeamCount = #2 } 
%

\include "deutsch.ly"
eon = \bassFigureExtendersOn
eoff = \bassFigureExtendersOff
