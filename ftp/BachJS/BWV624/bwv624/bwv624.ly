\version "2.10.33"

\header {
 mutopiatitle = "Hilf Gott, dass mir's gelinge"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 624"
 mutopiainstrument = "Organ"
 date = "1716"
 source = "Edition Peters 8660"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/7"

 title = "Hilf Gott, das mir's gelinge"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 624"
 footer = "Mutopia-2007/11/10-1133"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \minor
   \time 4/4
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
   \new Voice \relative g' {
      \global
      \halsup
      \partial 4 g4
      a4. g8 f4 d8 es!
      f4 g2\fermata a!4
      b8 c d4 c b
      a g2\fermata g4
      %% Takt  5 ==================================================
      a4. g8 f4 d8 es!
      f4 g2\fermata a!4
      b8 c d4 c b
      a g2\fermata g4
      a4 b c a
      %% Takt 10 ==================================================
      b4 g a f~\fermata
      f4 f b a
      b4 c d4. c8
      b8 a16 g fis2\fermata a4
      %% Takt 15 ==================================================
      b8 c d4 c! b
      a4 g~ g2~
      g2.\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative cis' {
      \global
      \halsdown \dotsDown
      \partial 4 r4
      r4 cis d4. c8
      b4 g8 a h4 c
      r4 d e8 fis g4
      f!4 es! d c
      %% Takt  5 ==================================================
      r4 cis d4. c8
      b4 g8 a h4 c
      r4 d e8 fis g4
      f!4 es! d c
      r4 d e f
      %% Takt 10 ==================================================
      g4 e f d
      es!4 c2 c4
      f4 e fis g~
      g4 a8. g16 fis8 e16 d cis8 cis\rest
      r4 d e8 fis g4
      %% Takt 15 ==================================================
      f!4 es! d c~
      c4. h16 a \once \override Script #'extra-offset = #'(0 . -4.1) h4\fermata
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      #(override-auto-beam-setting '(end * * * *) 1 8)
      #(override-auto-beam-setting '(end * * * *) 2 8)
      #(override-auto-beam-setting '(end * * * *) 3 8)
      #(override-auto-beam-setting '(end * * * *) 4 8)
      #(override-auto-beam-setting '(end * * * *) 5 8)
      #(override-auto-beam-setting '(end * * * *) 6 8)
      #(override-auto-beam-setting '(end * * * *) 7 8)
      #(override-auto-beam-setting '(end * * * *) 8 8)
      \set tupletSpannerDuration = #(ly:make-moment 1 8)
      \override TupletBracket #'bracket-visibility = ##f
      \tupletUp
      \partial 4 \times 2/3
         {
         r16 d c b a g
         \override TupletNumber #'transparent = ##t
         cis h a d c b a g f e d e     d a' g f e d fis e d g f es
         d b' a g f es d c b es d c    f as g f es d es g f es d c
         b es d c b a! g b c d e fis   g fis g a b c \clef "treble" d c d es! d es~
         es d c d es f! g a h c d es    f g as g as f es g f es f d
         %% Takt  5 ==================================================
         cis h a d c b a g f e d e     d a' g f e d fis e d g f es \clef "bass"
         d b a g f es d c b es d c     f as g f es d es g f es d c
         b es d c b a g b c d e fis    g fis g a b c \clef "treble" d c d es! d es~
         es d c d es f! g a h c d es    f g as g as f es d c b a! g
         fis es' d c b a g f es d c d  \clef "bass" g, a b c d e f, a g a b c
         %% Takt 10 ==================================================
         d g, a b c d \clef "treble"
                      e c d e f g      c, d es f g a b a g f es d
         c es d c d b a b c d es f     g a b c d es f g f es d c
         b a g f es d \clef "bass"
                      c b a g fis e    d fis g a b c d c b a b g
         c es d c b a \clef "treble"
                      d e fis g a b    c es! d c d b a b c d es c
         b a g fis g a d, e fis g a b  c b a es'! d c g' f! es es d c
         %% Takt 15 ==================================================
         c b a a g f b a g c h a       d c h h a g g f es c' b as
         g f es es d c g' f es d es c
      }
      % tenor has 1/8 more than other voices in this last bar
      \times 1/2 { \tempo 4=30 d16[ g d] h[ c \tempo 4 = 18 d] \tempo 4 = 5 g,8\fermata }
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
   \relative g {
      \partial 4 r8 g~
      g8 f e a, d c b4~
      b8 c b a g g'4 fis8
      g8 a b4~ b8 a g c
      d8 d,4 c8 h g c b
      %% Takt  5 ==================================================
      a8 f' e a d, c b4~
      b8 c b a g g'4 fis8
      g8 a b4~ b8 a g c
      d8 d,4 c8 h g c c'~
      c8 fis, g b~ b a d c
      %% Takt 10 ==================================================
      b8 g c b a f b b,~
      b8 a16 g a8 f'~ f8 es16 d es8 c
      d8 g, a b c b16 a b8 es!~
      es8 c'4 b8 a g4 fis8
      g8 a b4~ b8 a g c
      %% Takt 15 ==================================================
      d8 d,4 c8 h g es'4~
      es8 fis, g2_\fermata
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
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "recorder"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d' d''' \left
         }
         \new Staff {
            \set Staff.midiInstrument = "bassoon"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 50 4)
      }
   }
}
