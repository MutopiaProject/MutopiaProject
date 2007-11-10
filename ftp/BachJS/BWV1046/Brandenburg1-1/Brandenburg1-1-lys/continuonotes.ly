\version "2.10.20"
\include "definitions.ly"

continuo = \new Voice { \relative c {
  \clef bass
  \key f \major  
  \time 4/4
  
  \set Staff.instrumentName = \markup { 
		\column { 
				\center-align { \hcenter-in # centerIndent  "Continuo e" 
					\line { \hcenter-in # centerIndent "Violone grosso." }
				}
			} 
		} 
				

  %Bars 1-4
  %{ Bar 1 %} f4 r8 c d a bes c= | \nBreak
  %{ Bar 2 %} f,8 f'16 e f e f d e8 c d g,=, | \nBreak
  %{ Bar 3 %} c8 e c b a d b a=, | \nBreak
  %{ Bar 4 %} g8 c a g f4 r8 f'= 8~ | 
  \mBreak
  \noTurnPage

  %Bars 5-9
  %{ Bar 5 %} f16 g f e d c b a g8 c g' g,=, | \nBreak
  %{ Bar 6 %} c8 r8 r4 r8 d e fis= | \nBreak
  %{ Bar 7 %} g8 r8 r4 r8 a, bes c= | \nBreak
  %{ Bar 8 %} d8 g, a bes c c,= , r4 | \nBreak
  %{ Bar 9 %} r8 c'8 d e f f,=, r4 |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} r8 f' g a bes16 f bes a bes a bes a=  | \nBreak
  %{ Bar 11 %} bes16 c bes a g f e d c8 f c' c,= | \nBreak
  %{ Bar 12 %} d16 c d c bes a bes a g8 f c' c,=, | \nBreak
  %{ Bar 13 %} f=,4 r4 r2 |
  \mBreak
  \noTurnPage

  %Bars 14-17
  %{ Bar 14 %} r8 f8 a c f d a bes=, | \nBreak
  %{ Bar 15 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 16 %} c,8 g' c c, f a d d,=, | \nBreak
  %{ Bar 17 %} g b e e, a f' g g,=, |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} c4 r4 r8 d8 e fis= | \nBreak
  %{ Bar 19 %} g4 r4 r8 a,8 b cis= | \nBreak
  %{ Bar 20 %} d16 e d c bes a g f e8 c' d e= | \nBreak
  %{ Bar 21 %} f8 d bes a g c a g=, |
  \mBreak
  \noTurnPage

  %Bars 22-26
  %{ Bar 22 %} f8 bes g f ees4 r8 ees'= 8~ | \nBreak
  %{ Bar 23 %} ees16 f ees d c bes a g f8 bes f' f, =, | \nBreak
  %{ Bar 24 %} bes8 bes' c d ees a, bes c =' | \nBreak
  %{ Bar 25 %} d8 g, a bes c f, g a= | \nBreak
  %{ Bar 26 %} bes8 e, f g a e cis a=, |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} d4 r8 a8 bes f g a=, | \nBreak
  %{ Bar 28 %} d,8 d'16 cis d cis d bes c8 a bes g=, | \nBreak
  %{ Bar 29 %} a8 a' r4 r8 a,8 b cis= | \nBreak
  %{ Bar 30 %} d,8 d' r4 r8 d8 e fis= |
  \mBreak
  \noTurnPage

  %Bars 31-34
  %{ Bar 31 %} g8 a bes g a bes16 a g f e d= | \nBreak
  %{ Bar 32 %} cis16 d e d cis b a g f8 d' a' a,=, | \nBreak
  %{ Bar 33 %} d= 4 r4 r2 | \nBreak
  %{ Bar 34 %} g,=,4 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c8 c' bes a g f e c= | \nBreak
  %{ Bar 36 %} f8 c16 bes c bes c d ees f bes, a bes a bes c= | \nBreak
  %{ Bar 37 %} d16 e a, g a g a bes c8 g e c=, | \nBreak
  %{ Bar 38 %} f16 c' f e f e f e d8 a f d=, |
  \mBreak
  \noTurnPage

  %Bars 39-42  
  %{ Bar 39 %} g16 d' g f g f g f e8 b g e=, | \nBreak
  %{ Bar 40 %} a16 e' a g a g a g fis8 ees' c a= | \nBreak
  %{ Bar 41 %} fis8 c' a fis d a fis d=, | \nBreak
  %{ Bar 42 %} f'4 r8 f8 e f g g,=, |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 44 %} c,8 c'16 b c b c a b8 g a d,=, | \nBreak
  %{ Bar 45 %} g8 g' r4 r8 e,8 fis gis=, | \nBreak
  %{ Bar 46 %} a8 a' r4 r8 a,8 d e= |
  \mBreak
  \noTurnPage

  %Bars 47-50
  %{ Bar 47 %} f8 e16 d c b a gis a8 d e e,=, | \nBreak
  %{ Bar 48 %} a8 a' bes c d g, a bes= | \nBreak
  %{ Bar 49 %} c8 f, g a bes e, f g= | \nBreak
  %{ Bar 50 %} a8 g f e d c bes a=, |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} g8 bes c d ees c d d,=, | \nBreak
  %{ Bar 52 %} g4 r8 d'8 ees bes c d= | \nBreak
  %{ Bar 53 %} g,8 g' a bes c f, g a= | \nBreak
  %{ Bar 54 %} bes8 e, f g a d, e f= |
  \mBreak
  \noTurnPage

  %Bars 55-58
  %{ Bar 55 %} g8 f e d c bes a g=, | \nBreak
  %{ Bar 56 %} f8 a bes c d bes c c,=, | \nBreak
  %{ Bar 57 %} f4 r8 c'8 d a bes c= | \nBreak
  %{ Bar 58 %} f,=,4 r4 r2 |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} r8 f8 a c f d  a bes=, | \nBreak
  %{ Bar 60 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 61 %} c,8 g' c c, f a d d,=, | \nBreak
  %{ Bar 62 %} g8 b e e, a f' g g,=, |
  \mBreak
  \noTurnPage

  %Bars 63-66
  %{ Bar 63 %} c= 4 r4 r2 | \nBreak
  %{ Bar 64 %} f,=,4 r4 r2 | \nBreak
  %{ Bar 65 %} bes8 f'16 ees f ees f g aes bes ees, d ees d ees f= | \nBreak
  %{ Bar 66 %} g16 a d, c d c d ees f8 c a f=, |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} bes16 f' bes a bes a bes a g8 d bes g=, | \nBreak
  %{ Bar 68 %} c16 g' c bes c bes c bes a8 e c a=, | \nBreak
  %{ Bar 69 %} d16 a' d c d c d c b8 aes f d= | \nBreak
  %{ Bar 70 %} b8 f' d b g d' b g=, |
  \mBreak
  \noTurnPage

  %Bars 71-74
  %{ Bar 71 %} bes'4 r8 bes,8 a bes c c,=, | \nBreak
  %{ Bar 72 %} f4 r8 c'8 d a bes c= | \nBreak
  %{ Bar 73 %} f,8 f'16 e f e f d e8 c d g,=, | \nBreak
  %{ Bar 74 %} c8 e c b a d b a=, |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} g8 c a g f4 r8 f'= 8~ | \nBreak
  %{ Bar 76 %} f16 g f e d c b a g8 c g' g,=, | \nBreak
  %{ Bar 77 %} c8 r8 r4 r8 d8 e fis= | \nBreak
  %{ Bar 78 %} g8 r8 r4 r8 a,8 bes c= | \nBreak
  %{ Bar 79 %} d8 g, a bes c c,=, r4 |
  \mBreak
  \noTurnPage

  %Bars 80-84
  %{ Bar 80 %} r8 c'8 d e f f,=, r4 | \nBreak
  %{ Bar 81 %} r8 f'8 g a bes16 bes, bes' a bes a bes a= | \nBreak
  %{ Bar 82 %} bes16 c bes a g f e d c8 f c' c,= | \nBreak
  %{ Bar 83 %} d16 c d c bes a bes a g8 f c' c,=, | \nBreak
  %{ Bar 84 %} f8 f16 (f) f (f f f) f2 \fermata |
  \mBreak

  \bar "|."   

  }
}