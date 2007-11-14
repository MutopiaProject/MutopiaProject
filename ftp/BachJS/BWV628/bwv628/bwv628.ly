\version "2.10.33"

\header {
 mutopiatitle = "Erstanden ist der Heil'ge Christ"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 628"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Edition Peters 8660"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/11"

 title = "Erstanden ist der Heil'ge Christ"
 composer = "Johann Sebastian Bach"
 opus="BWV 628"
 footer = "Mutopia-2007/11/14-1159"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key d \major
   \time 3/2
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

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative d'' {
      \global
      \halsup
      \partial 2 d2
      d1 d2
      \shifttieup cis2~ cis4 d e2
      d2 cis h
      a1\fermata a2
      %% Takt  5 ==================================================
      h2. cis4 d2
      cis1 h2
      a1 g2
      fis1\fermata e2
      fis1 g2
      %% Takt 10 ==================================================
      a1 g2 fis1 e2
      d1\fermata d2
      e2. fis4 g!2
      fis1 e2
      d2 h cis
      %% Takt 15 ==================================================
      d1 r8 s8 \bar "|."
   }
}

alt = {
   \new Voice \relative a {
      \global
      \halsdown \dotsDown
      \partial 2 r8 a h cis
      d4 e fis g a h
      cis4 h a2 e8\rest cis d e
      fis8 e fis gis a2. gis!4
      r8 fis e d cis4 e~ e8 e d c
      %% Takt  5 ==================================================
      h4 d g2 fis4 a~
      a4 e a2. gis4~
      gis8 g fis e dis e dis cis! h4 e~
      e2 dis r8 d cis h
      cis4 d e8 ais, h cis d2
      %% Takt 10 ==================================================
      cis4 h cis d e2~
      e4 a, d cis8 h cis2~
      cis8 cis \staffdown h ais h fis g! a! h2~
      h8 gis a h \staffup cis4 d e2~
      e8 \staffdown a, h cis d4 d2 cis8 h
      %% Takt 15 ==================================================
      a4 a2 d,4 g8 h a g
      fis8 g fis e d2 r8 s8
   }
}

tenor = {
   \new Voice \relative a, {
      \global
      \partial 2 r2
      r8 a h cis d cis d e fis e fis gis
      a8 e fis gis a gis a h cis2~
      cis4 h r8 a h cis d cis d e
      cis8 d cis h a h a g! fis2
      %% Takt  5 ==================================================
      r8 a g fis e g fis e d e fis gis
      a8 gis a h cis h cis dis eis fis e d
      cis4 c h h, e8 fis g a
      h8 ais h cis dis cis h a gis4 g
      r8 fis e d! cis e d cis h cis d e
      %% Takt 10 ==================================================
      fis8 e fis g a g a h cis a h cis
      d8 cis, d e fis e fis gis ais fis gis ais
      h4 fis h,8 d e fis g a g fis
      e4 fis8 gis! a fis e d cis e d cis
      \halsdown d8 fis g a h cis h a g h a g
      %% Takt 15 ==================================================
      fis8 d e fis g a g fis e g fis e
      d8 h a g fis \tempo 2 = 64 g fis e \tempo 2 = 14 d_\fermata s8
   }
}

right = {
   \clef "treble"
   <<
      \alt
      \sopran
   >>
}

left = {
   \clef "bass"
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative d {
      \partial 2 r2
      r2 r r4 d
      a'2 r r4 a,
      d2 r r4 e,
      a1_\fermata r4 d
      %% Takt  5 ==================================================
      g2 r r4 d
      a'2 r r4 cis,
      fis2 r r4 e,
      h'1_\fermata r4 e
      ais,2 r r4 h
      %% Takt 10 ==================================================
      fis2 r r4 a
      d,2 r r4 fis'
      h,2 r r4 g
      cis2 r r4 a
      d2 r r4 cis
      %% Takt 15 ==================================================
      fis,2 r r4 a
      d,1 r8 s8
   }
}


\score {
   <<
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
      \context Staff = pedal {
         \context Voice = pedal \pedal
      }
   >>

   \layout{
      \context {
         \PianoStaff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
      \context {
         \Staff      \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 3.5)
      }
      indent = 1.0\cm
   }
}

\score {
   \unfoldRepeats {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "church organ"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "church organ"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "trombone"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 82 2)
      }
   }
}
