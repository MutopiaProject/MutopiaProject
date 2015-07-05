\version "2.18.2"

% LilyPond notes generated in LibreOffice Calc (Javier Ruiz-Alma)
% For maintainability, edit notes in the included workbook

lblExNum = \markup \bold \huge "6."

LH = {
\repeat volta 2 {
 \subdivideBeams
  \stemDown \fingerDown < c, _5 >16 a, -1 g, -2 a, -1 f, -3 a, -1 e, -4 a, -1
   d, -5 b, -1 a, -2 b, -1 g, -3 b, -1 f, -4 b, -1
   e, -5 c  b,  c  a,  c  g,  c 
   f, -5 d  c  d  b,  d  a,  d 
   g, -5 e  d  e  c  e  b,  e 
   a, -5 f  e  f  d  f  c  f 
  \fingerUp \fingerNoPad < b, ^5> g  f  g  e  g  d  g 
  < c ^5> a  g  a  f  a  e  a 
  < d ^5> b  a  b  g  b  f  b 
  < e ^5> c'  b  c'  a  c'  g  c' 
   f -5 d'  c'  d'  b  d'  a  d' 
   g -5 e'  d'  e'  c'  e'  b  e' 
   a -5 f'  e'  f'  d'  f'  c'  f' 
   b -5 g'  f'  g'  e'  g'  d'  c' 
  \bar "||" g' -1 b -5 c' -4 b -5 d' -3 b -5 e' -2 b -5
   f' -1 a -5 b -4 a -5 c' -3 a -5 d' -2 a -5
   e' -1 g -5 a  g  b  g  c'  g 
   d'  f -5 g  f  a  f  b  f 
   c'  e -5 f  e  g  e  a  e 
   b  d -5 e  d  f  d  g  d 
   a  c -5 d  c  e  c  f  c 
   g  b, -5 c  b,  d  b,  e  b, 
  \fingerDown f  a, -5 b,  a,  c  a,  d  a, 
   e  g, -5 a,  g,  b,  g,  c  g, 
   d  f, -5 g,  f,  a,  f,  b,  f, 
   c  e, -5 f,  e,  g,  e,  a,  e, 
   b,  d, -5 e,  d,  f,  d,  g,  d, 
   a,  c, -5 d,  c,  e,  c,  f,  e, 
}
  c,2
  \bar "|."
}

RH = {
  \repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp c  16-1 a -5 g -4 a -5 f -3 a -5 e -2 a -5
   d -1 b -5 a -4 b -5 g -3 b -5 f -2 b -5
   e -1 c'  b  c'  a  c'  g  c' 
   f -1 d'  c'  d'  b  d'  a  d' 
  \beamLessSlant g -1 \staffUp e'  d'  e'  c'  e'  b  e' 
  \beamLessSlant \staffDown a -1 \staffUp f'  e'  f'  d'  f'  c'  f' 
  \fingerDown b -1 g'  f'  g'  e'  g'  d'  g' 
   c' -1 a'  g'  a'  f'  a'  e'  a' 
   d' -1 b'  a'  b'  g'  b'  f'  b' 
   e' -1 c''  b'  c''  a'  c''  g'  c'' 
   f' -1 d''  c''  d''  b'  d''  a'  d'' 
  \stemDown \fingerUp \fingerNoPad < g' ^1 > e''  d''  e''  c''  e''  b'  e'' 
  < a' ^1> f''  e''  f''  d''  f''  c''  f'' 
  < b' ^1> g''  f''  g''  e''  g''  d''  c'' 
  \bar "||"  < g'' ^5> < b' ^1> < c'' ^2> b' -1 d'' -3 b' -1 e'' -4 b' -1
   f'' -5 a' -1 b' -2 a' -1 c'' -3 a' -1 d'' -4 a' -1
   e'' -5 g' -1 a'  g'  b'  g'  c''  g' 
  \stemUp \fingerDown d''  f' -1 g'  f'  a'  f'  b'  f' 
   c''  e' -1 f'  e'  g'  e'  a'  e' 
   b'  d' -1 e'  d'  f'  d'  g'  d' 
   a'  c' -1 d'  c'  e'  c'  f'  c' 
   g'  b -1 c'  b  d'  b  e'  b 
  \beamLessSlant \fingerUp f' \staffDown a -1 b  a  c'  a  d'  a 
  \beamLessSlant \staffUp e' \staffDown < g  -1 > a  g  b  g  c'  g 
   d'  f  g  f  a  f  b  f 
   c'  e -1 f  e  g  e  a  e 
   b  d -1 e  d  f  d  g  d 
   a  c -1 d  c  e  c  f  e
  }
  c2
  \bar "|."
}