\version "2.10.20"
\include "definitions.ly"

violinoOne = \new Voice { \relative c' {
  \clef treble
  \key f \major  
  \time 4/4

  \set Staff.instrumentName = \markup { 
	\center-align { 
		\hcenter-in # centerIndent  "Violino I." 
	}
  }

  
  %Bars 1-4
  %{ Bar 1 %} r8 f a c f c d c16 bes=' | \nBreak
  %{ Bar 2 %} a g f g a b a b c d e c f e f g='' | \nBreak
  %{ Bar 3 %} e f g f g f g f g c, f e f e f e='' | \nBreak
  %{ Bar 4 %} f b, e d e d e d e a, a' g f e d c='' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} b a g a b c d e f8. g16 d8. c=''16 | \nBreak
  %{ Bar 6 %} c8 r8 r4 r8 d16 ees d c bes a=' | \nBreak
  %{ Bar 7 %}  bes8 d e f\trill g a16 bes a g f e='' | \nBreak
  %{ Bar 8 %} f16 d bes' c bes a g f e8 c, e g='  | \nBreak
  %{ Bar 9 %} bes8 c16 d c bes a g a8 f a c='' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} ees8 f16 g f ees d c d8 g16 a g f e d='' | \nBreak
  %{ Bar 11 %} c8. d16 e f g a bes c32 bes a bes c16 g8. f='' 16 | \nBreak
  %{ Bar 12 %} f16 e f e d c d c bes c32 bes a bes c16 g8. f='16 | \nBreak
  %{ Bar 13 %} f4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} f8 f'16 g f g f g f=''4 r4 | \nBreak
  %{ Bar 15 %} r8 c'16 b c b c b c8 g  a g16 f='' | \nBreak
  %{ Bar 16 %} e16 d c d e f g8~ g f16 e f=''4~ | \nBreak
  %{ Bar 17 %} f8 e16 d e4~ e16 d e f d8. c=''16 |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} c8 g a bes c d16 ees d c bes a=' | \nBreak
  %{ Bar 19 %} bes='4 r4 r2 | \nBreak
  %{ Bar 20 %} R1 | \nBreak
  %{ Bar 21 %} r16 c16 f ees f ees f ees f bes, ees d ees d ees d='' |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} ees16 a, d c d c d c d g, g' f ees d c bes=' | \nBreak
  %{ Bar 23 %} a16 g f g a bes c d ees8. f16 c8. bes='16 | \nBreak
  %{ Bar 24 %} bes='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} r8 e16 d e f e d cis d e f g f g e='' |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} f8 d, f a d a bes a16 g=' | \nBreak
  %{ Bar 28 %} f16 e d e f g f g a bes c a d f e d='' | \nBreak
  %{ Bar 29 %} cis8 a cis e a a,16 bes a g f e=' | \nBreak
  %{ Bar 30 %} f8 d fis a c d16 ees d c bes a=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} bes16 d g a g f e d cis b a b cis d e f='' | \nBreak
  %{ Bar 32 %} g4 r8 g8~ g16 a32 g f g a16 e8. d=''16 | \nBreak
  %{ Bar 33 %} d=''4 r4 r2 | \nBreak
  %{ Bar 34 %} r8 g,8 f e d c b g= |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c8 g''16 f g f g a bes a bes c bes c bes c=''' | \nBreak
  %{ Bar 36 %} a4 r8 ees8 bes d r8 d=''8 | \nBreak
  %{ Bar 37 %} a c r8 c8 g bes=' r4 | \nBreak
  %{ Bar 38 %} c2 d=''2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} d2 e=''2~ | \nBreak
  %{ Bar 40 %} e2 r8 fis,8 a c='' | \nBreak
  %{ Bar 41 %} ees8 a, c ees fis a d, fis='' | \nBreak
  %{ Bar 42 %} g4 r8 d8 e16 f e d d8. c=''16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} c8 c, e g c g a g16 f=' | \nBreak
  %{ Bar 44 %} e16 d c d e fis e fis g a b g c b c d='' | \nBreak
  %{ Bar 45 %} b8 d, g b d e16 f e d c b=' | \nBreak
  %{ Bar 46 %} c8 e, a cis e f16 g f e d cis='' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} d8 e16 f e d c b c8. d16 b8. a='16 | \nBreak
  %{ Bar 48 %} a='4 r4 r2 | \nBreak
  %{ Bar 49 %} R1 | \nBreak
  %{ Bar 50 %} r8 a'16 g a bes a g fis g a bes c bes c a='' |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} bes16 a bes c bes a g fis g8. a16 fis8. g=''16 | \nBreak
  %{ Bar 52 %} g8 g, bes d g d ees d16 c='' | \nBreak
  %{ Bar 53 %} bes='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1 |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 f8 a c f c d c16 bes=' | \nBreak
  %{ Bar 58 %} a4 r8 c,8 d a bes c=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} f8 f'16 g f g f g f=''4 r4 | \nBreak
  %{ Bar 60 %} r8 c'16 b c b c b c8 g a g16 f='' | \nBreak
  %{ Bar 61 %} e16 d c d e f g8~ g f16 e f=''4~ | \nBreak
  %{ Bar 62 %} f8 e16 d e4~ e16 d e f d8. c=''16 | 
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} c=''4 r4 r2 | \nBreak
  %{ Bar 64 %} r8 a'16 g a g a bes c bes c d c d c d=''' | \nBreak
  %{ Bar 65 %} bes8 f aes d r8 ees, g c=''' | \nBreak
  %{ Bar 66 %} r8 d,8 f bes r4 c,=''4~ |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} c8 d, f bes d=''2~ | \nBreak
  %{ Bar 68 %} d8 e, g c e=''2~ | \nBreak
  %{ Bar 69 %} e8 f, a d f4~ f16 e f e='' | \nBreak
  %{ Bar 70 %} f4~ f16 e f e f4 r8 d=''8 |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} e8 g c, e a16 g f g e8. f=''16 | \nBreak
  %{ Bar 72 %} f8 f, a c f c d c16 bes=' | \nBreak
  %{ Bar 73 %} a g f g a b a b c d e c f e f g='' | \nBreak
  %{ Bar 74 %} e16 f g f g f g f g c, f e f e f e='' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} f16 b, e d e d e d e a, a' g f e d c='' | \nBreak
  %{ Bar 76 %} b16 a g a b c d e f8. g16 d8. c=''16 | \nBreak
  %{ Bar 77 %} c8 r8 r4 r8 d16 ees d c bes a=' | \nBreak
  %{ Bar 78 %} bes8 d e f g a16 bes a g f e='' | \nBreak
  %{ Bar 79 %} f16 d bes' c bes a g f e8 c,8 e g=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} bes8 c16 d c bes a g a8 f a c='' | \nBreak
  %{ Bar 81 %} ees8 f16 g f ees d c d8 g16 a g f e d='' | \nBreak
  %{ Bar 82 %} c8. d16 e f g a bes (c32 bes a bes c16) g8. f=''16 | \nBreak
  %{ Bar 83 %} f16 e f e d c d c bes (c32 bes a bes c16) g8. f='16 | \nBreak
  %{ Bar 84 %} f8 f a c f=''2 \fermata | 
  \mBreak

  \bar "|." 

  }
}

