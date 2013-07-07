\version "2.16.0"
violaFirstMov =  \relative f {
    \key d \minor
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	r8  f[(-. f-.  f)-.] r  f[(-. f-.  f)-.]
	| r  f[(-. f-.  f)-.] r  a[(-. a-.  a)-.]
	| r  bes[(-. bes-.  bes)-.] r  e,[(-. e-.  e)-.]
	| d4 r r8  e'[( d  cis)]
	|  d8[\f f(-. f-.  f)-.] r  fis[(-. fis-.  fis)-.]
	| r  g[(-. g-.  g)-.] r  gis[(-. gis-.  gis)-.]
	| gis4(  a) r8  a,[(\p b  cis)]
	|  d[ g, a a] d4 r
	| r4 r8 f\p  e8.[^\trill f16]  g8[ g]

% 10
	|  f[( e]  d) r r  a'16[(\mf gis]  a[ gis a  gis)]
	| a4.\f f8\p  e8.[^\trill f16]  g8[ g]
	| f8 a4(  b8) e,4 r
	| r r8  f16[(  d)]  cis[ gis(\fp a gis]  a[ gis a f]
	|  e8) r r4 <c! c'>4.\f  g'8(\p 
	|   f8)[ f-.] r f f4 r8 c'
	|  bes[( b bes a]  g4) r8 c
	| << { f2 ~  f8[ f( e  es)] } { s8 s8_\cresc } >>
	| d4 r8  g,16[(\p  d')] c4 r
	| r2 r4  c,8.[(\fp  des16)]

% 20
	| des4^\trill ~  des8.[( c32 des]  c4) r
	| r2 f'2\f ~
	|  f8[ g,(  g') f-.] f4(   e8)[ d] ~
	|  d[ c(  a') g-.] f\p r f r
	|  c[( bes a  g)] r16  f[(\mf  a) a-.]  a[ a a a]
	| r16  a[(\p  c) c-.]  c[ c c c] r  g[(  d') d-.]  d[ d d d]
	| r  g,[(  bes) bes-.]  bes[ bes bes bes] r  f[(  a) a-.]  a[ a a a]
	| r  a[(  c) c-.]  c[ c c c] r  g[(  d') d-.]  d[ d d d]
	| r  g,[(  bes) bes-.]  bes[ bes bes bes]  a[-. f'( e d cis d c
           bes)]
	|  a[-.\p c-. f-. c-.]  a[-. c-. f-. c-.]  g[-. d'-. f-. d-.]
           g,[-. d'-. f-. d-.]

% 30
	|  g,[-. c-. e-. c-.]  g[-. c-. e-. c-.]  f,[-. a-. f'-. a,-.]
           f[-. a-. f'-. a,-.]
	|  a[-.\f c-. f-. c-.]  a[-. c-. f-. c-.]  g[-. d'-. f-. d-.]
           g,[-. d'-. f-. d-.]
	|  f8[ c]  d[ c16(  bes)] a2(\p
	|   d8)[ fis-. g-. a-.]  a16[(  bes) d,-. bes-.]  a8[(  g)]
	| a8(  c'4)\sf  bes16.[(\p  a32)]  d8[-. fis,-. g-. a-.]
	|  a16[(  bes) d,-. bes-.]  a8[(  g)] a r  bes'[-. bes-.]
	|  a[-. a-. e-. e-.]  f[-. d-. a-. bes-.]
	|  a[ d c c,] \times 2/3 {  f16[( a  c)] } \times 2/3 {  c[ c c] }
          \noTupletNum \times 2/3 {  c[ c c]  c[ c c] }
	| \times 2/3 {  c[ c c]  c[ c c]  c[ c c]  c[ c c]  c[ f f]  f[ f f]
           f[ f f]  f[ f f] }
	| \times 2/3 {  f[ f f]  f[ f f]  f[( g f]  e[ d  e)] } f4 r8
           g16.[(  e32)]

% 40
	| f4 r8  g,16.[(  e32)]  f8[ f(-.]  f)-. r
    }

    \alternative {
        {
	    | r8  d'[(-.  d)-.] r r  bes[(-.  a)-.] r
	}

	{
	    | r8 d  d[(_\cresc  f)]  f[(  bes,)]  bes[(  as)]
	}
    }

    \repeat volta 2 {
        |  g8[\f g(-. g-.  g)-.] r  g[(-. g-.  g)-.]
	| r  as[(-. as-.  as)-.] r  g[(-. g-.  g)-.]
	| r  as[(-. as-.  as)-.] r  es[(-. es-.  es)-.]
	| c1\p
	| e!2\pp  e8.[(^\trill  dis16)]  e8[ e]
	| e2  e8.[(^\trill  dis16)]  e8[ e]
	| e2  e8.[(^\trill  dis16)]  e8[ e]

% 50
	|  fis8.[(^\trill  e16)]  fis8[ fis]  gis8.[(^\trill  fis16)]  gis8[
          gis]
	|  a8[ d'(\f  c) b-.]  e,[-. f-. e-. e-.]
	| r2 g,!2(\fp
	|   a8)[ b(\f  c) gis-.\p] a-. r r4
	| a'2\p a,4. a8
	|  a8.[^\trill gis16]  a8[ a] a2
	| g!1
	|  f8[(\f d' e  f)] r  f[( e  d)]
	| r  g[( fis  g)] r  bes[( a  g)]
	| r  a[( gis  a)] r  c[( bes  a)]

% 60
	| \tupletNum \times 2/3 { r16   d,[(_\p
           g] } \times 2/3 {   bes)[ bes-. bes-.] } bes8
          r r2
	| \noTupletNum \times 2/3 { r16  g,[( bes]   e)[ e-. e-.] } e8 r r2
	| \times 2/3 { r16  f,[( c']   f)[ f-. f-.] } f8 r r2
	| \times 2/3 { r16  f,[( bes]   d)[ d-. d-.] } d8 r r2
	| \times 2/3 { r16  g,[( bes]   cis)[ cis-. cis-.] } cis8 r
	  \times 2/3 { r16  g[( bes]   d)[ d-. d-.] } d8 r
	| \times 2/3 { r16  g,[( d']   g)[ g-. g-.] } g8 r
	  \times 2/3 { r16  a,[( cis]   e)[ e-. e-.] } e8 r
	| r  d[( g  a)] ~ a\f d,4  cis16[(  d)]
	| e4 r \times 2/3 { r16  cis[( e]   a)[ a-. a-.] } a8 r
	| \times 2/3 { r16  cis,,[( e]   a)[ a-. a-.] } a2. ~
	| \times 2/3 {  a16[ d,( f]   bes)[-. bes-. bes-.] } bes2. ~

% 70
	| \times 2/3 {  bes16[ g( cis]   e)[ e-. e-.] } e2 ~ e8 r
	| r8  f,8[(-. f-.  f)-.] r  f[(-. f-.  f)-.]
	| r  f[(-. f-.  f)-.] r  a[(-. a-.  a)-.]
	| r  bes[(-. bes-.  bes)-.] r  e,[(-. e-.  e)-.]
	| d4 r r8  e'[( d  cis)]
	|  d[ f(-.\f f-.  f)-.] r  fis[(-. fis  fis)-.]
	| r  g[(-. g-.  g)-.] r  gis[(-. gis-.  gis)-.]
	| gis4(  a) r8  a,[( b  cis)]
	|  d[ g, a a] d4 r
	| r r8 f\p  e8.[^\trill f16]  g8[ g]

% 80
	|  f[(  e)] d r r  a'16[(\mf gis]  a[ gis a  gis)]
	| a4.\f f8\p  e8.[^\trill f16]  g!8[ g]
	| f8 a4(  b8) e,4 r
	| r r8  f16[(  d)]  cis[ gis(\mf a gis]  a[ gis a f]
	|  e8) r r4 e'4.\f g,8(\p
	|   f)[ f-.] r fis r g r c
	|  fis[(  g)] r4 e2\p
	|  fis8[(  g)] r8 e8(\p f!4  g!)
	|  a8[( g   f)_\cresc  cis] d4.(  e8)
	| a,4\p  a'8.[(\fp  gis16)] gis4^\trill ~  gis8.[( fis32 gis]

% 90
	|  a4) r r  d,8[(  f!)]
	| f4(  e8) r r2
	| d2\f ~  d8[ e,(  e') d-.]
	| d4(   cis8)[ b] a4(  e')
	| d8\p r cis r  a[( g f  e)]
	| r16  f[\mf f f]  f[ f f f] r   d[(\p  a') a-.]
            a[ a a a]
	| r  d,[(  bes') bes-.]  bes[ bes bes bes] r  f[(  d') d-.]  d[ d d d]
	| r  f,[(  d') d-.]  d[ d d d] r  a[(  f') f-.]  f[ f d d]
	| r  bes[(  es) es-.]  es[ es d d] r  cis[(  d) d-.]  d[ d e e]
	|  d[-._\cresc g( f e]  f[ e d  cis)]  d[-.\p a-. d-. a-.]
           f[-. a-. d-. a-.]

% 100
	|  g[-. bes-. d-. bes-.]  g[-. bes-. d-. bes-.]
           a[-. d-. f-. d-.]  a[-. d-. f-. d-.]
	|  bes[-. d-. f-. d-.]  bes[-. d-. f-. d-.]  a[-. d-. f-. d-.]
           a[-. d-. f-. d-.]
	|  bes[-. d-. e-. d-.]  bes[-. d-. e-. d-.] d8 bes4(  a16[  g)]
	| f4(\p  fis)\sf  g8[-.\p c-. d-. es-.]
	|  d[-._\cresc as'-. g-. bes-.]  a8[\f g16.(  e!32)]  d8[(  cis)]
	| d8(\p a'4\sf  g16.[\p  fis32)]  g8[-. c,-. d-. es-.]
	|  d[-._\cresc as'-. g-. bes-.]  a8[\f g16.(  e!32)]  d8[(  cis)]
	| d8 r  g[-.\p g-.]  f[-. f-. cis-. cis-.]
	|  d[-. c!-. b-. bes-.]  a[-. g-. a-. a-.]
	| \tupletNum \times 2/3 {  d,16[( f  a)] } \times 2/3 {
           a[-. a-. a-.] } \noTupletNum \times 2/3 {  a[ a a]  a[ a a]  a[
          a a]  a[ a a]  a[ a a]  a[ a a] }

% 110
	| \times 2/3 {  a[ d d]  d[ d d]  d[\sf d d]  d[ d d]  d[\p d d]
           d[ d d]  d[\sf d d]  d[ d d] }
	| \times 2/3 {  d[\p d d]  d[ d d]  d[( e d]  cis[ b  cis)] } d4
          r8  e16.[(  cis32)]
	| d4 r8  e,16.[(  cis32)]  d8[ d] d r
    }

    \alternative {
        {
	    | r8  f[-._\cresc f(  as)] r  bes[ bes(  as)]
	}

	{
	    | r8  d,[(-.  d)-.] r r  d[(-.  d)-.] r
	}
    }

    | r  e[(-.  e)-.] r r  f[(-.  f)-.] r
    | r  g[-.\f g(  bes)]  a[( cis d  a)]
    |  bes[( g a  g)] f4 r8 a\p
    | a4 r8 cis d4 r8 a'\f
    | a4 r r2
}
