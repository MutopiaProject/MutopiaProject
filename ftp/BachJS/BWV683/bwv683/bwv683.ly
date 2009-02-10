\version "2.12.02"

\header {
   mutopiatitle = "Vater unser im Himmelreich"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 683"
   mutopiainstrument = "Organ"
   date = "1739"
   source = "Edition Peters 8660"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2009/Feb/09"

   title = "Vater unser im Himmelreich"
   subtitle = "Manualiter"
   composer = "Johann Sebastian Bach"
   opus = "BWV 683"
 footer = "Mutopia-2009/02/10-1626"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key d \dorian
   \time 6/8
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup   = { \stemUp \tieUp \dotsUp }
halsdown = { \stemDown \tieDown \dotsDown }
up       = { \change Staff = "right" \halsdown }
down     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative a' {
      \global
      \halsup
      \partial 4. a4.
      a4. f
      g4. a
      f4. e
      d4 g8\rest a4.
      %% Takt  5 ==================================================
      a4. g
      c4. a
      f4. g
      a4 h8\rest a4 h!8
      c4 cis8 d4 e8
      %% Takt 10 ==================================================
      f4. e
      d4. cis
      d4 d8\rest d4.
      e4. \once \override Dots #'extra-offset = #'( -0.55 . 0 ) d
      \once \override NoteColumn #'force-hshift = #-0.5 \once \override Dots #'extra-offset = #'( -2.1 . 0 ) c4.
         \once \override NoteColumn #'force-hshift = #-0.5 \once \override Dots #'extra-offset = #'( -1.3 . 0 ) h
      %% Takt 15 ==================================================
      \once \override NoteColumn #'force-hshift = #-0.5 \once \override Dots #'extra-offset = #'( -1.3 . 0 ) a4.
         \once \override Dots #'extra-offset = #'( -2.6 . 0 )h
      a4 d8\rest d4.
      c4. h
      c4. a
      a4. g
      %% Takt 20 ==================================================
      f4 h8\rest a4.
      b4. a4 g8
      f4. g
      f4. e
      d4.\fermata
      \bar "|."
   }
}

alt = {
   \new Voice \relative a {
      \global
      \halsdown
      \partial 4. c4.\rest
      e16\rest g f e d cis d4.~
      d16 f e d cis h! cis8 d e
      a,8 d4~ d cis8
      a4 a8\rest c4.\rest
      %% Takt  5 ==================================================
      e16\rest g f e d c! h!8 d g~
      g8 e c~ c16 a h! cis d e
      f4.~ f8 e16 d cis d
      cis4 c8\rest c4.\rest
      g'16\rest b a g f e d8 f a~
      %% Takt 10 ==================================================
      a8 a d~ d cis16 h! cis8
      \once \override Staff.NoteCollision #'merge-differently-dotted = ##t d8 f, b~ b a \shiftOn g
      a4 g8\rest e4.\rest
      h'16\rest d c! h a g \halsup \once \override Beam #'positions = #'( 0.9 . 2.3 ) fis8 gis \tieDown h~
      h16 h a g! f! e d8 e f!
      %% Takt 15 ==================================================
      e8 a16 gis a8~ \once \override NoteColumn #'force-hshift = #1.5 a gis!4
      e4 \halsdown g8\rest e4.\rest
      g16\rest h a g! f e d8 e f
      g8 e c~ c f e f4.~ f8 e16 d e8
      c4 c8\rest c4.\rest
      %% Takt 20 ==================================================
      e16\rest a g f e d e8 cis a~
      a8 d cis d f e~
      e8 cis d~ d4 cis!8
      a4.
     }
}

tenor = {
   \new Voice \relative a {
      \global
      \halsup
      \partial 4. a4.\rest
      a4.\rest c16\rest c! b a g f
      e4.~ e16 g f e d cis
      d4 a'8 b g a
      f4 a8\rest c4.\rest
      %% Takt 5 ===================================================
      \once \override MultiMeasureRest #'staff-position = #6 R2.
      e16\rest d c b a g f4 e8
      d16 f g a h! cis d a g f e d
      e4 f8\rest \up f16\rest f' e d \down c! h!
      a4.~ a~
      %% Takt 10 ==================================================
      a4 a8\rest a16\rest b a g f e
      f16 cis d e f g! a4 \up e'8
      d4 c8\rest \down c16\rest a g f! e d
      c8 g' c a \up e' f!
      e4 h8\rest \down e4.\rest
      %% Takt 15 ==================================================
      e16\rest d c h a g! f \up f' e d c h
      c4 c8\rest \down c4.\rest
      \once \override MultiMeasureRest #'staff-position = #6 R2.
      e16\rest d c b a g f4 a8\rest
      c16\rest f, g a b c d8 c b
      %% Takt 20 ==================================================
      a4 c8\rest c4.\rest
      c4.\rest c16\rest b a g f e
      d4 f8\rest a16\rest cis, d e f g
      a4. b8 g a
      fis4.
   }
}

bass = {
   \new Voice \relative h, {
      \global
      \halsdown
      \partial 4. h4.\rest
      \once \override MultiMeasureRest #'extra-offset = #'( 0 . -1 ) R2.
      g4.\rest a4.~
      a16 c! b a g f g8 e a
      d,16 a' h! cis d e f g f e d cis!
      %% Takt  5 ==================================================
      d8 e f~ f16 a g f e d
      e4.~ e8 d cis
      d4 a8 b4.
      a16 b a g f e d4 g8\rest
      h8\rest h\rest g' f16 g f e d cis
      %% Takt 10 ==================================================
      d16 e d c! b a g8 g\rest g\rest
      gis8 g\rest g\rest h16\rest a h! cis! d e
      fis16 g fis e d c! h!4.
      \once \override Staff.NoteCollision #'merge-differently-dotted = ##t c4.~ c16 d c h a gis
      a8 e' a~ a16 a gis fis e d
      %% Takt 15 ==================================================
      c4 f!8 d e4
      a16 a, h c d e f e d e f g
      a8 f d g16 a g f e d
      e4 d8\rest h16\rest f g a h! cis
      d4 c!8 b c c,
      %% Takt 20 ==================================================
      f16 g a b c d es g f es d c
      d8 e!16 f g8 cis,4 h8\rest
      e,16\rest d e f g a b4.
      h16\rest a g f e d \tempo 8 = 114 g8 \tempo 8 = 110 e \tempo 8 = 80 a
      \tempo 8 = 44 d,4._\fermata


   }
}

right = {
   \clef "treble"
   <<
      \sopran
      \alt
   >>
}

left = {
   \clef "bass"
   <<
      \tenor
      \bass
   >>
}

\score {
   \new PianoStaff {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \context Voice = right \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "church organ"
            \context Voice = left \left
         }
      >>
   }

   \layout{
      indent = 1.0\cm
   }

   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 124 8)
      }
   }
}
