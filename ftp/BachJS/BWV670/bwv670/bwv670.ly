\version "2.10.33"

\header {
   mutopiatitle = "Christe, aller Welt Trost"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 670"
   mutopiainstrument = "Organ"
   date = "1739"
   source = "Edition Peters 8662"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Feb/1"

   title = "Christe, aller Welt Trost"
   subtitle = "a 2 Clav. e Pedale"
   composer = "Johann Sebastian Bach"
   opus="BWV 670"
 footer = "Mutopia-2008/02/04-1275"
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
   \new Voice \relative g' {
      \global
      \halsup \once \override TextScript #'extra-offset = #'( -4 . 2)
      g2^\markup { \bold "Canto fermo in Tenore" } f b4 c8 d es2~
      es4 es2 d4 c b c2
      b2. c4 d2 d~
      d4 c8 h c4 f h,!2 c~
      %% Takt  5 ==================================================
      c4 b! a g e' g c, f
      b,4 a b c8 b a!4 f b2~
      b2. c8 b a4 b8 c d2~
      d4 es8 f g4 f es2 r
      c2 b es4 f8 g as2~
      %% Takt 10 ==================================================
      as4 as2 g4 f es f2
      es8 d es f g4 a b2. a8 g
      a4 c f, b es, d es2~
      es4 d8 c b4 es a,! g8 a b2~
      b2 a as g
      %% Takt 15 ==================================================
      c4 d8 es f2~ f4 f2 es4
      d4 c des2~ des c
      b2 es~ es4 d!8 c d4 g
      c,4 d8 e f2~ f4 es2 d8 c
      d2 c~ c b
      %% Takt 20 ==================================================
      es4 f!8 g as!2 g2. as!8 g
      fis4 d g2~ g fis!8 e d c
      b4 d g2~ g4 f!8 es! f4 d
      es2 d g4 a8 h c2~
      c4 c2 b4 as g as b8 as
      %% Takt 25 ==================================================
      g1~ g4 c, f2~
      f2 e f es
      d2 des~ des4 c8 b as4 f'~
      f4 es2 des4 c2 b
      es4 f8 g as2~ as4 as2 g4
      %% Takt 30 ==================================================
      f4 es f2 es4 as2 g4~
      g4 f es2 des4 ges2 f4~
      f4 es des2 c b
      es4 f8 g as2~ as4 as2 g4~
      g8 f es d c b c d es d c b a4 r
      %% Takt 35 ==================================================
      r8 c d es f g as! f g4 c, f2~
      f2. es8 d es2 d
      c2. d8 c h4 g c2~
      c2 h c8 b as g f as g f
      e4 \once \override Tie #'staff-position = #-3 f~ f8 e f g as2 g
      %% Takt 40 ==================================================
      c4 d8 e f2~ f4 f2 es4
      des4 c des2~ des c~
      c4 c f es8 des c4 des es2
      d!2 es b4 as!8 g f2~
      f4 f2 g4 a b a!2
      %% Takt 45 ==================================================
      b8 c d! b es4 f~ f8 es d es f4 g~
      g4 f8 es d2 c~ c8 b a! b
      c4 d8 es f2~ f4 g8 a b2~
      b4 c8 b as!2~ as4 b8 as g2~
      g2. as8 g f es d c b2~
      %% Takt 50 ==================================================
      b8 b es f es d c b as1~
      as8 as d es d c b as g1~
      g8 g f es f2 b4 c8 d es2~
      es4 es2 d4 c b c2~
      c2 b4 c8 b a2 b8 a g f
      %% Takt 55 ==================================================
      es4 f8 g f es d c d4 r r2
      b'2 a d4 e8 f g2~
      g2 f~ f e
      r4 es! f es des es8 f es des c b
      c1~ c4 d!8 c h c h c
      %% Takt 60 ==================================================
      d1~ d4 h c2~
      c2 h c1\fermata
   }
}

alt = {
   \new Voice \relative c' {
      \global
      \halsdown
      r1 d2 c
      f4 g8 a b2~ b4 b2 a!4
      g4 f g2 f2. g4
      as!2 as~ as4 g f es
      %% Takt  5 ==================================================
      d1 c4 d8 e f2~
      f2 es!~ es d~
      d2 c f4 g8 a! b2~
      b4 b2 as!4 g4 f g2
      f2. g4 as2. b4
      %% Takt 10 ==================================================
      c4 b8 as b2 c4 b c d
      es4 b,8 a b4 c d2 c
      f4 g8 a b2~ b4 b2 as!4
      g4 f g2 f2. es8 f
      g2 f~ f2. es8 d
      %% Takt 15 ==================================================
      es4 f8 g as2~ as4 c f, g8 as
      b2 es,~ es4 f8 g as2~
      as4 g8 f g4 c f,2 b~
      b2 as4 g8 f g4 c, f2~
      f8 d g2 fis8 e fis4 a d, g
      %% Takt 20 ==================================================
      es!2 d g4 a8 h c2~
      c4 c2 b!4 a g a2
      g2. a4 h2 h~
      h4 c2 h4 c f,2 e4
      as!4 b!8 c des2~ des2. c4
      %% Takt 25 ==================================================
      b4 as b c8 b as2. b8 c
      des2. c8 b a4 d2 c4~
      c4 b2 as!4 g2 f
      b4 c8 d! es2~ es4 es2 des!4
      c4 b c2 b2. c4
      %% Takt 30 ==================================================
      d1~ d4 c b2
      a4 des2 c4~ c b as2
      g!4 c2 b4 es,2 d!
      g4 as8 b c2~ c4 c2 b4~
      b8 as g f es d es f g2~ g8 f g a!
      %% Takt 35 ==================================================
      b2 r r4 c2 h8 a
      h4 d g,2~ g4 as!8 g fis4 g~
      g4 f!8 e f2~ f4 es2 d4~
      d8 es f4~ f8 as! g f es2 d
      g4 as8 b \once \override Tie #'staff-position = #4 \tieUp c2~ \tieDown c4 c2 b4
      %% Takt 40 ==================================================
      as4 g as2 g4 b8 as g f g4
      f4 as8 g f es f4 es4 b'2 as4~
      as4 a b2~ b2. a!4
      b4 b, c d es2. d8 c
      d8 c b c d c d e f4 es8 des c b c4
      %% Takt 45 ==================================================
      b4 b'~ b8 as! g f g4 c~ c8 b a g
      a8 b c2 b4~ b a! g2~
      g2 f4 g8 a b2. c8 d
      es2. d8 es f2. g8 f
      es8 d c b as2~ as~ as8 as g f
      %% Takt 50 ==================================================
      g1~ g8 g f es d es d es
      f1~ f8 f es d es2~
      es2~ es8 es d c d2 g4 a8 h
      c2 b! a~ a4 g8 a
      d,4 e8 fis g2 c,4 d8 es f4 b,~
      %% Takt 55 ==================================================
      b4 b2 a4 d4 es8 f g2~
      g4 g2 f8 es f4 r r2
      r4 c' des c b4 c8 des c b as g
      f1~ f2 g~
      g4as8 b as g f e f1~
      %% Takt 60 ==================================================
      f4 g8 as g f es! d es4 f8 g \tempo 2 = 64 f es \tempo 2 = 58 d c
      es2 \tempo 2 = 52 d8 es \tempo 2 = 40 f4
      \tempo 2 = 30 \appoggiatura f4 e1
   }
}

tenor = {
   \new Voice \relative g {
      \global
      R\breve *4
      %% Takt  5 ==================================================
      R\breve
      R\breve
      g1 f
      b1 c2. d4
      es1 es
      %% Takt 10 ==================================================
      es1~ es2 r
      R\breve
      R\breve
      R\breve
      es1 d
      %% Takt 15 ==================================================
      c1~ c\prallprall
      b1~ b2 r
      R\breve
      R\breve
      R\breve
      %% Takt 20 ==================================================
      r1 c
      d1 d
      d1~ d2 r
      R\breve
      R\breve
      %% Takt 25 ==================================================
      R\breve
      g,1 f
      b1 c2. d4
      es1 es
      es1~ es2 r
      %% Takt 30 ==================================================
      R\breve
      R\breve
      R\breve
      es1 d
      c1~ c\prallprall
      %% Takt 35 ==================================================
      b1~ b4 r r2
      R\breve
      R\breve
      R\breve
      r1 c
      %% Takt 40 ==================================================
      c1 b
      as1 g\prallprall
      f\breve
      R\breve
      R\breve
      %% Takt 45 ==================================================
      R\breve
      f1 c'
      c1 b
      c1 d
      es1 d
      %% Takt 50 ==================================================
      c1~ c\prallprall
      b\breve
      R\breve
      R\breve
      R\breve
      %% Takt 55 ==================================================
      R\breve
      r1 b
      as1 b
      c1 b~
      b1 as\prallprall
      %% Takt 60 ==================================================
      g\breve~
      g\breve\fermata
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
   \clef "alto"
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative d {
      R\breve
      R\breve
      R\breve
      r1 d2 c
      %% Takt  5 ==================================================
      f4 g8 a b2~ b4 b2 a!4
      g4 f g2 f g4 f
      es4 d es2~ es d4 es8 f
      g4 f es2~ es4 d c b
      as4 g as b c b c d
      %% Takt 10 ==================================================
      es4 f g es as g as b8 as
      g4 g,2 f4 b c8 d es2~
      es4 es2 d4 c b c2
      b2. c4 d2 d~
      d4 c8 b c4 f b, c8 d es2~
      %% Takt 15 ==================================================
      es 4 as2 g4 f es d es8 f
      g2. f8 g c,4 b c d!
      es2 r r1
      R\breve
      b2 a d4 e8 fis g2~
      %% Takt 20 ==================================================
      g4 g2 f!4 es! d es2
      d4 a b g d'2 d,
      g4 a b c d c d g,
      g'2 f es4 f8 g as!4 g
      f4 g8 as b2~ b4 e, f2~
      %% Takt 25 ==================================================
      f2 e f4 es des c
      b4 g c2 f, r
      r4 g'2 f4~ f e f2
      g4 as8 b c4 b as g8 f g2
      as2. as,4 es' f g es
      %% Takt 30 ==================================================
      b'2 h4 g c c, d e
      f,4 f' g a b b, c d!
      es,!4 es' f g as! as,2 g4~
      g4 f2 es4 f2 g
      es4 es'2 d4 c d8 es f4 es
      %% Takt 35 ==================================================
      d4 c d b es2 d
      g4 a8 h c2~ c4 c2 b4
      as!4 g as2 g fis
      g2 g, c4 c'2 b4~
      b4 as2 g4~ g f e d8 e
      %% Takt 40 ==================================================
      f2 r4 d g f g c,
      f4 es! f b, es des es as,
      des4 c des b f'2 f,
      b2 r r4 es f g
      as4 b as g f ges2 f8 es
      %% Takt 45 ==================================================
      d!4 b c d es c d e
      f4 r r2 f,2 e
      a4 b8 c d2~ d4 es2 d4
      c4 b c2 b h
      c2 c, r4 b'! c d
      %% Takt 50 ==================================================
      es4 c d es f g f es
      d4 b c d es f g as
      b4 c b as g f es d
      c8 g' fis g g,2~ g fis
      b4 c8 d es2~ es4 es2 d4
      %% Takt 55 ==================================================
      c4 b c2 b2. c4
      d2 d~ d4 g e c
      f2 f, g g'
      a2 a, b4 as' g f
      e4 g e c f es d c
      %% Takt 60 ==================================================
      h4 d h g c d es f
      g2 g, c,1_\fermata
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
   <<
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \right
      }

      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \tenor
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \tenor
      }

      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c, \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \pedal
      }
   >>
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 68 2)
      }
   }
}
