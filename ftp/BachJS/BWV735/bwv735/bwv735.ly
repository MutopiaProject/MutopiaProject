\version "2.8.1"

\header {
 mutopiatitle = "Valet will ich dir geben"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 735"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/17"

 title = "Valet will ich dir geben"
 composer = "Johann Sebastian Bach"
 opus = "BWV 735"

   footer = "Mutopia-2006/04/07-724"
   tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key b \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
\paper {
   betweensystempadding = #1
   raggedbottom = ##f
   raggedlastbottom = ##f
}

scriptup = {
   \once \override Script #'extra-offset = #'(0 . 1.3)
}

scriptdown = {
   \once \override Script #'extra-offset = #'(0 . -1.3)
}

restup = {
   \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . 1.0 )
}

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

halsneutral = {
  \stemNeutral
  \tieNeutral
}

staffup = {
   \change Staff = "right" \halsdown
}

staffdown = {
   \change Staff = "left" \halsup
}

noflag = {
   \once \override Stem #'flag-style = #'no-flag
}
sopran = {
   \new Voice \relative f' {
      \global
      \halsup
      \partial 4 r4
      \restup R1
      \restup R1
      \restup R1
      r2 d'4\rest f,
      %% Takt  5 ==================================================
      b4 b d e
      f4~ f16 g f e f4 a16\rest g f es
      d16 es d c b f' b a g as g f es f es d
      c4~ c16 c d es f8 es d16 f es d
      c16 d c b a g a f b8 g' f16 g f es
      %% Takt 10 ==================================================
      d es d c b c b a b4 a'\rest
      \restup R1
      a4\rest a g f
      f4 e f a16\rest b a g
      fis8 d a'16\rest a g f es!4 a16\rest g f es
      %% Takt 15 ==================================================
      d16 es d c b8. c16 d4~ d16 f! es! d
      c4~ c16 es d c b4 d16\rest b a g
      f16 g f es d8 d' c16 d c b a8 c'
      b16 c b a g8 c a16 b a g f g f es
      d4 a'\rest a2\rest
      %% Takt 20 ==================================================
      f16\rest c d es f g f es d es d c b f' es d
      c16 d c b a g a f b8 g' f16 g f es
      d es d c b c b a b4 a'\rest
      \restup R1
      a4\rest a g f
      %% Takt 25 ==================================================
      f4 e f a16\rest b a g
      fis8 d a'16\rest a g f es!4 a16\rest g f es
      d16 es d c b8. c16 d4~ d16 f! es! d
      c4~ c16 es d c b4 b16\rest c, b a
      b4 b'16\rest a b c d4 d8. es16
      %% Takt 30 ==================================================
      c8. d16 b8. c16 a4~ a16 b a g
      f4 f'16\rest e f g a4  a8. b16
      g8. a16 f8. g 16 e4~ e16 f e d
      c4~ c16 d c b a b a g f8 b\rest
      f'16\rest a, b c d c d es f4 f8. g16
      %% Takt 35 ==================================================
      es8. f16 d8. es16 c4~ c16 c d e
      f e f g a g a b c d\rest b8\rest a4\rest
      a4\rest b16\rest a b c b a g f e d c b
      a4 r r2
      r16 g a h c4~ c8 c4 h!8
      %% Takt 40 ==================================================
      r16 c h a g f e d c e d c f4
      f'16\rest c d e f4~ f8 f4 e!8
      f4~ f16 g f e f4 b,8\rest a
      b16\rest f b8 d16\rest c b a b d c b c4
      a8. b16 c4 d b16\rest es,! d c
      %% Takt 45 ==================================================
      f8. g16 f8 es d16 d' c b f'4
      d8. es16 f4 g f
      f4 a16\rest g f es d4 f\rest
      a8\rest b a16 g a f b4. a8~
      a8 g4 fis8 g16 d es4 d8~
      %% Takt 50 ==================================================
      d8 c4 b8~ b a b16\rest f g a
      b4 f'16\rest b, c d es4 a16\rest es f g
      f16\rest c d es d8\rest d~ d c~ c16 f, b8~
      b16 g c g a4 b16\rest f b g a4
      b4 a g g
      %% Takt 55 ==================================================
      f8 d'\rest f4\rest a16\rest a, b c d es! f d
      g16 f g es f es f d es g c b a g f es
      d c d es f4 a16\rest g f es f es f d
      es f g d es c f c d es f d es b b' f
      g2 s4 g4~
      %% Takt 60 ==================================================
      g16 es c es f c d a b c d a b f g d
      es16 f g d es4~ es2
      \staffdown c16\rest f, g a b a b c \staffup \halsup d c d es f es f g
      as16 c b as g b c d es d es f g f g a!
      b1\fermata
   }
}

alt = {
   \new Voice \relative b {
      \global
      \halsdown
      \relative b {
         \partial 4 b4
         f'4 f g \once \override Script #'extra-offset = #'(0 . -1.8) a8.\prallprall g32 a
         b4~ b16 c b a b4 r16 d c b
         a16 g a f b4~ b16 a b g as es as8~
         as16 as g f g b as g f4 c16\rest g' f es
         %% Takt  5 ==================================================
         d4 d\rest g16\rest c b a g b a g
         a16 b a g f8 g c,8 \staffdown b16 a b8 c
         \staffup d8 es f4 g8 a! b4~
         b16 b a g a4 g16\rest f g a b4
         d,4\rest e8\rest f es16 f es d c8 c'
         %% Takt 10 ==================================================
         b4 d,4\rest d\rest d'
         c4 b b a
         b16 d c b a8 f' e16 d e cis d8 a
         b16\rest c b a g d' c b a b a g f8 b
         a16 g a fis g4~ g16 f g es f4~
         %% Takt 15 ==================================================
         f16 g f es d8 g a16 g a fis g4~
         g16 f! g es f4~ f16 g f es d4
         c16\rest es d c b8 b' a e\rest es\rest a'
         g8 b,\rest b\rest g' f b,\rest b16\rest es! d c
         b16 c b as g b c d es f es d c d c b
         %% Takt 20 ==================================================
         a16 g\rest g8\rest g4\rest g16\rest g f es d e16\rest e8\rest
         d4\rest e8\rest f es16 f es d c8 c'
         b4 d,4\rest d\rest d'
         c4 b b a
         b16 d c b a8 f' e16 d e cis d8 a
         %% Takt 25 ==================================================
         b16\rest c b a g d' c b a b a g f8 b
         a16 g a fis g4~ g16 f g es f4~
         f16 g f es d8 g a16 g a fis g4~
         g16 f! g es f4~ f16 g f es d \staffdown es, d c
         d4 a'4\rest \staffup \shiftOn g'16\rest f g a b f b8~
         %% Takt 30 ==================================================
         b16 e, a8~ a16 d, g8~ g16 c, d e! f4
         c16\rest d \staffdown c b a4 \staffup e'2\rest
         e2\rest e4\rest g16\rest a g f
         e16 f e d c4~ c16 d c b a c d es
         f4 d4\rest g16\rest f g a b f b8~
         %% Takt 35 ==================================================
         b16 es, a8~ a16 d, g8~ g16 c, d e f e f g
         a16 g\rest g8\rest f4\rest e16\rest e f g a8 g\rest
         e16\rest c d e f4~ f8 f4 e!8
         e16\rest f e d c \staffdown b a g f a g f c'4
         d4\rest d16\rest \staffup e f g f e d c \staffdown h a g f
         %% Takt 40 ==================================================
         e4 b'\rest b\rest  d16\rest c b! a
         \staffup d4  b'16\rest c b a d8 b g[ a16 b]
         c16 d c b a b a g f4 f
         d8. es!16 f4 g4 e8\rest e
         c16\rest c f8 e16\rest g f e f4 c8\rest \staffdown a
         %% Takt 45 ==================================================
         c16\rest f, b8 d16\rest c b a b4 \staffup g'8\rest c
         g16\rest f b8 g16\rest c b a g a b8~ b a
         g16\rest f b8 g8\rest a b4 a16 g a f
         b8 d f4 b,8\rest f' es16 d es c
         d8 d c16 b c a b8 b as16 g as f
         %% Takt 50 ==================================================
         g8 g f16 es f d es d es c d4
         es16\rest d es f g4 g16\rest g a b c4
         a4 f8 b16 d, es4 d
         c4 c b c16\rest c f a~
         a8 g~ g16 c, f8~ f16 d g f e4
         %% Takt 55 ==================================================
         f16 e f g a g a b c e,\rest e8\rest e4\rest
         g16\rest g c8~ c16 f, b8~ b a16 g a b g a
         b4 g16\rest f b a g4 f4
         g4 es f es\rest
         b'16\rest b c d es d es f g as b f << \new Voice { \halsup s8 es~
           \stemDown \noflag es16 }
                                               \new Voice { \halsdown b16\rest d es b~
           b16 } >> g16\rest es8\rest es4\rest d8 c8\rest c4\rest
         %% Takt 61 ==================================================
         \shiftOff b8 a\rest a16\rest b c8~ c16 b c8~ c4
         s1
         s2. b'8\rest \stemUp es,8
         f1
      }
   }
}

tenor = {
   \new Voice \relative f {
      \global
      \relative f {
         \partial 4 r4
         r2 r4 f
         b4 b d e8.\prallprall d32 e
         f4 r16 g f es! d c d b c b c d
         es8 b es4~ es16 es d c d es d c
         %% Takt  5 ==================================================
         b16 c d c b c b a g8 b c c,
         f8 g a b~ b16 a g f g8 a
         b8 c d b es f g es
         f4~ f8 es d4~ d16 d c b
         a16 b a g f8 r r2
         %% Takt 10 ==================================================
         \clef treble r16 g' f es d es d c d4 r16 b' a g
         fis8 d r16 a' g f es8 c r16 g' f es
         d8 b r16 f' e d cis8 a r16 e' d c
         \clef bass b8 g c c, f r d'4
         c4 b b a
         %% Takt 15 ==================================================
         b4 r16 b a g fis e fis d g a g f
         es!16 d es c f g f es d es d c b4
         r4 r16 d c b f'8 f, r16 fis' e d
         g8 g, r16 e' d c f8 f, r4
         \clef treble r16 as'' g f es f es d \clef bass c d c b a! b a g
         %% Takt 20 ==================================================
         f16 g f es d es d c b r16 r8 r16 d' c b
         a16 b a g f8 r r2
         \clef treble r16 g' f es d es d c d4 r16 b' a g
         fis8 d r16 a' g f es8 c r16 g' f es
         d8 b r16 f' e d cis8 a r16 e' d c
         %% Takt 25 ==================================================
         \clef bass b8 g c c, f r d'4
         c4 b b a
         b4 r16 b a g fis e fis d g a g f
         es!16 d es c f g f es d es d c \halsdown b4~
         b4 g\rest r2
         %% Takt 30 ==================================================
         r2 r4 r16 \halsneutral d'' c b
         a16 b a g f4 r16 c' d e f c f8~
         f16 h, e8~ e16 a, d8~ d16 g, a h! c4~
         c16 d c b! a b a g f4 r16 g f es!
         d16 es d c b8 r r2
         %% Takt 35 ==================================================
         R1
         \halsdown r16 c d e f e f g a g a b c f, g a
         b4 a g g
         f4 b,\rest g\rest d'16\rest c d e
         f4 e d d
         %% Takt 40 ==================================================
         c4 b4\rest b2\rest
         r4 r16 a' b c b a g f e d c b
         a16 b a g f d'' c b a b a g f a g f
         b4 r r r16 e, d c
         f8. g16 a8 a,  r16 d c b f'4
         %% Takt 45 ==================================================
         d8. es!16 f4 g r16 a g f
         b8. c16 d4 es16 f es d c b c a
         d4 r8 c b16 a b g c8 es
         d16 c d b c4 r16 d c b c8 f,
         \clef treble b16 b' a g a8 d, \clef bass g16 g, f! es f8 b,
         %% Takt 50 ==================================================
         es16 es' d c d8 g, c f, b16 c b a
         \halsneutral g16 a g f es f es d c d c b a b a g
         f16 g' f es d c d b g' f g a b8. d,16
         es4~ es16 c f es d c d b f' g f e
         d16 c d e f8. a,16 b4~ b16 g c b
         %% Takt 55 ==================================================
         a16 b a g f e' f g a f g a b c d b
         es4 d c c
         b16 a b c d4~ d8 c4 b8~
         b4. as8~ as16 c b as g as g f
         es d es f g f g as b b, c d es g, f es
         %% Takt 60 ==================================================
         b'8 r r4 f'8 r r4
         g8 r r r16 g a8. g16 << \new Voice { \stemUp a4 }
                                 \new Voice { \stemDown d,16\rest es f c } >>
         \halsdown d4~ d16 c d es f g f es d es d c
         b16 b' c d \staffup es d es f g as g f es d es c
         d1_\fermata
      }
   }
}

right = {
   \clef treble
   <<
   \alt
   \sopran
   >>
}

left = {
   \clef bass
   <<
   \tenor
   >>
}

pedal = {
   \new Voice  \relative b, {
      \global
      \clef "bass"
      \partial 4 r4
      R1*7
      r2 r4 b
      f'4 f g a
      %% Takt 10 ==================================================
      b2 b4 r4
      R1*4
      r4 d c b
      b4 a b2
      R1*3
      %% Takt 20 ==================================================
      r2 r4 b,
      f'4 f g a
      b2 b4 r4
      R1*2
      %% Takt 25 ==================================================
      R1*2
      r4 d c b
      b4 a b2~
      b4 r r2
      %% Takt 30 ==================================================
      R1*4
      r4 b8 c d4 d
      %% Takt 35 ==================================================
      c4 b a4. g8
      f2. r4
      R1*3
      %% Takt 40 ==================================================
      r2 r4 a
      b4 a g g
      f2. r4
      R1*2
      %% Takt 45 ==================================================
      R1
      r2 r4 f
      d8. es16 f4 g f
      f4. es8 d4 r
      R1
      %% Takt 50 ==================================================
      R1*5
      %% Takt 55 ==================================================
      R1*2
      r4 d es d
      c4 c b2~
      b1~ \break
      %% Takt 60 ==================================================
      b1~
      b1~
      b1~
      b1~
      b1~\fermata \bar "|."
   }
}

\score {
   <<
      \new PianoStaff {
         \set PianoStaff.instrument = \markup { \large "Manuale." }
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
         \set Staff.instrument = \markup { \large "Pedale." \hspace #1.8 }
         \context Voice = pedal \pedal
      }
   >>
   \layout{}
}

\score {
   <<
      \new Staff = right {
         \set Staff.midiInstrument = "pan flute"
         \right
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \right
      }
      \new Staff = left {
         \set Staff.midiInstrument = "pan flute"
         \context Voice = left \left
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \left
      }
      \new Staff = pedal {
         \set Staff.midiInstrument = "tuba"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c, \pedal
      }
   >>
   \midi{ \tempo 4 = 72 }
}