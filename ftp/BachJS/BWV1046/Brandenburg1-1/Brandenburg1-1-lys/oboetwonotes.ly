\version "2.10.20"
\include "definitions.ly"

oboeTwo = \new Voice { \relative c'' {
  \clef treble
  \key f \major  
  \time 4/4
  
  \set Staff.instrumentName = \markup {
	\center-align {
		\hcenter-in # centerIndent "Oboe II."
	}
  }

  %Bars 1-4
  %{ Bar 1 %} r8 c16 bes c bes c bes a g a g a g a g=' | \nBreak
  %{ Bar 2 %} f8 a16 g f g a f g8 c c b=' | \nBreak
  %{ Bar 3 %} c16 d c d e4 ~ e8 d16 c d=''4 ~ | \nBreak
  %{ Bar 4 %} d8 c16 b c4 ~ c16 d c bes a g f e=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} d4 r8 f'8 b, c16 d b8. c=''16 | \nBreak
  %{ Bar 6 %} c8 e, fis g a fis g a=' | \nBreak
  %{ Bar 7 %} d,8 r8 r4 r8 c'8 d e='' | \nBreak
  %{ Bar 8 %} a,8 d16 ees d c bes a g8 e'16 d e d e d='' | \nBreak
  %{ Bar 9 %} e8 e, f g c, a''16 g a g a g='' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} a8 a, bes c f,  d'16 ees d8 bes=' | \nBreak
  %{ Bar 11 %} g8. a16 bes a g f e8 f16 g e8. f='16 | \nBreak
  %{ Bar 12 %} f8 a bes d, d16 e f g e8. f='16 | \nBreak
  %{ Bar 13 %} f8 c f a d c bes g=' | \nBreak
 \mBreak

  %Bars 14-17
  %{ Bar 14 %} f c'16 bes c bes c bes c=''4 r4 | \nBreak
  %{ Bar 15 %} r8 g c d c e16 d e d e d='' | \nBreak
  %{ Bar 16 %} c4 r8 c8 a4 r8 d=''8 | \nBreak
  %{ Bar 17 %} b4 r8 e8 c16 b c d g,8 g=' | 
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} g='4 r4 r2 | \nBreak
  %{ Bar 19 %} r8 d'8 cis d e cis d e='' | \nBreak
  %{ Bar 20 %} a,4 r4 r2 | \nBreak
  %{ Bar 21 %} r16 a16 bes c d4~ d8 c16 bes c=''4~ |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} c8 bes16 a bes4~ bes16 c bes aes g f ees d=' | \nBreak
  %{ Bar 23 %} c4 r8 ees'8 a,8 bes16 c a8. bes='16 | \nBreak
  %{ Bar 24 %} bes='4 r4 r2 | \nBreak
  %{ Bar 25 %} r8 bes16 a bes c bes a g8 a16 g a bes a g=' | \nBreak
  %{ Bar 26 %} f='4 r4 r2 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 a16 g a g f g f e f e f e f e=' | \nBreak
  %{ Bar 28 %} d8 f16 e d e f d e8 a f bes=' | \nBreak
  %{ Bar 29 %} a8 cis16 b cis b cis b cis8 cis d e='' | \nBreak
  %{ Bar 30 %} a,8 fis'16 e fis e fis e fis8 fis g a='' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} d,8 c d bes a e a16 b cis d='' | \nBreak
  %{ Bar 32 %} e16 d cis d e d cis d e a, d e cis8. d=''16 | \nBreak
  %{ Bar 33 %} d8 d c bes a g fis d=' | \nBreak
  %{ Bar 34 %} g8 b16 a b a b c d c d e d e d e='' |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c=''8 r8 r4 r2 | \nBreak
  %{ Bar 36 %} r8 a8 c ees r8 f, bes d='' | \nBreak
  %{ Bar 37 %} r8 e,8 a c r4 e=''4~ | \nBreak
  %{ Bar 38 %} e8 f, a c f=''2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} f8 g, b d g=''2~ | \nBreak
  %{ Bar 40 %} g8 a, c e a4~ a16 g a g='' | \nBreak
  %{ Bar 41 %} a4~ a16 g a g fis4 r8 fis,='8 | \nBreak
  %{ Bar 42 %} g8 b d, g g a16 b b8. \trill g='16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} g8 g16 f g f g f e d e d e d e d=' | \nBreak
  %{ Bar 44 %} c8 e16 d c d e c d8 g g fis=' | \nBreak
  %{ Bar 45 %} g8 b16 a b a b a b8 e16 d c8 b=' | \nBreak
  %{ Bar 46 %} a8 cis16 b cis b cis b cis8 cis d g,=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} a4 r8 e a8. b16 gis8. e='16 | \nBreak
  %{ Bar 48 %} e='4 r4 r2 | \nBreak
  %{ Bar 49 %} r8 a16 g a bes a g f8 g16 f g a g f=' | \nBreak
  %{ Bar 50 %} e='8 r8 r4 r2
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} r8 d'16 c d c d c bes a bes a bes a bes a=' | \nBreak
  %{ Bar 53 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1 |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 c16 bes c bes c bes a g a g a g a g=' | \nBreak
  %{ Bar 58 %} f8 c f a d c bes g=' | \nBreak
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} f8 c'16 bes c bes c bes c=''4 r4 | \nBreak
  %{ Bar 60 %} r8 g8 c d c e16 d e d e d='' | \nBreak
  %{ Bar 61 %} c4 r8 c8 a4 r8 d=''8 | \nBreak
  %{ Bar 62 %} b4 r8 e8 c16 b c d g,8 g=' | 
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} g8 e'16 d e d e f g f g a g a g a='' | \nBreak
  %{ Bar 64 %} f=''8 r8 r4 r2 | \nBreak
  %{ Bar 65 %} r4 r8 d8 d ees r8 c='' | \nBreak
  %{ Bar 66 %} c8 d r8 bes bes c='' r4 |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} d=''1 | \nBreak
  %{ Bar 68 %} e=''1 | \nBreak
  %{ Bar 69 %} f2 r8 f,8 b d='' | \nBreak
  %{ Bar 70 %} f b, d f f aes d, g='' |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} g4 r8 e8 f16 e d e c8. c=''16 | \nBreak
  %{ Bar 72 %} c8 c16 bes c bes c bes a g a g a g a g=' | \nBreak
  %{ Bar 73 %} f8 a16 g f g a f g8 c c b=' | \nBreak
  %{ Bar 74 %} c16 d c d e4~ e8 d16 c d=''4~ |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} d8 c16 b c4~ c16 d c bes a g f e=' | \nBreak
  %{ Bar 76 %} d4 r8 f'8 b, c16 d b8. c=''16 | \nBreak
  %{ Bar 77 %} c8 e, fis g a fis g a=' | \nBreak
  %{ Bar 78 %} d,8 r8 r4 r8 c' d e='' | \nBreak
  %{ Bar 79 %} a,8 d16 ees d c bes a g8 e'16 d e d e d='' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} e8 e, f g c, a''16 g a g a g='' | \nBreak
  %{ Bar 81 %} a8 a, bes c f, d'16 ees d8 bes=' | \nBreak
  %{ Bar 82 %} g8. a16 bes a g f e8 f16 g e8. f='16 | \nBreak
  %{ Bar 83 %} f8 a bes d, d16 e f g e8. f='16 | \nBreak
  %{ Bar 84 %} f8 c'16 bes c bes c bes c2 \fermata |
  \mBreak

  \bar "|." 

    }
  }
