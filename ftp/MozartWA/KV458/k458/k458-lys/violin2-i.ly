\version "2.16.0"

violinIIFirstMov =  \relative d'' {
    \key bes \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	  d8-.-\parentF
	|  d[(  bes) bes-.]  bes[(  f) f-.]
	| f4(  bes8) a4 bes8
	| c4 r8 c,4.
	| f4(  bes8) a4 d8
	|  d16[( es  d8) bes-.]  bes16[( c  bes8) f-.]
	| f4(  bes8) a4 bes8
	| c4 r8 c,4.
	|  bes8[ bes16( a bes a]  bes4) f'8\p
	| g4(  f8)  es8.[^\trill d16 es8]

% 10
	|  f[( a  bes)] f4.
	| <c a'>2.\f
	| <d bes'>4. ~ <d bes'>4 f8\p
	| g4(  f8)  es8.[^\trill d16 es8]
	|  f[-. a(  bes)] f4.
	| \set doubleSlurs = ##t
	  <es c'>2.(\f
	| <d bes'>8) r r <es c'>4.(\p
	| <d bes'>8) r r <es c'>4.(\pp
	| <d bes'>8)[ bes''-. bes-.] r  g[-. g-.]
	  \set doubleSlurs = ##f
	| r  d[-. d-.] r  e[-. e-.]

% 20
	| r  c,[( es!]  d[ c  bes)]
	|  a[( c es]  d[ c  bes)]
	| a r bes(  a) r bes(
	|  a) r bes'(  a) r bes(
	|   a)[  a(-. a-.]  a[-. a-.  a)-.] 
	| a4 r8 r4 r8
	| r4 r8 r r f\f
	|  f[(  d) d-.]  d[(  bes) bes-.]
	| bes4(  d8) c4 d8
	|  es16[( f  es8) c-.]  c16[( d  c8) a-.]

% 30
	| a4(  es'8) d4 fis8(
	|  g4.) d4(  bes'8)
	| bes4.(  a) ~
	| a(  g) ~
	| g(  f)
	| f \grace { bes32[(  c)] } d8[-. c-. bes-.]
	| a4(  g8) ~ g4(  bes8)
	|  a[( c  a)]  a[( g  f)]
	|  f[(  e)] bes'4\fp  a8[(  g)]
	|  g[(  f)] a4\fp  g8[(  f)]

% 40
	|  f[(  e)] bes'4\fp  a8[(  g)]
	|  g[(  f)] a4\fp r8 f
	| e4. r8  a[-.\p f-.]
	|  c'16[( d c d  c8)] r4 r8
	| R2.*2
	|  c16[( d c d  c8)] r4 r8
	| << { e,4.(  f) g( f | g  f) } \\ { g,2.\f | g ~ | g } >>

% 50
	| g'4. c\fp ~
	| c8 r r bes r r
	| d, r r g r r
	|  f[(\f  bes) a-.] \grace a16( g8)[ f-. e-.]
	| f4 r8  f[-.\p g-. a-.]
	|  c,16[(\fp d c d  c8)]  f[-. g-. a-.]
	|  c,16[(\fp d c d  c8)]  f[-. g-. a-.]
	|  c,16[(\fp d c d  c8)]  f16[(\fp g f g  f8)]
	|  g16[(\fp a g a  g8)]  c16[(\fp d c d  c8)]
	| r8  d[-. c-.] \grace c16 bes8[-. a-. g-.]

% 60
	| f4 r8 r4 r8
	| bes4(\fp  a8) r4 r8
	| bes4(\fp  a8) r4 r8
	| g4(\fp  f8) c'4(  bes8)
	|  g16[( a g a  g8)]  c16[( d c d  c8)]
	| r8  d[-. c-.] \grace c16 bes8[-. a-. g-.]
	| f4 r8 r4 r8
	|  g16[(\f a g a  bes8)]  e,16[( f e f  g8)]
	| bes'4(  a8) \grace a16 g8[-. f-. e-.]
	| f4 r8 r4 r8

% 70
	|  g,16[( a g a  bes8)]  e,16[( f e f  g8)]
	| bes,2.(\fp
	|  es!)
	| f ~
	| f4.(  as)
	| a!8 r r r4 r8
	| c,4.(  e)
	| f r8 r c'\f
	| d4(  c8)  bes8.[^\trill a16 bes8]
	| b4(  c8) a4(\p  es!8)

% 80
	| d4.(  bes)
	| a4. r8 r cis'\f
	| d4(  c8)  bes8.[^\trill a16 bes8]
	| b4(  c8) \grace { c32[ d] } es!8.[ d16 c8]
	| bes!4\p r8 bes4 r8
	| a4 r8 a4 r8
	| bes4_ \markup{\italic "calando"} r8 bes4 r8
	| a4 r8 a4 r8
	| bes4 r8 bes4 r8
	| a4\pp r8 a'4 r8

% 90
	| a4 r8 r r
    }

    \repeat volta 2 {
        r8
	| c,,2.\p ~
	| c ~
	| c ~
	| c ~
	| c ~
	| c ~
	| c ~
	| c4 r8 r4 r8
	|  a'8[( c, f]  a[ f  c')]

% 100
	|  a8[( c, f]  a[ c  a)]
	|  bes[( g  e)]  e[ e e]
	|  e[( d e]  f[ c  a')]
	|  a8[( c, f]  a[ f  c')]
	|  a8[( c, f]  a[ c  a)]
	|  e[( g  e)]  g[(  bes) bes]
	|  as[ c,-. c-.] c-. r r
	| r  f[-. f-.] f-. r r
	| r  as[-. as-.] as-. r r
	| r  c[ c] r  f,[ f]

% 110
	| r  f[ f] f r r
	| r  b[ b] b r r
	| r  d[ d] d r r
	| r  f[ f] r  d[ d]
	| r  c,16[( b d c]  es8) r r
	| r  es16[( d f es]  g8) r r
	| r  c16[( b d c]  es8) r r
	| es4.(  g,)
	| fis8 r r r  fis16[( e g fis]
	|  a8) r r r  a16[( g bes a]

% 120
	|  c8) r r r  a'16[( g bes  a)]
	| c4.(  c,)
	| bes( des
	| c  bes)
	| as(  es)
	| d(  as')
	|  g16[ es bes es g es]  as[ f bes, f' as f]
	|  g[ es bes es g es]  as[ f bes, f' as f]
	| es4 r8 r4 r8
	| es16[(-\parentF f es f  es8)]  c16[( d c d  c8)]

% 130
	| a!4. c'
	| bes g'
	| f a
	| bes  bes,16[( c bes c  bes8)]
	| a r r r4 r8
	| r4 r8  c[(\p a  c)]
	| es! r r  a[( f a]
	|  c) r r r r d,8-.-\parentF
	|  d[(  bes) bes-.]  bes[(  f) f-.]
	| f4(  bes8) a4 bes8

% 140
	| c4 r8 c,4.
	| f4(  bes8) a4 d8
	|  d16[( es  d8) bes-.]  bes16[( c  bes8) f-.]
	| f4(  bes8) a4 bes8
	| c4 r8 c,4.
	|  bes8[ bes16( a bes a]  bes4) f'8\p
	| g4(  f8)  es8.[^\trill d16 es8]
	|  f[( a  bes)] f4.
	| <c a'>2.\f
	| <d bes'>4. ~ <d bes'>4 f8\p

% 150
	| g4(  f8)  es8.[^\trill d16 es8]
	|  f[-. a(  bes)] f4.
	|

	% Bar 115 is not present in the Breitkopf & Haertel score,
	% but it is likely to be a mistake (see the Philips recording
	% of this movement with Quartetto Italiano).

	| \set doubleSlurs = ##t
	  <es c'>2.(\f
	| <d bes'>8) r r <es c'>4.(\p
	| <d bes'>8) r r <es c'>4.(\pp
	| <d bes'>8)[ bes''-. bes-.] r  g[-. g-.]
	  \set doubleSlurs = ##f
	| r  d[-. d-.] r  e[-. e-.]
	| r  c,[( es!]  d[ c  bes)]
	|  a[( c es]  d[ c  bes)]
	| a r bes(  a) r bes(
	|  a) r bes'(  a) r bes(

% 160
	|   a)[  a(-. a-.]  a[-. a-.  a)-.] 
	| a4 r8 r4 r8
	| r4 r8 r r f\f
	|  f[(  d) d-.]  d[(  bes) bes-.]
	| bes4(  d8) c4 d8
	|  es16[( f  es8) c-.]  c16[( d  c8) a-.]
	| a4(  es'8) d4 g'8-.
	|  g[(  es) es-.]  es[(  g,) g-.]
	| bes4(  es8) d4 e8
	|  f16[( g  f8) d-.]  d16[( es!  d8) f,-.]

% 170
	| f4(  f'8) es4 b8(
	|  c4.) g4(  es'8)
	| es4.(  d) ~
	| d(  c) ~
	| c(  bes)
	| c8 r r  g[( f  es)]
	| d4(  c8) ~ c4(  es8)
	|  d[( f  d)]  d[( c  bes)]
	|  bes[(  a)] es'4\fp  d8[(  c)]
	|  c[(  bes)] d4\fp  c8[(  bes)]

% 180
	|  bes[(  a)] es''4\fp  d8[(  c)]
	|  c[(  bes)] d4\fp r8 bes
	| a4. r8  d8[-.\p bes-.]
	|  f16[( g f g  f8)] r4 r8
	| R2.*2
	|  f16[( g f g  f8)] r4 r8
	| a,4.(\f bes
	| c bes
	| c  bes)

% 190
	| c c'4(\fp  a16[ c]
	|  bes8) r r bes r r
	| bes r r f r r
	|  f[(\f  es') d-.] \grace d16 c8[-. bes-. a-.]
	| bes4 r8  bes[-.\p c-. d-.]
	|  f,16[(\fp g f g  f8)]  bes8[-. c-. d-.]
	|  f,16[(\fp g f g  f8)]  bes8[-. c-. d-.]
	|  d,16[(\fp es d es  d8)]  g16[(\fp as g as  g8)]
	|  c16[(\fp d c d  c8)]  f16[(\fp g f g  f8)]
	| r8  g[-. f-.] \appoggiatura f16 es8[-. d-. c-.]

% 200
        | bes4 r8 r4 r8
	| es4(\fp  d8) r4 r8
	| es4(\fp  d8) r4 r8
	| as4(\fp  g8) bes4(\fp  a8)
	|  d,16[(\fp es d es  d8)]  f16[(\fp g f g  f8)]
	| r8  g[-.\p f-.] \appoggiatura f16 es8[-. d-. c-.]
	| bes4 r8  bes'16[(\f c bes c  d8)]
	|  c16[( d c d  es8)]  a,16[( bes a bes  c8)]
	| es4(  d8) \grace d16 c8[-. bes-. a-.]
	| bes4 r8 r4 r8

% 210
	|  c,16[( d c d  es8)]  a,16[( bes a bes  c8)]
	| es2.(\fp
	|  as)
	| bes(
	|  b4.) des(
	|  d!8) r r r4 r8
	| f,4.(  a)
	| bes r8 r f\f
	| g4(  f8)  es8.[^\trill d16 es8]
	| e4(  f8) d4(\p  as8)

% 220
	| g4.(  es')
	| d r8 r fis'8\f
	| g4(  f!8)  es8.[^\trill d16 es8]
	| e4(  f8) \grace { d32[(  es)] } f8.[ es16 d8]
	| c4\p r8 c4 r8
	| bes4 r8 d4 r8
	| g8 r r es r r
	| d r r bes r r
	| g r r es r r
    }

    \alternative {
        {
	  | d8 r r d' r r
	  | \set Timing.measureLength = #(ly:make-moment 5 8)
	    d4 r8 r r
	}

	{
	  | \set Timing.measureLength = #(ly:make-moment 6 8)
	    d,!8 r r d' r r
	  | d4 r8 r4
	}
    }

      r8
    | as,4\f r8 b'4 r8
    | b4 r8 r4 r8
    | R2.*2
    | <g bes!>2.\p ~
    | <g bes>
    | a4 r8 r4 r8
    | r r bes\f  bes[(  g) g-.]
    |  g[(  es) es-.] es4(  c'8)

% 240
    | c4(  a8)  a[(  f) f-.]
    |  f[(  d) d-.] d4(  bes'8)
    | bes4(  g8)  g[(  es) es-.]
    |  es[ c es]  f[ d f]
    |  g[ es g]  a[ f a]
    | bes4 r8 r r bes
    |  bes[(  g) g-.]  g[(  es) es-.]
    | es4(  g8)  g[(  a) a-.]
    |  a[(  f) f-.]  f[(  d) d-.]
    | d4(  f8)  f[(  g) g-.]

% 250
    |  g[(  es) es-.] es4 es8
    |  es[(  c) c-.]  c[(  a) a-.]
    | ges'4 r8 g4 r8
    | bes4.(\p ~  bes8[ c  cis)]
    | d4.( ~  d8[ c!  a)]
    |  bes8[-. d,-. bes-.]  f'16[( g f g  f8)]
    | r8  bes[-. d-.]  f,16[( g f g  f8)]
    | r8  d[-. bes-.]  f'16[( g f g  f8)]
    | r8  bes[-. d-.]  f,16[( g f g  f8)]
    | <f d'>\f r r <bes g'> r r

% 260
    | r  es[(\p  c)] r  es,[(  c)]
    | f4. <c a'>(
    | <d bes'> <c a'>)
    | <d bes'>8[ <d bes'> <d bes'>] <a' c>[ <a c> <a c>]
    | <bes d>[ <bes d> <bes d>] <a c>[ <a c> <a c>]
    |  bes16[( c bes c  d8)]  g,16[( a g a  bes8)]
    |  d,16[( es d es  f8)]  c16[( d c d  es8)]
    | <bes' bes'>16[\f <bes bes'> <bes bes'> <bes bes'> <bes bes'>
      <bes bes'>] <bes g'>[ <bes g'> <bes g'> <bes g'> <bes g'> <bes
      g'>]
    | <bes f'>[ <bes f'> <bes f'> <bes f'> <bes f'> <bes f'>] <es, a>[
      <es a> <es a> <es a> <es a> <es a>]
    | <d bes'>4. r8 r d

% 270
    | d4(  as'8) g4 b8
    |  c4 r8 r4 r8
    |  d,16[(  f d f d f]  d[ f d f es  f)]
    |  d8[ f\p f] f r r
    | r <f a>[ <f a>] <f a> r r
    | r  d16[( c es d]  f8) r r
    | r  c16[( bes d  c)] es8  c'16[( d es  c)]
    | d4 r8 <bes, f' d'>4\f r8
    | bes4 r8 r4 r8
}
