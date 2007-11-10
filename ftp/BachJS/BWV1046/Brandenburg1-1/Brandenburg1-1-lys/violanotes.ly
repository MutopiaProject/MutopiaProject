\version "2.10.20"
\include "definitions.ly"

viola = \new Voice { \relative c' {
  \clef alto
  \key f \major  
  \time 4/4
  
  \set Staff.instrumentName = \markup { 
	\center-align {
		\hcenter-in # centerIndent  "Viola." 
	}
  }

  %Bars 1-4
  %{ Bar 1 %} r8 a8 c e a, f'16 e d8 e=' | \nBreak
  %{ Bar 2 %} c8 a c f e16 f g a f8 g=' | \nBreak
  %{ Bar 3 %} g g e d c a' d, c=' | \nBreak
  %{ Bar 4 %} b8 g' c, bes a c f a=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} g4 r8 g8 d e16 f g8 d=' | \nBreak
  %{ Bar 6 %} e r8 r4 r8 d8 g, d'=' | \nBreak
  %{ Bar 7 %} d r8 r4 r8 e d a'=' | \nBreak
  %{ Bar 8 %} a,8 bes c d g, e g c=' | \nBreak
  %{ Bar 9 %} c,8 e' f g c, a c f=' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} f,8 a' bes c f, bes16 c bes8 g=' | \nBreak
  %{ Bar 11 %} e8. f16 g a bes g c4 ~ c16 bes c bes=' | \nBreak
  %{ Bar 12 %} a8 f f f g c, c8. c='16 | \nBreak
  %{ Bar 13 %} a4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} f,8 a'16 bes a bes a bes a='4 r4 | \nBreak
  %{ Bar 15 %} r8 e'16 d e d e d c b c b a8 b=' | \nBreak
  %{ Bar 16 %} g16 f e d c8 c' c=''2 | \nBreak
  %{ Bar 17 %} b4 g4~ g16 e a g f e f d=' |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} e4 r4 r8 d16 c bes8 a= | \nBreak
  %{ Bar 19 %} g= 4 r4 r2 | \nBreak
  %{ Bar 20 %} R1 | \nBreak
  %{ Bar 21 %} r8 f'8 d c bes g' c, bes= |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} a8 f' bes, a g bes ees g=' | \nBreak
  %{ Bar 23 %} f4 r8 f8 c8 d16 ees f8 c=' | \nBreak
  %{ Bar 24 %} d='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} R1 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 f,8 a cis f d d a= | \nBreak
  %{ Bar 28 %} a8 f a d a e' d g=' | \nBreak
  %{ Bar 29 %} e cis e a a, a'16 g f8 e=' | \nBreak
  %{ Bar 30 %} d8 d, a' d d, d''16 c d8 d,=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} g8 fis d g e cis e a=' | \nBreak
  %{ Bar 32 %} a4 r8 a8~ a a a e=' | \nBreak
  %{ Bar 33 %} f='4 r4 r2 | \nBreak
  %{ Bar 34 %} r8 g8 f e d c b g= |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c='4 r4 r2 | \nBreak
  %{ Bar 36 %} r4 r8 ees8 ees d r8 d='8 | \nBreak
  %{ Bar 37 %} d8 c r8 c c e=' r4 | \nBreak
  %{ Bar 38 %} f='1 |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} g='1 | \nBreak
  %{ Bar 40 %} a2 r8 a,8 c fis=' | \nBreak
  %{ Bar 41 %} a8 c, fis a a c fis, a=' | \nBreak
  %{ Bar 42 %} b4 r8 g8 c, c g' d=' |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} e8 e, g b e, c'16 b a8 b= | \nBreak
  %{ Bar 44 %} g8 e g c g' d c d=' | \nBreak
  %{ Bar 45 %} d8 g, b d gis gis a b=' | \nBreak
  %{ Bar 46 %} e,8 a, cis e g a16 bes a g f e=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} d4 r8 e8 e f b, e=' | \nBreak
  %{ Bar 48 %} c='4 r4 r2 | \nBreak
  %{ Bar 49 %} R1| \nBreak
  %{ Bar 50 %} R1|
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1| \nBreak
  %{ Bar 52 %} r8 bes8 d fis bes g g d=' | \nBreak
  %{ Bar 53 %} d='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1|
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 a8 c e a, f'16 e d8 e=' | \nBreak
  %{ Bar 58 %} c4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} f,8 a'16 bes a bes a bes a='4 r4 | \nBreak
  %{ Bar 60 %} r8 e'16 d e d e d c b c b a8 b=' | \nBreak
  %{ Bar 61 %} g16 f e d c8 c' c=''2 | \nBreak
  %{ Bar 62 %} b4 g4~ g16 e a g f e f d=' |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} e='4 r4 r2 | \nBreak
  %{ Bar 64 %} r8 f8 ees d c bes a f= | \nBreak
  %{ Bar 65 %} bes8 aes' d f r8 g,8 c ees='' | \nBreak
  %{ Bar 66 %} r8 f,8 bes d r4 f,='4~ |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} f8 f, bes d g='2~ | \nBreak
  %{ Bar 68 %} g8 g, c e a='2~ | \nBreak
  %{ Bar 69 %} a8 a, d f aes4~ aes16 g aes g=' | \nBreak
  %{ Bar 70 %} aes4~ aes16 g aes f g4 r8 g='8 |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} c,8 c' e, g c d16 c bes a bes g=' | \nBreak
  %{ Bar 72 %} a8 a, c e a, f'16 e d8 e=' | \nBreak
  %{ Bar 73 %} c8 a c f e16 f g a f8 g=' | \nBreak
  %{ Bar 74 %} g8 g e d c a' d, c=' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} b8 g' c, bes a c f a=' | \nBreak
  %{ Bar 76 %} g4 r8 g8 d e16 f g8 d=' | \nBreak
  %{ Bar 77 %} e8 r8 r4 r8 d8 g, d'=' | \nBreak
  %{ Bar 78 %} g8 r8 r4 r8 e8 d a'=' | \nBreak
  %{ Bar 79 %} a,8 bes c d g,8 e g c=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} c,8 e' f g c, a c f=' | \nBreak
  %{ Bar 81 %} f,8 a' bes c f, bes16 c bes8 g=' | \nBreak
  %{ Bar 82 %} e8. f16 g a bes g c4~ c16 bes c bes=' | \nBreak
  %{ Bar 83 %} a8 f f f g c, c8. c='16 | \nBreak
  %{ Bar 84 %} c8 a c f a='2 \fermata |
  \mBreak

  \bar "|." 

  }
}