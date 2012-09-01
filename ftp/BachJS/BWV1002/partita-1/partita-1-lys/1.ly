% Movement 1, Allemanda

\version "2.16.0"

iA =  {
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \set autoBeaming = ##f
  s16 |
  \stemDown
  <d'' fis' b>8.  s16  e''8.  s16 <e'' fis' ais>8.[  d''32 cis''32]
  \stemNeutral   d''16.[  b32  a16.  fis''32]  |
  % 2
  \stemUp  fis''8.[  g''32  fis''32] \stemNeutral
   e''16.[  d''32 cis''16.\trill  b'32]  ais'16.[  g'32  fis'16.  e'32]
   d'16.[  b'32  cis'16.  cis''32]  |
  % 3
   d''16.[  b64  cis'64  d'16.  e'32]
   fis'16[  d'32(  e'32 fis'16  a'!32   g'32)] \stemUp  a'8.[  a'16]
   d''16[  fis''32  e''32  fis''16.  a'32] |
  % 4
  b'16 r16 r16. d''32  <g'' b'>16. r32 r16. b'32
   g''16.[ fis''64  e''64  a''16.  g''32]
  \stemNeutral  fis''16.[  d'32  g'16. e''32]  |
  % 5
   d''32[(   cis''16.)  b'32(   a'16.)]   a''16.[  g'32  fis'16. g'64  e'64]
  \stemDown <b' dis'>16. s32 s4. |  s1 |
  % 7
  s2 \stemUp  e''16.[  fis''64  g''64  fis''16.  e''32]
   e''8[(   d''32)\trill cis''32  d''16]  |
  % 8
   cis''8.[  fis'32  gis'32] \stemNeutral \times 2/3
  { ais'16[(  b'   cis'')]  d''[(  e''   fis'')]
   g''[(  fis''   e'')]  ais''[(  b''   cis''')]}
   fis''16.[  b'32  ais'!16. e''32]  |
  % 9
  \times 2/3 { b16[(  e'16   g'16)]   ais'16[(  cis''16   e''16)]
   d''16[(  cis''16   b'16)]}   gis''16.[  gis''32] \stemUp
   gis''8.[(  a''32  b''32)]   b''16.[  gis''32  a''16.  fis''32]  |
  % 10
   gis''16.[  eis''64  cis''64] \stemNeutral   cis'''16.[  cis'''32]
   cis'''16.[ e''32  ais'16.  e''32]   b16.[  e''32  d''16.  fis''32]  
  \times 2/3 { b''16[(  cis'''16   ais''16)]   b''16[(  d'''16   cis'''16)]}  |
  % 11
   d'''16.[  eis''32  gis'16.  eis''32]
   cis'16.[  d'''32  cis'''16.  b''32]
  \stemUp
   a''16[ ~ a''64  gis''64  fis''64  eis''64 fis''16.  b''32]
   gis''!8.[  fis''16]  |
  % 12, prima volta
   fis''8.[  e''32  d''32] \stemNeutral  \times 2/3
    { e''16[(  d''  cis'')]   d''[( b'   eis')]   fis'[(  ais'   cis'')}
    fis''8] ~  fis''16.[ e'32  d'16.  cis'32]
  % 12, seconda volta
  \stemUp  fis''8.[  e''32  d''32]  \stemNeutral \times 2/3
    { e''16[(  d''  cis'')]   d''[( b'   eis')]   fis'[(  ais'   cis'')}
    fis''8] ~  fis''8.[ cis''16]

  % 13
  \stemUp
   cis''16.[  d''64  e''64  d''16.  b'32] \stemNeutral
   ais'16.[  fis'32 e'16.\trill  d'64  e'64] \times 2/3
  { d'16[(  fis'   b')]   d'[(  cis'  b)]}  ais16.[ cis''32 fis'16. e'32] |
  % 14
   d'16.[  b64(  cis'64   d'16.)  e'32]  \times 2/3
  { fis'16[(  g'   a')]  b'[(  c''   a')]} \stemUp
   dis'8.[  fis'16] \stemNeutral  b'16.[  b'32 cis''16.  dis''32]  |
  % 15
  \stemUp
   e''16.[  g''64  fis''64  g''16.  b'32] \stemNeutral \times 2/3 
  { c''16[( b'  a')]  g''[( fis''  e'')]  e''[( dis''  cis'')]  dis''[( cis''  b')]}
   b''16.[  b'64(  cis''64 d''32  e''32   f''16)]  |
  % 16
   gis'16[(  e''16  b''16  c'''32   d'''32)]
   d'''16.[  c'''32 d'''16.  b''32]
  \stemUp <c''' e''>8. s16*5  |
  % 17
  \stemDown dis''16.  s32*29  |
  % 18
  <c'' g' c'>16.  s32*13  <e' g>16  s8.  <fis' b>8 s8  |
  % 19
   e'8.[  fis'16] \stemNeutral  \times 2/3 { g'16[( a'  b')]  cis''[( d''  e'')]}
   cis'!16.[  e'32  a'16.  g'32]
   fis'16.[  a''32 e'16.  g''32]  |
  % 20
  \times 2/3 { d'16[(  a'   g'')]   fis''[(  e''   ais'')]  b''[( fis''  e'')]
   d''[(  cis''   e'')]   ais'[( g'  fis')]  e'[( ais'  g'')] }
   fis''16.[ d'32 cis'16. e''32] |
  % 21
   b16[ ~ b64  e''64  d''64  cis''64  d''16.  e''32] 
  \times 2/3 { fis''16[  e''(  fis'']   g''[  a''!   b'')]}
  \stemUp  c''16.[  a''64(  g''64] \stemNeutral \times 2/3
  { fis''16[  e''   d'')]  c''[( b'  c'')]}   a''16.[  c''32]  |
  % 22
  \times 2/3 { dis'16[(  fis'   b')]   dis''[(  fis''   a'')]
   c'''[(  b''   a'')]   g''[(  a''   fis'')]} \stemUp
   g''16.[  fis''32  e''16.  d''32] \stemNeutral \times 2/3
  { c''16[(  e''   d'')]  c''[(  ais'   b')]}  |
  % 23
  \times 2/3 { ais'[(  cis''   g'')]   fis''[(  ais'   e')]}
   d'16.[  b''64  a''64  g''16.  fis''32]
  \times 2/3 { eis''16[(  fis''  gis'')]} \stemUp  fis''16.[  b'32]
   d''8[(   cis''32)\trill  b'32  cis''16]  |
  % 24, prima volta
  \stemUp  b'8.[  d''32 cis''32] \stemNeutral \times 2/3
    { d''16[(  b'   d'')]   fis''[(  b''  ais'')]}
    <b'' d'' fis' b>4. r16  cis''16
  %24, seconda volta
  \stemUp  b'8.[  d''32 cis''32] \stemNeutral \times 2/3
    { d''16[(  b'   d'')]   fis''[(  b''  ais'')]}
    <b'' d'' fis' b>4. r16
} 

iB =  {
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \set autoBeaming = ##f
  fis''16
  \stemUp
   fis''8.[  b''16]   g''8.[\trill  fis''32  g''32] fis''8. s16*5  |
  % 2
  \stemDown
  <b' d' g>8. s16*13  |
  % 3
  s2 fis'8. s4 s32 d'32 |
  % 4
   g'16[  b'32  a'32  g'16.  fis'32]  e'16.[  e'32  fis'16. g'32]
  <a' e' cis'>16  s16*7
  % 5
  s2 \stemUp  a''8[ ~ a''32  a''32  g''32  fis''32] \stemNeutral
   b''16.[  a''32  g''16.\trill  fis''32]  |
  % 6
   g''16.[  e''32  b'16.  g'32]   e'16.[  d''32  cis''16. b'32]
   ais'16.[  g''32  fis''16.  e'32]
   d'16.[  fis'32( b'32  d''32   fis''16)]  |
  % 7
   gis'16.[  b'32  e''16.  d'32] \times 2/3
  { cis'16[(  d'   e')]  fis'[( g'  b)]} % g=>>gis?
  \stemDown <cis'' fis' ais>16.  s32*5  <fis' b>8 s8  |
  % 8
  fis'8. s16 s4*3 |
  % 9
  s2 <cis'' eis'>8. s16*3  <cis'' fis'>16.  s32  |
  % 10
  <cis'' eis' cis'>16.  s32 s4. s2 |
  % 11
  s2 <cis'' fis'>8[  a'16.  b'32]  cis''4
  % 12, prima volta
  <cis'' fis'>8. s16*13
  %12, seconda volta
  <cis'' fis'>8. s16*13

  % 13
  fis'8.  s16 s4*3
  % 14
  s2 a8.  s16*5  |
  % 15
  <b' e' g>16. s32 s8*7
  % 16
  s2  a'8.[  b'16] \stemNeutral \times 2/3
  { c''16[(  b'16   a'16)]  fis''16[(  g''16  a''16)]}  |
  % 17
  \stemUp
   a''16.[  g''64  fis''64  b''16.  a''32]  \stemNeutral
   g''16.[\trill  fis''32(  g''32  a''32   fis''16)]  \times 2/3
  { g''16[( e''  b')]  g'[( e'  b)]  d'[( g'  b')]  d''[( e''  f'')]} |
  % 18
  \stemUp
   e''16[ ~ e''64  d''64  c''64  b'64  c''16.  e''32]  
  \stemNeutral  ais'8.[\trill(  b'32   ais'32)]  \times 2/3
  {\stemUp  b'16[(  cis''   dis'')]  \stemNeutral  e''[( g''   fis'')]}
  \stemUp  e''8[(   dis''16.)\trill  e''32]  |
  % 19
  e''8. s16 s4*3 | s1 |
  % 21
  \stemDown
  s2 <fis' a>16.  s32 s8*3  
  % 22
  s2 <b' e'>16. s32 s8*3
  % 23
  s2 s8 s16. e'32  fis'4  |
  % 24, prima volta
  <fis' b>8. s16 s2 s4
  % 24, seconda volta
  <fis' b>8. s16 s2 s8.
}

iNotes =  \context Staff <<
  \context Voice=A \iA
  \context Voice=B \iB
>>
