\version "2.10.33"

\header {
 mutopiatitle = "Dies sind die Heilgen zehn Gebot"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 635"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Edition Peters 8660"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/27"

 title = "Dies sind die Heilgen zehn Gebot"
 subtitle = "\"Dieß sind die Heilgen 10 Gebothe\""
 composer = "Johann Sebastian Bach"
 opus="BWV 635"
 footer = "Mutopia-2007/11/29-1173"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key c \major
   \time 2/2
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   #(override-auto-beam-setting '(end 1 16 * *) 1 4)
   #(override-auto-beam-setting '(end 1 16 * *) 2 4)
   #(override-auto-beam-setting '(end 1 16 * *) 3 4)
   #(override-auto-beam-setting '(end 1 16 * *) 4 4)
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
   \new Voice \relative g' {
      \global
      \halsup
      \partial 2 g2
      g2 g
      g2 g
      g4 a h2
      c2\fermata c
      %% Takt  5 ==================================================
      d2 d
      h!2 g
      g4 a h2
      c2\fermata c
      d2 d
      %% Takt 10 ==================================================
      c2 g
      a2 g
      f2\fermata g
      a2 h!
      c1
      %% Takt 15 ==================================================
      b2 g4 a
      b1
      a!2 g4 g
      g1~
      g1~
      %% Takt 20 ==================================================
      g1
      \bar "|."
   }
}

alt = {
   \new Voice \relative h {
      \global
      \halsdown \dotsDown
      \partial 2 h4 c~
      c8. h16 c h c d e c d e f e d f
      e16 d e f e f e d c2
      c8\rest d d d d d e f
      g4~ g16 c, f8~ f16 g f e f e f g
      %% Takt  5 ==================================================
      a16 g a b a b a g fis g fis e d fis e fis
      g16 f! g a g a g f e f e d c h c d
      e16 g fis e fis a g fis g a g f e f e d
      c8 c c c c c d e
      \staffdown a,8 \staffup d e fis g16 a h c h c a h
      %% Takt 10 ==================================================
      c16 a g f! e f e d e8 d c b
      a8 f' f f f f e d
      c16 es d c d f e d c d e d c g' f e
      f8 g f es d16 f es f g as g f
      es16 f es d c es d f es d e fis g fis g a
      %% Takt 15 ==================================================
      d,8 d d d d d e! fis
      g16 d e fis g fis g a b! c b a g as g f
      es16 g f es f g f es d4~ d16 h! c d
      es8 f f f f f es! d
      es16 \staffdown g, a h c h c \staffup d es! f es d c es d c
      %% Takt 20 ==================================================
      h1
   }
}

tenor = {
   \new Voice \relative g {
      \global
      \partial 2 g4 e
      d8 g g g g g a h
      c8 a g f e16 d e f g f g a
      h16 g a h c a h c h c d c h c h a
      g16 e f g a8. a16 g8 b a g
      %% Takt  5 ==================================================
      f8 a a a a a h! c
      d2~ d8 g, a h
      c8 d, d d d d e f
      g16 f g a g a g f e d c d e f g a
      fis16 d e fis g fis g a h8 g g g
      %% Takt 10 ==================================================
      g8 g a h c16 c, d e f e f g
      c,8 c c c c c d e
      f8 f f f e g a b
      c16 b a b c d es f g8 g, g g
      g8 g a h! c4 b8 a
      %% Takt 15 ==================================================
      g16 a b a g a g fis g d f es d es d c
      b8 d' e! fis g f es d
      c16 es d c d es d c h! c h a g4~
      g8 g g g g g a h!
      c8 r r16 g a h c as g f es g f es
      %% Takt 20 ==================================================
      d1
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
   \relative g, {
      \partial 2 r8 g g g
      g8 g a h c4 r
      r8 c c c c c e f
      g4 fis g8 a g f
      e8 c c c c c d e
      %% Takt  5 ==================================================
      f8 g f e d h! h h
      h8 h c d e f e d
      c4 h8 a g a g f
      e8 f e d c c' c c
      c8 c h a g a g f!
      %% Takt 10 ==================================================
      e8 c c c c c d e
      f16 f' g, f' a, f' b, f' c c' d, c' c, c' b, c'
      a,8 b b b b b a g
      f8 f' f f f f es d
      c8 c, c c c c e! fis
      %% Takt 15 ==================================================
      g8 fis g a b c b a
      g8 g' g g g g a b
      c8 f, f f f f es d
      c16 d h! d g, d' a d h d c es f, f' g, g'
      c,,8 c c c c c es c
      %% Takt 20 ==================================================
      g'1
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
            \transpose g g, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 70 4)
      }
   }
}
