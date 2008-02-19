\version "2.10.33"

\header {
   mutopiatitle = "Christe, aller Welt Trost"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 673"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8662"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Feb/17"

   title = "Christe, aller Welt Trost"
   subtitle = "Manualiter"
   composer = "Johann Sebastian Bach"
   opus = \markup { \lower #2 "BWV 673" }
 footer = "Mutopia-2008/02/19-1280"
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
   \time 6/8
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

diffdot       = { \once \override Staff.NoteCollision #'merge-differently-dotted = ##t }
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
   \new Voice \relative e' {
      \global
      \halsup
      e4. d
      g8 a h c g c~
      c8 h a h c d
      \once \override Tie #'staff-position = #5.5 e4.~ e8 f16 e d c
      %% Takt  5 ==================================================
      h!4. c
      d2.~
      d8 c16 h c8 f!4.~
      f8 g16 f e d \once \override Tie #'staff-position = #5 e4.~
      \once \override Tie #'staff-position = #5 \shiftnote #'( -0.3 . 0 ) \once \override Dots #'extra-offset = #'( -0.4 . 0 )
         e4.~ e8 cis  d~
      %% Takt 10 ==================================================
      d8 e16 d cis h cis4.
      d8 a b~ b a gis
      a4. \diffdot g!
      c8 d e f4.~
      f16 e d c d e c h c d e c
      %% Takt 15 ==================================================
      f8 g a b4.
      a4. g8 a16 g f e
      f16 e d e f8 h,4.
      a4 f'8\rest d4.\rest
      h4. \diffdot a8 h cis
      %% Takt 20 ==================================================
      d8 e f g4.~
      g8 f e~ e d16 c! h a
      e'4. a,8 d16 c d8~
      d8 c16 h c8~ c h4~
      h16 h a gis a c f e d c h a
      %% Takt 25 ==================================================
      c4 h8 a gis! a
      e8 gis h~ h a16 gis! a8~
      a8 h16 a gis fis gis8 a h
      c8 d e f4.~
      f8 e d~ d c16 h a gis!
      %% Takt 30 ==================================================
      a8 h c h4.\fermata
   }
}

alt = {
   \new Voice \relative a {
      \global
      \down \halsup
      a8\rest g c~ c h a
      h8 c \up d e4.
      d4. g8 a h
      c4 \halsup \once \override Stem #'length = #6 b8 \shiftOn a4.
      %% Takt  5 ==================================================
      \once \override Tie #'staff-position = #-2 g2.~
      \once \override Stem #'length = #4.3 g4 fis8 \once \override Stem #'length = #6 g4.~
      g4. a
      \once \override Tie #'staff-position = #-1 g2.~
      g8 a16 g f e \once \override Beam #'positions = #'( 2.1 . 2.2 ) f8 a gis
      %% Takt 10 ==================================================
      \tieDown a4.~ \halsdown a8 b g!~
      g8 f16 e f8 e4.
      d4. g!8 a b
      c8 g c d16 c d e d c
      h!4. a
      %% Takt 15 ==================================================
      d8 e f g c, g'
      f8 g16 f e d e4 a,8
      a8 b a gis4 e'8~
      \once \override Beam #'positions = #'( -2.65 . -3.9 ) e16 d c h a g! f4.
      e4. a
      %% Takt 20 ==================================================
      d8 a d~ d e16 d cis h
      a2.
      gis4 a8 fis gis! a
      h8 gis e f! g16 f e d
      c4. \down \shiftOff \shiftnote #'( -0.5 . 0 ) h
      %% Takt 25 ==================================================
      \up e8 fis gis a e a~
      a8 gis16 fis e d \down c16 d c h c a
      \shiftnote #'( -0.4 . 0 ) \once \override Dots #'extra-offset = #'( -0.45 . 0 ) h4. \up e~
      e4 e8\rest g16\rest e' d c h a
      gis8 a h e,4.~
      %% Takt 30 ==================================================
      \tempo 8 = 160 e8 \tempo 8 = 140 gis16 fis e \tempo 8 = 90 dis \tempo 8 = 50 e4.
   }
}

tenor = {
   \new Voice \relative a {
      \global
      \halsup
      R2.
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      a4. g
      c8 \up d e f c f~
      %% Takt  5 ==================================================
      f8 e d e d16 c \down h a
      h8 a16 g a8 h \up c d
      e4. d~
      d4.~ d8 \down cis h!
      cis4. \up d8 f16 e f8
      %% Takt 10 ==================================================
      e4. \down a,\rest
      d,4. c!
      f8 g a b f b~
      b8 b a~ a gis a
      gis8 a h c4.
      %% Takt 15 ==================================================
      b4 a8 g4 c8\rest
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      f,4. e
      a8 h c d a d~
      d8 c h cis d e
      %% Takt 20 ==================================================
      a,4. g
      cis8 d e f4.
      e4. d4 e8\rest
      \once \override MultiMeasureRest #'staff-position = #8 R2.
      e,4. d
      %% Takt 25 ==================================================
      gis8 a h c d16 c h a
      h16 c h a gis h \shiftOn e,4.
      f8 e d e4.
      a8. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #2 g!16 \set stemLeftBeamCount = #2 f e \diffdot d8 a' d~
      d8 c16 h a gis a4 h8
      %% Takt 30 ==================================================
      c8 h16 a gis fis gis4.\fermata
   }
}

bass = {
   \new Voice \relative e {
      \global
      \halsdown
      \once \override MultiMeasureRest #'staff-position = #-2 R2.
      e4. c
      f2.
      e8 f g a4 r8
      %% Takt  5 ==================================================
      r4. e
      d4. g8 a h
      c8 g c~ c h a
      b4.~ b8 a g
      a2.~
      %% Takt 10 ==================================================
      a4. a,
      d,4. c4.\rest
      \once \override MultiMeasureRest #'staff-position = #-2 R2.
      c'4. h!
      e8 fis gis! a e a~
      %% Takt 15 ==================================================
      a8 g! f!~ f e16 d e8~
      e8 a, d~ d cis16 h! cis8
      d4.~ d16 c! h c d h
      c4.~ c8 d16 c h a
      gis4. g4 g'8
      %% Takt 20 ==================================================
      f4. e
      a8 h cis! d a d~
      d8 c!16 h c8~ c h16 a gis fis
      gis8 e a d, g g,
      %% Takt 25 ==================================================
      c4. d
      e2.~
      e2.
      d4.~ d8 c16 h a gis
      a8 h c d4.
      %% Takt 30 ==================================================
      e2.~
      e2._\fermata
      \bar "|."
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
      \bass
      \tenor
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
         tempoWholesPerMinute = #(ly:make-moment 180 8)
      }
   }

}
