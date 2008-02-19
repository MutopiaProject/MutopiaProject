\version "2.10.33"

\header {
   mutopiatitle = "Kyrie, Gott Vater in Ewigkeit"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 672"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8662"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Feb/17"

   title = "Kyrie, Gott Vater in Ewigkeit"
   subtitle = \markup { \center-align { \normalsize "(Alio modo)" \large "Manualiter" } }
   composer = "Johann Sebastian Bach"
   opus = \markup { \lower #2 "BWV 672" }
 footer = "Mutopia-2008/02/19-1279"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

\paper {
   head-separation = 0.2 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

global = {
   \key c \major
   \time 3/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

halsup        = { \stemUp \tieUp \slurUp \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral   = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
up            = { \change Staff = "right" \halsdown }
down          = { \change Staff = "left" \halsup }
shiftnote = #(define-music-function (parser location xy)
                                (number-pair?)
   #{
      \once \override Stem     #'extra-offset = #$xy
      \once \override NoteHead #'extra-offset = #$xy
   #})

sopran = {
   \new Voice \relative h' {
      \global
      \halsup
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      \shiftnote #'( -0.4 . 0 ) \once \override Dots #'extra-offset = #'( -0.5 . 0 ) d2.
      e2.
      %% Takt  5 ==================================================
      fis4 g8 fis \once \override Tie #'staff-position = #4 e4~
      e4 d4. c8
      h8\prall a g2~
      g8 h a g fis e
      dis4 d h'~
      %% Takt 10 ==================================================
      h8 a gis a h c
      d4 c h
      e4 d c
      f8 h, c d \once \override Tie #'staff-position = #4 e4~
      e8 d c h a g
      %% Takt 15 ==================================================
      fis4 g8 a h4
      e2.
      fis2.
      g4 f! cis
      d2.~
      %% Takt 20 ==================================================
      d2 cis4
      d4. c!8 h! a
      gis4 a2
      h2.~
      h4 a8 gis a4~
      %% Takt 25 ==================================================
      a4 gis g~
      g8 g f e d f
      e2~ e8 e
      a2.~
      a8 gis16 fis gis8 a h4
      %% Takt 30 ==================================================
      e,2.~
      e2 dis4
      e2.
      \bar "|."
   }
}

alt = {
   \new Voice \relative a' {
      \global
      \halsup
      \once \override MultiMeasureRest #'extra-offset = #'( 0 . -1 )  R2.
      \shiftOn a2.
      h8 fis g a h a
      g8\rest g a h c h
      %% Takt  5 ==================================================
      a4 h8 a g4
      a4. g8 fis4
      \halsdown g4 c,8\rest h e d
      cis4 c2~
      c8 c \down \shiftOff h a gis!4~
      %% Takt 10 ==================================================
      gis4 \up e' a~
      a4 a gis
      c4 h a~
      a4 gis8 fis gis4
      a4. g!8 fis e
      %% Takt 15 ==================================================
      dis4 e8 fis! g4~
      g8 e fis g a g
      g8\rest fis g a h a
      g8 a16 b a2
      g8\rest a g f e g
      %% Takt 20 ==================================================
      f8 d e f g e
      f2.
      e2.~
      e2 h4
      c2.
      %% Takt 25 ==================================================
      h2 b4
      a4. c!8 h! a
      gis4 a8 h c4~
      c8 h c d e d
      c4 h8 c d4
      %% Takt 30 ==================================================
      \down \once \override Tie #'extra-offset = #'( -0.1 . 1.4 ) \shiftnote #'( -0.4 . 0 ) \once \override Dots #'extra-offset = #'( -0.5 . 0 ) gis,2.~
      gis8 \tempo 8 = 200 h a \tempo 8 = 180 gis \tempo 8 = 140 fis \tempo 8 = 120 a
      \tempo 8 = 90 gis2.
   }
}

tenor = {
   \new Voice \relative g' {
      \global
      \halsdown
      g2.~
      g2 fis4
      g8 d e fis! g fis
      h,8\rest e fis g a g
      %% Takt  5 ==================================================
      fis8 e d2
      \down c8 h a2
      f8\rest d e fis g fis
      f8\rest e fis g a g
      \halsdown fis8 a gis fis e d
      %% Takt 10 ==================================================
      \halsup \shiftOn e4 f\rest f\rest
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      a2.
      h2.
      c2.~
      %% Takt 15 ==================================================
      c8 c h a g fis!
      e8 g a h c h
      c8\rest a h c d c
      h8 cis d e f e
      d2 e4\rest
      %% Takt 20 ==================================================
      \once \override MultiMeasureRest #'staff-position = #6 R2.
      c8\rest a h! c! d c
      h4 c2
      f,8\rest h, c d e d
      f8\rest c d e f e
      %% Takt 25 ==================================================
      d4 e8 f g f
      e4 a\rest a\rest
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      f8\rest f e d c d
      d8\rest e8 d c h c
      %% Takt 30 ==================================================
      d8 h c d e d
      \halsdown \shiftOff \shiftnote #'( -0.5 . 0 ) cis4 c8 h c4
      \halsup \shiftOn h2.
   }
}

bass = {
   \new Voice \relative g {
      \global
      \halsdown
      r8 g a h c h
      r8 a h c d c
      h2.
      c2.
      %% Takt  5 ==================================================
      d8 c h4 c8 h
      a8 g fis e d4
      g,2.
      a2.
      \shiftOn \shiftnote #'( -0.75 . 0 ) \once \override Dots #'extra-offset = #'(-0.4 . 0.1 ) h2.
      %% Takt 10 ==================================================
      c2.
      h8\rest h c d e d
      h8\rest c d e f e
      d4 e4. d8
      c4 e a~
      %% Takt 15 ==================================================
      a8 a g fis e d!
      c2.
      d2.
      h8\rest e f! g a g
      f4 b g
      %% Takt 20 ==================================================
      a4 a,2
      d2.~
      d8 d c h a h
      gis2.
      a2.
      %% Takt 25 ==================================================
      g8\rest h c d e d
      cis4 d2~
      d8 d c h a c
      f,2.
      \shiftOff e2.~
      %% Takt 30 ==================================================
      e2.~
      e2.~
      e2.
   }
}

right = {
   \clef "treble"
   <<
      \sopran
      \alt
      \tenor
   >>
}

left = {
   \clef "bass"
   <<
      \bass
   >>
}

\score {
   \new PianoStaff {
      <<
         \context Staff = right {
            \context Voice = right \right
         }
         \context Staff = left {
            \context Voice = left \left
         }
      >>
   }
   \layout{
      indent = 1.0\cm
   }
}

\score {
   <<
      \context Staff = right {
         \set Staff.midiInstrument = "church organ"
         \right
      }

      \context Staff = left {
         \set Staff.midiInstrument = "church organ"
         \left
      }
   >>
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 220 8)
      }
   }

}
