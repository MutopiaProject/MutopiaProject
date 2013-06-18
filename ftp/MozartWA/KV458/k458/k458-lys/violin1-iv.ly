\version "2.16.0"

violinIFourthMov =  \relative bes' {
    \key bes \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	bes4(\p  c)
	| \grace bes16 a8[ g16 f]  bes8[ bes]
	|  c[ c d d]
	|  f[(  es)] c r
	| bes4(  c)
	| \grace bes16 a8[ g16 f]  bes8[ bes]
	|  c[ c f, f]
	| d4 r
	| bes''4(\f  c)
	| \grace bes16 a8[ g16 f]  bes8[ bes]

% 10
	|  c[ c d d]
	|  f[(  es)] c r
	| bes4(  c)
	| \grace bes16 a8[ g16 f]  bes8[ bes]
	|  c[ c f, f]
	| d4 r
	| R2
	|  f8[(\p d  bes)] r
	| R2

% 20
	|  f'8[( d  bes')] r
	| R2
	|  f8.[( g32 a]   bes8)[ a-.]
	|  g[-. f-. es-. d-.]
	|  f[(  d)]  c[ bes'(]
	|   c)[ c-. f,-. f-.]
	| d4 r8 bes'(
	|   c)[ c-. f,-. f-.]
	| d4 r8 bes'(
	|   c)[ c-. f,-. f-.]

% 30
	| d4.( es8
	|  d[ es d  fis)]
	|  g8.[^\trill a16]  bes8[ des,(]
	|  c[ des c  e)]
	|  f8.[^\trill g16]  as8[ c,]
	|  f[( es! des  c)]
	|  c[(  b)] r b
	|  f'[( g  as) b,]
	|  d![(  c)] r c(
	|  d[ e f g]

% 40
	|  bes[  as)] r as(
	|  g[ as g  f)]
	|  e[(  g) g f]
	|  e[(  g) g f]
	|  e[(  g) g b-.\f]
	|  c[-. b-. c-. b-.]
	| c4 r8 b,8(\p
	|  c[ cis d  bes!)]
	| a4 r
	| R2

% 50
        | r8  c16[( d]   e8)[ e16( f]
	|   g8)[ e16( f]   g8)[ g16( a]
	|  bes4) r
	| R2
	| r8  f16[( g]   a8)[ a16( bes]
	|   c8)[ a16( bes]   c8)[ c16( d]
	|  es!4.)(  fis,8)
	| g4(  a)
	| c8( bes4  e,8)
	| f4(  g)

% 60
	|  bes8[(  a)] c4(
	| bes  a) ~
	|  a8[ g( a bes] ~
	|  bes) f4(  g8)
	|  gis[(  a)] r c\f ~
	| c bes4(  a8) ~
	|  a[(  g)] r d' ~
	| d c4(  bes8) ~
	|  bes[(  a)] r es'! ~
	| es d4(  c8)

% 70
	| bes2(
	|  b)
	|  c8[ g] bes!4 ~
	| bes(  a) ~
	|  a16[( g fis g]  fis[ g bes  g)]
	| f!4(  e)
	|  f8[ a16( g]  f[ e d c]
	|  b2)
	| r8  g'16[( f]  e[ d c bes!]
	|   a8)[ f'16( e]  d[ c bes a]

% 80
	|   g8)[ d'-. c-. e,-.]
	| f4 r8 c(\p
	|  a'4.) f8(
	|  bes4.)  \slurUp g8(
	|  c[_\cresc f d  g)] \slurNeutral 
	| f4(   e8)[ c\p]
	| \stemDown \times 2/3 {  f8[( a g] } \times 2/3 {  f[ e  d)] }
	| \times 2/3 {  c[( b c] } \times 2/3 {  cis[ d  bes)] }
	| \times 2/3 {  a[( c! f,] } \times 2/3 {  d'[ bes  g)] } \stemNeutral
	| f4(   e8)[ c(]

% 90
	|  a'8) a4(  f8)
	| bes bes4(  g8)
	|  c[(_\cresc f d  g)]
	| f4(   e8)[ c\p]
	| \times 2/3 {  f[( a g] } \times 2/3 {  f[ e  f)] }
	| \times 2/3 {  d[ cis d] } \times 2/3 {  bes[ a bes] }
	| \times 2/3 {  a[( d c!] } \times 2/3 {  bes[ a  g)] }
	| f4 r
	| r r8 c'8
	|  f[( e d  c)]

% 100
	| c4. c8
	|  f[( e d  c)_\parentCresc] \noBreak
	| c4. c8
 	| c[(-\parentF f g,  d')]
	| f,4(  g)
	| bes(  a8) r
	| r4 r8 e'(\p
	|   f)[ c-. f-. a-.]
	| bes4 r8 e,(
	|   f)[_\parentCresc c-. f-. a-.]

% 110
	| bes4 r8 e,(\f
	|   f)[ c' d, d']
	| c,4(  e)
	| c'2
	| \grace c16 bes8[ a16 g] \grace g16 f8[ e16 d]
	| c2
	| bes
	| a
	| d'
	| c

% 120
	| e,
	| f4 r
	|  f,(\p   g)
	| \grace f16 e8[ d16 c]  f8[ f]
	|  g[ g a a]
	| c4(  bes8) r
	| bes4(  d)
	|  c8[( d16 e]   f8)[ f,]
	|  g[ g c c]
	| f,4 r8 a'(

% 130
	|  c[ a c a]
	|  c4) r8 g,8-.\f
	|  f[-. g-. f-. g-.]
	| f4 r
    }

    \repeat volta 2 {
        | R2
	| r4 r8 as'(\p
	|  c[ as c as]
	|  c4) r8 c,
	|  b[-. c-. b-. c-.]
	| b4 r

% 140
	| R2*3
	| c4(\f  d)
	| \grace c16 b8[ a16 g]  c8[ c]
	| es4(  f)
	| \grace es16 d8[ c16 bes!]  es8[ es]
	| g4(  a)
	| \grace g16 fis8[ e16 d]  g8[ g]
	| bes4(  c)

% 150
	| \grace bes16 a8[ g16 fis]  bes8[ bes]
	| d8 d4 d8 ~
	| d d4 d8 ~
	| d es,4 c'8 ~
	| c d,4 bes'8 ~
	| bes c,4 as'8 ~
	| as bes,4 g'8 ~
	| g as,4 f'8 ~
	| f g,4 es'8 ~
	| es f,4 d'8 ~

% 160
	| d e,4 c'8 ~
	|  c[ d,-. a''-. c,-.]
	|  bes[-. g-. bes'-. cis,-.]
	| d4 a'
	| bes cis
	| d r
	| R2*6

% 172
        | g,4(\p  as)
	| \grace g16 f8[ es16 d]  g8[ g]
	| es4(  f)
	| \grace es16 d8[ c16 b] es8 r
	| r  es[( g  es)]
	| \grace d16 c8[ bes!16 a] d8 r
	| R2
	| r4 \grace es16 d8[ c16 bes]

% 180
	| f'8 r \grace es16 d8[ c16 bes]
	| f'8 r \grace es16 d8[ c16 bes]
	|  f'8[ f f f]
	| f2(  g)
	| \grace f16 es8[ d16 c]  a'8[-. a-.]
	|  bes[-. bes-. e,-. e-.]
	| f4 r
	| R2
	| es!4(  f)

% 190
	| \grace es16 des8[ c16 bes]  bes'8[-. bes-.]
	| a4 r8 c,(
	|  es[ c es c]
	|  es4) r8 a(
	|  c[ a c a]
	|  c4) r8 c(\f
	|  es[ c es c]
	|  es4) r8  f,,(\p  
	|  fis[ g as  a)]
	| bes4(  c)

% 200
	| \grace bes16 a8[ g16 f]  bes8[ bes]
	|  c[ c d d]
	|  f[(  es)] c r
	| bes4(  c)
	| \grace bes16 a8[ g16 f]  bes8[ bes]
	|  c[ c f, f]
	| d4 r
	| bes''4(\f  c)
	| \grace bes16 a8[ g16 f]  bes8[ bes]
	|  c[ c d d]

% 210
	|  f[(  es)] c r
	| bes4(  c)
	| \grace bes16 a8[ g16 f]  bes8[ bes]
	|  c[ c f, f]
	| d4 r
	| R2
	|  f8[(\p d  bes)] r
	| R2
	|  f'8[( d  bes')] r
	| R2

% 220
	|  f8.[( g32 a]   bes8)[ a-.]
	|  g[-. f-. es-. d-.]
	|  f[(  d)]  c[ bes'(]
	|   c)[ c-. f,-. f-.]
	| d4 r8 bes'(
	|   c)[ c-. f,-. f-.]
	| d4 r8 bes'(
	|   c)[ c-. f,-. f-.]
	| d4.( es8
	|  d[ es d  g)]

% 230
	|  g8[( \times 2/3 { f16 e d] }   c8)[ des(]
	|  c[ des c  f)]
	|  f8[( \times 2/3 { es!16 d c] }   bes8)[ bes]
	| bes( es4  des8)
	|  des[(  c) c(  des)]
	|  des[(  c) c(  bes)]
	|  a[(  c) c e]
	|  f[(  a) a e]
	|  f[(  c') c e,-.\f]
	|  f[-. e-. f-. e-.]

% 240
	| f4.( fis8\p
	|  g[ f! e es]
	|  d4) r
	| R2
	| r8  f16[( g]   a8)[ a16( bes]
	|   c8)[ a16( bes]   c8)[ c16( d]
	|  es4) r
	| R2
	| r8  bes,16[( c]   d8)[ d16( es]
	|   f8)[ d16( es]   f8)[ f16( g]

% 250
	| as4.  b,8)
	| c4(  d)
	| f8( es4  a,8)
	| bes!4(  c)
	|  es8[(  d)] f4(
	| es  d) ~
	|  d8[( c d  es)] ~
	| es bes4(  c8)
	|  cis[(  d)] r f\f ~
	| f es4(  d8) ~

% 260
	|  d[(  c!)] r g' ~
	| g f4(  es8) ~
	|  es[(  d)] r as' ~
	| as g4(  f8)
	| es2(
	|  e)
	|  f8[-. c-.] es!4 ~
	| es(  d) ~
	|  d16[( c b c]  b[ c es  c)]
	| bes!4(  a)

% 270
	|  bes8[ d'16( c]  bes[ a g f]
	|  e2)
	| r8  c'16[( bes]  a[ g f es!]
	|   d8)[ bes'16( a]  g[ f es d]
	|   c8)[ g'-. f-. a,-.]
	| bes4 r8 f(\p
	|  d'4.) bes8(
	|  es4.) c8(
	|  f[_\cresc bes g  c)]
	| bes4(   a8)[ f\p]

% 280
	| \times 2/3 {  bes8[( d c] } \times 2/3 {  bes[ a g] }
	| \times 2/3 {  f[ e f] } \times 2/3 {  fis[ g  es!)] }
	| \times 2/3 {  d[( f! bes,] } \times 2/3 {  g'[ es  c)] }
	| bes4(   a8)[ f(]
	|  d') d4( bes8
	|  es8) es4( c8
	|  f[_\cresc bes g  c)]
	| bes4(   a8)[ f\p]
	| \times 2/3 {  bes[( d c] } \times 2/3 {  bes[ a  bes)] }
	| \times 2/3 {  g[( fis g] } \times 2/3 {  es[ d  es)] }

% 290
	| \times 2/3 {  d[( g f!] } \times 2/3 {  es[ d  c)] }
	| bes4 r8 bes'(
	|  a[ c es  c)]
	|  d[(  f)] r bes,(
	|  a[ c es  c)]
	|  d[(  f)_\parentCresc] r bes,(
	|  a[ c es  c)]
	| bes[(-\parentF  d) g,(  bes)]
	| bes,4(  c)
	| es(   d8)[ bes'(\p]

% 300
	|   c8)[ c-. f,-. f-.]
	| d4 r8 bes'(
	|   c8)[ c-. f,-. f-.]
	| d4 r8 bes'(
	|   c8)[ c-._\cresc f,-. f-.]
	|  d'[-. d-. g,-. g-.]
	|  es'[ es a, a]
	| f'2\f
	| d,,
	| es

% 310
	| g'
	| f
	| es
	| d4 r8 d\p
	|  bes'[(  as)] r as
	|  fis[(  g)] r g
	|  a![(  bes)] r bes
	|  bes[(  f)] r d
	|  f[(  es)] r c
	| bes4 r

% 320
	| bes(  c)
	| \grace bes16 a8[ g16 f]  bes8[ bes]
	|  c[-. c-. d-. d-.]
	| f4(  es8) r
	| es4(  g)
	|  f8[( g16 a]   bes8)[ bes,(]
	|   c)[ c-. f-. f-.]
	| bes,4 r8 d'(\p
	|  f[ d f d]
	|  f4) r8 bes,(

% 330
	|  d[ bes d bes]
	|  d4) r8 d,(
	|  f[ d f d]
	|  f4) r8 a-.\f
	|  bes[-. a-. bes-. a-.]
	| bes4 r
    }
}
