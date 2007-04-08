celloFirstMov = \notes\relative g {
    \clef bass

    \repeat volta 2 {
        r8
	| g4-\f b a4.( )g8
	| fis4(-\p gis )a ~a8 r
	| a,4-\f c d4. e8
	| fis2-\p g4 ~ g8 r
	| r2 c,4( )b8 r
	| r2 c'4( )b8 r
	| r2 cis,2-\p
	| d4(-#'(italic "cresc.") dis )e r
	| r2 cis-\p
% 10
	| d4^#'(italic "cresc.") d, g r
	| g-\f b a4.( )g8
	| fis4( [)g8 g'] b4( [a8 )g]
	| fis4(-\p )gis a2
	| d, g
	| r8 [e(-\f fis )g] [a a, a'( )b]
	| cis4-\p r d r
	| R1
	| r8 [b,( c cis] [d dis e )fis]
	| g4 r r2
% 20
	| r8 \lowerText [g8(-#'(italic "cresc.") \restoreText fis )e]
          [a,-. a'-.-\f] bes4 ~
	| bes r r8 a8-\f bes4 ~
	| bes r r8 bes(-\fp )a4 ~
	| [a8 bes(-\fp] )a4. [a,8-\p a' a]
	| a4 r r2
	| d,4-\p d d2
	| r8 d,8( )d'4. d,8( )d'4
	| g,4 g g2
	| r8 g( )g'4. g,8( )g'4
	| fis2( )cis
% 30
	| d4( )g, [a16( gis a gis] )a8 r
	| r d-\f r d r [d d] r
	| r d,( )d'4. d,8( )d'4
	| r8 g r g r [g g] r
	| r g,( )g'4. g,8( )g'4
	| fis2(-\p g4 )gis
	| a2( )d4 r
	| \lowerDynamics b,4(-\p a-\f g-\p )gis-\f
	| a2(-\p \restoreDynamics )d,8 r r4
	| [cis''8 cis] cis r [d d] d r
% 40
	| g, r e r a4 r
	| [cis,8 cis] cis r [d d] d r
	| g, r a r [d16( e fis g] [a b cis )d]
	| [c!(-#'(italic "cresc.") b a g] [fis e d )c] [b( c d e] [fis
          g a )b]
	| [a8-\p a a a] [d,16( e fis g] [a b cis )d]
	| [c!(-#'(italic "cresc.") b a g] [fis e d )c] [b( c d e] [fis
          g a )b]
	| [a( g fis e] [d c b )a] [g( a b c] [d e fis )g]
	| a,2(^\f )b8 r g'-\p r
	| a r ais r b r g r 
	| a! r a, r d r b'4-\f ~
% 50
	| b-\p a2-\f a,4-\p
	| d8 r b'2-\fp a4-\f ~
	| a-\p a, d8 r r4
	| r [a'8-.-\pp a-.] d-. r r4
	| [g,,8. g16 gis8. gis16] [a8. a16 b8. b16]
	| a8 r a r d,4 r8
    }

    \repeat volta 2 {
        r8
	| d'4-.-\f fis-. e2 ~
	| e-\p ~ e4 r
	| R1
	| r4 \RaiseSlur dis(-. dis-. )dis-. \restoreSlur
% 60
	| dis2 r
	| e4-\f c! b2 ~
	| b1-\p
	| b4 r r2
	| e4 r r2
	| a,4 r d r
	| r \RaiseSlur g,(-. g-. )g-. \restoreSlur
	| g2 r
	| e4-. c-. g'2 ~
	| g-\p ~ g8 r r4
% 70
	| R1*2
	| [c,8-\f c'-\p c c] [c c c c]
	| [c c c c] [c c c c]
	| [cis,-\f cis'-\p cis cis] [cis cis cis cis]
	| [cis cis cis cis] [cis cis cis cis]
	| [d,-\f d'-\p d d] [d d d d]
	| [d d d d] [d d d d]
	| [dis,-\f dis'-\p dis dis] [dis dis dis dis]
	| [dis dis dis dis] [dis dis dis dis]
% 80
	| e4 r c r
	| b r dis r
	| [e8-\p e e e] [a a b b]
	| [c c a a] [b b b, b]
	| [e e e e] [a a b b]
	| [c c a a] [b b b, b]
	| e r [b-.-\p b] e-. r [b'-. b-.]
	| e-. r [b-. b-.] c-. r r4
	| [a,8. a16 ais8. ais16] [b8. b16 c8. c16]
	| b8 r b r e,4 r
% 90
	|
	\context Staff <
	    \context Voice { g1(-\sf}
	    \context Voice=x { s2 \property Staff.DynamicText
	        \override #'extra-offset = #'(0 . -1.5) s2_\p \property
	        Staff.DynamicText \revert #'extra-offset }
	>
	| )c8 r r4 d2(-\fp
	| )g8 r r4 a2(-\fp
	| [)b8-\p b a a] [g g fis fis]
	| [e e g g] [a a ais ais]
	| [b b a! a] [g g fis fis]
	| [e e g g] [a a a, a]
	| d r [a-.-\p a-.] d-. r [a'-. a-.]
	| d-. r [a-. a-.] b-. r r4
	| [g,8.-\pp g16 g8. g16] [a8. a16 b8. b16]
% 100
	| a8 r a r d,4 r
	| r2 fis'8-. r [e8.(-\trill d32 )e]
	| d4 r a'8-. r [g8.(-\trill fis32 )g]
	| fis4 r r2
	| [d'16(-\f cis d cis] [d cis d )cis] d2 ~
	| [d16( cis d cis] [d cis d )cis] d2 ~
	| d1-#'(italic "calando")
	| d,1
	| g,4-\f b' a4.( )g8
	| fis4(-\p )gis a4 ~ a8 r
% 110
	| a,4-\f c d4.( )e8
	| fis2-\p g4 ~ g8 r
	| r2 c,4( )b8 r
	| r2 c'4( )b8 r
	| r2 cis,2
	| d4(-#'(italic "cresc.") dis )e r
	| d'2(-\pp )c!8 r r4
	| r2 cis,2(
	| )d4^#'(italic "cresc.") d, g r
	| g(^\f )b a4.( )g8
% 120
	| fis4( [)g8 g'] b4( [a8 )g]
	| fis4(-\p )gis a2
	| d,2 g
	| [c,8 c'(-\f b )a] r [d( d, )e]
	| fis4-\p r g r
	| R1
	| r8 [e( f fis] [g gis a b]
	| )c4 r r2
	| r8 [c(-#'(italic "cresc.") b )a] [d,-. d'-.-\f] es4 ~
	| es r r8 d-\f es4 ~
% 130
	| es r r8 es(-\fp )d4 ~
	| [d8 es(-\fp] )d4. [d,8-\p d' d]
	| d4 r r2
	| g,4-\p g g2
	| r8 g,( )g'4. g,8( )g'4
	| c,4 c c2
	| r8 c( )c'4. c,8( )c'4
	| b2( )fis
	| g4( )c, \slurDown [d16( cis d cis] )d8 \slurBoth r
	| r g,-\f r g r [g g] r
% 140
	| r g( )g'4. g,8( )g'4
	| r8 c, r c r [c c] r
	| r c,( )c'4. c8( )c'4
	| b2(-\p c4 )cis
	| d2( )g4 r
	| e,(-\p d-\f c-\p )cis-\f
	| d2(-\p )g,8 r r4
	| [fis'8-\p fis] fis r [g g] g r
	| c, r a r d4 r
	| [fis,8 fis] fis r [g g] g r
% 150
	| c r d r e r r4
	| d8 r e r f r r4
	| e8 r b r c r r4
	| a'8 r r4 r2
	| R1
	| r2 [g16(-\p a b c] [d e fis )g]
	| [f( e d c] [b a g )f] [e(-#'(italic "cresc.") f g a] [b c d )e]
	| [d( c b a] [g f e )d] [c( d e f] [g a b )c]
	| b8 r r4 [c16(-\f b a g] [f e d )c]
	| d2 [e16( fis! g a] [b cis dis )e]
% 160
	| a,2( )d,8 r fis-\p r
	| g r c! r d r dis r
	| e r fis, r g r c, r
	| d r d r g, r e'4-\f ~
	| e4-\p d2-\fp d,4
	| g8 r e''2-\fp d4-\f ~
	| d-\p d, g r
	| r [d8-. d-.] g-. r r4
	| r [d'8-. d-.] e-. r r4
	| [c,8.-\pp c16 cis8. cis16] [d8. d16 e8. e16]
% 170
	| d8 r d r g,4 r8
    }
}





