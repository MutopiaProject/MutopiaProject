
\version "2.16.0"

viA =   { 
  b'8  d''8  fis''8  g''8  e''8  d''8  cis''8  a''8  g''8  |
  % 2
  fis''8  d''8  cis''8  d''8  a'8  fis'8  d'8  d''8  cis''8  |
  % 3
  b'8  g'8  fis'8  e'8  e''8  d''8  eis'8  cis''8  b'8  |
  % 4
  ais'8  fis''8  cis''8  ais'8  g'8  fis'8  e'8  d'8  cis'8 |
  % 5
  d'8  fis'8  b'8  cis'8  b'8  a'8  b8  a'8  g'8  |
  % 6
  a8  cis'8  e'8  g'8  cis''8  e''8  ais'8  fis''8  e''8  |
  % 7
  d''8  b'8  a'8  g'8  e''8  d''8  cis''8  ais'8  b'8  |
  % 8, prima volta
  fis'8  ais'8  cis''8  fis''8  g''8  fis''8  e''8  d''8 cis''8
  % 8, seconda volta
  fis''8  cis''8  ais'8  fis'2. 

  % 9
  fis'8  cis''8  ais''8  ais''8  cis''8  fis'8  e'8  d'8 cis'8  |
  % 10
  d'8  fis'8  b'8  d''8  fis''8  b''8  a''!8  gis''8  fis''8  |
  % 11
  e''8  gis'8  d''8  cis''8  a'8  fis''8  d''8  b'8  gis''8  |
  % 12
  a''8  e''8  cis''8  a'8  cis''8  e''8  g''!8  fis''8  e''8  |
  % 13
  dis''8  a'8  c'''8  b''8  e''8  g'8  fis'8  dis''8  a''8  |
  % 14
  c''8  a'8  e'8  dis'8  b'8  a''8  g''8  dis''8  e''8  |
  % 15
  a'8  g''8  fis''8  b'8  g'8  e''8  fis'8  a'8  dis''8  |
  % 16
  e''8  b'8  g'8  e'8  g'8  b'8  e''8  fis''8  g''8  |
  % 17
  a''8  e''8  d''8  cis''8  b'8  a'8  g'8  fis'8  e'8  |
  % 18
  fis'8  a'8  cis''8  d''8  fis''8  e''8  fis''8  a'8  d'8 |
  % 19
  g8  d'8  b'8  cis''8  b''8  a''8  g''8  e''8  fis''8  |
  % 20
  e''8  cis''8  b'8  cis''8  a'8  gis'8  a'8  e'8  g'8  |
  % 21
  ais'8  cis''8  e''8  g''8  fis''8  e''8  d''8  e''8  cis''8 |
  % 22
  d''8  b'8  cis''8  d''8  fis''8  e''8  fis''8  a'8  fis'8  |
  % 23
  g'8  b'8  fis''8  e''8  cis''8  d''8  cis''8  ais'8  b'8  |
  % 24
  ais'8  cis''8  b'8  ais'8  gis'8  fis'8  e'8  d'8  cis'8  |
  % 25
  d'8  fis'8  b'8  b'8  ais'8  cis''8  cis''8  b'8  d''8  |
  % 26
  d''8  b'8  gis'8  e'8  gis'8  b'8  d''8  gis''8  b''8  |
  % 27
  e'8  g'!8  cis''8  cis''8  b'8  d''8  d''8  cis''8  e''8  |
  % 28
  e''8  cis''8  ais'8  fis'8  ais'8  cis''8  e''8  ais''8 cis'''8  |
  % 29
  d''8  b''8  fis'8  cis''8  a''!8  e'8  b'8  g''8  d'8  |
  % 30
  cis'8  e'8  g'8  ais'8  cis''8  e''8  g''8  fis''8  e''8  |
  % 31
  ais''8  b''8  eis''8  fis''8  cis''8  d''8  fis'8  b'8  ais'8 
  % 32, prima volta
  b'8  fis'8  d'8  b8  d'8  fis'8  b'8  cis''8  d''8
  % 32, seconda volta
  b8  d'8  fis'8  b'8  d''8  fis''8  b''4.
} 

viStaff = \context Staff <<
  \context Voice=A \viA
>>