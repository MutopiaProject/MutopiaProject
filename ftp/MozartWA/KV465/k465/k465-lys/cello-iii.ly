celloThirdMov = \notes \relative a {
    \key c \major
    \clef bass

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 8)

    \repeat volta 2 {
	r4
	| R2.
	| a4-\p a a
	| d, d d
	| g r [b,8-\f g]
	| [c g d' g, e' g,]
	| f'4 r r
	| R2.*4

% 11
	| [a8(-\f gis g e fis )d]
	| \lowerDynamics fis,2.(-\sf
	| \LowerDynamics )g4-\p r r
	| e' r r
	| R2.
	| r4 r b
	| c r d
	| e r b
	| c r d

% 20
	| g, r
    }

    \repeat volta 2 {
        [fis'8(-\f g]
	| [gis a bes a g )e]
	| d4 d d
	| g g g
	| bes,2. ~
	| bes(-\p
	| )a4 r r
	| r r [fis'8( g]
	| [gis a bes a fis )d]
	| g!4 r [e8( f!]

% 30
	| [fis g a g e )c]
	| f!4 r r
	| R2.*2
	| r4 f( )fis
	| g g, r
	| r b( )c
	| g g' r
	| r b( )c
	| g r r

% 40
	| R2.
	| r4 r \lowerDynamics [b,8(-\f c]
	| [cis d e d c )a]
	| g4 r [b8 g]
	| [c g d' g, e' g,]
	| f'4 r r
	| R2.*4

% 50
	| [g8(-\f fis f d e )c]
	| \lowerDynamics f,2.(-\sf
	| \LowerDynamics )fis4-\p r r
	| g r r
	| R2.
	| r4 r e'
	| f r g
	| a r e
	| f r g
	| c, r e,-\f

% 60
	| f r g
	| a r e
	| f d g
	| c, r
    }

    \key c \minor

    \repeat volta 2 {
        r4
	| r c'-\p r
	| r c r
	| r c-\f c,
	| g' g' r
	| r g-\p r
	| r g, r

% 70
	| r g'-\f g,
	| c c' r
	| R2.*4
	| r4 r bes,(-\f
	| )es r g(
	| )bes r d(
	| )es r
    }

    \repeat volta 2 {
        r4

% 80
	| r des-\p r
	| r e, r
	| r c-\f c,
	| f f' r
	| r es'-\p r
	| r fis, r
	| r d-\f d,
	| g g' g
	| g-\p g g
	| g g, g

% 90
	| g g' g
	| g g, g(
	| )c r es!( % The cautionary flat is not present in the B&H edition
	| )g r c(-\f
	| es2 [d8 c]
	| )b4 r f'(-\p
	| )b, r d(
	| )f, r b,(-\f
	| )as'2( [g8 )f]
	| e2.(

% 100
	| f2-\p g4
	| a2 )as4
	| g r g,
	| c, c'
    }
}
