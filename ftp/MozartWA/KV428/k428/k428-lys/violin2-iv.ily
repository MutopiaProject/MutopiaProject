\version "2.16.0"

violinIIFourthMov =  \relative g' {
    \key es \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	  g8[(\p   es)] r4
	|  c'8[(  as)] r4
	|  f8[(  d) d-. d-.]
	| d4(  es8) r
	|  g8[(  es)] r4
	|  c'8[(  as)] r4
	|  f8[(  d) d-. d-.]
	| d4(  es8) r
	| <g, es'>4\f <bes f'>
	| <bes g'> r
	| r8  e[\p f d]
	|  es![ as,] bes4
	| <g es'>4\f <bes f'>
	| <bes g'> r8 a'
	| bes4  g8[( f16  es)]
	| es4(  d8) r
    }

    \repeat volta 2 {
	 bes'8[(\p  g)] r4
	|  e8[(  f)]  as[(\fp  f)]
	|  d[(  es!)]  g[(\fp  es)]

% 20
	|  bes2\f
	| as ~
	|  as_\decresc  ~
	| as4( c
	|  bes)\p  r
	| d r
	| R2
	|   g8[(\p  es)] r4 
	|  c'8[(  as)] r4
	|  f8[(  d) d-. d-.]

% 30
	| d4(  es8) r
	| <g, es'>4\f <bes f'>
	| <bes g'> r
	| r8  c'16[-. as-.]  g[(  f) es-. d-.]
	| d4(  es8) r
    }

    | bes4.\f es8\p
    |  d[-. es-. d-. es-.]
    |  es[-. d-. es-. d-.]
    |  d[-. es-.] r4
    | <g, es'>4.\f g'8\p

% 40
    |  f[-. es-. f-. g-.]
    |  f[-. g-. f-. g-.]
    |  f[-. es-.] r4
    | R2
    | as4.\f  f16[(  d)]
    | c4(  b)
    | g''4.  es16[(  c)]
    | b4(   c8)[ g]
    | es4\p r
    | c r

% 50
    | bes r
    | f' r
    | r8  g[\f g g]
    |  g[(  f)] e4
    | f r8 f ~
    | f f4(  es!16[  d)]
    | c4 r8 f ~
    | f f4(  es16[  d)]
    |  c8[ a' <a, f'> <a f'>]
    | <a f'>4 r

% 60
    | bes'2(\p
    |  a)
    |  bes8[-.\f bes-.] bes4\p ~
    | bes(  a)
    | g8 r f r
    | es r d r
    |  a'8[-.\f a-.] a4\p ~
    | a(  c,8[  a)]
    | f'2 ~
    | f

% 70
    |  es8[-.\f es-.] es4\p ~
    | es(  f)
    | g8 r f r
    | g r es r
    | d4 r
    | R2
    | d'2
    |  c8[( \times 2/3 { d16 c bes] }   c8)[ d-.]
    |  es8[-.\f es-.] es4\p ~
    | es(  d)

% 80
    |  d8[(  c16)] r  c8[(  bes16)] r
    |  bes8[(  a16)] r  c8[(  bes16)] r
    |  c8[-.\f c-.] c4\p ~
    | c(  a8[  f)]
    | d'2
    |  c8[( \times 2/3 { d16 c bes] }  c8)[ d-.]
    |  es8[-.\f es-.] es4\p ~
    | es(  d)
    |  d8[(  c16)] r  c8[(  bes16)] r
    |  d8[(  c16)] r  c8[(  a16)] r

% 90
    |  d16[(\f c bes c]  d[ f es  d)]
    |  c[( bes a bes]  c8) r
    |  d,16[( c bes c]  d[ f es  d)]
    |  c[( bes a bes]  c8) r
    |  d'16[( c bes c]  d[ f es  d)]
    |  c[( bes a bes]  c8) r
    |  d,16[( c bes c]  d[ f es  d)]
    |  c[( bes a bes]  c8) r
    |  f'16[( es d  es)]  f[ g as! g]
    |  as[ g f es]  d[ c bes as]

% 100
    | g8 g4 g8(
    |  es) bes'4 bes8
    |  bes[ bes bes bes]
    |  a[ a a a]
    | bes4 d\p\tenuto^ \markup{\italic "ten."}
    | r f,\tenuto
    | r es\tenuto
    | r des'\tenuto
    | r d!\tenuto
    | r a\tenuto

% 110
    | bes r
    |  d,4(\p  es8[ f]
    | g4  a8[  bes)]
    | c2 f,
    | d4(\p  es8[  f)]
    | g4(  bes) ~
    | bes8 f4(  es8)
    | d4 r
    | d4(\p  es8[ f]

% 120
    | g4  a8[  bes)]
    | c2
    | f,
    | d4(\p   es8[  f)]
    | g4(  bes) ~
    | bes8 f4(  es8)
    | d4 r
    |  d'8[( bes c  a)]
    | bes4 r
    |  d8[( bes c  a)]

% 130
    | bes4 r
    |  d,8[( bes' a c]
    |  a[  bes)] r4
    |  bes8[( d c es]
    |  cis[  d)] r4
    |  d8[( f es  g)]
    |  e[(  f)] r4
    |  e8[(  f)] r4
    |  e8[(  f)] r4
    | R2\fermataMarkup

% 140
    |   g,8[(\p  es)] r4
    |  c'8[(  as)] r4
    |  f8[(  d) d-. d-.]
    | d4(  es8) r
    |  g8[(\p  es)]  r4
    |  c'8[(  as)] r4
    |  f8[(  d) d-. d-.]
    | d4(  es8) r
    | <g, es'>4\f <bes f'>
    | <bes g'> r

% 150
    | r8  e[\p f d]
    |  es![ as,] bes4
    | <g es'>4\f <bes f'>
    | <bes g'> r8 a'
    | bes4  g8[( f16  es)]
    | es4(  d8) r
    |  bes'8[(\p  g)] r4
    |  e8[(  f) as(\fp  f)]
    |  d[(  es!) g(\fp  es)]
    |  bes2\f

% 160
    | << as ~ { s4 s8 s8_\decresc } >>
    | as2 ~
    | as4( c
    |  bes)\p  r
    | d r
    | R2
    |   g8[(\p  es)] r4 
    |  c'8[(  as)] r4
    |  f8[(  d) d-. d-.]
    | d4(  es8) r

% 170
    | <g, es'>4\f <bes f'>
    | <bes g'> r
    | r8  c'16[-. as-.]  g[(  f) es-. d-.]
    | d4(  es8) r
    | g,4.\f as8\p
    |  bes[-. es-. g-. as-.]
    |  bes[-. g-. bes-. g-.]
    |  bes[-. g-.] r4
    | des4.\f c8\p
    |  e[-. f-. g-. as-.]

% 180
    |  bes[-. g-. bes-. g-.]
    |  bes[-. g-.] r4
    | c,4.\f bes8\p
    |  fis'[-. g-. a-. bes-.]
    |  c[-. a-. c-. a-.]
    |  c[-. a-.] r4
    | R2
    | es'4.(\f  c16[  a)]
    | g4(  fis8[  a)]
    | a4(  g) ~
    | g8 g4 g8
    | des'4.(  bes16[  g)]
    | f4(   e8)[ g]
    | g4(  f)
    | r8  as,![( c  as)]
    | f'4\p r
    | f r
    | es! r
    | es r
    | r8  es8[\f es es]

% 200
    |  es[( as g  a)]
    | bes4 r8 bes ~
    |  bes[ g(  as!) c-.]
    | f,4 r8 bes ~
    |  bes[ g(  as!) c-.]
    | f,4  bes,8[-. bes-.]
    | bes4 r
    | es2(\p
    |  d)
    |  es8[-.\f es-.] es4\p ~

% 210
    | es(  d)
    | c8 r bes r
    | bes r bes r
    |  bes8[-.\f bes-.] bes4\p ~
    | bes2
    | bes' ~
    | bes
    |  as8[-.\f as-.] as4\p ~
    | as(  bes)
    | c8 r bes r

% 220
    | c r as r
    | g4 r
    | R2
    | g2
    |  f8[( \times 2/3 { g16 f es] }  f8[  g)]
    |  as8[-.\f as-.] as4\p ~
    | as(  g)
    |  g8[(  f16)] r  f8[(  es16)] r
    |  es8[(  d16)] r  f8[(  es16)] r
    |  f8[-.\f f-.] f4\p ~

% 230
    | f(  d8[  bes)]
    | bes'2 ~
    | bes
    |  c8[-.\f c-.] f4\p ~
    | f(  es)
    | c8 r bes r
    | c r as r
    | <g bes>\f <g bes>4 \slurDown \tieUp <g bes>8( ~
    | <as bes>) <as bes>4 <as bes>8( ~
    | <g bes>) <bes, g'>4 \tieDown \slurUp <bes g'>8( ~

% 240
    | <bes as'>) <bes as'>4 <bes as'>8( ~
    | <bes g'>) <g' bes>4 \slurDown \tieUp <g bes>8( ~
    | <as bes>) <as bes>4 <as bes>8( ~
    | <g bes>) <bes, g'>4 \tieDown \slurUp <bes g'>8(( ~
    | <bes as'>) <bes as'>4 <bes as'>8 \slurNeutral \tieNeutral
    |  g'16[( f es f]  g[ as bes  c)]
    |  des[ c bes as]  g[ f es des]
    | c8 es4 es8 ~
    | es es4 es8
    |  es[ es es es]

% 250
    |  d[ d d d]
    | es4 bes'\p\tenuto^ \markup{\italic "ten."}
    | r bes\tenuto
    | r as\tenuto
    | r ges'\tenuto
    | r g!\tenuto
    | r as,\tenuto
    | g r
    |  g,4(\p   as8[ bes]
    | c4  d8[  es)]

% 260
    | f2(
    |  bes,)
    | g4(  as8[ bes]
    |  c4) es ~
    | es8 bes4(  as8)
    | g4 r
    | g'4(  as8[ bes]
    | c4  d8[  es)] 
    | f2(
    |  bes,)

% 270
    | g4(  as8[ bes]
    |  c4)  es ~
    | es8 bes4(  as8)
    | g4 r
    |  g'8[( es f  d)]
    | es4 r
    |  g,8[( es f  d)]
    | es4 r
    |  g,8[( es' d f]
    |  d[  es)] r4

% 280
    |  es8[( g f as]
    |  fis[  g)] r4
    |  g8[( bes as c]
    |  a[  bes)] r4
    |  g8[(  as!)] r4
    |  g8[(  as)] r4
    |  fis8[(  g)] r4
    | r  ges8[(  es)]
    | r4  d8[(  f)]
    | r4  ges8[(  a,)]

% 290
    | r4  c8[(  bes)]
    << \rallentando {
    | es'[(\<  d)] r4
    | es8[(\<  d)] r4
    | R2\fermataMarkup
    | e8[(\< f)] r4
    | e,8[(\<  f)]\! r4 
    } >>
    | R2\fermataMarkup

    \break

    |   g8[(\p   es!)] r4
    |  c'8[(  as)] r4
    |  f8[(  d) d-. d-.]

% 300
    | d4(  es8) r
    |  g8[(  es)] r4
    |  c'8[(  as)] r4
    |  f8[(  d) d-. d-.]
    | d4(  es8) r
    |  bes'8[(  g)] r4
    |  es'8[(  c)] r4
    |  as8[(  f) f-. f-.]
    | f4(  bes8) r
    |  bes8[(  g)] r4

% 310
    |  es'8[(  c)] r4
    |  as8[(  f) f-. f-.]
    | es4 r
    |  bes'8[(  g)] r4
    |  c8[(  as)] r4
    |  f'8[(  d!) d-. d-.]
    | d4(  es8) r
    |  bes8[(  g)] r4
    |  c8[(  as)] r4
    |  f'8[(  d!) d-. d-.]

% 320
    | es4 r
    |  des,8[(  bes)] r4
    |  es8[(  c)] r4
    |  as'8[(  f) f-. f-.]
    |  bes8.[( c32 as]  g8) r
    |  des8[(  bes)] r4
    |  es8[(  c)] r4
    |  as'8[(  f) d-. d-.]
    | es4 r
    |  as'8[(  f) d-. d-.]

% 330
    | es r r4
    |  as,8[(  f) d-. d-.]
    | es r r4
    | R2*2
    | bes'8\pp r r4
    | es8 r r4
    | bes8 r r4
    | g8 r r4
    | <d bes' f'>8\f r r4

% 340
    | <es bes' g'>8 r r4
    | <bes f' d'>8 r r4
    | <bes g' es'>8 r r4
}
