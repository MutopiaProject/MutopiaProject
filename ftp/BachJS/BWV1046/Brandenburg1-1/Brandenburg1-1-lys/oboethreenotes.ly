\version "2.10.20"
\include "definitions.ly"

oboeThree = \new Voice { \relative c'' {
  \clef treble
  \key f \major  
  \time 4/4

  \set Staff.instrumentName = \markup { 
	\center-align {
		\hcenter-in # centerIndent "Oboe III."
	}
  }
  
  %Bars 1-4
  %{ Bar 1 %} r8 a16 g a g a g f e f e d8 e=' | \nBreak
  %{ Bar 2 %} c8 c c f e16 f g a f8 g=' | \nBreak
  %{ Bar 3 %} g8 g c4. a8 g a=' | \nBreak
  %{ Bar 4 %} b8 e, a4. f8 c a'=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} g4 r8 g8 d e16 f g8 d=' | \nBreak
  %{ Bar 6 %} e r8 r4 r8 d'16 c bes8 a=' | \nBreak
  %{ Bar 7 %} g r8 r4 r8 a16 g f8 e=' | \nBreak
  %{ Bar 8 %} d8 d c d e bes'16 a bes a bes a=' | \nBreak
  %{ Bar 9 %} bes8  c16 bes a8 g f ees'16 d ees d ees d='' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} ees8 f16 ees d8 c bes bes16 c bes8 g=' | \nBreak
  %{ Bar 11 %} e8. f16 g a bes g c4 ~ c16 bes c bes=' | \nBreak
  %{ Bar 12 %} a8 f f f g c, c8. c='16 | \nBreak
  %{ Bar 13 %} c8 c c e a f f e=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} c a'16 g a g a g a='4 r4 | \nBreak
  %{ Bar 15 %} r8 e8 g b e, c'16 b a8 b=' | \nBreak
  %{ Bar 16 %} g4 r8 g8 f4 r8 a='8 | \nBreak
  %{ Bar 17 %} g4 r8 b8 a16 b a g f e f d=' |
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} e='4 r4 r2 | \nBreak
  %{ Bar 19 %} r2 r8 a16 g f8 e=' | \nBreak
  %{ Bar 20 %} d='4 r4 r2 | \nBreak
  %{ Bar 21 %} r8 f8 bes4. g8 f g=' |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} a8 d, g4. ees8 bes' g=' | \nBreak
  %{ Bar 23 %} f4 r8 f8 c d16 ees f8 c=' | \nBreak
  %{ Bar 24 %} d='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} R1 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 f16 e f e f e d8 d' d cis='' | \nBreak
  %{ Bar 28 %} d8 a f d a' e d g=' | \nBreak
  %{ Bar 29 %} e8 g16 f g f g f g8 a16 g f8 e=' | \nBreak
  %{ Bar 30 %} d8 c'16 bes c bes c bes c8 d16 c d8 d,=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} g8 fis d g e a e a=' | \nBreak
  %{ Bar 32 %} a8 g16 a bes8 e, a a a e=' | \nBreak
  %{ Bar 33 %} f8 d' c bes a g fis d=' | \nBreak
  %{ Bar 34 %} g='8 r8 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} R1 | \nBreak
  %{ Bar 36 %} r8 ees8 a c r8 d, g bes=' | \nBreak
  %{ Bar 37 %} r8 c,8 f a r4 c=''4~ | \nBreak
  %{ Bar 38 %} c8 c, f a d=''2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} d8 d, g b e=''2~ | \nBreak
  %{ Bar 40 %} e8 e, a c ees4~ ees16 d ees d='' | \nBreak
  %{ Bar 41 %} ees4~ ees16 d ees c d4 r8 d,='8 | \nBreak
  %{ Bar 42 %} d8 g b d, e a d, g=' |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} e8 e16 d e d e d c8 c' c b=' | \nBreak
  %{ Bar 44 %} c8 g e c g' g e d=' | \nBreak
  %{ Bar 45 %} d8 f16 (e) f e f e e8 gis a b=' | \nBreak
  %{ Bar 46 %} e,8 g16 f g f g f g8 a16 bes a g f e=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} d4 r8 e8 e f e e=' | \nBreak
  %{ Bar 48 %} c='4 r4 r2 | \nBreak
  %{ Bar 49 %} R1 | \nBreak
  %{ Bar 50 %} R1 |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} r8 bes'16 a bes a bes a g fis g fis g fis g fis=' | \nBreak
  %{ Bar 53 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 a16 g a g a g f e f e d8 e=' | \nBreak
  %{ Bar 58 %} c8 c c e a f f e=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} c8 a'16 g a g a g a='4 r4 | \nBreak
  %{ Bar 60 %} r8 e8 g b e, c'16 b a8 b=' | \nBreak
  %{ Bar 61 %} g4 r8 g8 f4 r8 a='8 | \nBreak
  %{ Bar 62 %} g4 r8 b8 a16 b a g f e f d=' |
  \mBreak

  %Bars 63-66 
  %{ Bar 63 %} e8 c' bes a g f e c=' | \nBreak
  %{ Bar 64 %} f='8 r8 r4 r2 | \nBreak
  %{ Bar 65 %} r4 r8 aes8 aes g r8 g=' | \nBreak
  %{ Bar 66 %} g8 f r8 f f a=' r4 |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} bes='1 | \nBreak
  %{ Bar 68 %} c=''1 | \nBreak
  %{ Bar 69 %} d2 r8 d,8 f b=' | \nBreak
  %{ Bar 70 %} d8 f, aes d d f b, d='' |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} e4 r8 c8 c d16 c bes a bes g=' | \nBreak
  %{ Bar 72 %} a8 a16 g a g a g f e f e d8 e=' | \nBreak
  %{ Bar 73 %} c8 c' a f e16 f g a f8 g=' | \nBreak
  %{ Bar 74 %} g8 g c4. a8 g a=' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} b8 e, a4. f8 c a'=' | \nBreak
  %{ Bar 76 %} g4 r8 g d e16 f g8 d=' | \nBreak
  %{ Bar 77 %} e8 r8 r4 r8 d'16 c bes8 a=' | \nBreak
  %{ Bar 78 %} g8 r8 r4 r8 a16 g f8 e=' | \nBreak
  %{ Bar 79 %} d8 d c d e bes'16 a bes a bes a=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} bes8 c16 bes a8 g f ees'16 d ees d ees d='' | \nBreak
  %{ Bar 81 %} ees8 f16 ees d8 c bes bes16 c bes8 g=' | \nBreak
  %{ Bar 82 %} e8. f16 g a bes g c4~ c16 bes c bes =' | \nBreak
  %{ Bar 83 %} a8 f f f g c, c8. c='16 | \nBreak
  %{ Bar 84 %} c8 a'16 g a g a g a2 \fermata |
  \mBreak

  \bar "|." 

  }
}