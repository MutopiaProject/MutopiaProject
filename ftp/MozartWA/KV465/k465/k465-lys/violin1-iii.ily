\version "2.16.0"

violinIThirdMov =  \relative e'' {
    \key c \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	 e8[(\p f]
	|  fis[ g a g f  d)]
	| c4 c c
	| f f f
	| f, r  b,8[\f g]
	|  c[ g d' g, e' g,]
	| f'4 r  b8[\p g]
	|  c[ g d' g, e' g,]
	|  g'[( fis f d e  c)]
	| e,4\f gis'(  a)

% 10
	| d,, fis'(  g!)
	| a, cis'(  d)
	| d,,2.\sf ~
	|  d8[ e-.\p fis-. g-. a-. b-.]
	|  c[-. d-. e-. fis-. g-. a-.]
	|  b[( c cis d c  a)]
	| g4 r  g,8[(  d')]
	|  d[(  c) c(  b) b(  a)]
	|  a[(  g) g(  d') d(  c)]
	|  c[(  b) b(  a) a(  g)]

% 20
	| g4 r
    }

    \repeat volta 2 {
         fis8[(\f g]
	|  gis[ a bes a g  e)]
	| d4 d d
	| g g g
	| bes, r  cis'8[(\p d]
	|  es[ e f fis g gis]
	|  a4) a a
	| cis, cis cis
	| c!2. ~
	| c4( b  g)

% 30
	| bes2. ~
	| bes4(  a)  f'8[( g]
	|  gis[ a bes a g  e)]
	|  e[( f g f e  cis)]
	|  cis[( d e d c  a)]
	| g2.
	| g
	| g4 g' g
	| g2. ~
	|  g8[(\f fis g f e  f)]

% 40
	|  fis[( g a g f  d)]
	| c4 c c
	| f f f
	| f, r  b,8[ g]
	|  c[ g d' g, e' g,]
	| f'4 r  b8[\p g]
	|  c[ g d' g, e' g,]
	|  g'[( fis f d e  c)]
	| c,4\f e'(  f)
	| a, cis'(  d)

% 50
	| g,, b'(  c!)
	| d,,2.\sf ~
	|  d8[ e-.\p fis-. g-. a-. b-.]
	|  c[-. d-. e-. f!-. g-. a-.]
	|  g[( fis f e f  d)]
	| c4 r  c8[(  g')]
	|  g[(  f) f(  e) e(  d)]
	|  d[(  c) c(  g') g(  f)]
	|  f[(  e) e(  d) d(  c)]
	| c2(  g'4)\f

% 60
	| a2(  b4)
	| c2(  g4)
	| a a   b8[(\trill a16  b)]
	| c4 r
    }

    \key c \minor

    \repeat volta 2 {
        g,4(\p
	|  c) r es(
	|  g) r c(\f
	|  es2)(  d8[ c]
	|  b4) r d(\p
	|  f,) r as(
	|  b,) r  b,(\f

% 70
	|  as'2)(  g8[  f)]
	| es4 r es'\p
	| g,2(  as4)
	| des2(  c8[  as)]
	| g4 g(  as)
	| des4(  es8[ des c  as)]
	| g4(\f bes  es)
	| g( bes  es)
	| bes4.( a8  as[ f]
	|  es4) r
    }

    \repeat volta 2 {
        bes'4(\p

% 80
	|  e,) r g(
	|  bes,) r  e,(\f
	| des'2  c8[ bes]
	|  as4) r c'(\p
	|  fis,) r a(
	|  c,) r  fis,(\f
	| es'2  d!8[ c]
	|  b4) r g'\p
	|  fis8[( g as g es  c)]
	| b4(  d) g

% 90
	|  as8[( g fis g es  c)]
	| b4(  d) r
	| r es(  g)
	| r c(  es)
	| r fis,(  fis')
	| r g(  d)
	| r f!(  b,)
	| r d(  f,!)
	| r b,(\f  b')
	| r bes,!(  bes'!) ~

% 100
	| bes(\p as  g) ~
	| g( f  fis) ~
	| fis( g  b,)
	| c r
    }
}
