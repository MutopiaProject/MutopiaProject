\version "2.10.20"
\include "definitions.ly"

cornoOne = \new Voice { \relative c'' {
  \clef treble
  \key c \major  
  \time 4/4
  \transposition f
  
  \set Staff.instrumentName = \markup { 
	\center-align {
		 \hcenter-in # centerIndent  "Corno I." 
	}
  }

  %Bars 1-4
  %{ Bar 1 %} R1 | \nBreak
  %{ Bar 2 %} r8 g c e g d d16 (g,) d'8 | \nBreak
  %{ Bar 3 %} \times 2/3 {d8 (d d)} d8. (g16) r2 | \nBreak
  %{ Bar 4 %} R1 |  
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} R1 | \nBreak
  %{ Bar 6 %} R1 | \nBreak
  %{ Bar 7 %} R1 | \nBreak
  %{ Bar 8 %} r2 r8 g,8 \times 2/3 { g8 (g g) } | \nBreak
  %{ Bar 9 %} \times 2/3 { g (c, g') } \times 2/3 { g (g g) } g8. (c16) r4 |
  \mBreak

  %Bars 10 -13
  %{ Bar 10 %} R1 | \nBreak
  %{ Bar 11 %} R1 | \nBreak
  %{ Bar 12 %} r8 g8 \times 2/3 { c (c c) } \times 2/3 { c (g c) } \times 2/3 { g (e g=') } | \nBreak
  %{ Bar 13 %}  e8 g'16 f g f g f e f g a f e f d='' | 
  \mBreak 

  %Bars 14-17
  %{ Bar 14 %}  e8 g, c d\trill e16 f e f g f e f='' | \nBreak
  %{ Bar 15 %} d=''4 r4 r2 | \nBreak
  %{ Bar 16 %} r8 d16 c d e f d e d e d e fis g e='' | \nBreak
  %{ Bar 17 %} fis e fis e fis g a fis g8. a16 fis8. g=''16 | 
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} g=''4 r4 r2 | \nBreak
  %{ Bar 19 %} R1 | \nBreak
  %{ Bar 20 %} r8 c,8 d e f g16 a g f e d='' | \nBreak
  %{ Bar 21 %} e=''4 r4 r2 | 
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} R1 | \nBreak
  %{ Bar 23 %} R1 | \nBreak
  %{ Bar 24 %} r8 a16 g a bes a g f8 g16 f g a g f='' | \nBreak
  %{ Bar 25 %} e=''4 r4 r2 | \nBreak
  %{ Bar 26 %} R1 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 e,16 (e) e (e e e) c='4 r4 | \nBreak
  %{ Bar 28 %} R1 | \nBreak
  %{ Bar 29 %} r8 e16 (e) e (e e e) e='4 r4 | \nBreak
  %{ Bar 30 %} r8 e'16 (e) e (e e e) e8. (a=''16) r4 |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} r2 r8 e,16 (e) e (e e e=') | \nBreak
  %{ Bar 32 %} e4 r4 r8 e'16 d e d e d='' | \nBreak
  %{ Bar 33 %} c8 e16 d e d e f g fis g a g a g a='' | \nBreak
  %{ Bar 34 %} fis=''8 r8 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} R1 | \nBreak
  %{ Bar 36 %} g2 f=''2 | \nBreak
  %{ Bar 37 %} e2 d16 e d e f g f g='' | \nBreak
  %{ Bar 38 %} e2~e16 f e fis g a g a='' |
  \mBreak

  %Bars 39-42
  %{ Bar 39 %} fis2~fis16 g fis g a b a b='' | \nBreak
  %{ Bar 40 %} g2~g16 fis g fis g=''4~ | \nBreak
  %{ Bar 41 %} g16 fis g fis g4~g16 fis g fis g fis g a='' | \nBreak
  %{ Bar 42 %} fis e fis e fis g e fis d8 g16 a fis8. g=''16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} g=''4 r4 r2 | \nBreak
  %{ Bar 44 %} R1 | \nBreak
  %{ Bar 45 %} R1 | \nBreak
  %{ Bar 46 %} R1 |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} R1 | \nBreak
  %{ Bar 48 %} r8 g16 f g a g f e8 f16 e f g f e='' | \nBreak
  %{ Bar 49 %} d=''8 r8 r4 r2 | \nBreak
  %{ Bar 50 %} R1|
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} R1 | \nBreak
  %{ Bar 53 %} r8 f16 e f g f e d8 e16 d e f e d='' | \nBreak
  %{ Bar 54 %} c8 r8 r4 r8 a'16 g a b a g='' |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} fis16 e d e fis g a fis g f g f g a g f='' | \nBreak
  %{ Bar 56 %} e16 d e f e d c b c f e d d8. c=''16 | \nBreak
  %{ Bar 57 %} c=''4 r4 r2 | \nBreak
  %{ Bar 58 %} r8 g'16 f g f g f e f g a f e f d='' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} e8 g, c d e16 f e f g f e f='' | \nBreak
  %{ Bar 60 %} d=''4 r4 r2 | \nBreak
  %{ Bar 61 %} r8 d16 c d e f d e f e f e fis g e='' | \nBreak
  %{ Bar 62 %} fis16 e fis e fis g a fis g8. a16 fis8. g=''16 |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} g=''4 r4 r2 | \nBreak
  %{ Bar 64 %} R1 | \nBreak
  %{ Bar 65 %} c2 bes='' | \nBreak
  %{ Bar 66 %} a2 g16 f g f g a bes g='' |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} a2~ a16 g a g a g f e='' | \nBreak
  %{ Bar 68 %} d16 c d e d f e f g f g f g f g f='' | \nBreak
  %{ Bar 69 %} e16 d e f e g f g a g a g a=''4~ | \nBreak
  %{ Bar 70 %} a16 g a g a4~ a16 g a g a b g a='' | 
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} b16 a b a b c a b c f, e d d8. c=''16 | \nBreak
  %{ Bar 72 %} c=''4 r4 r2 | \nBreak
  %{ Bar 73 %} r8 g8 c e g d d16 (g,) d'=''8 | \nBreak
  %{ Bar 74 %} \times 2/3 {d8 (d d)} d8. (g=''16) r2 |
  \mBreak 

  %Bars 75-79
  %{ Bar 75 %} R1 | \nBreak
  %{ Bar 76 %} R1 | \nBreak
  %{ Bar 77 %} R1 | \nBreak
  %{ Bar 78 %} R1 | \nBreak
  %{ Bar 79 %} r2 r8 g,8 \times 2/3 {g8 (g g=')} |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} \times 2/3 {g8 (c, g')} \times 2/3 {g (g g)} g8. (c=''16) r4 | \nBreak
  %{ Bar 81 %} R1 | \nBreak
  %{ Bar 82 %} R1 | \nBreak
  %{ Bar 83 %} r8 g8 \times 2/3 {c (c c)} \times 2/3 {c (g c)} \times 2/3 {g (e g=')} | \nBreak
  %{ Bar 84 %} \times 2/3 {e (e e)} \times 2/3 {e (e e)} e2\fermata |
  \mBreak
  
  \bar "|."

  }
 }