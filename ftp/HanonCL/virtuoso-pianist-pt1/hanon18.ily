\version "2.18.2"

% LilyPond notes generated in LibreOffice Calc (Javier Ruiz-Alma)
% For maintainability, edit notes in the included workbook

lblExNum = \markup \bold \huge "18."

LH = {
  \repeat volta 2 {
  \subdivideBeams
  \stemDown \fingerDown < c, _5 >16 d, -4 f, -2 e, -3 g, -1 f, -2 d, -4 e, -3
   d, -5 e, -4 g, -2 f,  a, -1 g,  e,  f, 
   e, -5 f, -4 a, -2 g,  b, -1 a,  f,  g, 
   f, -5 g, -4 b, -2 a,  c -1 b,  g,  a, 
   g, -5 a,  c  b,  d -1 c  a,  b, 
   a, -5 b,  d  c  e -1 d  b,  c 
   b,  c  e  d  f -1 e  c  d 
  \fingerUp \fingerNoPad c -5 d  f  e  g -1 f  d  e 
   d -5 e  g  f  a -1 g  e  f 
   e -5 f  a  g  b -1 a  f  g 
   f -5 g  b  a  c' -1 b  g  a \break
   g -5 a  c'  b  d' -1 c'  a  b 
   a -5 b  d'  c'  e' -1 d'  b  c' 
   b -5 c'  e'  d'  f' -1 e'  c' -5 d' -4
  \bar "||" g' -1 f' -2 d' -4 e' -3 c' -5 d' -4 f' -2 e' -3
   f' -1 e' -2 c' -4 d' -3 b -5 c' -4 e' -2 d' -3
   e' -1 d' -2 b -4 c'  a -5 b  d' -2 c' -3
   d' -1 c' -2 a  b  g  a  c' -2 b -3
   c' -1 b -2 g  a  f  g  b -2 a -3
   b -1 a  f  g  e  f  a -2 g -3
   a -1 g  e  f  d  e  g -2 f -3
   g -1 f  d  e  c  d  f -2 e -3
   f -1 e  c  d  b,  c  e -2 d -3
  \fingerDown e -1 d  b,  c  a,  b,  d -2 c -3
   d -1 c  a,  b,  g,  a,  c -2 b, -3
   c -1 b,  g,  a,  f,  g,  b, -2 a, -3
   b, -1 a,  f,  g,  e,  f,  a, -2 g, -3
   a, -1 g,  e,  f,  d,  e,  g, -1 f, -2
}
  \undo \fingerNoPad c,2_5
  \bar "|."
}

RH = {
  \repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp c  16-1 d -2 f -4 e -3 g -5 f -4 d -2 e -3
   d -1 e -2 g -4 f  a -5 g  e  f 
   e -1 f -2 a -4 g  b -5 a  f  g 
   f -1 g -2 b -4 a  c' -5 b  g  a 
   g -1 a  c'  b  d' -5 c'  a  b 
   a -1 b  d'  c'  e' -5 d'  b  c' 
  \beamLessSlant b -1 c' \staffUp e'  d'  f' -5 e'  c'  d' 
  \fingerDown c' -1 d'  f'  e'  g' -5 f'  d'  e' 
  \fingerNoPad d' -1 e'  g'  f'  a' -5 g'  e'  f' 
   e' -1 f'  a'  g'  b' -5 a'  f'  g' 
   f' -1 g'  b'  a'  c'' -5 b'  g'  a' 
  \stemDown \fingerUp \fingerNoPad < g' ^1 > a'  c''  b'  d'' -5 c''  a'  b' 
  < a' ^1> b'  d''  c''  e'' -5 d''  b'  c'' 
   b' -1 c''  e''  d''  f'' -5 e''  c'' -1 d'' -2
  \bar "||"  < g'' ^5> f'' -4 d'' -2 e'' -3 c'' -1 d'' -2 f'' -4 e'' -3
   f'' -5 e'' -4 c'' -2 d'' -3 b' -1 c''  e'' -4 d'' -3
   e'' -5 d'' -4 b' -2 c''  a' -1 b'  d'' -4 c'' -3
  \stemUp \fingerDown d'' -5 c'' -4 a'  b'  g'  a'  c'' -4 b' -3
   c'' -5 b' -4 g'  a'  f'  g'  b' -4 a' -3
   b' -5 a' -4 f'  g'  e'  f'  a' -4 g' -3
   a' -5 g' -4 e'  f'  d'  e'  g' -4 f' -3
   g' -5 f'  d'  e'  c'  d'  f' -4 e' -3
   f' -5 e'  c'  d'  b  c'  e' -4 d' -3
  \beamLessSlant \fingerUp e' -5 d'  \staffDown b  c'  a  b  d' -4 c' -3
   d' -5 c'  a  b  g  a  c' -4 b -3
   c' -5 b  g  a  f  g  b -4 a -3
   b -5 a  f  g  e  f  a -4 g -3
   a -5 g  e  f  d -1 e -3 g -5 f -4
  }
  \undo \fingerNoPad c2-1
  \bar "|."
}