\version "2.16.0"

violinIIFourthMov =  \relative f' {
    \key bes \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	R2*2
	|  f8[\p f f f]
	| f4 r
	| R2*2
	|  g8[ g a, a]
	| bes4 r
	| bes'4(\f  c)

% 10
	| \grace bes16 a8[ g16 f]  bes8[ bes]
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
	|  f8.[^\trill g16 as8] r
	| R2
	|  f8[ f f f]
	|  f[ f f f]
	|  e[ e e e]
	|  e[ e e e]

% 40
	|  d[ d d d]
	|  d[ d d d]
	| c4 r8 b'8(
	|  c4) r8 b(
	|  c4) r8 <d f>\f-.
	| <c e>[-. <d f>-. <c e>-. <d f>-.]
	| <c e>4 r
	| R2
	| a4.(\p  c8)
	|  g[-. g-. g-. a-.]

% 50
	|  c[(  bes)] bes-. r
	| R2
	| bes4.(  d8)
	|  a[-. a-. a-. bes-.]
	|  d[(  c)] c-. r
	| R2
	| a4.(  es'!8)
	|  d[ d c c]
	|  a[(  bes) bes des]
	|  c[ c bes bes]

% 60
	|  g[(  a)] r a
	| r bes r c
	| d2(
	| c4  bes)
	|  gis8[(  a)] r c\f ~
	| c bes4(  a8) ~
	|  a[(  g!)] r d' ~
	| d c4(  bes8) ~
	|  bes[(  a)] r es'! ~
	| es d4(  c8)
	| bes2(

% 70
	|  b)
	| c4.(  des8)
	|  c[( e]  f4)
	| r4 r8  d!16[(  bes)]
	| a4(  g)
	| f r
	| r8  f[ f f]
	| e4 r8 g
	| f4 r8 f
	|  d[-. bes'-. a-. g-.]

% 80
	| f4 r
	|  f2(\p 
	|  e)
	|   f8[(_\cresc a f  bes)]
	| a4(  g)
	| c,2\p ~
	| c ~
	|  c8.[(  a16)] \times 2/3 {  bes8[( d  bes)] }
	| a4(  g8) r

% 90
	| f'2(
	|  e)
	|  f8[(_\cresc a f  bes)]
	| a4(  g)
	| c,2\p
	| bes4 f' ~
	| \times 2/3 {  f8[( bes a] } \times 2/3 {  g[ f  e)] }
	| f4 r8 f(
	|  e[ g bes  g)]
	|  a[(  c)] r f,(

% 100
	|  e[ g bes  g)]
	|  a[(  c)] r f,(_\parentCresc 
	|  e[ g bes  g)]
	| c4(-\parentF  bes)
	| a(  e)
	| g(   f8)[ f'(]
	|   g)[-. g-. c,-. c-.]
	| a4 r8 f'(
	|   g)[-. g-. c,-. c-.]
	| a4 r8 f'(

% 110
	|   g)[-. g-. c,-. c-.]
	| c4(\f  bes)
	|  a,8[-. a'-. g,-. g'-.]
	|  f16[ f f f]  f[ f f f]
	|  f[ f f f]  g[ g g g]
	|  a[ a a a]  a[ a a a]
	|  g[ g g g]  g[ g g g]
	|  f[( e f e]  f8) r
	|  as16[( g as g]  as8) r
	|  a!16[( gis a gis]   a8)[ a-.]

% 120
	|  bes16[( a bes a]   bes8)[ bes-.]
	| a4 r
	|  c,(\p   d)
	| bes(  a)
	|  f'8[ f f f]
	| f4 r
	| r g(
	|  a) r8 f
	|  f[ f e e]
	| f4 r8 f'(

% 130
	|  a[ f a f]
	|  a4) r8 <c,, e>\f-.
	| <c f>[-. <c e>-. <c f>-. <c e>-.]
	| <c f>4-. r
    }

    \repeat volta 2 {
        | R2
	| r4 r8 f'(\p
	|  as[ f as  f)]
	| as4 r8 f,
	|  f[-. f-. f-. f-.]
	| f4 r

% 140
	| c(  d)
	| \grace c16 b8[ a16 g]  c8[ c]
	| d(  f4) b,8
	| c4 r
	| d(\f  es8) r
	| R2
	| f4(  g8) r
	| R2
	| a!4(  bes8) r
	| g'4(  a)

% 150
	| \grace g16 fis8[ e16 d]  g8[ g]
	| bes4(  c)
	| \grace bes16 a8[ g16 fis]  bes8[ bes]
	| r  d,[(  c) es,(]
	|   d)[ c'(  bes) d,(]
	|   c)[ bes'(  as) c,(]
	|   bes)[ as'(  g) bes,(]
	|   as)[ g'(  f) as,(]
	|   g)[ f'(  es) g(]
	|   f)[ es(  d) f(]

% 160
	|   e)[ d(  c) e(]
	|  fis) r a r g r g r
	|  fis[-. d-. fis'-. c-.]
	|  bes[-. g-. bes'-. g-.]
	| fis4 r
	| R2*3
	| g2(\p

% 170
	|  as)
	| \grace g16 f!8[ es16 d]  g8[ g]
	| es4(  f)
	| \grace es16 d8[ c16 bes]  es8[ es]
	| c4(  d)
	| \grace c16 b8[ a16 g] c8 r
	| r  c[( es  c)]
	| \grace bes16 a8[ g16 f] bes8 r
	| R2
	| r4 \grace c16 bes8[ a16 g]

% 180
	| f8 r \grace c'16 bes8[ a16 g]
	| f8 r \grace c'16 bes8[ a16 g]
	|  f8[ f f f]
	| f4 r
	| b2(
	|  c4) \grace bes!16 a8[ g16 f]
	|  f'8[(  d)]  g,[-. g-.]
	| f2(  ges)
	| \grace f16 es8[ des16 c]  a'8[ a]

% 190
	|  bes[-. bes-. e,-. e-.]
	| f4 r8 a(
	|  c[ a c a]
	|  c4) r8 c(
	|  es[ c es c]
	|  es4) r8 es(\f
	|  c'[ es, c' es,]
	|  c'4) r
	| R2*3

% 201
	|  f,,8[\p f f f]
	| f4 r
	| R2*2
	|  g8[ g a, a]
	| bes4 r
	| bes'4(\f  c)
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
	| g2 ~
	| g ~

% 230
	| g4(  ges)
	| f2 ~
	| f
	| es4(  f)
	| ges2(
	|  g!)
	| f4 r8 bes(
	|  a4) r8 bes(
	|  a4) r8 bes-.\f
	|  a[-. bes-. a-. bes-.]

% 240
	| a4 r
	| R2
	| d4.(\p  f8)
	|  c[-. c-. c-. d-.]
	|  f[(  es)] es-. r
	| R2
	| es4.(  g8)
	|  d[-. d-. d-. es-.]
	|  g[(  f)] f-. r
	| R2

% 250
	| d,4.(  as'8)
	|  g[ g f f]
	|  d[(  es) es ges]
	|  f[ f es es]
	|  c[(  d)] r d
	| r es r f
	| g2(
	| f4  es)
	|  cis8[(  d)] r f\f ~
	| f es4(  d8) ~

% 260
	|  d[(  c)] r g' ~
	| g f4(  es8) ~
	|  es[(  d)] r as' ~
	| as g4(  f8)
	| es2(
	|  e)
	| f4.(  ges8)
	|  f[( a]  bes4)
	| r r8  g!16[(  es)]
	| d4(  c)

% 270
	| bes r
	| r8  bes'[ bes bes]
	| a4 r8 c
	| bes4 r8 bes
	|  g[ es'-. d-. c-.]
	| bes4 r
	| bes2(\p
	|  a)
	|  bes8[(_\cresc d bes  es)]
	| d4(  c)

% 280
	| f,2\p ~
	| f ~
	|  f8.[(  d16)] \times 2/3 {  es8[( g  es)] }
	| d4(  c8) r
	| f2
	| a,
	|   bes8[(_\cresc d bes  es)] 
	| d4(  c)
	|  f2(\p 
	|  es4) bes' ~

% 290
	| \times 2/3 {  bes8[ es( d] } \times 2/3 {  c[ bes  a)] }
	|  bes8[-. f-. bes-. d-.]
	| es4 r8 a,(
	|   bes)[ f-. bes-. d-.]
	| es4 r8 a,(
	|   bes)[ f-.-\parentCresc bes-. d-.]
	| es4 r8 a,
	| bes[(-\parentF  d) g,(  bes)]
	| d,4(  a)
	| a'(  bes8) r

% 300
	| r4 r8 f\p
	|  bes[( a g  f)]
	| f4. f8
	|  bes[( a g  f)]
	| f2 ~
	|   f8[_\cresc  fis(]  g4) ~
	|  g8[ g(]  a4)
	|  bes16[\f bes bes bes]  bes[ bes bes bes]
	|  bes,[ bes bes bes]  bes[ bes bes bes]
	|  bes[ bes bes bes]  bes[ bes bes bes]

% 310
	| des'2:16
	| d!2:16
	| c2:16
	| \slurDown  bes16[( a bes a]  bes8) \slurNeutral r
	|  d16[( cis d cis]  d8) r
	|  es16[( d es d]  es8) r
	|  c16[( b c b]  c8) r
	|  d16[( cis d cis]  d8) r
	|  a16[( bes a bes]   a8)[ a-.]
	| bes4 r

% 320
	| f(  g)
	| es(  d)
	|  bes'8[-. bes-. bes-. bes-.]
	| bes4 r
	| r c(
	|  d) r8 bes
	|  bes[-. bes-. a-. a-.]
	| bes4 r8 bes'(\p
	|  d[ bes d bes]
	|  d4) r8 d,(

% 330
	|  f[ d f d]
	|  f4) r8 bes,(
	|  d[ bes d bes]
	|  d4) r8 <f, es'>\f-.
	| <f d'>[-. <f es'>-. <f d'>-. <f es'>-.]
	| <f d'>4 r
    }
}
