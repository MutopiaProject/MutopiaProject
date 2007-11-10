\version "2.10.20"
\include "definitions.ly"

cornoTwo = \new Voice { \relative c'' {
  \clef treble
  \key c \major  
  \time 4/4
  \transposition f  

  \set Staff.instrumentName = \markup {
	\center-align {
		\hcenter-in # centerIndent  "Corno II." 
	}
  }	

  %Bars 1-4
  %{ Bar 1 %} r8 c,8 e g c g e16 c g'='8 | \nBreak
  %{ Bar 2 %} \times 2/3 { g8 (g g) } \times 2/3 { g8 (g g) } g8. (d'=''16) r4 | \nBreak
  %{ Bar 3 %} R1 | \nBreak
  %{ Bar 4 %} R1 |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} R1 | \nBreak
  %{ Bar 6 %} R1 | \nBreak
  %{ Bar 7 %} R1 | \nBreak
  %{ Bar 8 %} R1 | \nBreak
  %{ Bar 9 %} r2 r8 c,8 \times 2/3 { c8 (c c=') } |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} \times 2/3 { c8 (g c) } \times 2/3 { c (c c) } c8. (g'='16) r4 | \nBreak
  %{ Bar 11 %} r2 r4 r8 g='8 | \nBreak
  %{ Bar 12 %} \times 2/3 { c8 (c c) } \times 2/3 { c (g c) } \times 2/3 { g (e g) } \times 2/3 { e (c e=') } | \nBreak
  %{ Bar 13 %} c8 e'16 d e d e d c d e f d8 g,=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} c8 e, g g16 g g8 c16 d e d c d='' | \nBreak
  %{ Bar 15 %} g,='4 r4 r2 | \nBreak
  %{ Bar 16 %} r8 g16 g g8 g g g c16 d e c='' | \nBreak
  %{ Bar 17 %} d16 c d c d e fis d e8. fis16 d8. d=''16 |
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} d=''4 r4 r2 | \nBreak
  %{ Bar 19 %} R1 | \nBreak
  %{ Bar 20 %} r8 e,8 g c d e16 f e d c g=' |  \nBreak
  %{ Bar 21 %} c=''4 r4 r2 |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} R1 | \nBreak
  %{ Bar 23 %} R1 | \nBreak
  %{ Bar 24 %} r8 f16 e f g f e d8 e16 d e f e d='' | \nBreak
  %{ Bar 25 %} c=''4 r4 r2 | \nBreak
  %{ Bar 26 %} R1 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r2 r8 e,16 (e) e (e e e=') | \nBreak
  %{ Bar 28 %} e8 c=' r4 r2 | \nBreak
  %{ Bar 29 %} r2 r8 e16 (e) e (e e e=') | \nBreak
  %{ Bar 30 %} e4 r4 r8 e'16 (e) e (e e e='') |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} d8. (g=''16) r4 r2 | \nBreak
  %{ Bar 32 %} r8 e,16 e e (e e e) e8 e16 e e (e e e=') | \nBreak
  %{ Bar 33 %} e8 c'16 b c b c d e d e fis e fis e fis='' | \nBreak
  %{ Bar 34 %} d=''8 r8 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} R1 | \nBreak
  %{ Bar 36 %} r4 e2 d=''4~ | \nBreak
  %{ Bar 37 %} d4 c~ c8 g16 c d e d e='' | \nBreak
  %{ Bar 38 %} c2~ c16 d c d e fis e fis='' |
  \mBreak 

  %Bars 39-42
  %{ Bar 39 %} d2~ d16 e d e fis g fis g='' | \nBreak
  %{ Bar 40 %} e2~ e16 d e d e=''4~ | \nBreak
  %{ Bar 41 %} e16 d e d e4~ e16 d e d e d e fis='' | \nBreak
  %{ Bar 42 %} d16 c d c d e c d g,8 e' d d='' |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} d=''4 r4 r2 | \nBreak
  %{ Bar 44 %} R1 | \nBreak
  %{ Bar 45 %} R1 | \nBreak
  %{ Bar 46 %} R1 |
  \mBreak

  %Bars 47-50 
  %{ Bar 47 %} R1 | \nBreak 
  %{ Bar 48 %} r8 e16 d e f e d c8 d16 c d e d c='' | \nBreak
  %{ Bar 49 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 50 %} R1
  \mBreak

  %Bars 51-54 
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} R1 | \nBreak
  %{ Bar 53 %} r8 d'16 c d e d c g='8 r8 r4 | \nBreak
  %{ Bar 54 %} R1 | \nBreak
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} r8 d'16 c d e d c d8 g,16 g g g g g=' | \nBreak
  %{ Bar 56 %} g8 c, e g e c g' g16 g=' | \nBreak
  %{ Bar 57 %} e='4 r4 r2 | \nBreak
  %{ Bar 58 %} r8 e'16 d e d e d c d e f d8 g,=' |
 \mBreak

  %Bars 59-62 
  %{ Bar 59 %} c8 e, g g16 g g8 c16 d e d c d='' | \nBreak
  %{ Bar 60 %}  g,='4 r4 r2 | \nBreak
  %{ Bar 61 %}  r8 g16 g g8 g g g c16 d e c='' | \nBreak
  %{ Bar 62 %}  d16 c d c d e fis d e8. fis16 d8. d=''16 |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %}  d=''4 r4 r2 | \nBreak
  %{ Bar 64 %}  R1 | \nBreak
  %{ Bar 65 %}  r4 a'2 g=''4~ | \nBreak
  %{ Bar 66 %}  g4 f4~ f8 e16 d e f g e='' |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %}  f2~ f16 e f e d8 c='' | \nBreak
  %{ Bar 68 %}  g8 g16 g g8 c16 d e d e d e d e d='' | \nBreak
  %{ Bar 69 %}  c8 c16 c c e d e c d c d c=''4~ | \nBreak
  %{ Bar 70 %}  c16 d c d c4~ c16 d c d c e d c='' |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %}  d16 c d c d e c d e8 c, e g=' | \nBreak
  %{ Bar 72 %}  e8 c e g c g e16 c g'='8 | \nBreak
  %{ Bar 73 %}  \times 2/3 { g8 (g g) } \times 2/3 { g (g g) } g8. (d'=''16) r4 | \nBreak
  %{ Bar 74 %}  R1 |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} R1 | \nBreak
  %{ Bar 76 %} R1 | \nBreak
  %{ Bar 77 %} R1 | \nBreak
  %{ Bar 78 %} R1 | \nBreak
  %{ Bar 79 %} R1 |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} r2 r8 c,8 \times 2/3 { c8 (c c) } | \nBreak
  %{ Bar 81 %} \times 2/3 { c (g c) } \times 2/3 { c (c c) } c8. g'='16 r4 | \nBreak
  %{ Bar 82 %} r2 r4 r8 g='8 | \nBreak
  %{ Bar 83 %} \times 2/3 { c (c c) } \times 2/3 { c (g c) } \times 2/3 { g (e g) } \times 2/3 { e (c e=') } | \nBreak
  %{ Bar 84 %} \times 2/3 { c (c c) } \times 2/3 { c (c c) } c2\fermata |
  \mBreak

  \bar "|."  
    }
  }