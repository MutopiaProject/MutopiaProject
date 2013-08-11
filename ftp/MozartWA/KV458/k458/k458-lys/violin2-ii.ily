\version "2.16.0"

violinIISecondMov =  \relative d' {
    \key bes \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	 d2(\f  es4
	| f es  d)
	| c2  es'8.[(\sf  d16)]
	| d2  c8.[(\sf  bes16)]
	| bes2( as4\sf
	| g bes  a!)
	| bes2  c8.[(  a16)]
	| bes4 r r
    }

    \repeat volta 2 {
	| bes2( c4

% 10
	| d c  bes)
	| r4  g8[( f e  g)]
	| c2.
	| bes\p ~
	|  bes8[ g( bes g a  f)]
	| d'4( c  bes)
	| a r  d8.[(  es!16)]
	| es2  d8.[(  des16)]
	| c2   f,8.[(_\cresc   e16)]
	| es!2  d8.[(  des16)]

% 20
	| c4 r r
	|  d2(\f  es4
	| f es  d)
	| c2  es'8.[(\sf  d16)]
	| d2  c8.[(\sf  bes16)]
	| bes2(  as4)\sf
	| g( f  a,)
	| des4  d8.[(  bes16) c8.(  a16)]
	| bes4 r r
    }

    \repeat volta 2 {
        |   d8[-._ \markup{ {\italic "sempre "} {\dynamic "p"}}
           bes-. d-. bes-. d-. bes-.]
	|  f'[-. d-. es-. c-. d-. bes-.]
	|  c[-. bes-. c-. bes-. c-. bes-.]
	|  c[-. bes-. c-. a-. d-. bes-.]
	|  d'[-. f,-. d'-. f,-. c'-. d,-.]
	|  bes'[-. d,-. bes'-. d,-. g-. c,-.]
	|  f[-. a,-. a'-. f-. a-. f-.]
	|  g[-.\sfp e-. g-. e-. f-. a-.]
	|  d[-. bes-. d-. bes-. g-. e-.]
    }

    \alternative {
        { |  f8[-. g( f es! d  c)] }
        { |  f8[-. f( as g f  es!)] }
    }

    \repeat volta 2 {
        |  d[-. b-. d-. es-. f-. es-.]

% 40
	|  d[-. b-. d-. es-. f-. d-.]
	| bes'!4(  a) r
	| c,2 r4
	| R2.
	| f4( a  f)
	| bes,2.
	|  c4(_\cresc  d  es)
	|  d8[-.\p bes-. d-. bes-. d-. bes-.]
	|  f'[-. d-. es-. c-. d-. bes-.]
	|  f'[-. d-. f-. d-. g-. es-.]

% 50
	|  as[-. f-. f-. d-. g-. es-.]
	| r4 g ~ g8 r
	| r4 f ~ f8 r
	| R2.
	|  a8[-.\f f-. a-. f-. a-. f-.]
	| c'4(  bes) bes
	| f2(\p  a4)
	|  bes8[-. f-. f'-. d-. bes-. d-.]
	|  g,[-. es-. c'-. bes-. a-. c,-.]
	|  d[-. bes'-. d-. bes-. d,-. bes'-.]

% 60
	|  g[-. es-. g-. es-. c-. a-.]
    }

    \alternative {
        { |  bes8[-. f'( as g f  es)] }
        { | bes4 r r }
    }
}
