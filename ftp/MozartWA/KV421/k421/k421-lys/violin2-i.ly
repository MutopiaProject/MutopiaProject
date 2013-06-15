\version "2.16.0"
violinIIFirstMov =  \relative a {
    \key d \minor
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	r8  a[(-. a-.  a)-.] r  a[(-. a-.  a)-.]
	| r  bes8[(-. bes-.  bes)-.] r  f'[-. f(  d)]
	| r  d[( cis  e)] r  cis8[(-. cis-.  cis)-.]
	|  d[( g f e]  f[ g f  e)]
	|  d[\f a'(-. a-.  a)-.] r  a[(-. a-.  a)-.]
	| r  d,[(-. d-.  d)-.] r  f'[-. f(  d)]
	| d4 ~  d16[( cis\p f  e)] g4(   f8)[ e]
	|  a,8[ bes16(  g)]  g[(  f) e(  g)] f4 r
	| a,4.\f d'8\p d4(   cis8)[ bes]
% 10

	|  a[ a(]   e'[  d)^\trill]  cis4 r
	| a,4.\f a''8\p  g8.[^\trill a16]  bes8[ cis,]
	|  d[-. e-.]  e[(   d)^\trill]  cis4 r8
           f16[(  d)]
	|  cis[ gis(\fp a gis]  a[ gis a f]  e8) r r4
	| r2 <e c'! g'>4.\f bes8\p
	|  bes[(  a)] r bes-.  b[(  c)] r es
	| d4(  e!8[  f)] c4 r8 g'
	| f8(  g4-\cresc gis a  a8) ~ 
	| a4  c16[(\p bes a  g!)] f4(  e8) r
	| r4 f  e8.[( f16]  e8) r

% 20
	| r4  as8[(  f)] f4(  e8) r
	| c2.\f  bes8[(  c)]
	| d2 ~  d8[ g(  g') f-.]
	| f4(   e8)[ c-.] c\p r g r
	|  f[( d c  bes)] r16  a[(\mf  f') f-.]  f[ f f f]
	| r  c[(\p  f) f-.]  f[ f f f] r  d[(  f) f-.]  f[ f f f]
	| r  bes,[(  e) e-.]  e[ e e e] r  a,[(  f') f-.]  f[ f f f]
	| r  c[(  f) f-.]  f[ f f f] r  d[(  f) f-.]  f[ f f f]
	| r  bes,[(  e) e-.]  e[ e e e]  f[-. a( g  f-\cresc]
            e[ f e  d)]
	|  c8[-.\p c-. f(  c)] r  d[-. d'(  g,)]

% 30
	| r  c,[-. bes'(  g)] r  d[-. d'(  a)]
	| r  c,[-.\f c'(  a)] r  f[-. d'(  bes)]
	| a f4(  e8)  f4(\p   fis)\sf
	|  g8[-.\p a-. bes-. c-.]  cis16[(  d) bes-. g-.]  f!8[(  e)]
	| f4(  fis)\sf  g8[-.\p a-. bes-. c-.]
	|  cis16[(  d) bes-. g-.]  f!8[(  e)]
	\times 2/3 {  f16[( a  c!)] } \times 2/3 {  c[ c c] } \noTupletNum
	\times 2/3 {  c[ c c]  c[ c c] }
	| \times 2/3 {  c16[ c c]  c[ c c]  c[ c c]  c[ c c]  c[ f f]
		        f[ f f]  f[ f f]  f[ f f] }
	| \times 2/3 {  f[ f f]  f[ f f]  f[( g f]  e[ d  e)] } \tupletNum
          f8 r  e,[-. e-.]
	|  f[-. f-. g-. g(\trill]   a)[ bes-. c-. d-.]
	|  d16[(  c) bes a]  a8[(  g)^\trill] f4 r8  bes'16.[(  g32)]

% 40
	| f4 r8  bes,16.[(  g32)]  f8[ c(-.]  c)-. r
    }

    \alternative {
	{
	    | r8   gis'8[(-.-\cresc   gis)-.] r r
               g[(-.  g)-.] r
	}
	{
	    | r8 as  as4.(-\cresc    f8)[ f(  d)]
	}
    }

    \repeat volta 2 {
	|  es8[\f bes(-. bes-.  bes)-.] r  bes[(-. bes-.  bes)-.]
	| r  ces[(-. ces-.  ces)-.] r  des[-. des-. des-.]
	| r  ces[(-. ces-.  ces)-.] r  bes[-. bes-. bes-.]
	|  a1\p ~
	| a2.(\pp   gis4)
	| c2.(  b4)
	| e2 ~ e8( d4  c8)

% 50
	| c2(  b)
	|  a8[ f''(\f  e) d-.\p]  c[-. b-. a-. gis-.]
	| r2  cis,(\fp
	|   d8)[ f(\f  e) d\p]  c![-. b-. a-. gis-.] 
	| R1
	| bes'!2\p bes,4. bes8
	|  bes8.[^\trill a16]  bes8[ bes] bes2
	| a4 r r2
	| es''2\f es,4. es8
	|  es8.[^\trill d16]  es8[ es] es2

% 60
	| d4 r \times 2/3 { r16  g[(\p bes] } \times 2/3 {   d)[
          d-. d-.] } d8 r
	| r4 g2  f16[(  e) d(  c)]
	|  bes8[(  a)] r4 \noTupletNum \times 2/3 { r16  f[( a]   c)[
          c-. c-.] } c8 r
	| r4 f2  e16[(  d) c(  bes)]
	|  a8[(  g)] r4 r2
	| r4 g'2(-\cresc  cis,4)
	|  d8[( a  bes) fis] ~ fis\f g4(  gis8)
	| a4 r8  a'16.[(\p  f32)] e4 r8  a,16.[(  f32)]
	| e4 ~ \times 2/3 {  e16[ a,( cis]   e)[ e-. e-.] } <cis e>2
	| <d f>4\fp ~ \times 2/3 {  f16[ bes,( d]   f)[ f-. f-.] } <d f>2

% 70
	| <g, e'>4\fp ~ \times 2/3 { <g e'>16[ cis( e]   g)[ g-. g-.] }
          \tupletNum <a, g'>4 ~ <a g'>8 r
	| r8  a[(-. a-.  a)-.] r  a[(-. a-.  a)-.]
	| r  bes8[(-. bes-.  bes)-.] r  f'[-. f(  d)]
	| r  d[( cis  e)] r  cis!8[(-. cis-.  cis)-.]
	|  d[( g f e]  f[ g f  e)]
	|  d[\f a'(-. a-.  a)-.] r  a[(-. a-.  a)-.]
	| r  d,[(-. d-.  d)-.] r  f'[-. f(  d)]
	| d4 ~  d16[( cis\p f  e)] g4(   f8)[ e]
	|  a,8[ bes16(  g)]  g[(  f) e(  g)] f4 r
	| a,4.\f d'8\p d4(   cis8)[ bes-.]

% 80
	|  a[-. a(]  e'[   d)^\trill]  cis4 r
	| a,4.\f a''8\p  g8.[^\trill a16]  bes8[ cis,]
	|  d[-. e-.]  e[(   d)^\trill]  cis4 r8
           f16[(  d)]
	|  cis[ gis(\fp a gis]  a[ gis a f]  e8) r r4
	| r2 g'4.\f  bes,,8\p ~
	|  bes[ a-.] r a r bes r es
	|  es[(\sf  d)] r b( c4  d)
	|  f8[(\sf  e!)] r4 a2\p ~
	| a8 a4-\cresc a(  g8[ d'  bes)]
	| f4(\p  e8) r8 r4  d'8[(-.  d)-.] 

% 90
	|  cis8.[(  d16)] cis8 r r4  f8[(  d)]
	| d4(  cis8) r a,2\f ~
	| a4  g8[(  a)] b2 ~
	|  b8[ e(  e') d-.] d4(   cis8)[ a-.]
	| a\p r e r d4(  a)
	| r16   a[(\mf  d) d-.]  d[ d d d] r  a[(\p  d)
          d-.]  d[ d d d] 
	| r  bes[(  d) d-.]  d[ d d d] r  a[(  f') f-.]  f[ f f f]
	| r  d[(  f) f-.]  f[ f f f] r  d[(  a') a-.]  a[ a a a]
	| r  g[(  bes) bes-.]  bes[ bes g g] r  e[(  f) f-.]  f[ f g g]
	|  f[-.-\cresc bes( a gis]  a[ g f  e)]  d8[\p d-. a'(  f)]

% 100
	| r  e8[-. bes'(  g)] r  d[-. d'(  a)]
	| r  d,[-. d'(  bes)] r  a[-.\f f'(  d)]
	| r  bes,[-. bes'(  g)] f d4(  cis8)
	|  d4(\p  es)\sf  d8[-. fis-. g-. a-.]
          
	|  bes[-.-\cresc b-. c-. cis-.]  d16.[(\f  a32) bes16.(  g32)]
           f8[(  e)]
	|  d4(\p  es)\sf  d8[-. fis-. g-. a-.]
          
	|  bes[-.-\cresc b-. c-. cis-.]  d16.[(\f  a32) bes16.(  g32)]
           f8[(  e)]
	| \times 2/3 {  d16[( f  a)] } \times 2/3 {  a[-.\p a-. a-.] }
          \noTupletNum \times 2/3 {  a[ a a]  a[ a a]  a[ a a]  a[ a a]
				     a[ a a]  a[ a a] }
	| \times 2/3 {  a[ d d]  d[ d d]  d[ d d]  d[ d d]  d[ d d]
		        d[ d d]  d[( e d]  cis[ b  cis)] }
	| d8 r  cis,8[-. cis-.]  d[-. d-. e-. e-.]

% 110
	|   f[(\sf  fis)] r4  g8[(\sf  gis)] r4
	|  a16.[(\p  f32) bes16.(  g32)]  f8[ e\trill] d4 r8  g'16.[(
           e32)] 
	| d4 r8  g,16.[(  e32)]  d8[ a] a r
    }

    \alternative {
	{
	    | r8  b[-.  b(-\cresc  d)] r  as'[ as(  d,)]
	}
	{
	    | r8   a8[(-.-\cresc  a)-.] r r  g[(-.  g)-.] r
	}
    }

    | r  b[(-.  b)-.] r r  d[(-.  d)-.] r
    | r  es[\f es(  g)] g4(  f)
    |  e8[( d]  cis4) \times 2/3 {  d16[\p f a]  d,[ f a]  d,[ f a]  e[ g a] }
    | \times 2/3 {  d,[ f a]  d,[ f a]  d,[ f a]  e[ g a]  d,[ f a]  d,[ f a]
		    d,[ f a]  e[\f g a] }
    | <a, f'>4 r r2
}
