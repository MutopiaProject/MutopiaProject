violaSecondMov = \notes\relative g' {
    \clef alto

    \repeat volta 2 {
        r4 r d-\p
	| r r g,
	| R2.*4
	| b2.-\f
	| c2( )d4
	| e2.
% 10
	| d4 r r
	| r r d-\p
	| r r b
	| R2.
	| b4(-\p c-\f )cis-\p
	| d r r
	| a(-\p bes-\f b-\p
	| )c d(-#'(italic "cresc.") e
	| fis g )a
	| g2(-\f )b4
% 20
	| [a8-. a( gis a g )e]
	| d2.-\p
	| [e8( a gis a g )fis]
	| e2 [cis8.( )d16]
	| [d8( a' gis a g )e]
	| d2( )a4
	| g4(-#'(italic "cresc.") b )e
	| a,-.-\f b-. cis-.
	| d r r
	| cis-\p cis cis
% 30
	| b r r
	| ais ais ais
	| b r r
	| [d8(-\f b d b d )b]
	| e2( )d4
	| g fis e
	| d r r
	| [cis8( d e fis g )fis]
	| [fis-. d'( cis c b )bes]
	| a2. ~
% 40
	| a4 r r
    }

    \repeat volta 2 {
        r4 r a-\p
	| r r a
	| R2.
	| c,4( fis )a
	| c2. ~
	| c
	| b2.-#'(italic "cresc.") ~
	| b-\f
	| a4-\p r fis
% 50
	| e r r
	| g(-\f cis )e
	| a,2.
	| g4 r e
	| d r r
	| g-\p-\trill r8. a16 g4
	| fis r r
	| g,-\p-\trill r8. a16 g4
	| fis r r
	| r8 [fis'8(-\pp g fis g )fis]
% 60
	| g2. ~
	| [g8-#'(italic "cresc.") gis( a gis a gis]
	| )a2.-\f
	| r4 r g-\p
	| r r b,
	| R2.
	| b4(-\p c-\f cis-\p
	| )d r r
	| R2.
	| g4(-\p as-\f a-\p
% 70
	| bes-\f b-\p )c-\f
	| a2 ~ [a8( b16 )a]
	| g4( a )g
	| g,2( )a4
	| g2.-\p
	| [a8( d cis d c )b]
	| a2 [fis8.( )g16]
	| [g8( d' cis d c )a]
	| [b(-\f g' g, g' d )g]
	| e2( )fis4
% 80
	| g-. e-. <c fis-.>
	| <b g'> r [g'8.-\p a16]
	| b4 b b
	| [b8( e dis d cis c]
	| )b4 r r
	| R2.
	| [e,,8(-\f g e g e )g]
	| fis4( a )g
	| c b a
	| g r r
% 90
	| [fis'8(-\p g a b c )b]
	| [b-. g( fis f e )es]
	| d4( cis c
	| )b r r
    }

    \key g \minor

    \repeat volta 2 {
        g4-\f r [bes8.(-\trill a32 bes]
	| )d4 r [g8.(-\trill fis32 g]
	| )bes4 r g,
	| cis( )d r
	| R2.
	| a2(-\p )g4
% 100
	| \property Voice.Slur \override #'attachment-offset = #'((0
          . 1) 0 . -1) fis4( a )d \property Voice.Slur \revert
          #'attachment-offset
	| d-. d-. r
        | g,4-\f r [bes8.(-\trill a32 bes]
	| )d4 r [g8.(-\trill fis32 g]
	| )bes4 r g,
	| cis( )d r8. d,16
	| d'4( )es r
	| g,2.(-\p
	| a
	| )bes
% 110
	| c!(-#'(italic "cresc.")
	| )d
	| es2(-\f )f4
	| es d c
	| bes r r
	| bes( d )f
	| d r r
	| e2.(-\p
	| )d4 r r
    }

    \repeat volta 2 {
        R2.
% 120
	| f4( es! d
	| c b d ~
	| d )c r
	| r fis,( )d
	| d'( )es r
	| r cis( )e
	| d d r
        | g,4-\f r [bes8.(-\trill a32 bes]
	| )d4 r [g8.(-\trill fis32 g]
	| )bes4 r g,
% 130
	| cis( )d r8. d,16
	| b'4( )c! r
	| \lowerDynamics e,2.(-\p \restoreDynamics
	| fis
	| g
	| bes
	| a ~
	| \lowerText )a(-#'(italic "cresc.") \restoreText
	| )bes
	| c ~
% 140
	| c-\f
	| \property Voice.Slur \override #'attachment-offset = #'((0
          . 0) 0 . 2) d4( a )g \property Voice.Slur \revert
          #'attachment-offset
	| c bes a
	| g r r
	| es'( g )bes
	| bes r r
	| a,2.(-\p
	| )g4 r r
    }
}
