\version "2.10.33"

\header {
   mutopiatitle = "Wir glauben all an einen Gott"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 681"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8662"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Ap1/01"

   title = \markup { \fontsize #0 "Fughetta" \fontsize #-1 "super:" \fontsize #0 "Wir glauben all an einen Gott" }
   subtitle = "Manualiter"
   composer = \markup { \raise #1.2 "Johann Sebastian Bach" }
   opus = "BWV 681"
 footer = "Mutopia-2008/04/16-1377"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"
revAutoBeam = {
   #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
}

global = {
   \key h \minor
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   \revAutoBeam
}

\paper {
   head-separation = 0.6 \cm
   foot-separation = 0.0 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup   = { \stemUp \tieUp \slurUp \dotsUp }
halsdown = { \stemDown \tieDown \slurDown \dotsDown }
up       = { \change Staff = "right" \halsdown }
down     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative f'' {
      \global
      \halsup
      \partial 16 d16\rest
      \override MultiMeasureRest #'staff-position = #4 R1
      R1
      d4\rest d8\rest d16\rest e, h'8. a16 h8~ h32 a g fis
      \once \override Tie #'staff-position = #-0.5 g2~ \once \override Tie #'staff-position = #-0.5 g8~ g32 g fis e \once \override Tie #'staff-position = #-2.5 fis4~
      %% Takt  5 ==================================================
      fis d'8\rest d16\rest h e8.\mordent dis16 e8~ e32 d c h
      c4 cis\upmordent d8~ d32 d e fis fis8.\prallprall e32 fis
      g8. fis16 g8. a16 d,8. dis16 e8. fis16
      h,8. h16 c8~ c32 h c d \once \override Tie #'staff-position = #4.5 e4~ \once \override Tie #'staff-position = #4.5 e8~ e32 g fis e
      dis4 fis8\rest fis16\rest d cis!8.\prall h16 \once \override Tie #'staff-position = #1.5 c4~
      %% Takt 10 ==================================================
      c8. fis,16 h4~ h8. e16 a,4~
      a8~ a32 a g fis g4~ g8 c32( h16.) a32( g16.) fis32( e16.)
      << \new Voice { \stemUp g'4 }
         \new Voice { \stemUp \shiftOn e4 }
         \new Voice { \stemUp \shiftOnn cis!4 } >> fis16\rest d32\rest fis e d c h
         << \new Voice { \stemUp fis'4 }
            \new Voice { \stemUp \shiftOn c!4 } >> fis16\rest d32\rest e dis cis h a
      d8\rest d16\rest h e4~ e8. fis16 dis8.\prall e16
      e4~ e8~ e32 d! c! h c8~ c32 h a gis a8. dis,16
      %% Takt 15 ==================================================
      dis8( \once \override Script #'extra-offset = #'( 0 . 0.5 ) e)^\fermata r4
      \bar "|."
   }
}

alt = {
   \new Voice \relative e' {
      \global
      \halsdown
      \partial 16 c16\rest
      c4\rest c8\rest c16\rest h \once \override Script #'extra-offset = #'( 0 . -3.5 ) e8.\mordent dis16 e8~ e32 d! c! h
      c4 cis d8~ d32 e fis g a8. c,!16
      c8~ c32 h cis dis e4~ \once \override Tie #'staff-position = #-5.5 e8~ e32 dis! cis! dis dis4_\prallmordent
      e8~ e32 fis e dis e4~ e~ e8~ e32 e dis! cis
      %% Takt  5 ==================================================
      dis4 e\rest e\rest e8\rest e16\rest e
      a8. g!16 a8~ a32 g fis e fis4 g8\rest g16\rest a
      d8. c16  d8. a16 h8. a16 h8. fis16
      g8. fis16 g4~ g8~ g32 g a h a4~
      a8~ a32 a gis fis gis8. h16 e,4~ e16. h'32 a g fis e
      %% Takt 10 ==================================================
      dis4 e8\rest e16\rest g e4~ e8. fis16
      h,4~ h8~ h32 fis' e dis e4. dis!8
      ais'4 e\rest a e\rest
      g4~ g8. fis16 g8. a16 fis4
      e2~ e4 \down \halsdown f,8\rest f16\rest a
      %% Takt 15 ==================================================
      \once \override Slur #'extra-offset = #'( 0 . 0.2 ) a8( gis) d4\rest
     }
}

bass = {
   \new Voice \relative e {
      \global
      \partial 16 e16
      h'8.\mordent a16 h8~ h32 a g fis g4 gis\prallmordent
      a8. g!16 a8~ a32 g fis e fis4 fis\upprall
      \once \override Tie #'staff-position = #4 g4~ g8~ g32 fis g a h2~
      h4~ h8~ h32 d! cis h \once \override Script #'extra-offset = #'( 0 . 0.5 ) ais4~\prall ais8~ ais32 fis gis ais
      %% Takt  5 ==================================================
      h8. ais16 h8~ h32 a g! fis g4 gis\prall
      a4 r8 r16 a d8. cis!16 d8~ d32 c h a
      h8~ h32 c h a h8~ h32 a g fis g8~ g32 a g fis~ g8~ g32 fis e dis
      e8~ e32 fis e dis e8~ e32 d c h c8~ c32 d c h c8~ c32 fis, g a
      h8~ h32 c h a h8~ h32 e, fis gis \stemUp a16. h64 \set stemRightBeamCount = #2 cis \set stemLeftBeamCount = #2 d32 e fis gis \stemNeutral a4~
      %% Takt 10 ==================================================
      a8~ a32 a g! fis  g16. e32 fis g a h c8~ c32 d! c h c16. h32 a g fis e
      dis8. h16 e8~ e32 g, a h c8 a << \new Voice { \stemUp a'8\rest h }
                                      \new Voice { \stemDown h,4 } >>
      << \new Voice { \stemUp ais'4  a\rest a a\rest}
         \new Voice { \stemUp \shiftOn e4 s fis s }
         \new Voice { \stemDown cis!4 h\rest dis h\rest } >>
      e8. fis16 g8. a16 h8. a16 << \new Voice { \revAutoBeam \halsup h8. a16~
         a8~ a32 a gis fis gis8~ gis32 e fis gis a8~ a32 gis! a h c8. c16
         c8( h) c4\rest }
                                   \new Voice { \halsdown h8. h,16
         \once \override Tie #'staff-position = #0 e2~ e4 e,\rest
         e4_\fermata e\rest}
      >>
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
         tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
   }
}
