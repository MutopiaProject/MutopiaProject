% Movement 5, Sarabande 
\version "1.4.0"

% Notes:
% Measure 30: the c' and e' of the first chord are according to Werner Icking's edition quarters, not eighths 

vA = \notes { 
  \stemUp
  fis''4  g''  fis''8  e''8  |
  % 2
  fis''4.  [e''8  d''8  cis''8]  |
  % 3
  b'8  e''8  d''8  cis''8  d''8  b'8  |
  % 4
  ais'4.  [g'8  fis'8  e'!8]  |
  % 5
  \stemDown
  d'4  cis'4  b4  |
  % 6
  <g'2 b>  <fis'4 ais>  |
  % 7
  <b4 fis'> g'2
  % 8, prima volta
  fis'4. s8*3
  % 8, seconda volta
  fis'2.

  % 9
  s2.
  % 10
  d'8 s8*5 | s2.*2 |
  % 13
  a'4.  g'8  fis'4  |
  % 14
  e'4  dis'4  <b' e'>  |
  % 15
  <c''4 a' a>  <b' g' b>  <a' fis' b>  |
  % 16
  e'4.  [d'8  cis'8  b8]  |
  % 17
  a4  r4  g'4  |
  % 18
  fis'4  e'4  d'4  |
  % 19
  <d'4 g>  e'4  d'4  |
  % 20
  a'2  e''8(  )cis''8  |
  % 21
  <e'4 cis'>  s2  |
  % 22
  <fis'2 b>  <fis'4 a>  |
  % 23
  <g'4 g>  r4  e'4  |
  % 24
  fis'4.  s8*3 | s2. |
  % 26
  e'8( gis'8  )b'8  d''8  gis''8  d''8  |  
  % 27
  e'4  d'4  cis'4  |
  % 28
  \stemDown
  [ais'8( b'8  )cis''8  e''8  ais''8  e''8]  |
  \stemBoth
  % 29
  <b''4 d'' fis'>  <a''! cis'' e'>  <g'' b' d'> |
  % 30
  \stemUp
  [ais'8  g''8  fis''8  e''8] <d''4 fis'>  |
  % 31
  r8  cis''8  cis''4.  b'8  |
  % 32
  <b'2. fis'>  
} 

vB = \notes {
  \stemDown
  <d''4 fis' b>  <d'' e'>  <cis'' a'>  |
  % 2
  <d''4. d'> s8*3 |
  % 3
  g'4 e' eis' |
  % 4
  fis'4. s8*3 |
  % 5
  \stemUp
  <b'4 fis'>  <a' e'>  g'16  fis'16(  )g'8 |
  % 6
  cis''4.  d''8  e''4  |
  % 7
  e''8  d''8  e''8  d''8  cis''8  b'8  |
  % 8, prima volta
  <fis''4. cis''> [e'8  d'8  cis'8]
  % 8, seconda volta
  <fis''2. cis''>
  % 9
  \stemUp
  < ais''4 cis'' fis'> <ais'' cis'' e'> <ais'' cis'' fis'> |
  % 10
  \stemUp
  b'8(  fis''8  )b''8  a''!8  gis''8  fis''8  |
  % 11
  \stemBoth
  <e''4 b' gis' d'>  <fis'' cis'' a' cis'>  <gis''4 e'' d' b> |
  % 12
  <a''4. cis'' e' a>  [g''!8  fis''8  e''8]  |
  % 13
  \stemUp
  [dis''8  c'''8  b''8  e''8]  [dis''8  a''8]  |
  % 14
  c''16(  b'16  c''16  )a'16  b'8  a''8  g''4  |
  % 15
  g''8  fis''8  fis''8  e''8  e''8  dis''8  |
  % 16
  e''4.  s8*3  |
  % 17
  <e''4 cis'' g'>  d''8  cis''8  b'8  a'8  |
  % 18
  d''4.  e''8  <fis''4 a'> |
  % 19
  <b''4 b'>  <g'' cis''> <fis'' d''>  |
  % 20
  <e''4. cis''>  <fis''8 d''>  g''4  |
  % 21
  b'8(  )ais'16  g''16  fis''8(  )e''8  d''8(  )cis''8  |
  % 22
  d''4.  e''8  <fis''4 cis''>  |
  % 23
  <fis''4 b'>  e''8(  )d''8  cis''8(  )b'8  |
  % 24
  ais'4.  [g'8  fis'8  e'8]  |
  % 25
  <b'4 fis' d'> <cis''4 ais' cis'>  <d'' b' b>  |
  % 26
  d''8 s8*5
  % 27
  [cis''16 b'16( )cis''8] [d''16 cis''16( )d''8] <e''4 b' e'> |
  % 28
  \stemUp <e''4 fis'> s2 | s2. |
  \stemDown
  % 30
  <e'8 cis'> s8*3 b4  |
  % 31
  e'4  fis'2  |
  % 32
  b2.
} 

vStaff = \context Staff <
  \context Voice=A \vA
  \context Voice=B \vB
>