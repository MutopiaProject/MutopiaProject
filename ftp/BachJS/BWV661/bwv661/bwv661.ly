\version "2.10.33"

\header {
 mutopiatitle = "Nun komm, der Heiden Heiland"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 661"
 mutopiainstrument = "Organ"
 date = ""
 source = "Edition Peters 8662"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Dec/27"

 title = "Nun komm, der Heiden Heiland"
 subtitle = "In Organo pleno"
 composer = "Johann Sebastian Bach"
 opus="BWV 661"
 footer = "Mutopia-2007/12/29-1191"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \minor
   \time 2/2
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

halsup        = { \stemUp \tieUp \slurUp  \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral   = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
mmrestdown    = { \once \override MultiMeasureRest #'extra-offset = #'( 0 . -1 ) }
mmrestdownn   = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownnn  = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestdownnnn = { \once \override MultiMeasureRest #'staff-position = #-6 }
mmrestdownnnnn = { \once \override MultiMeasureRest #'staff-position = #-8 }
mmrestup      = { \once \override MultiMeasureRest #'staff-position = #2 }
mmrestupp     = { \once \override MultiMeasureRest #'staff-position = #4 }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
up       = { \change Staff = "right" \halsdown }
down     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      \once \override TextScript #'extra-offset = #'( -3.5 . 2 ) g8^\markup { \bold "Canto fermo in Pedale" } fis g d d' a b g
      fis8 e fis d d' a b g
      es'!8 a, b g fis d' a c
      b4 d cis d
      %% Takt  5 ==================================================
      e4 a cis, d
      g4 a8 b a f g e
      d8 e f g f es d c
      h4 g' g, h
      c8 d es f es d c b!
      %% Takt 10 ==================================================
      a4 f' f, a
      b8 c d es d c b a
      g8 b c d c b a g
      fis4 d' d, fis
      g4 es'! a, d
      %% Takt 15 ==================================================
      b2 a4 d
      c4 a'\rest a\rest b,
      fis4 a'\rest a\rest fis
      g8 a b c b a g f!
      es4 c' c, e
      %% Takt 20 ==================================================
      f8 g a b a g f es!
      d4 b' b, d
      es4 g c, e
      f4 a d, fis
      g2 h\rest
      %% Takt 25 ==================================================
      d,8 c d es d b c a
      g4 b c es
      fis,4 f'\rest f2\rest
      d8 c d g, g' d es c
      h8 a h g g' d es c
      %% Takt 30 ==================================================
      as'8 d, es c h g' d f!
      \shifttieup es1~
      es4 c a c
      d1~
      d4 b g b
      %% Takt 35 ==================================================
      c1~
      c2~ c8 a b c
      b8 a g fis g d es! f
      es2~ es8 g f es
      d4 e8 fis g2~
      %% Takt 40 ==================================================
      g8 a b a b c d b
      es8 g f es d c b a
      b8 a b f f' c d b
      a8 g a f f' c d b
      g'8 c, d b a f' c es
      %% Takt 45 ==================================================
      d4 f, es d
      \down c a d c
      b4. a8 b c d e
      \up \halsup f4 f' g f
      es4 b g' f
      %% Takt 50 ==================================================
      c4 b8 a b d c es
      f8 es d c d e f g
      a4 c, c' a
      g8 f es! d es f g a
      b8 a g fis g b a g
      %% Takt 55 ==================================================
      f!8 es d c h r d4\rest
      d8\rest d c b! a! d\rest d4\rest
      r4 d es8 d es c
      f8 es f d g2~
      g8 fis g4~ g8 a fis!4
      %% Takt 60 ==================================================
      g4 d es d
      c4 g es' d
      a4 g8 fis g b a c
      d1~
      d2 r
      %% Takt 65 ==================================================
      \mmrestupp R1
      \mmrestupp R1
      \mmrestupp R1
      \mmrestupp R1
      d8 e d a' a, cis h d
      %% Takt 70 ==================================================
      e8 f e a a, d cis e
      f8 g f a a, e' d f
      cis8 g' f a b d, g e
      f1~
      f8 es! d es f g a h
      %% Takt 75 ==================================================
      c8 as g f es d c b!
      a8 b c b a g f es
      d4 b' b, d
      es8 f g as g f es d
      c4 r r2
      %% Takt 80 ==================================================
      R1
      g'8 a g d' d, fis e g
      a8 b a d d, g fis a
      d,4 d' fis, g~
      g2 a'4\rest fis,
      %% Takt 85 ==================================================
      g4 f'! es d
      c8 h c g g' d es c
      h8 a h g g' d es c
      as' d, es c h g' d f
      \shifttieup es1~
      %% Takt 90 ==================================================
      es8 cis d4~ d8 fis g4~
      \tempo 2 = 70 g8 fis g b, \tempo 2 = 66 c! \tempo 2 = 54 a' \tempo 2 = 48 a, \tempo 2 = 38 c
      \tempo 2 = 30 h1\fermata
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown
      \mmrestdownnnnn R1
      \mmrestdownnnnn R1
      \mmrestdownnnnn R1
      d8 c d \down g, \up g' e f! d
      %% Takt  5 ==================================================
      \down cis8 h cis a \up a' e f d
      b'8 e, f d cis a' e g
      f4 d' d, f
      g8 a h! c h a g f
      es4 c' c, es
      %% Takt 10 ==================================================
      f8 g a b a g f es
      d4 b' b, d
      es4 \down a, b \up c
      d8 e fis! g fis e d c
      b8 d g a g fis e fis
      %% Takt 15 ==================================================
      g4 d8 g fis4 g
      a4 d fis, g
      c4 d8 es d b c a
      d,4 e\rest e\rest d
      g4 e\rest e\rest g
      %% Takt 20 ==================================================
      c4 e,\rest e\rest c
      f4 c\rest c\rest f
      b4 e,\rest e\rest b'
      c4 e,\rest e\rest c'
      d8 c d g, g' d es c
      %% Takt 25 ==================================================
      b8 a b g a4 d,
      g8 fis g d d' a b g
      es'8 a, b g fis! d' a c
      b4 e,\rest e2\rest
      \mmrestdownnn R1
      %% Takt 30 ==================================================
      \mmrestdownnn R1
      g8\rest h c d c b a g
      a4 a f a
      b8 a b c b a g fis
      g4 g es g~
      %% Takt 35 ==================================================
      g4 fis8 e fis4 g
      a8 g fis e d2~
      d8 \down c b a b4 h~
      h8 d c h c2~
      c4 b!8 a g4 f'\rest
      %% Takt 40 ==================================================
      \up \mmrestdownnn R1
      g8 c, d \down b a \up f' c es
      d2 es4 d
      es2~ es4 d
      a'4 b8 c,\rest c4\rest a'
      %% Takt 45 ==================================================
      b8 c b f' f, a g b
      c8 d c f f, b a c
      e,8 b' a c d f, b g
      a4 d es! b~
      b4 b2 b4
      %% Takt 50 ==================================================
      es2. a,4
      b2 r4 e,
      f8 \down b, a g a b c d
      es!4 g, \up g' es
      d8 c \down b a b c \up d es
      %% Takt 55 ==================================================
      f4  e\rest e8\rest as g f
      es4 e\rest c8\rest g' f es
      d4 r a' r
      f8 g f b d c d b
      a4 g8\rest b c2~
      %% Takt 60 ==================================================
      c4 b8 a g4 r
      \mmrestdownnn R1
      \mmrestdownnnn R1
      b,4 g' b a
      g4 d b' a
      %% Takt 65 ==================================================
      e4 d8 cis d f e g
      a4 \down a, \up f' d
      \down cis8 h a h cis \up d e f
      g8 f e f g a b! cis,
      d2 cis4 d8 h
      %% Takt 70 ==================================================
      cis2 d4 \down g,
      a4 \up d cis d
      e4 d2 cis4
      d8 b' a g f es! d c!
      \down h4 a g f
      %% Takt 75 ==================================================
      es1~
      es8 d c d es f g a
      b2 c4\rest f,
      b4 c\rest c\rest b~
      b8 b a! g a b c4~
      %% Takt 80 ==================================================
      c8 c d es d c b a
      b4 d c b
      a2 c
      b4 \up d c' b
      c4 d8 es \override Stem #'details #'beamed-lengths = #'( 3.6 ) d b c a \revert Stem #'details #'beamed-lengths
      %% Takt 85 ==================================================
      b4 h c f,
      es8 c\rest c4\rest c2\rest
      \mmrestdownnn R1
      \mmrestdownnn R1
      g'8 f g c, c' a b! g
      %% Takt 90 ==================================================
      fis8 e fis d d' a b g
      es'!8 a, b g fis2
      g1
   }
}

tenor = {
   \new Voice \relative g {
      \global
      R1
      R1
      R1
      \mmrestdown R1
      %% Takt  5 ==================================================
      \mmrestdown R1
      R1
      R1
      R1
      R1
      %% Takt 10 ==================================================
      R1
      R1
      \mmrestdown R1
      R1
      R1
      %% Takt 15 ==================================================
      g8 fis g d d' a b g
      fis8 e fis d d' a b g
      es'!8 a, b g fis d' a c
      b4 g' g, b
      c8 d es f es d c b
      %% Takt 20 ==================================================
      a4 f' f, a
      b8 c d es d c b as
      g8 b c d c b a! g
      a8 c d es! d c b a
      b8 a g a b d c es
      %% Takt 25 ==================================================
      d2 r
      r4 g, fis g
      c4 d8 es d b c a
      b8 a g a h4 c
      \clef "treble" d4 g h, c
      %% Takt 30 ==================================================
      f!4 g8 as g es f d
      \clef "bass" c4 g c, es
      f8 es f g f es d c
      b4 b' b, d
      es8 d es f es d c b
      %% Takt 35 ==================================================
      a8 g a b a g fis e
      fis4 d' fis d
      \halsdown g1~
      g2 h,\rest
      g'8 fis g d d' a b g
      %% Takt 40 ==================================================
      es'!8 c d es d c b a
      g2 f~
      f4 b a b
      c4 f a, b
      es4 f8 g f d es c
      %% Takt 45 ==================================================
      b4 d c b
      a4 f r f
      g1
      \halsneutral f8 g f b b, es! d f
      g8 a g b b, es d f
      %% Takt 50 ==================================================
      a,8 es' d f g b, es c
      d4 b b' g
      f2 r4 f
      c'2 r4 c
      g2 r4 g
      %% Takt 55 ==================================================
      d'4 f g, h
      c4 es f, a
      b!8 c b f' f, b a c
      b4 r \clef "treble" b8 es d g
      a,8 es' d g a d, es c
      %% Takt 60 ==================================================
      d8 es d g g, c b d
      es8 f es g g, c b d
      \clef "bass" fis,8 c' b d es g, c a
      g8 a g d' d, g fis a
      b8 c b d d, g f! a
      %% Takt 65 ==================================================
      cis,8 g' f a b d, g e
      f8 e d cis d e f g
      \halsdown a4 a, r8 a' g f
      e 8 d cis d e f g a
      b!4 f8 g a2~
      %% Takt 70 ==================================================
      a4 g f e
      d2 g4 f
      b4 a g a
      d,2 r4 d
      g4 f es d
      %% Takt 75 ==================================================
      c4 b! a! g
      f2 r
      b8 c d es d c b a
      g4 es' es, g
      a8 b c d c b a g
      %% Takt 80 ==================================================
      fis4 d' d, fis'
      g4 b a g
      d8 c d a a' e fis d
      g8 fis g d d' a b g
      es'! a, b g fis d' a c
      %% Takt 85 ==================================================
      d8 es d g g, c h d
      \clef "treble" \halsneutral es f es g \clef "bass" g, h a c
      d8 es d f g, h a c
      h8 d c es d c h d
      c4 b! a g
      %% Takt 90 ==================================================
      a2 b
      c4 d es2
      d1\fermata
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
   \relative g, {
      R1*4
      %% Takt  5 ==================================================
      R1*5
      %% Takt 10 ==================================================
      R1*5
      %% Takt 15 ==================================================
      R1*5
      %% Takt 20 ==================================================
      R1
      R1
      R1
      R1
      g1
      %% Takt 25 ==================================================
      g2 fis
      b2 a4 g
      a1
      g1~
      g1~
      %% Takt 30 ==================================================
      g1
      R1
      R1
      R1
      R1
      %% Takt 35 ==================================================
      R1
      R1
      R1
      R1
      g2 b
      %% Takt 40 ==================================================
      c2 b
      c2 d
      b1~
      b1~
      b1
      %% Takt 45 ==================================================
      R1*5
      %% Takt 50 ==================================================
      R1*5
      %% Takt 55 ==================================================
      R1
      R1
      b2 c
      d2 b
      c4 b a2
      %% Takt 60 ==================================================
      g1~
      g1~
      g1
      R1
      R1
      %% Takt 65 ==================================================
      R1*5
      %% Takt 70 ==================================================
      R1*5
      %% Takt 75 ==================================================
      R1*5
      %% Takt 80 ==================================================
      R1
      g1
      g2 fis
      b2 a4 g
      a1
      %% Takt 85 ==================================================
      g1~
      g1~
      g1~
      g1~
      g1~
      %% Takt 90 ==================================================
      g1~
      g1~
      \override Script #'padding = #0.5 g1_\fermata
      \bar "|."
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
         tempoWholesPerMinute = #(ly:make-moment 72 2)
      }
   }
}
