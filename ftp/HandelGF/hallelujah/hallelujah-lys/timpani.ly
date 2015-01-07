\version "2.19.15"
\include "header.ly"

timpaniNotes =  \relative c {
 \set Score.skipBars = ##t   
 \clef bass
  \key d \major
  
  \time 4/4 
 
  R1*13|
  %14
  r2 r4 r8 a16 a |
  % 15
  d8 a r8 a16 a d8 a r8 a16 a |
  % 16
  d8 a16 a a8 a16 a d8 a r4 |
  R1*2 | 
  r2 r4 r8 d16 d |
  % 20
  d8 d r8 d16 d d8 d r8 d16 d |
  % 21
  d8 d16 d d8 d16 d d8 d16 d d8 d16 d |
  % 22
  d4 r4 r2 |
  R1*2 |
  r8 a16 a a8 a d d16 d a8 a16 a |
  % 26
  d8 a d4. d8 a4 | 
  r8 d8 d8. d16 a4 r8 a16 a |
  % 28
  d8 d r8 d16 d a8 a r4 | 
  R1 * 3 | 
  r2 r8 d16 d d8 d |
  % 33
  d d16 d d8 d d4 r |
  R1*3 |
  r2 r4 d |
  % 38
  a d a4. a8 |
  % 39
  d4. a8 d4 d4 |
  % 40
  a4. d8 d4 a4 |
  % 41
  d2 r |
  R1*10 | \break
  r4 r8 a8 d a r8 a |
  % 53
  d a r8 a16 a d8 a r8 a16 a |
  % 54
  d8 a r4 r2 |
  r4 r8 a8 d a r8 a |
  % 56
  d a r8 a16 a d8 a r8 a16 a |
  % 57
  d8 a r4 r2 |
  R1*9|
  r2 d4 d4 |
  % 68
  a4. a8 d d d d |
  % 69
  a2 r |
  R1 * 5 |
  r4 r8 d8 d d r8 d |
  % 76
  d d r4 r2 | r4 r8 d16 d d8 d r8 d16 d |
  % 78
  d8 d16 d d8 d d d d d |
  % 79
  d4 d8. d16 d8 d16 d d8 d |
  % 80
  a4 d4 a4. a8 |
  % 81
  d4 r d4 d8. d16 |
  % 82
  d4 r8 d8 d4 d8. d16 |
  % 83
  d4 r d4 d4 |
  % 84
  d4 r8 d8 d4 d8. d16 |
  % 85
  d4 r r d4 |
  % 86
  d4 d4 d4 d4 |
  % 87
  a4 d8 d a4. a8 |
  % 88
  d4 r8 d8 d d r8 d |
  % 89
  d4 r8 d8 d d r8 d |
  % 90
  d d r8 d16 d d8 d r8 d16 d |
  % 91
  d4 r8 d16 d d8 d16 d d8 d16 d |
  % 92
  d8 d r4 r d4 |
  % 93
  d2. d4 |
  % 94
  d1 |
  \bar "|."
  
}

