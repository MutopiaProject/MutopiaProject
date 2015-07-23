\version "2.18.2"

% LilyPond notes generated in LibreOffice Calc (Javier Ruiz-Alma)
% For maintainability, edit notes in the included workbook

lblExNum = \markup \bold \huge "20."

LH = {
  \repeat volta 2 {
  \subdivideBeams
  \stemDown \fingerDown < e, _5 >16 g, -4 c -2 e -1 c -2 b, -3 c -2 a, -4
   f, -5 a, -4 d -2 f -1 d -2 c -3 d -2 b, -4
   g, -5 b, -4 e -2 g -1 e -2 d  e  c -4
   a, -5 c -4 f -2 a -1 f -2 e  f  d 
  \fingerUp \fingerNoPad b, -5 d -4 g -2 b -1 g  f  g  e -4
   c -5 e -4 a -2 c' -1 a  g  a  f -4
   d -5 f -4 b -2 d' -1 b  a  b  g -4
   e -5 g -4 c' -2 e' -1 c'  b  c'  a -4
   f -5 a -4 d' -2 f' -1 d'  c'  d'  b -4
   g -5 b -4 e' -2 g' -1 e'  d'  e'  c' -4
  \beamLessSlant \fingerDown a -5 c' -4 \staffUp f' -2 a'  f'  e'  f'  d' -4
   b -5 d' -4 g' -2 b'  g'  f'  g'  e' -4
   c' -5 e' -4 a' -2 c''  a'  g'  a'  f' -4
   d' -5 f' -4 b' -2 d''  b'  a'  b'  g' -4
   e' -5 g' -4 c'' -2 e''  c''  b'  c''  g' -4
  \bar "||" e'' -1 c'' -2 g' -4 e' -5 g' -3 f' -4 g' -3 e' -5
   d'' -1 b' -2 f' -4 d' -5 f' -3 e'  f'  d' 
   c'' -1 a' -2 e' -4 c' -5 e' -3 d'  e'  c' 
   b' -1 g' -2 d' -4 b -5 d' -3 c'  d'  b 
   a' -1 f' -2 c' -4 a -5 c' -3 b  c'  a 
  \beamLessSlant g' -1 e' -2 \staffDown b -4 g -5 b -3 a  b  g 
  \beamLessSlant \staffUp f' -1 d' -2 \staffDown a -4 f -5 a -3 g  a  f 
  \beamLessSlant \staffUp e' -1 c' -2 \staffDown g -4 e -5 g -3 f  g  e 
  \fingerUp d' -1 b -2 f -4 d -5 f -3 e  f  d 
   c' -1 a -2 e -4 c -5 e -3 d  e  c 
   b -1 g -2 d -4 b, -5 d -3 c  d  b, 
  \fingerDown a -1 f -2 c -4 a, -5 c -3 b,  c  a, 
   g -1 e -2 b, -4 g, -5 b, -3 a,  b,  g, 
   f -1 d -2 a, -4 f, -5 a, -3 g,  a,  f, 
   e -1 c -2 g, -4 e, -5 g, -3 f,  g,  f, 
}
  <c, c>2
  \bar "|."
}

RH = {
  \repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp e  16-1 g -2 c' -4 e' -5 c' -4 b -3 c' -4 a -2
   f -1 a -2 d' -4 f' -5 d' -4 c' -3 d' -4 b -2
  \beamLessSlant g -1 b -2 \staffUp e' -4 g' -5 e' -4 d'  e'  c' -2
  \beamLessSlant \staffDown a -1  \staffUp c' -2 f' -4 a' -5 f' -4 e'  f'  d' 
  \fingerNoPad \fingerDown b -1 d' -2 g' -4 b' -5 g' -4 f'  g'  e' -2
   c' -1 e' -2 a' -4 c'' -5 a' -4 g'  a'  f' -2 \break
   d' -1 f' -2 b' -4 d''  b' -4 a'  b'  g' 
  \stemDown \fingerUp e' -1 g' -2 c'' -4 e''  c''  b'  c''  a' -2
   f' -1 a' -2 d'' -4 f''  d''  c''  d''  b' -2
   g' -1 b' -2 e'' -4 g''  e''  d''  e''  c'' -2
  \stemUp \fingerUp a' -1 c'' -2 f'' -4 a''  f''  e''  f''  d'' -2
  < b' ^1 > d'' -2 g'' -4 b''  g''  f''  g''  e'' -2
  < c'' ^1> e'' -2 a'' -4 c'''  a''  g''  a''  f'' -2
   d'' -1 f'' -2 b'' -4 d'''  b''  a''  b''  g'' -2
   e'' -1 g'' -2 c''' -4 e'''  c'''  b''  c'''  g'' -2
  \bar "||"  < e''' ^5> c''' -4 g'' -2 e'' -1 g'' -3 f'' -2 g'' -3 e'' -1
   d''' -5 b'' -4 f'' -2 d'' -1 f'' -3 e''  f''  d'' 
   c''' -5 a'' -4 e'' -2 c'' -1 e'' -3 d''  e''  c'' 
   b'' -5 g'' -4 d'' -2 b' -1 d'' -3 c''  d''  b' 
   a'' -5 f'' -4 c'' -2 a' -1 c'' -3 b'  c''  a' 
   g'' -5 e'' -4 b' -2 g' -1 b' -3 a'  b'  g' 
   f'' -5 d'' -4 a' -2 f'  a' -3 g'  a'  f' 
   e'' -5 c'' -4 g' -2 e'  g' -3 f'  g'  e' 
  \fingerDown d'' -5 b' -4 f' -2 d' -1 f' -3 e'  f'  d' 
   c'' -5 a' -4 e' -2 c' -1 e' -3 d'  e'  c' 
   b' -5 g' -4 d' -2 b -1 d' -3 c'  d'  b 
  \beamLessSlant \staffUp \fingerUp a' -5 f'  -4 \staffDown c' -2 a  c' -3 b  c'  a 
  \beamLessSlant \staffUp g' -5 e'  -4 \staffDown b -2 g  b -3 a  b  g 
  \beamLessSlant \staffUp f' -5 d'  -4 \staffDown a -2 f  a -3 g  a  f 
  \beamLessSlant \staffUp e' -5 c'  -4 \staffDown g -2 e  g -3 f  g  f 
}
  <e c'>2
  \bar "|."
}