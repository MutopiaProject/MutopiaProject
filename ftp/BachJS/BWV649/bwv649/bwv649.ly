\version "2.10.33"

\header {
   mutopiatitle = "Ach bleib bei uns, Herr Jesu Christ"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 649"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8661"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2007/Dec/05"

   title = "Ach bleib bei uns, Herr Jesu Christ"
   subtitle = "à 2 Clav. e Pedale"
   composer = "Johann Sebastian Bach"
   opus="BWV 649"
 footer = "Mutopia-2007/12/08-1185"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key b \major
   \time 4/4
   #(set-accidental-style 'default)
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

rightA = {
   \new Voice \relative d'' {
      \global
      \clef treble
      R1*2 \mark \markup { \tiny \musicglyph #"scripts.segno" }
   }
}

rightB = {
   \new Voice \relative d'' {
      R1*12
      r2*1/2
   }
}

rightC = {
   \new Voice \relative d'' {
      \partial 4*3
      %% Takt 15 ==================================================
         s4 d2
      d2 f
      d2 b
      c2 d
      es1
      %% Takt 20 ==================================================
      R1
      R1
      r2 d
      c2 b
      b4 c d2
      %% Takt 25 ==================================================
      c4 b c2
      b1
      R1
      R1
      R1
      %% Takt 30 ==================================================
      R1
      r2 d
      c2 d
      b2 g
      a2 b
      %% Takt 35 ==================================================
      c1
      R1
      R1
      r2 d
      c2 b
      %% Takt 40 ==================================================
      b4 c d2
      c4 b c2
      b1
      R1
      R1
      %% Takt 45 ==================================================
      R1
      R1
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \once \override Score.RehearsalMark #'self-alignment-X = #right
      \mark \markup { \small \italic \raise #-0.5 "dal Segno" \null \tiny \musicglyph #"scripts.segno" } \bar "||"
   }
}

leftA = {
   \new Voice \relative d' {
      \global
      \clef alto
      r4 d d f16 es d es
      d4. b8 g' d b' d,
   }
}

leftB = {
   \new Voice \relative e' {
      e8 c16 g c,8 c' f c as' c,
      d8 b16 f b,8 b' es! b g' b,
      %% Takt  5 ==================================================
      c8 f, es' c d b f' b,
      c16( b a g) f8 c' es c a' c,
      d16( c b a) b8 d f d b' d,
      es16( d c b) c8 es a es c' es,
      f16 es d c d8 f b16 d, b' d, c b' c, b'
      %% Takt 10 ==================================================
      a16 c, a' c, b as' b, as' g b, g' b, a! g' a, g'
      f16 a, f' a, g b c d es g, es' g, f es' f, es'
      d16 f, d' f, es d' es, d' es, c' es, c' es, b' es, b'
      es,16 a d, a' es a g a f a es a d, a' es a
      d,16 f g a b c d es f8 d16 b f8 a
      %% Takt 15 ==================================================
      b,4\fermata
   }
}

leftC = {
   \new Voice \relative d' {
         d4 d f16 es d es
      d4. b8 d b f' d
      b8 f16 d b8 f'' f b, g' es
      c8 as16 f as,8 as''~ as f b f
      g8 es16 b es,8 b' es b g' b,
      %% Takt 20 ==================================================
      c8 f, es' c d b f' b,
      c16 b a g f8 c' es c a' c,
      d16 c b a b8 d f d b' d,
      es16 d c b a8 d b'16 d, b' d, as' d, as' d,
      g16 es g es a! es a es b' a g f es d c b
      %% Takt 25 ==================================================
      g'16 f es d c b a g a b c d es8 c
      d8 b f' as, g16 f es d es8 b'
      es8 c g' b, a!16 g f e f g a b
      c16 es,! c' es, d' es, d' es, c' es, c' es, b' es, b' es,
      es16 a d, a' es a g a f a es a d, a' es a
      %% Takt 30 ==================================================
      d,16 f g a b c d es f8 d16 b a8 c
      b,4 f'' f a16 g fis g
      fis4 a, a c16 b a b
      g8 d b' g es' c g' b,
      a8 f! c' es, d16 fis g a b c d e
      %% Takt 35 ==================================================
      f!16 e d e c b' c, b' a c, a' c,b a' b, a'
      g16 b, g' b, a g' a, g' f a, f' a, g f' a, f'
      b,16 e a, e' b e d e c e b e a, e' b e
      a,16 c d e f g a b a g fis e! d c b a
      g4 d' d f!16 es! d es
      %% Takt 40 ==================================================
      d16 b d b es b es b f'8 b, b'16 as g as
      g8 a,! b2 a4
      \clef bass b8 f d' as g16 f es d es b es b
      as'16 b, as' b,g' b, g' b, f' b, f' b, es b es b
      as d g, d' as d c d b d as d g, d' as d
      %% Takt 45 ==================================================
      g, b c d es f g a! \clef alto b c d es f es d es
      d4. b8 g' d b' d,
   }
}

pedalA = {
   \relative b, {
      \global
      \clef bass
      b2 r4 b'
      b4 d b2~
   }
}

pedalB = {
   \relative b {
      b4 as8 g as2~
      as4 g8 f g4 r
      %% Takt  5 ==================================================
      a!4 r b b,
      f'4 a f2~
      f4 d' f,2~
      f4 a f2~
      f4 b g es8 c
      %% Takt 10 ==================================================
      f4 d8 b es4 c8 a
      d4 b8 g c4 a8 f
      b4 g a c
      f,2 r4 f'
      b4 g8 es d4 f
      %% Takt 15 ==================================================
      \once \override TextScript #'extra-offset = #'( 0 . -0.5 ) b,4_\fermata ^\markup { \italic "Fine" }
   }
}

pedalC = {
   \relative b {
        r4 r b
      \set Score.currentBarNumber = #16
      b4 d b as8 g
      as4 g8 f g4 es
      as4 f b b,
      es4 r g r
      %% Takt 20 ==================================================
      a! r b b,
      f'4 a f2~
      f4 d' f,2~
      f4 fis g f
      es4 d8 c b4 d
      %% Takt 25 ==================================================
      es4 g f f,
      b4 d es g
      c,4 es f g
      a4 b a g
      f2 r4 f
      %% Takt 30 ==================================================
      b4 g8 es d4 f
      b,2 r4 b'
      a4 c8 a fis4 d
      g4 r c, r
      f!4 r g r
      %% Takt 35 ==================================================
      c,4 e f g8 a
      b4 c d b
      c2 r4 c,
      f4 a,8 g fis4 d'
      e4 fis g8 fis g a
      %% Takt 40 ==================================================
      b2~ b8 as g f!
      es8 f g f es c f es
      d4 b es g
      f4 es as g
      f2 r4 b, es4. f8 g f g a!
      %% Takt 45 ==================================================
      b4 d \once \override LaissezVibrerTie #'control-points = #'(( 0.8 . 3.3 ) ( 4.4 . 4.4 ) ( 8.9 . 4.4 ) ( 12.5 . 3.3 ))
               b2\laissezVibrer
   }
}

\score {
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               \context Voice = right \rightA \rightB \rightC
            }
            \context Staff = left {
               \context Voice = left \leftA \leftB \leftC
            }
         >>
      }
      \context Staff = pedal {
         \context Voice = pedal { \pedalA \pedalB \pedalC }
      }
   >>
   \layout{

      indent = 1.0\cm
   }
}

\score {
   <<
      \new Staff = right {
         \set Staff.midiInstrument = "oboe"
         \rightA \rightB \rightC \rightB
      }
      \new Staff =left {
         \set Staff.midiInstrument = "pan flute"
         \leftA \leftB \leftC \leftB
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c'' { \leftA \leftB \leftC \leftB }
      }
      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \pedalA \pedalB \pedalC \pedalB
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c, { \pedalA \pedalB \pedalC \pedalB }
      }
   >>
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
   }
}
