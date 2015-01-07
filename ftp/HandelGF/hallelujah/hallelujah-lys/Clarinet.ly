\version "2.19.15"
\include "header.ly"

oboeOneNotes =  \relative c'' {
  
  %\tempo 4 = 120
  
  \key d \major
  \time 4/4 
 
  %\markup { \huge { Allegro} }
  R1*3 |
  % 4
  d4. \f a8 b a r4 | 
  % 5
  d4. a8 b a r8 d16 d |
  % 6
  d8 d r d16 d d8 d r8 d |
  % 7
  cis d4 cis8 d4 r |
  % 8
  e4. a,8 fis' e r4 |
  % 9
  e4. a,8 fis' e r8 e16 e |
  % 10
  fis8 e r e16 e fis8 e r8 e |
  % 11
  fis e d4 cis4 r |
  % 12
  a2 b4 cis4|
  % 13
  d8 d, d'4. d8 cis4 |
  % 14
  b2 a4 r8 e'16 e |
  % 15
  d8 cis r e16 e d8 cis r8 e16 e |
  % 16
  fis8 e r8 e16 e fis8 e r4 |
  R1*2 | 
  r2 r4 r8 d16 d |
  % 20
  d8 d r8 d16 d d8 d r8 d16 d |
  % 21
  d8 d r8 d16 d d8 d r4 |
  % 22
  d2 e4 fis4 |
  % 23
  g8 g, g'4. g8 fis4 |
  % 24
  e2 d4 r8 d16 d |
  % 25
  cis8 a r8 cis16 cis d8 d16 d e8 e |
  % 26
  a,4  r8 d16 cis b8 b r8 e |
  % 27 beaming
  d [cis] d [e16 d] cis8 cis16 cis e8 cis |
  % 28
  r8 a16 a d8 a r8 cis16 cis e8 cis |
  % 29
  r8 a16 a fis'8 d r8 cis16 cis d8 a |
  % 30
  r8 b16 b e8 e r8 cis16 cis d8 d |
  % 31
  d4 cis d d|
  % 32
  d d d2 |
  r2 r4 a |
  % 34
  a g fis e8. d16 |
  % 35
  d1 |
  r2 fis4 e8. d16 |
  % 37
  d2. fis'4 |
  % 38
  e d d cis|
  % 39
  d4. cis8 d4 d |
  % 40
  cis4. a8 b4 cis|
  % 41
  d2 r2 |
  R1 * 6 |
  r2 r4 d |
  % 49
  a'4 cis, fis a, |
  % 50
  d cis8 b cis4 b8. a16 |
  % 51
  a2 a4 a |
  % 52
  a1 ~ | 
  a |r4 a a a |
  % 55
  a1 ~ | a | r2 d4 d |
  % 58
  d1~ | d ~| d4 d e e |
  % 61
  e1~ | e | e2 fis4 fis4 |
  % 64
  fis1 ~ |fis ~ | fis4. fis8 g4 g |
  % 67
  g1~ | 
  g4. g8 fis e fis g |
  % 69
  e2 r8 cis d e |
  % 70
  a,4 r4 r2 |
  r2 r4 a|
  % 72
  d fis, b  d|
  % 73
  g fis8 e fis4 e8. d16 |
  % 74
  d2 r2 |
  r4 r8 d g fis r8 d |
  % 76
  g fis r4 r2 | 
  r4 r8 d16 d g8 fis r8 d16 d |
  % 78
  g8 fis r8 a, a4 d |
  % 79
  fis d d a8 a |
  % 80
  cis4 d8 d d4 cis |
  % 81
  d r a a|
  % 82
  d r8 a a4 a |
  % 83
  d r a a |
  % 84
  d r8 a a4 a |
  % 85
  d r r  a |
  % 86
  d fis b, d |
  % 87
  g fis8 e e2 |
  % 88
  d4 r d d |
  % 89
  d4 r8 d d4 d |
  % 90
  d4 r8 d16 d d8 d r8 d16 d |
  % 91
  d8 d r8 d16 d d8 d r8 d16 d |
  % 92
  d8 d r4 r d |
  % 93
  d2. d4 |
  % 94
  d1 \bar "|."
}

BbClarinet =  \transpose bes c' \oboeOneNotes

\score {
  <<
    \context Staff=Clarinet \BbClarinet 
  >>

  \header {
	  instrument = "Bb Clarinet"
  }
  \midi  {}
}

