violaSecondMov = \notes \relative f' {
    \key bes \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	f2.-\f ~
	| f4 a,( )bes
	| c( )a c-\sf
	| d( f )a,-\sf
	| bes( d )f,-\sf
	| g( es' )c
	| f2( ~ [f8. )es16]
	| d4 r r
    }

    \repeat volta 2 {
	| d2. ~

% 10
	| d4( fis )g
	| r c,2 ~
	| c4 [f8( )e g( )f]
	| g2.-\p ~
	| [g8 e( g )e] c4
	| bes'( a )g
	| f r [b8.( )c16]
	| c2( )bes!4
	| a2 \lowerText [d,8.(_\cresc \restoreText )cis16]
	| c!2( )bes4

% 20
	| a r r
	| f2.-\f ~
	| f4 a( )bes
	| c( )a c-\sf
	| d( f )a,-\sf
	| bes( d )f-\sf
	| bes,( d )c
	| e! f4..( )es16
	| d4 r r
    }

    \repeat volta 2 {
        | \LowerText [bes8-._#'(columns (italic "sempre ") (dynamic
          "p")) \restoreText f-. bes-. f-. bes-. f-.]

% 30
	| [d'-. f,-. c'-. f,-. bes-. f-.]
	| [bes-. g-. bes-. g-. bes-. g-.]
	| [bes-. f-. a-. f-. bes-. f-.]
	| [f'-. d-. f-. bes,-. d-. c-.]
	| [d-. bes-. d-. bes-. c-. g-.]
	| [a-. f-. f'-. a,-. f'-. a,-.]
	| [bes-.-\sfp g-. bes-. g-. f-. f'-.]
	| [d-. g-. bes,-. g'-. e-. bes-.]
    }

    \alternative {
        {
	    | [a8-. es'!( d c bes )a]
	}

	{
	    | [a8( d f es! d )c]
	}
    }

    \repeat volta 2 {
        | [b8-. g-. b-. c-. d-. c-.]

% 40
	| [b-. g-. b-. c-. d-. b-.]
	| c2 r4
	| bes'!4( )a r
	| R2.
	| f,4( a )f
	| g2.
	| a4(_\cresc b )c
	| [bes!8-.-\p f-. bes-. f-. bes-. f-.]
	| [d'-. f,-. c'-. f,-. bes-. f-.]
	| [d'-. bes-. d-. bes-. es-. bes-.]

% 50
	| [f'-. bes,-. d-. bes-. es-. bes-.]
	| r4 d( )c8 r
	| r4 c( )d8 r
	| R2.
	| [c8-.-\f a-. c-. a-. c-. a-.]
	| f'2( )es4
	| [d8(-\p f d f es )f]
	| [d-. d-. bes'-. f-. d-. f-.]
	| [es-. c-. g'-. es-. c-. a-.]
	| [bes-. d-. f-. d-. bes-. d-.]

% 60
	| [g,-. c-. es,-. c'-. a-. es-.]
    }

    \alternative {
        {
	    | [d8-. d'( f es d )c]
	}

	{
	    | d4 r r
	}
    }
}
