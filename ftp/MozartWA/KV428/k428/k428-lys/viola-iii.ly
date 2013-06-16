\version "2.16.0"

violaThirdMov =  \relative g {
    \key es \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	s16 r4
	| g2\f r4
	| as2 r4
	| R2.*2
	| as2\p  f8[(  as)]
	|  as[(  bes)] g4 r
	| es2\f r4
	| f2 r4
	| r r  g'8[(\p  f)]

% 10
	|  f[(  es) es( d es  d)]
	|  c[-. bes-. a-. bes-. c-. a-.]
	|  bes[-. c-. d-. c-. d-. bes-.]
	|  a[-. bes-. c-. bes-. c-. a-.]
	|  bes[-. c-. d-. c-. bes-. g-.]
	|  es'[-. d-. c-. bes-. c-. a-.]
	|  bes[(  f') d( a bes  c)]
	| <bes d>2. ~
	| <bes d>2. ~
	| <bes d>2. ~
	| <bes d>4  g'8[(\f f es  d)]
	|  d[(  c)] bes4 a
	| bes r d\p
	| c r es
	|  d8[ d,-. d-. d-. d-. d-.]
	|  d[(  f) f-. f-. f-. f-.]
	| d4 r
    }

    \repeat volta 2 {
        r4
	| bes'8\p r bes r es r
	| c r bes r r4
	| c8 r bes r bes r

% 30
	| bes r f r r4
	| bes8 r as r c r
	| bes r d r c r
	| c r bes r bes r
	|  bes[-. d( es f g  es)]
	|  d[-. d( es f g  es)]
	| d2 r4
	| g,2\f r4
	| as2 r4
	| r r  c8[(  bes)]

% 40
	|  bes[(  as) as( g as  g)]
	|  g[(  f) f( d f  d)]
	|  d[(  es)] g4 r
	| <es bes'>2\f r4
	| <es as>2 r4
	| a2 r4
	| bes2. ~
	| bes2(\p  as!4)
	|  g8[-. g-. es-. f-. g-. es-.]
	|  as[-. g-. f-. g-. as-. f-.]

% 50
	|  g[-. as-. bes-. as-. bes-. g-.]
	|  f[-. g-. as-. g-. as-. f-.]
	|  g[-. as-. bes-. g-. g-. es-.]
	|  as[-. g-. f-. es-. f-. d-.]
	|  es[( bes' f d es  f)]
	| <es g>2. ~
	| <es g>2. ~
	| <es g>2. ~
	| <es g>4 r es'\f
	| c bes as

% 60
	| g r r8 bes\ff
	|  es,[-. f-. g-. as-. bes(  es)]
	|  bes[-. as-. g-. as-. bes(\sf  es)]
	|  bes[-. as-. g-. as-. bes(\sf  es)]
	|  bes[(  g')]  g[( bes as  g)]
	|  g[(  f)] es4 d
	| es r g\p
	| f r as
	|  g8[ g,-. g-. g-. g-. g-.]
	|  g[(  bes) bes-. bes-. bes-. bes-.]

% 70
	| g4 r
    }

    \break
    \key bes \major

    \repeat volta 2 {
        r4
	| R2.
	| es'2.(\p
	| f
	| es
	|  f)
	| es ~
	| es4( d  c)
	| bes2.\fp
	| g4 r c

% 80
	|  d8[( f d f d  f)]
	|  es[( ges es ges c,  es)]
	|  d[( f d f bes,  f')]
	|  es[( f ges es c  es)]
	| d4 r
    }

    \break

    \repeat volta 2 {
        r
	| R2.
	| bes2.(
	| c
	| bes
	|  c)

% 90
	|  bes8[ d'( cis c bes  a)]
	|  a[(  g) g(  f) f(  e)]
	| f4.( a8  f[ a]
	|  g[ bes g bes e,  g)]
	|  f[( a c b bes  a)]
	|  bes[( c des bes g  e)]
	|  f[( c a c f  c)]
	|   e[(_\cresc  g e g des  bes)]
	|  a[ f'( a bes c d]
	|  c[ bes a g f  es!)]

% 100
	|  d[( bes bes f d  f)]
	|  es[( f es f es  f)]
	|  d[( f d f d  f)]
	|  es[( f es f es  f)]
	| d4 r
    }
}
