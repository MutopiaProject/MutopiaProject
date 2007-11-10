\version "2.10.20"
\include "definitions.ly"

violinoTwo = \new Voice { \relative c' {
  \clef treble
  \key f \major  
  \time 4/4

  \set Staff.instrumentName = \markup { 
	\center-align { 
		\hcenter-in # centerIndent  "Violino II." 
	}
  }

 
  %Bars 1-4
  %{ Bar 1 %} r8 c8 f g f a16 g a g a g=' | \nBreak
  %{ Bar 2 %} f8 c f16 g a f g8 c c b=' | \nBreak
  %{ Bar 3 %} c16 d c d e4 ~ e8 d16 c d=''4 ~ | \nBreak
  %{ Bar 4 %} d8 c16 b c4 ~ c16 d c bes a g f e=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} d4 r8 f'8 b, c16 d b8. c=''16  | \nBreak
  %{ Bar 6 %} g8 r8 r4 r8 fis8 g a=' | \nBreak
  %{ Bar 7 %} g8 bes g a bes c d e='' | \nBreak
  %{ Bar 8 %} a,8 d16 ees d c bes a g8 g, c e!=' | \nBreak
  %{ Bar 9 %} g8 a16 bes a8 g f c f a=' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} c8 d16 ees d8 c bes d16 ees d8 bes=' | \nBreak
  %{ Bar 11 %} g8. a16 bes a g f e8 f16 g e8. f=' 16 | \nBreak
  %{ Bar 12 %} f8 a bes d, d16 e f g e8. f='16 |  \nBreak
  %{ Bar 13 %} f4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} f8 c'16 d c d c d c=''4 r4 | \nBreak
  %{ Bar 15 %} r8 g'16 f g f g f e d e d e d e d='' | \nBreak
  %{ Bar 16 %} c16 b c b c d e8~ e d16 c d=''4~ | \nBreak
  %{ Bar 17 %} d2 c16 b c d g,8 g=' |
  \mBreak    

  %Bars 18-21
  %{ Bar 18 %} g8 e fis g a fis g a=' | \nBreak
  %{ Bar 19 %} d,='4 r4 r2 | \nBreak
  %{ Bar 20 %} R1 | \nBreak
  %{ Bar 21 %} r16 a'16 bes c d4~ d8 c16 bes c=''4~ |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} c8 bes16 a bes4~ bes16 c bes aes g f ees d=' | \nBreak
  %{ Bar 23 %} c4 r8 ees'8 a, bes16 c a8. \trill f='16 | \nBreak
  %{ Bar 24 %} f='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} r8 g16 f g a g f e d cis d e d e cis=' | 
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} d8 a d f d f16 e f e f e=' | \nBreak
  %{ Bar 28 %} d8 f16 e d e f d e8 a f bes=' | \nBreak
  %{ Bar 29 %} a8 e a cis e cis d e='' | \nBreak
  %{ Bar 30 %} a,8 a, d fis a fis' g a='' | 
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} d,8 c d bes a e a16 b cis d='' | \nBreak
  %{ Bar 32 %} e4 r8 e8~ e16 a, d e cis8. d=''16 | \nBreak
  %{ Bar 33 %} d=''4 r4 r2 | \nBreak
  %{ Bar 34 %} r8 g,8 f e d c b g= | 
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c8 e'16 d e d e f g f g a g a g a='' | \nBreak
  %{ Bar 36 %} f4 r8 a,8 a bes r8 g=' | \nBreak
  %{ Bar 37 %} g8 a r8 f8 f g=' r4 | \nBreak
  %{ Bar 38 %} a='1 |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} b='1 | \nBreak
  %{ Bar 40 %} c2 r8 c,8 fis a=' | \nBreak
  %{ Bar 41 %} c8 fis, a c c ees a, d='' | \nBreak
  %{ Bar 42 %} d4 r8 b8 g a16 b b8. g='16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} g8 g, c d c e16 d e d e d=' | \nBreak
  %{ Bar 44 %} c8 e16 d c d e c d8 g g fis=' | \nBreak
  %{ Bar 45 %} g b, d g b e16 d c8 b=' | \nBreak
  %{ Bar 46 %} a8 cis, e a cis cis d g,=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} a4 r8 e8 a8. b16 gis8. a='16 | \nBreak
  %{ Bar 48 %} a4 r4 r2 | \nBreak
  %{ Bar 49 %} R1 | \nBreak
  %{ Bar 50 %} r8 cis16 b cis d e cis d e fis g a g fis a='' |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} d,16 c d ees d c bes a g ees' d c bes8 \trill a16 g=' | \nBreak
  %{ Bar 52 %} g8 d g a g bes16 a bes a bes a=' | \nBreak
  %{ Bar 53 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1|
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 c,8 f g f a16 g a g a g=' | \nBreak
  %{ Bar 58 %} f4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} f8 c'16 d c d c d c=''4 r4 | \nBreak
  %{ Bar 60 %} r8 g'16 f g f g f e d e d e d e d='' | \nBreak
  %{ Bar 61 %} c16 b c b c d e8~ e d16 c d=''4~ | \nBreak
  %{ Bar 62 %} d2 c16 b c d g,8 g=' |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} g='4 r4 r2 | \nBreak
  %{ Bar 64 %} r8 c16 bes c bes c d ees d ees f ees f ees f='' | \nBreak
  %{ Bar 65 %} d8 d f aes r8 bes, ees g='' | \nBreak
  %{ Bar 66 %} r8 a, d f r4 a,='4~ |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} a8 bes, d f bes='2~ | \nBreak
  %{ Bar 68 %} bes8 c, e g c=''2~ | \nBreak
  %{ Bar 69 %} c8 d, f a d4~ d16 c d c='' | \nBreak
  %{ Bar 70 %} d4~ d16 c d c b4 r8 b='8 |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} g8 e' g, c f16 e d e c8. c=''16 | \nBreak
  %{ Bar 72 %} c8 c, f g f a16 g a g a g=' | \nBreak
  %{ Bar 73 %} f8 c f16 g a f g8 c c bes=' | \nBreak
  %{ Bar 74 %} c16 d c d e4~ e8 d16 c d4~ |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} d8 c16 b c4~ c16 d c bes a g f e=' | \nBreak
  %{ Bar 76 %} d4 r8 f'8 b, c16 d b8. g='16 | \nBreak
  %{ Bar 77 %} g8 r8 r4 r8 fis g a=' | \nBreak
  %{ Bar 78 %} d,8 bes' g a bes c d e='' | \nBreak
  %{ Bar 79 %} a,8 d16 ees d c bes a g8 g, c e!=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} g8 a16 bes a8 g f c f a=' | \nBreak
  %{ Bar 81 %} c8 d16 ees d8 c bes d16 ees d8 bes=' | \nBreak
  %{ Bar 82 %} g8. a16 bes a g f e8 f16 g e8. f='16 | \nBreak
  %{ Bar 83 %} f8 a bes d, d16 e f g e8. f='16 | \nBreak
  %{ Bar 84 %} f8 c f a c=''2 \fermata |
  \mBreak

  \bar "|." 

  }
}