celloSecondMov = \notes \relative bes, {
    \key bes \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	r4 \slurDown \stemUp \lowerDynamics bes(-\f \restoreDynamics c
	| d c )bes \stemBoth \slurBoth
	| a( )f a'-\sf
	| bes( d )fis,-\sf
	| g( bes )d,
	| es( c )f!
	| d( )f f
	| bes f bes,
    }

    \repeat volta 2 {
	| r4 g'( a

% 10
	| bes a )g
	| r e( bes'
	| a g )f
	| r g(-\p )f
	| e2( )f4
	| bes( )c c,
	| f f, r
	| r a'( )bes
	| f f, r
	| r \lowerDynamics a(-\f \restoreDynamics )bes

% 20
	| f f' r
	| r4 \slurDown \stemUp \lowerDynamics bes,( \restoreDynamics c
	| d c )bes \stemBoth \slurBoth
	| a( )f a'-\sf
	| bes( d )fis,-\sf
	| g( bes )d,-\sf
	| es( f! )fis
	| g( )f! f,
	| bes f' bes
    }

    \repeat volta 2 {
        | bes,4_#'(columns (italic "sempre ") (dynamic "p")) r r

% 30
	| bes r r
	| es2( )e4
	| f f, bes
	| bes'2( a4
	| g f )e
	| f r r
	| c,(-\sfp )c' d
	| bes g c
	| f,4 r r
    }

    \repeat volta 2 {
        | g2-\sf r4

% 40
        | g2-\sf r4
	| ges'4(-\p )f r
	| ges( )f r
	| R2.*2
	| c2.
	| es4(_\cresc d )a
	| bes-\p r r
	| bes r r
	| as'2( )g4

% 50
	| d( bes )es
	| r b'( )c8 r
	| r4 a( )bes!8 r
	| R2.
	| f,4(-\f )es'' es-.
	| es( )d r
	| f,-\p f f
	| bes, d g
	| es c f
	| d bes g'
	| es c f
	| bes,4 r r
    }
}
