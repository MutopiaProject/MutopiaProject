\version "2.10.20"
\include "definitions.ly"

oboeOne = \new Voice { \relative c'' {
  \clef treble
  \key f \major  
  \time 4/4
  
  \set Staff.instrumentName = \markup {
	\center-align {
		\hcenter-in # centerIndent  "Oboe I." 
	}
  }

  %Bars 1-4
  %{ Bar 1 %} r8 f16 e f e f e f8 c d c16 bes | \nBreak
  %{ Bar 2 %} a g f g a b a b c d e c f e f g | \nBreak
  %{ Bar 3 %} e f g f g f g f g c, f e f e f e | \nBreak
  %{ Bar 4 %} f16 b, e d e d e d e a, a' g f e d c |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} b a g a b c d e f8. g16 d8. c16 | \nBreak
  %{ Bar 6 %} c8 g a bes c d16 ees d c bes a | \nBreak
  %{ Bar 7 %} bes8 r8 r4 r8 a'16 bes a g f e | \nBreak
  %{ Bar 8 %} f16 d bes' c bes a g f e8 g16 f g f g f | \nBreak
  %{ Bar 9 %} g8 c,16 d c bes a g a8 c'16 bes c bes c bes |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} c8 f,16 g f ees d c d8 g16 a g f e d | \nBreak
  %{ Bar 11 %} c8. d16 e f g a bes c32 bes a bes c16 g8. f16 | \nBreak
  %{ Bar 12 %} f16 e f e d c d c bes c32 bes a bes c16 g8. f='16 | \nBreak
  %{ Bar 13 %} f8 f a c f c d c16 bes=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} a8 f'16 e f e f e f=''8 r8 r4 | \nBreak
  %{ Bar 15 %} r8 c8 e g c g a g16 f='' | \nBreak
  %{ Bar 16 %} e4 r8 e8 c4 r8 f=''8 | \nBreak
  %{ Bar 17 %} d4 r8 g8 e8. f16 d8. c=''16 |
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} c=''4 r4 r2 | \nBreak
  %{ Bar 19 %} r8 d8 e f g a16 bes a g f e='' | \nBreak
  %{ Bar 20 %} f=''4 r4 r2 | \nBreak
  %{ Bar 21 %} r16 c16 f ees f ees f ees f bes, ees d ees d ees d='' |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} ees16 a, d c d c d c d g, g' f ees d c bes=' | \nBreak
  %{ Bar 23 %} a16 g f g a bes c d ees8. f16 c8. bes='16 | \nBreak
  %{ Bar 24 %} bes='4 r4 r2 | \nBreak
  %{ Bar 25 %} r8 g'16 f g a g f e8 f16 e f g f e='' | \nBreak
  %{ Bar 26 %} d=''4 r4 r2 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 d16 cis d cis d cis d8 a bes a16 g=' | \nBreak
  %{ Bar 28 %} f16 e d e f g f g a bes c a d f e d='' | \nBreak
  %{ Bar 29 %} cis8 e16 d e d e d e8 a,16 bes a g f e=' | \nBreak
  %{ Bar 30 %} f8 a'16 g a g a g a8 d,16 ees d c bes a=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} bes16 d g a g f e d cis b a b cis d e f='' | \nBreak
  %{ Bar 32 %} g16 f g f g f g f g a32 g f g a16 e8. d=''16 | \nBreak
  %{ Bar 33 %} d8 d c bes a g fis d=' | \nBreak
  %{ Bar 34 %} g8 d'16 c d c d e f e f g f g f g='' |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} e=''8 r8 r4 r2 | \nBreak
  %{ Bar 36 %} r8 c8 ees a='' r8 bes,8 d g | \nBreak
  %{ Bar 37 %} r8 a,8 c f r4 g=''4~ | \nBreak
  %{ Bar 38 %} g8 a, c f a=''2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} a8 b, d g b=''2~ | \nBreak
  %{ Bar 40 %} b8 c, e a c4~ c16 b c b='' | \nBreak
  %{ Bar 41 %} c4~ c16 b c b c4 r8 a,='8 | \nBreak
  %{ Bar 42 %} b8 d g, b c16 f e d d8. c=''16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} c8 c16 (b) c (b) c (b) c8 g a g16 f=' | \nBreak
  %{ Bar 44 %} e16 d c d e fis e fis g a b g c b c d='' | \nBreak
  %{ Bar 45 %} b8 d16 c d c d c d8 e16 f e d c b=' | \nBreak
  %{ Bar 46 %} c8 e16 d e d e d e8 f16 g f e d cis='' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} d8 e16 f e d c b c8. d16 b8. a='16 | \nBreak
  %{ Bar 48 %} a='4 r4 r2 | \nBreak
  %{ Bar 49 %} r8 f'16 e f g f e d8 e16 d e f e d='' | \nBreak
  %{ Bar 50 %} cis=''8 r8 r4 r2 |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} r8 g'16 fis g fis g fis g8 d ees d16 c='' | \nBreak
  %{ Bar 53 %} bes8 r8 r4 r8 f'16 e f g f e='' | \nBreak
  %{ Bar 54 %} d8 e16 d e f e d c=''8 r8 r4 |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} r2 r8 e16 d e f g e='' | \nBreak
  %{ Bar 56 %} f8 a f c f, d' g, a16 bes=' | \nBreak
  %{ Bar 57 %} a8 f'16 e f e f e f8 c d c16 bes=' | \nBreak
  %{ Bar 58 %} a8 f a c f c d c16 bes=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} a8 f'16 e f e f e f=''4 r4 | \nBreak
  %{ Bar 60 %} r8 c8 e g c g a g16 f='' | \nBreak
  %{ Bar 61 %} e4 r8 e8 c4 r8 f=''8 | \nBreak
  %{ Bar 62 %} d4 r8 g8 e8. f16 d8.  c=''16 |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} c8 g'16 f g f g a bes a bes c bes c bes c=''' | \nBreak
  %{ Bar 64 %} a=''8 r8 r4 r2 | \nBreak
  %{ Bar 65 %} r4 r8 aes8 ees g r8 g='' | \nBreak
  %{ Bar 66 %} d8 f r8 f c ees='' r4 |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} f2 g=''~ | \nBreak
  %{ Bar 68 %} g2 a=''~ | \nBreak
  %{ Bar 69 %} a2 r8 b, d f='' | \nBreak
  %{ Bar 70 %} aes d, f aes b d g, b='' | 
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} c4 r8 g8 a16 g f g e8. f=''16 | \nBreak
  %{ Bar 72 %} f8 f16 e f e f e f8 c d c16 bes=' | \nBreak
  %{ Bar 73 %} a16 g f g a b a b c d e a f e f g='' | \nBreak
  %{ Bar 74 %} e16 f g f g f g f g c, f e f e f e='' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} f16 b, e d e d e d e a, a' g f e d c='' | \nBreak
  %{ Bar 76 %} b16 a g a b c d e f8. g16 d8. c=''16 | \nBreak
  %{ Bar 77 %} c8 g8 a bes c d16 ees d c bes a=' | \nBreak
  %{ Bar 78 %} bes8 r8 r4 r8 a'16 bes a g f e='' | \nBreak
  %{ Bar 79 %} f16 d bes' c bes a g f e8 g16 f g f g f='' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} g8 c,16 d c bes a g a8 c'16 bes c bes c bes='' | \nBreak
  %{ Bar 81 %} c8 f,16 g f ees d c d8 g16 a g f e d='' | \nBreak
  %{ Bar 82 %} c8. d16 e f g a bes c32 bes a bes c16 g8. f=''16 | \nBreak
  %{ Bar 83 %} f16 e f e d c d c bes c32 bes a bes c16 g8. f='16 | \nBreak
  %{ Bar 84 %} f8 f'16 e f e f e f=''2 \fermata |
  \mBreak

  \bar "|." 
      }
  }