\version "2.10.33"

\header {
   mutopiatitle = "Kyrie, Gott heiliger Geist"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 674"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8662"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Feb/17"

   title = "Kyrie, Gott heiliger Geist"
   subtitle = "Manualiter"
   composer = "Johann Sebastian Bach"
   opus="BWV 674"
 footer = "Mutopia-2008/02/19-1281"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \minor
   \time 9/8
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   head-separation = 0.6 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

diffdot       = { \once \override Staff.NoteCollision #'merge-differently-dotted = ##t }
halsup      = { \stemUp \tieUp \slurUp \dotsUp }
halsdown    = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
up          = { \change Staff = "right" \halsdown }
down        = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative h' {
      \global
      \halsup
      r4. h8 a h c h c
      d2.~ d4.~
      d8 c h c d e f! e f
      h,4. e2.~
      %% Takt  5 ==================================================
      e8 d c h c d e d e
      \once \override Tie #'staff-position = #0 a,4.~  a4 a'8~ a4 g8
      f!4. \once \override Tie #'staff-position = #4 e~ e8 cis a
      d2.~ d4.
      c!2. h4.~
      %% Takt 10 ==================================================
      h8 a gis a2.~
      a8 gis fis gis a h c h c
      f,!2.~ f4.~
      f8 e d e4 c'8 fis,4 d'8
      g,4 d'8\rest d4.\rest d\rest
      %% Takt 15 ==================================================
      \once \override MultiMeasureRest #'staff-position = #4 R1 * 9/8
      f4.\rest e8 d e f! e f
      g!2.~ g4.~
      g8 f e f g a b a b
      e,4. a2.~
      %% Takt 20 ==================================================
      a8 g f g4.~ g4 f8~
      f8 e d e f g a g a
      d,2.~ d4.~
      d8 c h c d e f! e f
      h,4.~ h8 c d e d e
      %% Takt 25 ==================================================
      a,4. d2.~
      d2. c4.~
      c8 h a h c d e d e
      a,2.~ a4.~
      a4. gis2.
      %% Takt 30 ==================================================
      a4 gis8 a h c d c d
      gis,4 a8 h2.~
      h4. a~ a8 h c~
      \tempo 8 = 248 c8 h \tempo 8 = 240 c h a gis \tempo 8 = 204 fis \tempo 8 = 180 gis \tempo 8 = 130 fis
      \tempo 8 = 60 gis4.\fermata
      \bar "|."
   }
}

alt = {
   \new Voice \relative e' {
      \global
      \halsdown
      \once \override MultiMeasureRest #'staff-position = #-4 R1 * 9/8
      e4.\rest fis8 e fis g fis g
      a2.~ a4.~
      a8 g fis g a h c h c
      %% Takt  5 ==================================================
      fis,4. g2.~
      g8 fis g a4. b
      a4 gis8 a2.
      h!2.~ h4.
      a2. e4.~
      %% Takt 10 ==================================================
      e2. f!4.~
      f8 e dis e2.
      c2. h4.
      c2. d4.~
      d8 e fis g2.~
      %% Takt 15 ==================================================
      g8 fis e fis4 d'8 gis,4 e'8
      a,4. g\rest g\rest
      g4.\rest h8 a h cis h cis
      d2.~ d4.~
      d8 c! b c d e f e f
      %% Takt 20 ==================================================
      b,4.~ b4 b8 a4.
      g4 f8 e4 d8 cis4.
      d8 a' c!~ c h! a gis a fis
      gis4 c,8\rest c\rest h c d c d
      e2.~ e4.~
      %% Takt 25 ==================================================
      e4. d4 a'8 gis h a
      h8 e, d e fis gis a gis a
      \down a,2. gis4.
      a4. \up c4\rest e8 d4 c8
      d4.~ d4 f8 e4 d8~
      %% Takt 30 ==================================================
      d8 c h c d e f e f~
      f8 e f e d c h c h
      c4.~ c8 d e f! e dis
      e2. dis4.
      e4.
   }
}

tenor = {
   \new Voice \relative a {
      \global
      \halsup
      \override MultiMeasureRest #'staff-position = #4 R1 * 9/8 * 4
      %% Takt  5 ==================================================
      a4.\rest h8 a h c h c
      d2.~ d4.~
      d8 cis h! cis \up d e f! e f
      \down h,!4. e2.~
      e8 d c d2.~
      %% Takt 10 ==================================================
      d8 c h c2.
      h4.~ h4 gis8 a h gis
      a2. \once \override Tie #'staff-position = #4 g!4.~
      \once \override Tie #'staff-position = #4 g4.~ g8 fis g a g a
      h2. a4.~
      %% Takt 15 ==================================================
      a4.~ a8 gis a h a h
      e,2. a4.\rest
      c8\rest h a h cis d e d e
      a,8 h cis \clef "treble" d e f g f g
      a4.~ a4 g8 f4 e8
      %% Takt 20 ==================================================
      \clef "bass" d2. \down c4.
      b2. a4.~
      a4.~ a8 h! c d c d
      h4 e8\rest e4.\rest e\rest
      \once \override MultiMeasureRest #'staff-position = #8 R1 * 9/8
      %% Takt 25 ==================================================
      c8\rest a gis a h c d c d
      gis,4.~ gis8 a h c h c
      \shiftOn f,!2. e4.~
      e4. \shiftOff c'4\rest c8 h4 a8
      h2.~ h4.
      %% Takt 30 ==================================================
      a4. a\rest a
      h4 a8 gis2.
      a8 e d e fis gis a gis a~
      a8 gis fis gis a h c h c
      h4.
   }
}

bass = {
   \new Voice \relative d {
      \global
      \halsdown
      \override MultiMeasureRest #'staff-position = #-2 R1 * 9/8 * 4
      %% Takt  5 ==================================================
      R1 * 9/8
      d4.\rest fis8 e fis g fis g
      a2.~ a4.~
      a8 gis fis gis a h c! h c
      fis,4.~ fis8 gis a gis a h
      %% Takt 10 ==================================================
      c,4.~ c8 h c d c d
      e2.~ e4.~
      e8 d c d e f \diffdot g f g
      c,2.~ c4.
      h4.\rest h8 a h cis h cis
      %% Takt 15 ==================================================
      d2.~ d4.~
      d8 c! h c h c d c d
      e2.~ e4.
      d4. f4.\rest a4.\rest
      \once \override MultiMeasureRest #'staff-position = #-6 R1 * 9/8
      %% Takt 20 ==================================================
      h,4.\rest e8 d e f e f
      g2.~ g4.~
      g8 fis e fis gis a h a h
      e,8 fis gis a2.~
      a8 g! fis g a h c h c
      %% Takt 25 ==================================================
      f,!2.~ f4.
      e2.~ e4.~
      e4. d2.~
      d8 c h c d e f e f~
      f8 h, a h c d e d e
      %% Takt 30 ==================================================
      \override Tie #'staff-position = #-4 a,2.~ a4.~
      a2.~ a4.~
      a2.~ a4. \revert Tie #'staff-position
      e'2.~ e4.~
      e4._\fermata
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
         tempoWholesPerMinute = #(ly:make-moment 264 8)
      }
   }

}
