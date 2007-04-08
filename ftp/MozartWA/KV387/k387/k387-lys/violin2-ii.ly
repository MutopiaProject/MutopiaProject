violinIISecondMov = \notes\relative g' {
    \repeat volta 2 {
        r4 r d'-\p
	| r r g,
	| R2.*5
	| g2.-\f ~
	| g4.( [e8 d )c]
% 10
	| [b( )a] [b'( g a )fis]
	| r4 r b-\p
	| r r g
	| b(-\p c!-\f cis-\p
	| d-\f dis-\p )e-\f
	| a,(-\p bes-\f b-\p
	| c!-\f cis-\p )d!-\f
	| g,( c!-#'(italic "cresc.") b
	| a g )fis
	| d'-\f [cis8( b a )g]
% 20
	| fis2( )e4
	| [fis8(-\p a d, a' fis )a]
	| g4 r r
	| [cis,8( a' a, a' g )a]
	| fis4 r r
	| [fis8( a d, a' d )a]
	| b2(-#'(italic "cresc.") )cis4
	| d-.-\f b-. g-.
	| fis r r
	| e-\p e e
% 30
	| d r r
	| [e'8( cis e cis e )cis]
	| b4 r r
	| [b8(-\f d b d b )d]
	| cis2( )d4
	| b a g
	| [fis8-. d'(-\p cis c b )bes]
	| a2. ~
	| a4 r r
	| [cis,8( d e fis g )fis]
% 40
	| fis4 r r
    }

    \repeat volta 2 {
        r4 r fis-\p
	| r r fis
	| R2.*2
	| fis4( a )c!
	| fis2. ~
	| fis2.-#'(italic "cresc.")
	| e4(-\f dis )e
	| c!-\p r a
% 50
	| g r r
	| cis(-\f e )g
	| d( e )d
	| b r g
	| fis r r
	| bes-\trill r8. c!16 bes4
	| a r r
	| bes,-\trill r8. c16 bes4
	| a r r
	| r8 [a'8(-\pp bes a bes )a]
% 60
	| bes2. ~
	| [bes8-#'(italic "cresc.") b( c b c b]
	| )c2.-\f
	| r4 r b-\p
	| r r g
	| b(-\p c-\f cis-\p
	| d-\f dis-\p )e-\f
	| a,(-\p bes-\f b-\p
	| c!-\f cis-\p )d!-\f
	| g, r r
% 70
	| g'2 ~ [g8( a16 )g]
	| fis4( e! )d ~
	| d( c )b
	| a,( )b c
	| [b8(-\p d g, d' b )d]
	| c4 r r
	| [c8( d a d c )d]
	| b4 r r
	| d'2(-\f [b8. )a16]
	| a4( c )e
	| [e8( d c b a )b]
% 80
	| g4 r r
	| [a8(-\p fis a fis a )fis]
	| g4 r r
	| b b b
	| [b8( e dis d cis )c]
	| [b(-\f a g e g )e]
	| d4( fis )g
	| e d c
	| b r r
	| [a'8(-\p b c d e )d]
% 90
	| d4 r r
	| fis,4( g a
	| )g r r
    }

    \key g \minor

    \repeat volta 2 {
        g,4^\f r [bes8.(-\trill a32 bes]
	| )d4 r [g8.(-\trill fis32 g]
	| )bes4 r g
	| cis( )d r
	| R2.
	| c,2(-\p )cis4
% 100
	| d( fis )a
	| \grace { \cue a16 \noCue } g4-. fis-. r
	| g,4^\f r [bes8.(-\trill a32 bes]
	| )d4 r [g8.(-\trill fis32 g]
	| )bes4 r g
	| cis( )d r8. d,16
	| d'4( )es r
	| es,2.-\p ~
	| es ~
	| es(
% 110
	| \lowerText )f!(-#'(italic "cresc.") \restoreText
	| )g
	| a2(-\f )bes4
	| g4 f es
	| d r r
	|
	\context Staff <
	    \context Voice { \voiceOne f'2. ~ | f4 r r }
	    \context Voice=x { \voiceTwo d2. ~ | d4 s s }
	>
	| \oneVoice g,2.(-\p
	| )f4 r r
    }

    \repeat volta 2 {
        R2.
% 120
	| as4( g f
	| es )d b'( ~
	| b )c r
	| r d,( fis
	| a )g r
	| r bes( )g
	| g^-\trill fis r
	| g,4^\f r [bes8.(-\trill a32 bes]
	| )d4 r [g8.(-\trill fis32 g]
	| )bes4 r g
% 130
	| cis( )d r8. d,16
	| b'4( )c! r
	| c,2.-\p ~
	| c ~
	| c ~
	| c ~
	| c
	| \lowerText d-#'(italic "cresc.") \restoreText ~
	| d4 e2-#'(dynamic "sfp") ~
	| e4 f2-#'(dynamic "sfp") ~
% 140
	| f4 fis2-#'(dynamic "sfp")
	| g4(-\f fis )g
	| es d c
	| bes r r
	| cis'2.(
	| )d4 r r
	| \lowerDynamics c,!2.(-\p \restoreDynamics
	| )bes4 r r
    }
}




