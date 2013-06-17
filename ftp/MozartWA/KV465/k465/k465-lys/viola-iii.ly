\version "2.16.0"

violaThirdMov =  \relative c' {
    \key c \major
    \clef alto

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 8)

    \repeat volta 2 {
	r4
	| R2.
	| c4\p c c
	| c c c
	| b r  b8[\f g]
	|  c[ g d' g, e' g,]
	| f'4 r r
	| R2.*3

% 10
	|  d8[(\f cis c a b  g)]
	| a4 a' a
	| a,2.(\f
	|   g4)\p r r
	| g r r
	| d'' d d
	| g, r g,
	| g r fis
	| g r g
	| g r fis

% 20
	| g r
    }

    \repeat volta 2 {
         fis'8[(\f g]
	|  gis[ a bes a g  e)]
	| d4 d d g g g
	| bes,2.
	| d2(\p  e4)
	| f <a, f'> <a f'>
	| <a e'> <a e'> <a e'>
	| d2. ~
	| d4 r r

% 30
	| c2. ~
	| c4 r r
	| f2(  cis4)
	| d2(  e4)
	| f(  d) d
	| d r  b8[( c]
	|  cis[ d e d c  a)]
	| b4 r  b'8[( c]
	|  cis[ d e d c  a)]
	| b4 r r

% 40
	| r r  fis8[(\f g]
	|  gis[ a bes a g  e)]
	| d4 d d
	| d r  b8[ g]
	|  c[ g d' g, e' g,]
	| f'4 r r
	| R2.*3
	|  a8[(\f gis g e fis  d)]

% 50
	| g,4 g' g
	| a,2.\sf ~
	|  a4\p r r
	| c r r
	| g' g g
	| c, r c
	| c r b
	| c r c
	| c r b
	| c r c\f

% 60
	| a r f
	| e r  bes'8[(  a)]
	|  a[(  g) g(  f) f(  e)]
	| e4 r
    }

    \key c \minor

    \repeat volta 2 {
        r4
	|  es'8[(\p  c) es es es es]
	|  es[(  c) es es es es]
	|  es[(\f  c) es es es es]
	|  d[(  b) d d d d]
	|  d[(\p  b) d d d d]
	|  d[(  g,) d' d d d]

% 70
	|  b[(\f  g) b b b b]
	| c4 r r
	| des2(\p  c4)
	| g2(  as8[  c)]
	| des4 des(  c8[  as)]
	| g4 g(  as8[  c)]
	|  bes[(\f  g) es' es es es]
	|  es[(  bes) g' g g g]
	|  g[( es d es f  as)]
	| g4 r
    }

    \repeat volta 2 {
        r4

% 80
	|  g8[(\p  e) g g g g]
	|  e[(  g,) bes bes bes bes]
	|  e,[(\f  g) e e e e]
	|  f[(  as) c c c c]
	|  a'[(\p  c,) a' a a a]
	|  fis[(  a,) c c c c]
	|  fis,[(\f  a) fis fis fis fis]
	| g4 r r
	| d'(\p  b)  c8[(  es)]
	| d4(  b)  c8[(  es,)]

% 90
	| d4(  b')  c8[(  es)]
	| d4(  b)  d8[(  b)]
	|  c[(  g) c c c c]
	|  es[(  c) g' g g g]
	|  a[(\f  fis) a a a a]
	|  g[(\p  d) b' b b b]
	|  d,[(  f!) as! as as as]
	|  as[(  b,) d d d d]
	|  d[(\f  b) d d d d]
	|  des[(  g,) c c c c]

% 100
	| c2.\p ~
	| c2(  d!4)
	| es4 r d(
	|  c) r \bar "|."
    }
}
