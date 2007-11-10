\version "2.10.20"
\include "definitions.ly"

violinoPiccolo = \new Voice { \relative c'' {
  \clef treble
  \key d \major  
  \time 4/4
  \transposition ees'
  
  \set Staff.instrumentName = \markup { 
	\center-align {
		\hcenter-in # centerIndent "Violino piccolo."
	}
  }

  %Bars 1-4
  %{ Bar 1 %} r8 d,8 fis a d a b a16 g=' | \nBreak
  %{ Bar 2 %} fis16 e d e fis gis fis gis a b cis a d cis d e='' | \nBreak
  %{ Bar 3 %} cis16 d e d e d e d e a, d cis d cis d cis='' | \nBreak
  %{ Bar 4 %} d16 gis, cis b cis b cis b cis fis, fis' e d cis b a=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} gis16 fis e fis gis a b cis d8. e16 b8. a='16 | \nBreak
  %{ Bar 6 %} a8 r8 r4 r8 b16 c b a g fis=' | \nBreak
  %{ Bar 7 %} g8 b cis d\trill e fis16 g fis e d cis='' | \nBreak
  %{ Bar 8 %} d16 b g' a g fis e d cis8 a, cis e=' | \nBreak
  %{ Bar 9 %} g8 a16 b a g fis e fis8 d fis a=' | 
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} c8 d16 e d c b a b8 e16 fis e d cis b=' | \nBreak
  %{ Bar 11 %} a8. b16 cis d e fis g a32 g fis g a16 e8. d=''16 | \nBreak
  %{ Bar 12 %} d16 cis d cis b a b a g a32 g fis g a16 e8. d='16 | \nBreak
  %{ Bar 13 %} d4 r8 a'8 b fis g a=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} d,8 d'16 e d e d e d=''4 r4 | \nBreak
  %{ Bar 15 %} r8 a'16 gis a gis a gis a8 e fis e16 d='' | \nBreak
  %{ Bar 16 %} cis16 b a b cis d e8~ e d16 cis d=''4~ | \nBreak
  %{ Bar 17 %} d8 cis16 b cis4~ cis16 b cis d b8. a='16 |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} a8 e fis g a b16 c b a g fis=' | \nBreak
  %{ Bar 19 %} g='4 r4 r2 | \nBreak
  %{ Bar 20 %} R1 | \nBreak
  %{ Bar 21 %} r16 a16 d c d c d c d g, c b c b c b=' |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} c16 fis, b a b a b a b e, e' d c b a g=' | \nBreak
  %{ Bar 23 %} fis16 e d e fis g a b c8. d16 a8. g='16 | \nBreak
  %{ Bar 24 %} g='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} r8 cis16 b cis d cis b ais b cis d e d e cis='' |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} d8 b, d fis b fis g fis16 e=' | \nBreak
  %{ Bar 28 %} d16 cis b cis d e d e fis g a fis b d cis b=' | \nBreak
  %{ Bar 29 %} ais8 fis ais cis fis fis,16 g fis e d cis=' | \nBreak
  %{ Bar 30 %} d8 b dis fis a b16 c b a g fis=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} g16 b e fis e d cis b ais gis fis gis ais b cis d='' | \nBreak
  %{ Bar 32 %} e4 r8 e8~ e16 fis32 e d e fis16 cis8. b='16 | \nBreak
  %{ Bar 33 %} b='4 r4 r2 | \nBreak
  %{ Bar 34 %} R1
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} r8 e16 d e d e fis g fis g a g a g a='' | \nBreak
  %{ Bar 36 %} fis4 r8 c8 g b r8 b=' | \nBreak
  %{ Bar 37 %} fis8 a r8 a e g=' r4 | \nBreak
  %{ Bar 38 %} a2 b='2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} b2 cis=''2~ | \nBreak
  %{ Bar 40 %} cis2 r8 dis,8 fis a=' | \nBreak
  %{ Bar 41 %} c8 fis, a c dis fis b, dis='' | \nBreak
  %{ Bar 42 %} e4 r8 b8 cis16 d cis b b8. a='16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} a8 a, cis e a e fis e16 d=' | \nBreak
  %{ Bar 44 %} cis16 b a b cis dis cis dis e fis gis e a gis a b=' | \nBreak
  %{ Bar 45 %} gis8 b, e gis b cis16 d cis b a gis=' | \nBreak
  %{ Bar 46 %} a8 cis, fis ais cis d16 e d cis b ais=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} b8 cis16 d cis b a gis a8. b16 gis8. fis='16 | \nBreak
  %{ Bar 48 %} fis='4 r4 r2 | \nBreak
  %{ Bar 49 %} R1 | \nBreak
  %{ Bar 50 %} r8 fis'16 e fis g fis e dis e fis g a g a fis='' |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} g16 fis g a g fis e dis e8. fis16 dis8. e=''16 | \nBreak
  %{ Bar 52 %} e8 e, g b e b c b16 a=' | \nBreak
  %{ Bar 53 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} r8 e'16 d e fis e d cis8 d16 cis d e d cis='' |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} b='8 r8 r4 r2 | \nBreak
  %{ Bar 56 %} r8 a'16 b a g fis e d8. e16 cis8. d=''16 | \nBreak
  %{ Bar 57 %} d8 d, fis a d a b a16 g=' | \nBreak
  %{ Bar 58 %} fis4 r8 a8 b fis g a=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} d,8 d'16 e d e d e d=''4 r4 | \nBreak
  %{ Bar 60 %} r8 a'16 gis a gis a gis a8 e fis e16 d='' | \nBreak
  %{ Bar 61 %} cis16 b a b cis d e8~ e d16 cis d=''4~ | \nBreak
  %{ Bar 62 %} d8 cis b cis~ cis16 b cis d b8. a='16 |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} a='4 r4 r2 | \nBreak
  %{ Bar 64 %} r8 fis'16 e fis e fis g a g a b a b a b='' | \nBreak
  %{ Bar 65 %} g8 d f b r8 c,8 e a='' | \nBreak
  %{ Bar 66 %} r8 b,8 d g r4 a,='4~ |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} a8 b, d g b='2~ | \nBreak
  %{ Bar 68 %} b8 cis, e a cis=''2~ | \nBreak
  %{ Bar 69 %} cis8 d, fis b d4~ d16 cis d cis='' | \nBreak
  %{ Bar 70 %} d4~ d16 cis d cis d4 r8 b='8 |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} cis8 e a, cis fis16 e d e cis8. d=''16 | \nBreak
  %{ Bar 72 %} d8 d, fis a d a b a16 g=' | \nBreak
  %{ Bar 73 %} fis16 e d e fis gis fis gis a b cis a d cis d e='' | \nBreak
  %{ Bar 74 %} cis d e d e d e d e a, d cis d cis d cis='' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} d16 gis, cis b cis b cis b cis fis, fis' e d cis b a=' | \nBreak
  %{ Bar 76 %} gis16 fis e fis gis a b cis d8. e16 b8. a='16 | \nBreak
  %{ Bar 77 %} a8 r8 r4 r8 b16 c b a g fis=' | \nBreak
  %{ Bar 78 %} g8 b cis d e fis16 g fis e d cis='' | \nBreak
  %{ Bar 79 %} d16 b g' a g fis e d cis8 a, cis e=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} g8 a16 b a g fis e fis8 d fis a=' | \nBreak
  %{ Bar 81 %} c8 d16 e d c b a b8  e16 fis e d cis b=' | \nBreak
  %{ Bar 82 %} a8. b16 cis d e fis g (a32 g fis g a16) e8. d=''16 | \nBreak
  %{ Bar 83 %} d16 cis d cis b a b a g (a32 g fis g a16) e8. d='16 | \nBreak
  %{ Bar 84 %} d8 d fis a d=''2 \fermata |
  \mBreak  

  \bar "|." 

  }
}
