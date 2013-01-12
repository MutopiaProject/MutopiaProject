% J.S. Bach, Partita I for solo violin, BWV 1002
%
% 3rd movement, Corrente

\version "2.16.0"

iiiA =  {
  b'8  |
  % 1
  b'8  b8  d'8  fis'8  b'8  d''8  |
  % 2
  cis''8(  fis'8   ais8)  e'8  d'8  cis'8  |
  % 3
  b8  d'8  fis'8  b'8  d''8  fis''8  |
  % 4
  e''8(  a'8   cis'8)  g'8  fis'8  e'8  |
  % 5
  d'8  fis'8  a'8  d''8  fis''8  a''8  |
  % 6
  g''8(  b'8   e'8)  d''8  cis''8  b'8  |
  % 7
  ais'8  g''8  fis''8  e'8  dis'8  a'8  |
  % 8
  gis'8  fis''8  e''  d'8  cis'8  e'8  |
  % 9
  ais'8  e''8  <b fis' e''>(  d''8   cis''8)  d''8  |
  % 10
  cis''8(  fis'8   ais8)  g'8  fis'8  e'8  |
  % 11
  d'8  fis'8  b'8  d''8  fis''8  b''8  |
  % 12
  g''8(  b'8   e'8)  g'8  b'8  d''8  |
  % 13
  cis''8(  e'8   a8)  cis'8  e'8  g'8  |
  % 14
  fis'8(  d''8   a''8)  e''8  d''8  c''8  |
  % 15
  b'8  g'8  b'8  d''8  g''8  b''8  |
  % 16
  cis'''8(  e''8 g'8)  e''8  a''8  cis'''8  |
  % 17
  d'''8  a''8  fis''8  d''8  a'8  cis'''8  |
  % 18
  d'8  d'''8(  cis'''8  b''8  ais''8   b''8)  |
  % 19
  cis'''8(  e''8   ais'8)  g''8  fis''8  e''8  |
  % 20
  d''8  fis''8  b''8  gis''8  a''!8  fis''8  |
  % 21
  eis''8  gis''8  b''8  d'''8  cis'''8  b'8  |
  % 22
  a'8  cis''8  fis''8  a''8  cis'''8  e''!8  |
  % 23
  dis''8  fis''8  a''8  cis'''8  b''8  a'8  |
  % 24
  gis'8  b'8  eis''8  gis''8  b''8  fis'8  |
  % 25
  eis'8  gis'8  cis''8  eis''8  gis''8  b''8  |
  % 26
  a''8(  cis''8   fis'8)  g''!8  fis''8  e''!8  |
  % 27
  d''8(  fis'8   b8)  c''8  b'8  a'8  |
  % 28
  g'8(  b'8   d''8)  g''8  eis''8  fis''8  |
  % 29
  b'8(  eis'8   gis8)  eis'8  b'8  d''8  |
  % 30
  cis''8  a'8  gis'8  fis'8  cis'8  eis'8  |
  % 31
  fis'8(  ais'8   cis''8)  e''8  d''8  b'8  |
  % 32
  cis''8(  ais'8   fis'4.) 

    cis''8  |
  % 33
  cis''8  fis''8  cis''8  ais'8  fis'8  d'8  |
  % 34
  gis8  e'8  ais8  fis'8  cis''8  e''8  |
  % 35
  d''8(  fis'8   b8)  fis'8  b'8  d''8  |
  % 36
  e''8  a'8  dis'8(  a'8   fis''8)  a'8  |
  % 37
  g'8  e'8  g'8  b'8  e''8  g''8  |
  % 38
  a''8  d''8  gis'8(  d''8   b''8)  d''8  |
  % 39
  c''8  e''8  a''8  fis''8  g''8  e''8  |
  % 40
  dis''8(  fis''8   a''8)  c'''8  b''8  a'8  |
  % 41
  g'8  b''8  a''8  fis'8  e'8  g''8  |
  % 42
  fis''8(  b'8   dis'8)  a'8  g'8  fis'8  |
  % 43
  e'8  g''8  fis''8  d'8  c'8  e''8  |
  % 44
  d''8(  gis'8   b8)  f''8  e''8  d''8  |
  % 45
  c''8  a'8  c''8  e''8  f''8  a''8  |
  % 46
  dis''8(  fis'!8   a8)  fis''!8  dis''8  b'8  |
  % 47
  b''8  g''8  e''8  g''8  b'8  dis''8  |
  % 48
  e'8(  fis'8   g'8)  b'8  dis''8  e''8  |
  % 49
  gis''8(  b'8   d'8)  b'8  e''8  gis''8  |
  % 50
  a''8  e''8  cis''8  e''8  cis''8  a'8  |
  % 51
  fis'8  d''8  b'8  gis'8  e''8  d''8  |
  % 52
  cis''8  e''8  cis''8  a'8  e'8  g'!8  |
  % 53
  fis'8  a''8  g''8  e'8  d'8  fis''8  |
  % 54
  e''8(  a'8   cis'8)  b'8  a'8  g'8  |
  % 55
  fis'8  d''8  cis''8  e'8  d'8  b'8  |
  % 56
  cis'8(  e'8   g'8)  b'8  a'8  g'8  |
  % 57
  fis'8  c'8  b8  g'8  a'8  a8  |
  % 58
  g8(  d'8   b'8)  d''8  cis''!8  e''8  |
  % 59
  a''8  g'8  fis'8  d''8  a8  cis''8  |
  % 60
  d''8  d'8(  cis'8  b8  ais8   b8)  |
  % 61
  ais8  cis'8  fis'8  ais'8  cis''8  e''8  |
  % 62
  d''8  fis''8  d''8  b'8  gis'8  b'8  |
  % 63
  eis'8  gis'8  cis''8  eis''8  gis''8  b''8  |
  % 64
  ais''8  cis'''8  ais''8  fis''8  cis''8  e''!8  |
  % 65
  dis''8  c'''8  b''8  a'8  gis'8  d''8  |
  % 66
  cis''8  b''8  a''8  g'8  fis'8  c''8  |
  % 67
  b'8  a''8  g''8  fis'8  e'8  b'8  |
  % 68
  ais'8  g''8  fis''8  e'8  dis'8  a'8  |
  % 69
  gis'8  b'8  d''8  fis''8  e''8  d'8  |
  % 70
  cis'8(  b8   ais8)  g''8  fis''8  e''8  |
  % 71
  d''8  fis''8  d''8  b'8  fis'8  ais'8  |
  % 72
  b'8(  a'8  g'8  fis'8  e'8  dis'8  |
  % 73
  e'8  dis'8   e'8)  gis8  e'8  d''8  |
  % 74
  cis''8(  b'8  a'8  gis'8  fis'8  eis'8  |
  % 75
  fis'8  eis'8   fis'8)  ais8  fis'8  e''8  |
  % 76
  dis''8(  fis''8   a''!8)  c'''8  b''8  a''8  |
  % 77
  g''8(  fis''8   eis''8)  fis''8  cis''8(  d''8  |
  % 78
   e''!8)  ais'8(  b'8   cis''8)  fis'8  ais'8  |
  % 79
  b8  d'8  fis'8  b'8  d''8  fis''8  |
  % 80
  b''2  r8
}

iiiStaff = \context Staff <<
  \context Voice=A \iiiA
>>
