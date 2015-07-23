\version "2.18.0"
% LilyPond include file with useful definitions.

\language "english"

% define a variable to hold the formatted today's date:
date = #(strftime "%d-%b-%Y" (localtime (current-time)))

% A function to display tempo markings:
tempoMark = #(define-music-function (parser location markp) (string?)
#{
  \once \override Score.RehearsalMark #'self-alignment-X = #left
  \once \override Score.RehearsalMark #'extra-spacing-width = #'(+inf.0 . -inf.0)
  \mark \markup { \smaller \bold $markp }
#})

% define a \paragraph command for use within \markuplist{}
#(define-markup-list-command (paragraph layout props args) (markup-list?)
   #:properties ((par-indent 2))
   (interpret-markup-list layout props
     #{\markuplist \justified-lines { \hspace #par-indent #args } #}))


metMark = \markup { \normal-text \concat { "(" \hspace #0.2 "M." \hspace #.5 "M. " \smaller \general-align #Y #DOWN \note #"4" #1 \hspace #0.5 " = 60 to 108.)" } }

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

fingerUp = \override Fingering.direction = #UP
fingerDown = \override Fingering.direction = #DOWN
fingerNoPad = \temporary \override Fingering.staff-padding = #'()

beamLessSlant = \once \override Beam.damping = #4

subdivideBeams = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(4 4)
}

globalT = {
  \key c \major
  \time 2/4
  \clef treble
}
globalB = {
  \key c \major
  \time 2/4
  \clef bass
}

posScriptA = {
  \once \override TextScript.rotation = #'(15 0 0)
  \once \override TextScript.extra-offset = #'( 0 . 8.6 )
}
posScriptB = {
  \once \override TextScript.rotation = #'(-15 0 0)
  \once \override TextScript.extra-offset = #'( 0.4 . -1.0 )
}

posScriptC = { \once \override TextScript.extra-offset = #'( -3.5 . 5.2 ) }

posScriptD = { \once \override TextScript.extra-offset = #'( -3.5 . -3.9 ) }