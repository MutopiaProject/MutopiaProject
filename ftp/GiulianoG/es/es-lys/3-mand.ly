\version "2.18.0"

IIIMand =  \relative c'' {
  \clef "treble"
  \key es\major
  \time 3/4

  \tupletSpan 4

  \repeat "volta" 2 {
  %1 page 7
  <es es, g,>4 es,8[ r16 f] \grace g f8. es32 f |
  g4 es r8. <es' es,>16 |
  <<{es4 d c | c8 d16 c bes4 r8. c16} \\ {es,2. | es2}>> |
  %5
\octaveCheck es'
  c'4 bes as |
  as8 bes16 as g4 r8. es'16 |
  f8. d16 bes4 r8. f'16 |
  g8. es16 bes4 r8. <g' bes,>16 |
  \grace as g8 f16 g as4 g |
  %10
\octaveCheck g''
  \grace as16 g8 f <f bes,>2 |
  \tuplet 3/2 {f,8 a c es c a g f es | d( f) bes d f a} bes4 |
  \tuplet 3/2 {f,8 a c es c a g f es} |
  \grace f16 es8. d16 d4 r8. f'16 |
  d bes a bes c bes a bes f'8 bes, |
  %16
\octaveCheck bes'
  g'8[ bes es,, g' f es] |
  d16 bes a bes c bes a bes f'8 bes, |
  g'8[ bes es,, g' f es] |
  \grace f16 es8 d d4 r8 bes' |
  fis g r bes[ a g] |
  %21
  e f r g[ f es] |
  cis d r es[ d c] |
  a bes bes4 r8 f |
\octaveCheck f'
  bes16 f e f g f e f bes8 f |
  c' es r g[ f es] |
  %26
  \grace es16 d8 c16 d es8[ c bes a] |
  bes4 bes16[ c d es f g a bes] |
  fis16( g8.) e16( f?8.) d16( es8.) |
  cis16( d8.) as16( c8.) bes8 bes' |
  \grace as16 g8 f16 es d4 c |
  <bes d, bes> bes, r
  }
  \repeat "volta" 2 {
  %32
  \octaveCheck bes
  <bes'' bes, d,>4 bes,8. c16 \grace d c8. bes32 c |
  d4 bes r8. bes'16 |
  <<{bes4 a g | g8 a16 g f4 r8. g16} \\ {bes,2. bes2}>> |
  %36
\octaveCheck bes'
  g'4 f es es8. c16 d4 r8. es16 |
  <es f, a,>4 ~ es16[ d c bes a g f es] |
  d8[( f) bes-. d-. f-. bes-.] |
  <bes d, f,>4 ~ bes8[ f es d] |
  es16 d c d c8 c c4 |
  %42
\octaveCheck c''
  b32( d g8.) g8[ g g g] |
  b,16 g' f g as g f g as g f g |
  %44 page 8
\octaveCheck g''
  es,8[ c' g c es, c'] |
  c,[ c' es, c' g c] |
  b32( d g8.) g8[ g g g] |
  %47
\octaveCheck g''
  b,16 g' f g as g f g as g f g |
  es,8[ c' g c es, c'] |
  c,[ c' es, c' g c] |
  a32( c f8.)-. f8[ f f f] |
  a,16 f' e f g f e f g f e f |
  %51
  d,8[ bes' f bes d, bes'] |
  bes,[ bes' d, bes' f bes] |
  a32( c f8.) f8[ f f f] |
  a,16 f' e f g f e f g f e f |
\octaveCheck f''
  <bes bes, d,>4 r r |
  %56  
  <es, g, bes,> ~ es8[ es d c] |
  bes8. g16 es4 r8. bes'16 |
  c8. d32 c bes4 as |
  as8. f16 g4 r8 bes |
  %60
  \grace bes16 as8 g16 f \grace bes as8 g16 f \grace as g8 f16 es |
  c bes a bes c bes a bes c bes a bes |
  \grace bes'16 as8 g16 f \grace as g8 f16 es \grace as g8 f16 es |
\octaveCheck es'
  d4 bes r8 bes' |
  <des es, g,>4 g,,8[ des'' c bes] |
  %65
  c16 as es as es( as c es)-. es c as es |
  <des' es, g,>4 g,,8[ des'' c bes] |
  c16 as es as es( as c es)-. es c as es |
  <es' f, a,>4 a,,8[ es'' d c] |
  d16 f e f bes f e f bes f e f |
  <es f, a,>4 a,,8[ es'' d c] |
  %71
\octaveCheck c''
  \grace es16 d8 c16 bes bes4 r8 es |
  b c r es[ d c] |
  a16 c bes8 r c[ bes as] |
  f16 as g8 r as[ g f] |
  %75
  d16 f es8 d4 bes' |
  es4 es16[ d c bes as g f es] |
  es'4 g8[ bes, bes' bes,] |
  as'[ bes, g' bes, f' bes,] |
  es4 es16[ d c bes as g f es] |
  %80
  es'4 g8[ bes, bes' bes,] |
  as'[ bes, g' bes, f' bes,] |
\octaveCheck bes'
  <<g'4 \\ es>> <es, g,>2^\fermata
  }
}
