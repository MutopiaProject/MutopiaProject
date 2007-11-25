\version "2.10.33"

\header {
 mutopiatitle = "Heut triumphieret Gottes Sohn"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 630"
 mutopiainstrument = "Organ"
 date = "1714"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/20"

 title = "Heut triumphieret Gottes Sohn"
 composer = "Johann Sebastian Bach"
 opus="BWV 630"
 footer = "Mutopia-2007/11/25-1163"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key d \minor
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

forceshift    = { \once \override NoteColumn #'force-hshift = #1 }
forceshiftt   = { \once \override NoteColumn #'force-hshift = #2 }
halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative b' {
      \global
      \halsup
      \partial 2 b2
      b1 c2
      d1 c2
      b1 a2
      b1\fermata b2
      %% Takt  5 ==================================================
      b1 b2
      c1 a2
      g2 fis1
      g1\fermata a2
      b1 c2
      %% Takt 10 ==================================================
      d2. es4 f2
      es2 d c
      \once \override Script #'padding = #1.3 d1\fermata d2
      d1 c2
      d1 c2
      %% Takt 15 ==================================================
      d2. c4 b2
      a1\fermata \shiftOn a2 \shiftOff
      a1 b2
      c1 a2
      g2 fis1
      %% Takt 20 ==================================================
      g1\fermata g2
      a1 b2
      c1 d2
      d2 cis1
      \shiftOn \once \override Script #'padding = #1 d1.\fermata \shiftOff
      %% Takt 25 ==================================================
      d2 d d
      \shifttieupp d1.~
      \once \override NoteColumn #'force-hshift = #-1 \once \override Script #'padding = #1 d1\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown \dotsDown
      \partial 2 r8 d e fis
      g2~ g8 f! es d c g' f es
      d2 c8\rest c d es f g f es
      d4 es8 f g2~ g8 g f es
      d1 r8 d es f
      %% Takt  5 ==================================================
      g8 as g f es f d es f4 es8 d
      c4. d8 es d c4~ c8 es d c
      b4 \shifttiedown es~ es8 es d c d2~
      d8 d e! fis g2~ g8 fis g a
      d,4 e8 fis g f es d c g' f es
      %% Takt 10 ==================================================
      d8 f g a b2~ b8 c b as
      g8 f g a! \halsup \shiftOn b2. \shifttiedown a4~
      a8 \shiftOff a g fis g2 \halsdown r8 es d c~
      c8 c \staffdown b a b c d b \staffup g'4 f!8 es!
      d2 r8 c' b a g a fis g
      %% Takt 15 ==================================================
      a8 g fis e! d2~ d8 e d cis
      d8 g fis e fis2~ \halsup \forceshift fis8 e fis g
      \shiftOn a8 \shiftOff g fis! e fis2. \halsdown g4~
      g4 fis8 g a b a g fis!4._\prall fis8
      g4 es~ es8 es d c d2
      %% Takt 20 ==================================================
      r8 d e! fis g4 d~ d8 d c \staffdown b
      a8 c \staffup d es f!4 c d8 as' g f
      es8 d c4 f8 g f es \stemUp \shiftOn d4 \shiftOff f
      \shiftOn b2~ b8 b \shiftOff a g a4. g8
      \forceshift fis8 \shiftOff g fis e \halsdown d b' a g fis!4. fis8
      %% Takt 25 ==================================================
      g4. a8 g4. fis8 \halsup \shiftOn g a \tieDown \shifttieup b4~
      \dotsUp \forceshift b4. a8 b4. a8 b2 \shiftOff
      \stemDown \shiftOn a1 \shiftOff
   }
}

tenor = {
   \new Voice \relative c' {
      \global
      \partial 2 r2
      r8 c b a g4 b2 a4
      b8 f g a b2 a
      r8 b c d es4 d c2
      r8 c b a b f g a b4 c8 d
      %% Takt  5 ==================================================
      es8 c b as g as b4~ b8 as g4~
      g8 g a! b c b a g fis2
      g4 c a2~ a8 c b a
      b2 r8 b a g d' d, e! fis
      g8 fis g a b2. a4
      %% Takt 10 ==================================================
      b2 r8 a b c d es d c
      b a! b c d4 \staffup g c,8 g' f es
      d2~ d8 \staffdown b a g \halsdown fis2
      \shifttiedown g1~ g8 b \halsneutral a4~
      a8 a g fis g2 r8 c d es
      %% Takt 15 ==================================================
      a,1~ a8 g fis e
      fis8 e d cis d a' h cis \staffup \forceshift d cis! d e
      \forceshift fis8 e d cis d es d \staffdown \halsneutral c b a g b
      a8 g a b c d es4~ es8 es d c
      b2 a~ a8 c b a
      %% Takt 20 ==================================================
      b2 r8 g a b e,!2
      f!2 r8 b a g f4 g~
      g4. b8 a b a g f4 \staffup d'
      g2~ \forceshift g~ g8 g fis e!
      \forceshift d8 \staffdown b a g \halsneutral fis g fis e d4. c'8
      %% Takt 25 ==================================================
      d4. c8 b4. c8 d4 \staffup g~
      \forceshift g8 fis g4~ g8 fis g4~ g8 fis g4~
      g8 \tempo 2 = 46 g fis \tempo 2 = 38 e \tempo 2 = 15 fis2\fermata
   }
}

bass = {
   \new Voice \relative c' {
      \global
      \partial 2 s2
      s1.*25
      s2 r4 \staffdown \halsdown r8 cis \tempo 2 = 68 d a b g
      d'1
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

pedal = {
   \global
   \clef "bass"
   \relative g {
      \partial 2 r2
      r2 r4 g es f
      b,2 r4 b f' d
      \shifttieup g2~ g8 d es c f4 f,
      b1_\fermata r2
      %% Takt  5 ==================================================
      r2 r4 g' d es
      a,!2 r4 a d b
      es8 b c a d2 d,
      g1_\fermata r2
      r2 r4 g' es f
      %% Takt 10 ==================================================
      b,2 r4 g d' b
      \shifttieup g'2 ~ g8 d es c f4 f,
      b1_\fermata r2
      r2 r4 b' es, f
      b,2 r4 b es c
      %% Takt 15 ==================================================
      fis2~ fis8 e! fis d g4 g,
      d'1_\fermata r2
      r2 r4 a' d, es
      a,2 r4 a d b
      es8 b c a d2 d,
      %% Takt 20 ==================================================
      g1_\fermata r2
      r2 r4 f' d es
      a,!2  r4 f' b8 a b a
      b8 f g e! a2 a,
      d2 r4 d d'8 c d a
      %% Takt 25 ==================================================
      b8 a b fis g c, d a b fis g cis
      d1.~
      d2 d,_\fermata
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
         tempoWholesPerMinute = #(ly:make-moment 76 2)
      }
   }
}
