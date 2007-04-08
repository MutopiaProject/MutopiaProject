celloSecondMov = \notes \relative f {
    \key f \major
    \time 6/8
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	f8-\p r f bes,4.
	| c( )f,8 r r
	| R2.
	| f'8 r f bes,4.
	| c( )f,8 r r
	| R2.
	| r8 r16 [f(-\f a )c] f8 r16 [f(-\p e )e]
	| g4 g,8 c r r
    }

    \repeat volta 2 {
	c'8-\p r c g4.

% 10
	| [c,8(-\f es )g] c, r r
	| fis4.(-\p )g8 r r
	| es4.(-\pp )d8 r r
	| r4 r8 r r16 [d,(-\mf fis )a]
	| d8 r r e-\p r r
	| f r f bes,4.
	| c( )f,8 r r
	| R2.
	| f'8-\p r f bes,4.
	| c( )f,8 r r

% 20
        | R2.
	| r8 r16 [f(-\f a c] )f8 r16 [a-.-\p a( )bes]
	| bes8 r16 [bes-. bes( )b] b8 r16 [b-. b( )c]
	| c4. c,
	| f8 r r r4 r8
	| r r16 [cis(-\f d )b] c4 c,8
    }

    \alternative {
        {
	    | f r r f'-\p r r
	}

	{
	    | f r r f'-\p r r
	}
    }

    | [f'-. f-. f-.] f-. r r
    | [c-. c-. c-.] c-. r r

% 30
    | [des-. des-. des-.] des-. r r
    | [c-. c-. c-.] c-. r16 [c(-\f es g]
    | )c8 r16 [c,( es g] )c8 r16 [c,( es g]
    | )c8 r16 [c,( f )as] b,8 r16 [g'( b )g]
    | c8 r as-\p f r g
    | [c, c, c] c r r
    | as'2. ~ \LowerText \LowerDynamics
    | as4. as_\cresc ~
    | as2.-\p ~
    | as4. as4._\cresc ~

% 40
    | as2.-\p ~
    | < { as2. } \context Voice=x { s8 s8_\cresc } >
      \restoreDynamics \restoreText
    | des8-\mf r des es r es, 
    | as r r r4 r8
    | [f'-.-\p f-. f-.] f-. r r
    | [es-. es-. es-.] es-. r r
    | [des-. des-. des-.] des r r
    | [c-. c-. c-.] c-. r16 [c(-\f e! )g]
    | c8 r16 [c,( e )g] c8 r16 [c,( e )g]
    | \lowerDynamics c8 r16 [c,( e )g] c8 r16 [c,,(-\p e )g]
      \restoreDynamics

% 50
    | c8 r r r4 r8
    | r4 r8 r r16 [c( e )g]
    | [c8(-._\cresc c-. )c-.] c4.
    | f,8-\p r f bes,4.
    | c( )f,8 r r
    | R2.
    | f'8 r f bes,4.
    | c( )f,8 r r
    | R2.
    | r8 r16 [f(-\f a )c] f8 r16 [f(-\p e )a]

% 60
    | g4 g,8 c r r
    | c'-\p r c g4.
    | [c,8(-\f es )g] c, r r
    | fis4.(-\p )g8 r r
    | es4.(-\pp )d8 r r
    | r4 r8 r r16 [d,(-\mf fis )a]
    | d8 r r e!-\p r r
    | f!8-\p r f bes,4.
    | c( )f,8 r r
    | R2.

% 70
    | f'8 r f bes,4.
    | c( )f,8 r r
    | R2.
    | r8 r16 [f(-\f a )c] f8 r16 [a-.-\p a( )bes]
    | bes8 r16 [bes-. bes( )b] b8 r16 [b-.-\mf b( )c]
    | c4. c,
    | f8 r r r4 r8
    | r8 r16 [cis(-\f d )b] c4 c,8
    | f r r f'-\p r r
    | a r r bes r r

% 80
    | b-\mf r r r r16 [d,(-\f b )d]
    | f8 r r r4 r8
    | r4 r8 r r16 \LowerDynamics [e,(-\f c )e]
    | f8 r r c''4.(-\p
    | )f8 r r c,4.(
    | )f8 r r r4 r8
    | r4 r8 r8 r16 [f,(-\p a )c] \restoreDynamics
    | f8 r r r4 r8
}
