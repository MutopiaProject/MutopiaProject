\version "2.18.2"

% LilyPond notes generated in LibreOffice Calc (Javier Ruiz-Alma)
% For maintainability, edit notes in the included workbook

lblExNum = \markup \bold \huge "5."

LH = {
\repeat volta 2 {
 \subdivideBeams
  \stemDown \fingerDown < c, _5 >16 a, -1 g, -2 a, -1 f, -3 g, -2 e, -4 f, -3
   d, -5 b, -1 a, -2 b, -1 g, -3 a, -2 f, -4 g, -3
   e, -5 c  b,  c  a,  b,  g,  a, 
   f, -5 d  c  d  b,  c  a,  b, 
   g, -5 e  d  e  c  d  b,  c 
   a, -5 f  e  f  d  e  c  d 
  \fingerUp \fingerNoPad < b, ^5> g  f  g  e  f  d  e 
  < c ^5> a  g  a  f  g  e  f 
  < d ^5> b  a  b  g  a  f  g 
  < e ^5> c'  b  c'  a  b  g  a 
   f -5 d'  c'  d'  b  c'  a  b 
   g -5 e'  d'  e'  c'  d'  b  c' 
   a -5 f'  e'  f'  d'  e'  c'  d' 
   b -5 g'  f'  g'  e'  f'  d'  e' 
  \bar "||" c' -5 d' -4 c' -5 e' -3 d' -4 f' -2 e' -3 g' -1
   b -5 c' -4 b -5 d' -3 c' -4 e' -2 d' -3 f' -1
   a -5 b  a  c'  b  d'  c'  e' 
   g -5 a  g  b  a  c'  b  d' 
   f -5 g  f  a  g  b  a  c' 
   e -5 f  e  g  f  a  g  b 
   d -5 e  d  f  e  g  f  a 
   c -5 d  c  e  d  f  e  g 
   b, -5 c  b,  d  c  e  d  f 
  \fingerDown a, -5 b,  a,  c  b,  d  c  e 
   g, -5 a,  g,  b,  a,  c  b,  d 
   f, -5 g,  f,  a,  g,  b,  a,  c 
   e, -5 f,  e,  g,  f,  a,  g,  b, 
   d, -5 e,  d,  f,  e,  g,  f,  a,
}
  c,2
  \bar "|."
}

RH = {
  \repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \posScriptD c 16-1^\markup{(1)} a -5 g -4 a -5 f -3 g -4 e -2 f -3
   d -1 b -5 a -4 b -5 g -3 a -4 f -2 g -3
   e -1 c'  b  c'  a  b  g  a 
   f -1 d'  c'  d'  b  c'  a  b 
   g -1 e'  d'  e'  c'  d'  b  c' 
  \beamLessSlant a -1 \staffUp f'  e'  f'  d'  e'  c'  d' 
  \fingerDown b -1 g'  f'  g'  e'  f'  d'  e' 
   c' -1 a'  g'  a'  f'  g'  e'  f' 
   d' -1 b'  a'  b'  g'  a'  f'  g' 
   e' -1 c''  b'  c''  a'  b'  g'  a' 
   f' -1 d''  c''  d''  b'  c''  a'  b' 
  \stemDown \fingerUp \fingerNoPad < g' ^1 > e''  d''  e''  c''  d''  b'  c'' 
  < a' ^1> f''  e''  f''  d''  e''  c''  d'' 
  < b' ^1> g''  f''  g''  e''  f''  d''  e'' 
  \bar "||"  < c'' ^1> < d'' ^2> < c'' ^1> e'' -3 d'' -2 f'' -4 e'' -3 g'' -5
   b' -1 c'' -2 b' -1 d'' -3 c'' -2 e'' -4 d'' -3 f'' -5
   a' -1 b'  a'  c''  b'  d''  c''  e'' 
  \stemUp \fingerDown g' -1 a'  g'  b'  a'  c''  b'  d'' 
   f' -1 g'  f'  a'  g'  b'  a'  c'' 
   e' -1 f'  e'  g'  f'  a'  g'  b' 
   d' -1 e'  d'  f'  e'  g'  f'  a' 
   c' -1 d'  c'  e'  d'  f'  e'  g' 
   b -1 c'  b  d'  c'  e'  d'  f' 
  \staffDown \fingerUp a -1 b  a  c'  b  d'  c'  e' 
   g -1 a  g  b  a  c'  b  d' 
   f -1 g  f  a  g  b  a  c' 
   e -1 f  e  g  f  a  g  b 
   d -1 e  d  f  e  g  f  a 
  }
  c2
  \bar "|."
}

