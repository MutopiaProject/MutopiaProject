\version "2.16.0"

violinIFirstMov =  \relative d' {
    \key d \minor
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	d'2(_ \markup{\italic "sotto voce"}  d,4.) d8
	|  d8.[^\trill cis16]  d8[ d] d4.(  f'8)
	| f4( ~  f16[  e) d(  cis)] bes4(  a8[  g)]
	|  f[( bes a  gis)] a4 r 
	| d'2(\f  d,4.) d8
	|  d8.[^\trill cis16]  d8[ d] d4.(  f'8)
	| f4( ~  f16[  e)\p d(  cis)] bes4(   a8)[ g] ~
	|  g16[( f e  bes')]  bes[(  a) cis,(  e)] d4 r
	| a,4.\f a''8\p  g8.[^\trill a16]  bes8[ cis,]

% 10
	|  d[-. e-.]  g[(   f)^\trill]  e4 r
	| a,,4.\f d''8\p d4(   cis8)[ bes]
	|  a[-. g-.]  g[(   f)^\trill]   e16[
          gis(\fp a gis]  a[ gis a f]
	|  e8) r r4 r2
	| r <e, c'! bes'>4.\f c8\p
	|  c[-. c-.] r d-.  d[(  es)] r f ~
	|  f[( fis g  a)]  c[(  bes)] r bes
	| a( bes4_\cresc b c  cis8) ~
	| cis4(  e16[\p  d) c!(  bes)] a4(  g8) r
	| r4  d'8[(  g,)]  g8.[( a16]  g8) r

% 20
	| r4  f'8[(  b,)] b4(  c8) r
	| r  f,[(\f  f') es-.] es4(   des8)[ c]
	| c4(  b) bes2 ~
	|  bes8[ g'(  c) bes-.]  gis32[(\p  a)] r16  e32[(  f)] r16  cis32[(  d)]
	r16  fis,32[(  g!)] r16
	| c8.[( \grace { d32[ c b c] } d16)] f,8[(  e)] f4 r
	| f4(  e16[ f bes  a)]  a8[(  g)] r4
	|  fis16[( g a g]  bes[ a d  c)]  bes8[(  a)] r4
	| f'4(  e16[ f bes  a)]  a8[(  g)] ~  g16[( f e  d)]
	|  d8[(  c)] ~  c16[( bes a  g)] f4 r
	| \slurDown \stemUp   f8[(\p  ~
          \times 2/3 { f16 e f] } \times 2/3 {  a[ g f] } \times 2/3 {
           c'[ bes  a)] } \slurNeutral \stemNeutral  fis8[(  g)] r4

% 30
	| \times 2/3 {  bes'16[( a g] } \times 2/3 {  f[ e d] } \times 2/3 {
	     c[ b c] } \times 2/3 {  cis[ d  bes)] }  gis8[(  a)] r4 \noTupletNum
	| \times 2/3 {  f16[\f a c]  f[ a c]  f[ e d]  c[ bes a]  g[( a  fis)]
		        g[ bes a]  bes[ a g]  f[ e d] }
	| \times 2/3 {  c[ d b]  c[(  f) f,] }  g8.[(^\trill f32 g]  f4) r
	| R1
	| f'4(\p  fis)\sf  g8[-.\p a-. bes-. c-.]
	|  cis16[(  d) bes-. g-.]  f8[(  e)] f r  e[-. e-.]
	|  f[-. f-. g-. g(^\trill]   a)[ bes-. c-. d-.]
	|  d16[(  c) bes-. a-.]  a8[(  g)^\trill] f4 r
	| R1
	| r2 \tupletNum \times 2/3 { r16  f[( a] } \times 2/3 {   c)[
          c-. c-.] } c8 r
	| \noTupletNum \times 2/3 { r16  f,,[( a]   c)[ c-. c-.] } c8 r
	  \times 2/3 { r16  c,[( f]   a)[ a-. a-.] } a8 r
    }

    \alternative {
	{
	    | \times 2/3 { r16  d,[( gis]   b)[-\cresc b-. b-.] } b8
	    r \times 2/3 { r16  e,[( g]   cis)[ cis-. cis-.] } cis8 r
	}

	{
	    | \times 2/3 { r16  d,[( as']   b!)[-\cresc b-. b-.] } b8
	    r \times 2/3 { r16  bes,[( f']   as)[ as-. as-.] } as8 r
	}
    }

    \repeat volta 2 {
        <\tweak #'duration-log #2 g,
         \tweak #'duration-log #2 es' es'>2_\f es'4. es8
	|  es8.[^\trill d16]  es8[ es] es2
	|  es8.[^\trill d16]  es8[ es] es2
	|  es8.[^\trill d16]  es8[ es] es4.(  e8)
	|  c2(\pp   b) ~
	| b4(  a) d2 ~
	| d4( c f  e)

% 50
	| dis2(  d)
	| c8[ gis''(\f  a) f-.\p]  e[-. d-. c-. b-.]
	| << { bes!1( } { s4 \< s2  s4\! } >>
	| a8)[\p  gis(\f   a) f-.\p] e[-. d-. c-. b-.]
	| R1*2
	| cis'2\p cis,4. cis8
	| d4 r r2
	| R1
	| fis'2\f fis,4. fis8

% 60
	| g4 d''2\p  c16[(  bes) a(  g)]
	|  f8[(  e)] r4 \times 2/3 { r16  c,[( g']   bes)[
          bes-. bes-.] } bes8 r
	| r4 c'2  bes16[(  a) g(  f)]
	|  e8[(  d)] r4 \times 2/3 { r16  bes,16[( d]   f)[
          f-. f-.] } f8 r
	| r4 bes'2(-\cresc  bes,4)
	| a e''2(  g,4)
	|  fis8[( f e es]  d16[\f cis d cis]  d[ f e  d)]
	| \times 2/3 { r16  cis[(\p e]   a)[ a-. a-.] } a8 r r4 r8
           f16.[(  d32)] \slurDown
	| cis4 r \times 2/3 { r16  cis,[( e]   a)[ a-. a-.] }  a8[ a]
	| bes2\fp ~ \times 2/3 {  bes16[ d,( f]   bes)[ bes-. bes-.] }
           bes8[ bes]

% 70
	| cis2\fp ~ \times 2/3 {  cis16[ e,( g]   cis)[ cis-. cis-.] }
          \slurNeutral  cis8[ cis(] 
	|  d2)_ \markup{\italic "sotto voce"} d,4. d8
	|  d8.[^\trill cis16]  d8[ d] d4.(  f'8)
	| f4 ~  f16[( e d  cis)] bes4(  a8[  g)]
	|  f[( bes a  gis)] a4 r
	| \grace { d,32[(  d')] } d'2\f d,4. d8
	|  d8.[^\trill cis16]  d8[ d] d4.(  f'8)
	| f4 ~  f16[(  e) d(\p  cis)] bes4(  a8[  g)] ~
	|  g16[( f e  bes')]  bes[(  a) cis,(  e)] d4 r
	| a,4.\f a''8\p  g8.[\trill a16]  bes8[ cis,]

% 80
	|  d[-. e-.]  g[(   f)^\trill]  e4 r
	| a,,4.\f d''8\p d4(   cis8)[ bes-.]
	|  a[-. g-.]  g[(   f)^\trill]   e16[
          gis(\fp a gis]  a[ gis a f]
	|  e8) r r4 r2
	| r2 <g,, e' cis' bes'>4.\f  cis8(\p
          
	|   d)[ d-.] r d r es r fis
	|  a[(\sf  g)] r e!\p  f![( fis g gis]
	|  b[\sf  a)] r a\p ~  a16[( bes!8 b c  cis16)] ~
	|  cis[( d f e]  g[ f a g]  bes[ a c! bes]  a[ g f  e)]
	| d4(\p  cis8) r r4  e8[(-.  e)-.]

% 90
	|  e8.[(  f16)] e8 r r4  d'8[(  gis,)]
	| gis4(  a8) r r  d,,[(\f  d') c!-.]
	| c4(   bes8)[ a-.] a4(  gis)
	| g!2 ~  g8[ e'(  a) g-.]

	|  e32[(\p  f)] r16  cis32[(  d)] r16  a32[(  bes)] r16  fis32[(  g)]
          r16 a8.[( \grace { bes32[ a g a] } bes16)-.] d,8[(  cis)]
	| d4 r d'(  cis16[ d f  e)]
	|  cis8[(  d)] r4 d8( a'4  g16[  f)]
	|  e8[(  d)] r4 d8( d'4  f,8)
	| es8( g4  bes8) bes( a4  cis,8) \tupletNum
	| d4 r  d8[(\p \times 2/3 { d16 cis d] }  \times 2/3 { f[ e d] }
           \times 2/3 { a'[ g  f)] }

% 100
	|  e8[(  d)] r4 \times 2/3 {  d,16[ cis' d] } \times 2/3 {  es[ e
          f] } \noTupletNum \times 2/3 {  fis[ g gis]  a[ g f] }
	|  e8[(  d)] r4 \times 2/3 {  d,16[\f f a]  d[ f a]  d[ c bes]  a[
          g f] }
	| \times 2/3 {  e[( f dis]   e)[ g fis]  g[ f e]  d[ c bes] }  a[(
           a')]  g32[( f e  d)]  e8.[^\trill d32 e]
	| d4 r r2
	| R1
	| d4(\p  es)\sf  d8[-.\p fis-. g-. a-.]
	|  bes[-.-\cresc b-. c-. cis-.]  d16.[(\f  a32) bes16.(  g32)]
           f8[(  e)]
	| d8 r  cis[-.\p cis-.]  d[-. d-. e-. e(^\trill]
	|   f)[ fis-. g-. gis-.]  a16.[(  f32) bes16.(  g32)]  f8[(
           e)\trill]
	| d4 r r2

% 110
	| R1
	| r2 \times 2/3 { r16  d[( f]   a)[ a-. a-.] } a8 r
	| \times 2/3 { r16  d,,[( f]   a)[ a-. a-.] } a8 r \times 2/3 {
          r16  a,[( d]   f)[ f-. f-.] } f8 r
    }

    \alternative {
	{
	    | \times 2/3 { r16  b,[( f']   as)[-\cresc as-. as-.] } as8 r
              \times 2/3 { r16  as,[( bes]   d)[ d-. d-.] } d8 r
	}
	{
	    | \times 2/3 { r16  a[( c]    fis)[_\cresc
               fis-. fis-.] } fis8 r \times 2/3 { r16  g,[(
              d']   g)[ g-. g-.] } g8 r
	}
    }

    % Coda

    | \times 2/3 { r16  gis,[( d']   gis)[ gis-. gis-.] } gis8 r \times
      2/3 { r16  a,[( d]   a')[ a-. a-.] } a8 r
    | \times 2/3 { r16  g,[(\f es']   bes')[ bes-. bes-.] } bes8 r r a r d
    | r e,! r a  d,[-.\p f-.]  a[-. cis16(^\trill b32 cis]
    |   d8)[ a-.]  f'[-. e16(^\trill d32 e]   d8)[ f-.]
    <<
	{ \voiceTwo  a[-. a,\f] }
	\new Voice { \voiceOne s8 <e' cis'> }
    >> \oneVoice
    | <d, d' d'>4 r r2
}
