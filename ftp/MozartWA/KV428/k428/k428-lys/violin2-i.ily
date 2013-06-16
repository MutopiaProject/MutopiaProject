\version "2.16.0"

violinIIFirstMov =  \relative es' {
    \key es \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	es2(\p  es') 
	| a,2.(  bes4)
	| b( c e,  f) 
	| as!2(  g4) r
	|  c,32[( d  es8.)]  es8[-. es-.] es2
	|  c32[( d  es8.)]  es8[-. es-.] es2 ~
	| es2.(  d4)
	| r8  es'8[-. es-. es-.]  es8.[( d32 c]  bes8) r
	|  c,32[( d  es8.)]  es8[-. es-.] es2

% 10
	|  c32[( d  es8.)]  es8[-. es-.] es2 ~
	| es4_\cresc f(  g) <as, f'>
	| <g es'>2\f <g es'>
	| es'1 ~
	| es2 r4 f
	| f2(  es4) r
	| <b d>8 <b d>4 <b d> <b d> <b d>8
	| <b d>[( <c es>) <c es> as']  as[(  g) g(  as)]
	| bes1\p ~
	| bes4(  as8.[  c16)] c4.(  bes16[  as)]

% 20
	| as4(  g) r g( ~
	|  g8[ e]  f4) r f( ~
	|  f8[ d]  es!4) r2
	| es2.(  c4)
	| bes2 r
	| r4 r8 f''8(-.\f  es[-. d-. c-.  bes)-.]
	|  a16[( bes c bes]  a[ bes c  d)] es2 ~
	| es1(
	|  d2) bes ~
	| bes r8 g[(-._\parentP g-.  g)-.]

% 30
        | g2 r8  f[(-. f-.  f)-.]
	| f1 ~
	| f4 r r8  c'8[(-. bes-.  a)-.]
	|  bes16[( c d  bes)]  f'8[-. f-.] f2 ~
	| f4 r8 f(-.  es[-. d-. c-.  bes)-.]
	| as!1_\cresc
	| g
	| e2 ~ e4.(  bes'8)
	|  bes8[\f bes bes bes]  bes[ bes bes bes]
	|  a[ a a a]  a[ a a a]

% 40
	| bes4 r r2
	| r fis(\p
	|  g4) r r2
	| f!2\f  a8.[ g16 f8. e16]
	|  e8[(  f)] a,4 r2
	|   es'!8[(\p  c es c]  es[ c f  d)]
	|  es[( g  c) c-.] c4 r
	| bes r a r
	| bes r r2
	| r c,2(

% 50
	|  bes4) r r2
	| f'\f c4 c
	| c r r2
	| R1*3
	| \stemUp \slurDown bes'2(\p a
	| g  f)
	| e(\f  es)
	| d4 \slurNeutral \stemNeutral r r2

% 60
        | es'(\p  des)
	| ces1
	| bes2(\f  bes')
	| d!4 r es,,2(\p
	|  d4) r r2
	|  a'16[(\f bes c  bes)]  c[( d es  d)] es[( d c bes]  a[ g f es]
	|   d)[ bes-. a-. bes-.]  c[-. d-. es-. c-.]  d[-. a-. bes-. c-.]
           d[-. es-. f-. g-.]
	|  a[( bes c  bes)]  c[( d es  d)]  es[( d c bes]  a[ g f  es)]
	| d4 <bes f' d'> bes r
    }

    \repeat volta 2 {
        | bes2(\f  bes') 

% 70
	| e,2.(  f4)
	| fis( g b,  c)
	| es!2.(  d4)
	| r8 f4(  e8) r bes4(  a8)
	| << d1 \\ { bes2( b) } >>
	| c8[\p \grace d16 c16( b] c8)[ d-.] es4-. r
	| c'8[ \grace d16 c16( b]   c8)[ d-.] es4-. r
	| <b, d>1-\parentFP ~
	| <b d>
	| c8[-\parentP \grace d16 c16( b]    c8)[ d-.] es4-. r

% 80
	|  c'8[ \grace d16 c16( b]   c8)[ d-.] es4-. r
	| <g,, e'>1-\parentFP ~
	| <g e'>
	| f'8[ \grace g16 f16( e] f8)[ g-.] as4-. r
	|  f'8[ \grace g16 f16( e]   f8)[ g-.] as4-. r
	|   f,8[ \grace g16 f16( e] f8)[ g-.] a4-. r
	|  f'8[ \grace g16 f16( e]   f8)[ g-.] a4-. r
	|  a,,8[ \grace bes16 a16( g]   a8)[ bes-.] c4-. r
	|  a'8[ \grace bes16 a16( g]   a8)[ bes-.] c4-. r
	| \times 2/3 { r8 bes,[-\parentF d] } \times 2/3 {
           g[ bes d] } \times 2/3 {  g[ bes g] } \times 2/3 {  d'[(  bes)
          g-.] }

% 90
	| \noTupletNum \times 2/3 {  bes[(  g) d-.]  g[(  d) bes-.]  d[(
           bes) g-.]  bes[(  g) d-.] } \tupletNum
	|  bes8[\p \grace c16 bes16( a]   bes8)[ a-.] g4-. r
	|  bes'8[ \grace c16 bes16( a]   bes8)[ a-.] g4-. r
	| r4 g'4(-.\f g-.  g)-.
	| g r r2
	| R1
	| \set doubleSlurs = ##t r2 <fis, a,>(\p 
	| <g g,>4) r r2
	| r2 <e b>( <f a,>4) r r2 \set doubleSlurs = ##f 

% 100
	| r2 <as, d>2
	| <g es'>2(  es'') 
	| a,2.(  bes4)
	| b( c e,  f) 
	| as!2(  g4) r
	|  c,32[( d  es8.)]  es8[-. es-.] es2
	|  c32[( d  es8.)]  es8[-. es-.] es2 ~
	| es2.(  d4)
	| r8  es'8[-. es-. es-.]  es8.[( d32 c]  bes8) r
	|  c8.[( bes32 as]  g8) r  as8.[( g32 f]  e8) r

% 110
        | f2.(  bes16[ as g  as)]
        | f2.(  bes16[ as g  as)]
	|  f4_\cresc  << { c'4( bes) } \\ es,2 >> <as, d>4
	| <g es'>2\f es''
	| a,2.(  bes4)
	| b( c e,  f) 
	| as!2(   g8)[ g( as  bes)]
	| c1(\p
	| bes
	|  as)

% 120
	| g4 r8 g  g[(  f) f(  es)]
	| d4 r8 f'8(-.  es[-. d-. c-.  bes)-.]
	|  a16[( bes c bes]  a[ bes c  d)] es2 ~
	| es4  d16[( es d  es)] f2
	| bes,4.(  g8) bes2 ~
	| bes4(  as8) r r  g8[(-.\p g-.  g)-.]
	| g4(  f8) r r  f[(-. f-.  f)-.]
	|  es16[( g bes g]   es'8)[ f(-.]  es[-. d-. c-.  bes)-.]
	| bes4(   es8)[ f(-.]  es[-. d-. c-.  bes)-.]
	| bes4(  es8) r r  f[(-. es-.  d)-.]

% 130
	| es4 r8 bes'(-.  as[-. g-. f-.  es)-.]
	| des1(_\cresc
	|  c)
	| a2 ~ a4.(  es'8)
	|  es8[\f es es es]  es[ es es es]
	|  d[ d d d]  d[ d d d]
	| es4 r r2
	| r b(\p
	|  c4) r r2
	| bes!2\f  d8.[ c16 bes8. a16]

% 140
	|  a8[(  bes)] d,4 r2
	|  as'8[(\p f as f]  as[ f bes  g)]
	|  as[(  c) f-. f-.] f4 r
	| es r d r
	| es r  es,8[( \times 2/3 { f16 es d] }   es8)[ f-.]
	| g4(-. g-. g-.  g)-.
	|  g16[( b c as]  g4) es(\f \grace { f32[ es d es] } f8[  g)]
	| f4.. g16  f8.[ es16 d8. c16]
	|  c8[(  d)] bes4  bes8.[ c16 d8. e16]
	| f4 f2  g8.[(  e16)]

% 150
        | f4(  as2) \times 2/3 {  b8[( c  as)] }
	| g4 \times 2/3 {  a8[( bes!  g)] } f4 \times 2/3 {  g8[( as  f)] }
	| es4 r r2
	| R1
	| c2(\f  d)
	| es(\p des
	| ces  bes)
	| as!(  g)
	| as\f es''(
	|  g!4) r as,,2(\p
	|  g4) r r2
	|  d'16[(\f es f e]  f[ g as  g)] as8 as4 as8
	|  g16[ es!( d es]  f[ g as  f)] bes4 r
	|  bes,16[( c d cis]  d[ e f  e)] f8 f4 f8
	| es!4 <g, es'>8.[ <g es'>16] <g es'>4 r
    }
}
