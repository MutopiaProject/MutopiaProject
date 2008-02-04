\version "2.10.33"

\header {
   mutopiatitle = "Kyrie, Gott Vater in Ewigkeit"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 669"
   mutopiainstrument = "Organ"
   date = "1739"
   source = "Edition Peters 8662"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Jan/30"

   title = "Kyrie, Gott Vater in Ewigkeit"
   subtitle = "a 2 Clav. e Pedale"
   composer = "Johann Sebastian Bach"
   opus="BWV 669"
 footer = "Mutopia-2008/02/04-1274"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key c \minor
   \time 4/2
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

halsup        = { \stemUp \tieUp \slurUp \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral   = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
mmrestdown    = { \once \override MultiMeasureRest #'extra-offset = #'( 0 . -1 ) }
mmrestdownn   = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestup      = { \once \override MultiMeasureRest #'staff-position = #2 }
mmrestupp     = { \once \override MultiMeasureRest #'staff-position = #4 }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative b' {
      \global
      \halsup
      \mmrestup R\breve
      \mmrestup R\breve
      \mmrestup R\breve
      \mmrestup R\breve
      %% Takt  5 ==================================================
      d1\rest b
      c1 d~
      d\breve
      \mmrestupp R\breve
      \mmrestup R\breve
      %% Takt 10 ==================================================
      \mmrestup R\breve
      \mmrestup R\breve
      c2. d4 es1
      es1 d
      c1 c\prallprall
      %% Takt 15 ==================================================
      b\breve
      \mmrestup \once \override MultiMeasureRest #'extra-offset = #'( 0.8 . 0 )R\breve
      \mmrestup R\breve
      \mmrestup R\breve
      c1 c
      %% Takt 20 ==================================================
      b1 as
      g1 g\prallprall
      f\breve
      \mmrestup R\breve
      \mmrestup R\breve
      %% Takt 25 ==================================================
      \mmrestup R\breve
      f1 c'
      c1 b
      c1 d
      es1 d
      %% Takt 30 ==================================================
      c\breve\prallprall
      b\breve
      \mmrestup R\breve
      \mmrestup R\breve
      \mmrestup R\breve
      %% Takt 35 ==================================================
      \mmrestup R\breve
      d1\rest b
      as1 b
      c1 b~
      b1 as\prallprall
      %% Takt 40 ==================================================
      g\breve~
      g\breve~
      g\breve\fermata
      \bar "|."
   }
}

alt = {
   \new Voice \relative f' {
      \global
      \halsdown \once \override TextScript #'extra-offset = #'( -4 . 1)
      e1\rest^\markup { \bold "Canto fermo in Soprano" } f2 g
      as2. g8 f g4 a b2~
      b2. as!4 g f g2
      f2 es~ es4 d8 c d4 g~
      %% Takt  5 ==================================================
      g4 f b, c8 d es4 f8 g f2
      es2. f8 es d4 e fis g
      a2 b c2. b8 a!
      b4 c d2~ d2. c4
      b4 a b2 a4 d g, c~
      %% Takt 10 ==================================================
      c4 b a d b g f! es
      d2 e f2. es8 d
      es4 f g2~ g2. f4
      es4 d es f g a b2~
      b4 a b2~ b4 as8 g as2~
      %% Takt 15 ==================================================
      as1~ as2 g
      f2 g as!2. g8 f
      g4 a b2~ b2. as4
      g4 f g2 f4 g8 as g4 f
      e4 c d e f2 es
      %% Takt 20 ==================================================
      des2. es8 f es4 des c2~
      c2. d!4 e f e2
      f2. es!4 des1
      c2. h8 c d!1~
      d4 c2 h4 c c' f,2~
      %% Takt 25 ==================================================
      f4 g c, d8 e f4 g as g
      f4 e f2~ f2. es!8 d!
      es2 es\rest es f
      g2. f8 es! f4 g as2~
      as2. g4 f es f g
      %% Takt 30 ==================================================
      es4 f g2 f4 g a c
      f,4 es d as'!~ as b8 as g2
      f2 g\rest g4\rest b as g
      f4 g as2~ as8 b as g as4 b
      c2 g\rest f es
      %% Takt 35 ==================================================
      d2. es8 f es4 des c2~
      c2. d!4 e f e2
      f4 g as2~ as4 b8 c b4 as
      g4 f e f~ f e!8 d e4 f
      g4 f g2~ g4 f8 g f4 es!
      %% Takt 40 ==================================================
      d2 es f2. es8 d
      es4 f g2~ g2. f4
      es4 d es2 d1\fermata
   }
}

tenor = {
   \new Voice \relative b {
      \global
      b2 c d2. c8 b
      c4 d es2~ es2. d4
      c4 b c2 b es~
      es4 d g, a b f b2
      %% Takt  5 ==================================================
      as!2. g8 f g4 a b2~
      b4 a8 g a2 b4 r r2
      r4 d c b a d8 c d4 r
      \clef "treble" g2 f! es2. f8 g
      f4 es d2~ d2. e4
      %% Takt 10 ==================================================
      fis4 g fis2 g4 es! d c
      \clef "bass" b4 a g c~ c d g, a!8 h
      c4 d es g, c h c2~
      c2. b!8 a b4 c \clef "treble" d es8 f
      g2 c,~ c r4 f8 es
      %% Takt 15 ==================================================
      f4 d es f b,2 es~
      es4 d2 des4 c2 d
      es2. d8 c d4 e f2~
      f2. es!4 des c des2
      c4 e f g c,2 r
      %% Takt 20 ==================================================
      \clef "bass" f,2 g as2. g8 f
      g4 as b2~ b2. a8 g
      a4 b c2~ c2. b4
      as!4 g as2~ as4 d, g f
      es2 f g a
      %% Takt 25 ==================================================
      b2. as!8 g as4 b c2~
      c2. b4 as g as2
      g4 es as2~ as4 g f b~
      b4 as8 g as2~ as4 r r2
      b2 c d2. c8 b
      %% Takt 30 ==================================================
      c4 d es2~ es2. d8 c
      d4 es f2~ f2. es4
      d4 b c d es b es2~
      es2. d8 c d4 e f2~
      f4 es!8 d es4 c d2. c4
      %% Takt 35 ==================================================
      b2 as! g2. as8 b
      as4 g f2 g8 as b des c b as g
      f2 r4 c' f2 r
      r4 b,8 c b4 as g2. f4
      c'4 des2 c4~ c d8 es! d4 c
      %% Takt 40 ==================================================
      h2 c d2. c8 h!
      c4 d es2~ es2. d4
      c h << \new Voice { \stemUp c2 \once \override Script #'extra-offset = #'( 0 . 0.3 ) h!1\fermata }
             \new Voice { \stemDown \tempo 2 = 58 h,4\rest \tempo 2 = 38 fis' \tempo 2 = 24 g1 } >>
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
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative b, {
      R\breve
      R\breve
      R\breve
      b2 c d2. c8 b
      %% Takt  5 ==================================================
      c4 d es2~ es2. d4
      c4 b c2 b4 b' a g
      fis4 d g2~ g4 fis!8 e fis2
      g4 a b h c c,8 b! c4 a
      d4 c b a g fis b2
      %% Takt 10 ==================================================
      a4 g d' d, g2 a!
      b2. a8 g a4 h c2~
      c2. b!4 as! g as2
      g2 r g' f
      e2. f8 g f4 es d2~
      %% Takt 15 ==================================================
      d4 b c d es f g a
      b,4 b'8 a b4 e, r f8 e f4 b,
      es!4 f g es f2 f,
      c'2 c'~ c b~
      b2 as4 g as f g a
      %% Takt 20 ==================================================
      des,4 c b c8 des c4 f, f'2~
      f4 e8 d e4 g c, b c des
      es!2 a, b4 c des es
      f4 es d! c h2 r
      c2 d es2. d8 c
      %% Takt 25 ==================================================
      d4 e f2~ f2. es4
      des4 c des2 c1~
      c4 b c d! es2. d4
      e4 c f2~ f4 b, b' as
      g4 f es!2 b'1~
      %% Takt 30 ==================================================
      b2. a8 g a4 c f, es
      d4 c b c8 d es4 f g a
      b2 as! g2. as8 b
      as4 g f2~ f2. g4
      a4 b a2 b4 d, g2~
      %% Takt 35 ==================================================
      g4 f8 es f4 b, es2 e4 c
      f,4 g as b8 as g2 r
      f'2 es d!2. e8 f
      e4 d c2~ c2. d4
      e4 f e2 f4 f, f'2~
      %% Takt 40 ==================================================
      f4 es! d c h h'8 a h4 g
      c2. c,8 h c4 d es f
      g1 g,_\fermata
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
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose c c' \sopran
         }
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
            \set Staff.midiInstrument = "tuba"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 68 2)
      }
   }
}
