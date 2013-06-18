\version "2.16.0"

violinIThirdMov =  \relative g' {
    \key es \major
    \clef violin

    \noTupletBracket

      g4(-\parentP   as8)[\sf  r16. g32] \grace g16 f8[-. es-.] r g,(
    |  bes[  es_\cresc  g  bes)] es4\f bes
    |  g16.[^\trill as32 bes8] r4 c4.(  ces8)
    | \slurDown bes4( ~  bes16[ a as  g)] \slurNeutral f8( as4  d,8)

% 5
    |  es8[  r16 bes(]   es[_\cresc  g
      bes  es)] g4(   as8)[\sf  r16. g32\p]
    | \grace g16 f8[-. es-.] r es,(  g[_\cresc b c  es)]
    | g4\p ~  g16[ f32( e f g as  g)]  g8[(  es8.)]  d16[(  f8)] ~
    | f16  c[(  es8.)]  b16[(  d8)(] ~  d32[ f es  d) c8] ~  c32[
      bes(_\cresc a bes c d es  c)]
    | f4\p ~  f32[( es d c d es f  g)]  f16.[(  d32) f8] \times 2/3 {
      r16  c[(-. d-.] } \times 2/3 {  es[-. f-.  g)-.] }

% 10
    | \times 2/3 { r16  bes,[(-. c-.] } \times 2/3 {  d[-. es-.  f)-.] }
      \times 2/3 { r16  es[(-. d-.] } \times 2/3 {  c[-. bes-.  a)-.] }
       bes16.[(  des'32)] des4(_\cresc  c16[  bes)]
    | \grace { a32[ bes c] } bes8[ ~ bes32( as! ges f]   e16)[
      e-.\f e-. e-.] f2\p ~
    |  f8.[( e32  f)]  ges[( f es des]  c[ bes des  bes)] f2
    |  ges8.[(\f f32  es)]  es[( des c bes]  a[ bes a  bes)]  c8[
       r16 des(\p]   c8)[  r16 des'(]
    |   c8)[  r16 d!(]  es8) r r2

% 15
    | g4.  f32[( e d  c)]  c8[(  f)] r4
    | f4.  es!32[( d c  bes)]  bes8[(  es16)] r  es16.[( d32  c16)] r32 c
    |  f16.[( es32  d16)] r32 d g16 r a, r bes8 r  f'16[(-. f-. f-.  f)-.]
    |  f[(-. f-. f-.  f)-.]  e[(-. e-. e-.  e)-.]  f[(-. f-. f-.  f)-.]
       f[(-. f-. es-.  es)-.]
    |  es[(-. es-. es-.  es)-.]  d[(-. d-. d-.  d)-.] es8 r  c32[( d es
      e]  f16) r

% 20
    |  f32[( g as a]  bes16) r r4 r  es,16.[( d32  c16)] r32 c
    |  f16.[( es32  d16)] r32 d g16 r a, r bes4(  b)\sf
    |  c16[(\p  es) g8] ~  g16[( f32 es]  d[ c bes!  a)] bes4(  b)\sf
    |  \times 2/3 { c16([\p es  g) } g8] ~  g16[( f32 es]  d[ c bes!  a)]
      bes16 r  c32[( es d  c)] bes16 r  c32[( es d  c)]
    | bes16 r  d32[( c es  d)] f16 r  f32[( e g  f)]  as![(_\cresc g
      bes as]  g[ f es d]  c[ bes a bes]  a[ bes c  as!)]

% 25
    | g4(\p   as8)[\sf  r16. g32] \grace g16 f8[-. es-.] r g,(
    |  bes[  es_\cresc  g  bes)] es4\f bes
    |  g16.[^\trill as32 bes8] r8  es,8(  g[_\cresc bes
      es  g)]
    |  bes16.[^\trill\p c32 des8] r e,,(  g[ bes_\cresc e  g)]
      
    | c4\p ~  c16[ bes32( a]  bes[ c des  c)]  c8[(  as8.)]  g16[(  bes8)] ~

% 30
    | bes16  f[(  as8.)]  e16[ g8] ~  g32[(_\cresc bes as  g) f8] ~
       f32[ es( d es]  f[ g as  f)]
    | bes4\p ~  bes32[( as g f]  g[ as bes  c)]  bes16.[(  g32) bes8]
      \times 2/3 { r16  f[(-. g-.] } \times 2/3 {  as[-. bes-.  c)-.] }
    | \times 2/3 { r16  es,[(-. f-.] } \times 2/3 {  g[-. as-.  bes)-.] }
      \times 2/3 { r16  as[(-. g-.] } \times 2/3 {  f[-. es-.  d)-.] }
       f16.[(  es32) es8.(]   es'16)[_\cresc  es(-.  es)-.]
      
    |  es8[( ~ es32 des ces bes]   a16)[\f  a(-. a-.  a)-.]
       bes2\p ~
    |  bes8.[( a32  bes)]  ces[( bes as ges]  f[ es ges  es)] bes2

% 35
    |  ces8.[(\f bes32  as)]  as[( ges f es]  d[ es d  es)]  f8[ 
      r16 ges(\p]   f8)[  r16 ges'!(]
    |   f8)[  r16 g!(]  as8) r r2
    | c4.  bes32[( a g  f)]  f8[(  bes)] r4
    | bes4.  as!32[( g f  es)]  es8[(  as16)] r  as16.[( g32  f16)] r32 f
    |  bes16.[( as32  g16)] r32 g c16 r d, r es8 r 
       bes16[(-. bes-. bes-.  bes)-.]

% 40
    |  bes[(-. bes-. bes-.  bes)-.]  a[(-. a-. a-.  a)-.]
       bes[(-. bes-. bes-.  bes)-.]  bes[(-. bes-. as-.  as)-.]
    |  as[(-. as-. as-.  as)-.]  g[(-. g-. g-.  g)-.]  as8 r
       f'32[( g as a]  bes16) r
    |  bes,32[( c des d]  es16) r r4 r  as16.[( g32  f16)] r32 f
    |  bes16.[( as32  g16)] r32 g c16 r d, r es4(  e)\sf
    |  f16[(\p  as) c8] ~  c16[( bes32 as]  g[ f es  d)] es8
      << { es,4(  e8) } { s8  s8_\cresc } >>

% 45
    |   \times 2/3 { f16([\p as  c) } c8]
       ~  c16[( bes32 as g f es!  d)]
      es16 r  f32[( as g  f)] es16 r  f'32[( as g  f)]
    | es16 r  es32[( d f es]  g16) r  g32[( f as g]  bes16) r  bes32[( as c
      bes]  des8) r
    | c,4.(  ces8) bes4 ~  bes16[( a as  g)]
    | f8( as4  d,8)  es[  r16 g'(]  as[ a bes  b)]
    | c4( ~  c16[ g as!  a)] bes!4( ~  bes16[ a as  g)]

% 50
    | f8( as4  d,8) es r16 es(  g[ bes as  f)]
    | es8 r16 es,(  g[ bes as  f)] es8 r16  g,(\f bes[ es g  bes)]
    | es4 bes  g16.[\p^\trill as32 bes8] r4
    | \appoggiatura g16 f8[_ \markup{ {\dynamic "pp"}
      {\italic " staccato"}} \appoggiatura g16 f8
   \appoggiatura g16 f8 bes(]  es,8) r r4
}
