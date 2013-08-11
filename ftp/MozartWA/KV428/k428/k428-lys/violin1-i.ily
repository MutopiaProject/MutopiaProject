\version "2.16.0"

violinIFirstMov =  \relative es' {
    \key es \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	es2(\p  es') 
	| a,2.(  bes4)
	| b( c e,  f) 
	| as!2(  g4) r
	| f2.(  bes16[ as g  as)]
	| f2.(  bes16[ as g  as)]
	| f4( c' bes  as)
          
	| g(  bes) r2
	| f2.(  bes16[ as g  as)]

% 10
	| f2.(  bes16[ as g  as)]
	|  f4_\cresc  c'(  bes) <as, d>
	| <g es'>2\f es''
	| a,2.(  bes4)
	| b( c e,  f) 
	| as!2(  g4) r
	| g4 g'4.  as16[ g] \grace bes16 as8[ g16 f]
	|  f8[(  es)] es4.  es8[(-. es-.  es)-.]
	|  es8.[(\p  f16)] f2(  es4)
	| des(  c8.[  es16)] es4.(  d16[  c)]

% 20
        | c4(   bes8)[ g'(-.]  f[-. es-. des-.  c)-.]
	| bes4(   as8)[ f'(-.]  es[-. d-. c-.  bes)-.]
	| as4(   g8)[ es'(-.]  d[-. c-. bes-.  as)-.]
	| \slurDown \stemUp  g16[( f as g]  bes[ as c  bes)]  des[( c bes
          as]  g[ f as  f)] \stemNeutral \slurNeutral
	| es4(  d!8) r r2
	| R1
	| r4 r8 c''8(-.\f  bes[-. a-. g-.  f)-.]
	|  e16[( f g  f)]  e[( f g  f)] f2 ~
	| f1 ~
	| f4(  es!8) r r  d[(-._\parentP d-.  d)-.]

% 30
	| d4(  c8) r r  c[(-. c-.  c)-.]
	|  bes16[( d f d]   bes'8)[ c(-.]  bes[-. a-. g-.  f)-.]
	| f4(   bes8)[ c(-.]  bes[-. a-. g-.  f)-.]
	| f4(   bes8)[ c(-.]  bes[-. a-. g-.  f)-.]
	| \appoggiatura f8 bes1 ~
	| bes ~
	| bes_\cresc ~
	| bes4. a8(-.  bes[-. c-. des-.  e,)-.]
	| f4\f f'2 \grace es16 d8[ c16 bes]
	| \afterGrace c1^\trill { bes32[( c] }

% 40
	| bes4) r4  bes,8[(\p \times 2/3 { c16 bes a] }   bes8)[ c-.]
	|  d4(-. d-. d-.  d)-. 
	|  d16[( fis g es]  d4) bes4(\f \grace { c32[ bes a bes] } c8[
           d)]
	| c4.. d16  c8.[ bes16 a8. g16]  g8[(  a)] f4  f8.[\p g16
          a8. b16]
	| c4 c2(  d8.[  b16)]
	| c4(  es2) \times 2/3 {  es8[( g  es)] }
	| d4 \times 2/3 {  d8[( f  d)] } c4 \times 2/3 {  c8[( es  c)] }
	| bes4(  bes'8) r r2
	| r fis,(

% 50
	|  g4) r r2
	| f!4..\f bes16  a8.[ g16 f8. e16]
	|  e8[(  f)] r4 r2
	| R1*4
	| es'2(\p  d)
	| c(\f ~  c8[ d16 es]   f8)[ f-.]
	| bes,4 r r2

% 60
        | R1
        | ges'2(\p  f)
	| bes(\f  des)
	| f4 r a,,2(\p
	|   bes16)[ bes,-.\f c-. d-.]  es[-. f-. g-. a-.]
           bes[-. c-. d-. es-.]  f[-. g-. a-. bes-.]
	|  g8[(  f)] f4.(  es8[ c  a)]
	|  bes16[-. bes,-. c-. d-.]  es[-. f-. g-. a-.]
           bes[-. c-. d-. es-.]  f[-. g-. a-. bes-.]
	|  g8[(  f)] f4.(  es8[ c  a)]
	| bes4 <d, bes' bes'> bes r
    }

    \repeat volta 2 {
        | bes'2(\f  bes')

% 70
	| e,2.(  f4)
	| fis( g b,  c)
	| es!2.(  d4)
	| r8 as!4(  g8) r des'4(  c8)
	| r8 f,4 f f f8
	| es8[\p \grace f16 es16( d] es8)[ f-.] g4-. r
	| es'8[ \grace f16 es16( d]   es8)[ f-.] g4 r
	| \times 2/3 { r8 as,,[-\parentF b] } \times 2/3
          {  d[ f as] } \times 2/3 {  b[ d f] } \times 2/3 {  as![(  f)
          d-.] }
	| \noTupletNum \times 2/3 {  f[ d b]  as![ f d]  f[(  d) b-.]  as[(
           g) f'-.] }
	| es8[-\parentP \grace f16 es16( d] es8)[ f-.] g4 r

% 80
        |  es'8[ \grace f16 es16( d]   es8)[ f-.] g4 r
	| \times 2/3 { r8  g,,[-\parentF bes!]  e[ g bes]
           e[ g bes]  des[(  bes) g-.] }
	| \times 2/3 {  bes[ g e]  des[ bes g]  bes[(  g) e-.]
           des[(  c) bes'-.] }
	| as8[-\parentP \grace bes16 as16( g] as8)[ bes-.] c4 r
	|  as'8[ \grace bes16 as16( g]   as8)[ bes-.] c4 r
	|  a,8[ \grace bes16 a16( g]   a8)[ bes-.] c4 r
	|  a'8[ \grace bes16 a16( g]   a8)[ bes-.] c4 r
	| \times 2/3 { r8 a,,[-\parentF c]  fis[ a c]
           fis[ a fis]  c'[(  a) fis-.] }
	| \times 2/3 {  a[(  fis) c-.]  fis[(  c) a-.]  c[(  a) fis-.]  es![(
           d) c'-.] } \tupletNum
	| bes8[ \grace c16 bes16( a]   bes8)[ c-.] d4 r

% 90
	|  bes'8[ \grace c16 bes16( a]   bes8)[ c-.] d4 r
	|  g,,8[ \grace a16 g16( fis]   g8)[ a-.] bes4 r
	|  g'8[ \grace a16 g16( fis]   g8)[ a-.] bes4 r
	| r bes(-.\f bes-.  bes)-.
	| bes r r2
	| r4 d,(-.\p d-.  d)-.
	| d r r2
	| r4 d d( des
	|  c) r r2
	| r4 c c( ces

% 100
	|  bes) r r2
	| es,2(\p  es') 
	| a,2.(  bes4)
	| b( c e,  f) 
	| as!2(  g4) r
	| f2.(  bes16[ as g  as)]
	| f2.(  bes16[ as g  as)]
	| f4( c' bes  as)
          
	| g(  bes) r2
	| R1

% 110
	| f'2.(  bes16[ as g  as)]
	| f2.(  bes16[ as g  as)]
        | f4_\cresc c'(  bes) d,
	| es2\f es'
	| a,2.(  bes4)
	| b( c e,  f)
	| as!2(  g4) r
	| r r8 c(-.  bes[-. as-. g-.  f)-.]
	| f4(   bes8)[ bes(-.]  as[-. g-. f-.  es)-.]
	| es4(   as8)[ as(-.]  g[-. f-. es-.  d)-.]

% 120
	|  f[(  es) d-. c-.]  c[(^\trill  bes) bes(^\trill  a)]
	| bes4 r r2
	| r4 r8 c'8(  bes8[-. a-. g-.  f)-.]
	|  f16[( g f e]  f[ g f  g)] as!2 ~
	| as4(   g8)[ bes] des,2 ~
	| des4(  c8) r r  bes[(-.\p bes-.  bes)-.]
	| bes4(  a8) r r  as[(-. as-.  as)-.]
	|  g8.[(  bes16)] g8 r r  f[(-. es-.  d)-.]
	|  es16[( f g  es)]  bes'8[-. bes-.] bes2 ~
	| bes4 r8 f''8(-.  es[-. d-. c-.  bes)-.]

% 130
	| es1 ~
	| es_\cresc ~
	| es ~
	| es4. d8(-.  es[-. f-. ges-.  a,)-.]
	| bes4\f bes'2 \grace as16 g8[( f16  es)]
        | \afterGrace f1^\trill { es32[( f] }
	| es4) r4  es,8[( \times 2/3 { f16 es d] }   es8)[ f-.]
	| g4(-. g-. g-.  g)-.
	|  g16[( b c as]  g4) << { es4(\f  f8[  g)] } { s8
          s8^\turn } >>
	| f4.. g16  f8.[ es16 d8. c16]

% 140
	|  c8[(  d)] bes4  bes8.[\p c16 d8. e16]
	| f4 f2(  g8.[  e16)]
	| f4(  as2) \times 2/3 {  as8[( c  as)] }
	| g4 \times 2/3 {  g8[( bes  g)] } f4 \times 2/3 {  f8[( as  f)] }
	| es4(  es'8) r r2
	| r b,,(
	|  c4) r r2
	| bes!2\f  d8.[ c16 bes8. a16]
	|  a8[(  bes)] r4 r2
	| R1*4

% 153
        | as'!2(\p  g)
	| f\f ~ \slurDown \stemUp  f8[( g16 as]   bes8)[ bes-.]
          \stemNeutral \slurNeutral
	| es,4\p r r2
	| R1
	| ces'2(\p  bes)
	| es(\f  ges)
	| bes4 r  d,,2(\p 

% 160
	|   es8)[\f f16-. g-.]  as[-. bes-. c-. d-.]  es[-. f-. g-. as-.]
           bes8[ bes]
	|  bes[(  f)] as4.  bes16[(  as)]  g[(  f) es(  d)]
	|  es[-. es,-. f-. g-.]  as[-. bes-. c-. d-.]  es[-. f-. g-. as-.]
           bes8[ bes]
	|  bes[(  f)] as4.  bes16[(  as)]  g[(  f) es(  d)]
        | es4 <g,, es'>8.[ <g es'>16] <g es'>4 r
    }
}
