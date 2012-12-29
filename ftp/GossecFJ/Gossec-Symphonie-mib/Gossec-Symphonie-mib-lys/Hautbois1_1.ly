\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Hautbois1 - 1er mvt
\relative c''{
\clef treble
\key ees \major
\time 3/2




R1.
r2 ees1 ~
ees2 r r
R1.
f,1( g2)
aes r r
ees'1( f2)
g r r
bes( aes g)
g4. f8 f2 r
R1.
ees2( d c)
d r r
\set Score.skipBars = ##t R1. * 2 
%
ees2( d c)
bes'1.\< ~ 
bes2 r\! r
d1.\< ~
d2 r\! r
\set Score.skipBars = ##t R1. * 3 
%
%
f,2 f4 f f f
g2 f4( ees d c')
bes2( a bes)
g4 r f r ees r
d r r2 r
\set Score.skipBars = ##t R1. * 5 
%
%
%
%
bes'2-| aes!-| r
r8 g( f g) r f( ees f) r ees( d ees)
r d( c d) r f( ees f) r bes( a bes)
g2( f) ees
ees1( d2) \repeat volta 2 {
\set Score.skipBars = ##t R1. * 4 
%
%
%
c'2. ees,4 ees ees
ees2\trill d r
\set Score.skipBars = ##t R1. * 5 
%
%
%
%
aes'2( g f)
g r r
\set Score.skipBars = ##t R1. * 2 
%
aes2( g f)
g4 g8 aes g4-. bes-. g2
r4 g8 aes g4-. ees-. g2
r4 ees8 f ees4-. c-. ees2
r4 c8 d c4 c aes' g
f2 r r
ees4 r g r bes r
aes r f r g r
\times 2/3 {\appoggiatura d'8 c4( bes aes)} g2 f\trill
ees1.\< ~
ees2 r\! r
g1.\< ~
g2 r\! r
r4 bes-. bes-. bes-. bes-. bes-. 
bes4. aes8 g2 r
R1.
r2 r4 ees-| g-| bes-|
\times 2/3 {\appoggiatura bes8 aes4( g f)} ees2 d }
\alternative { {ees2 r r | R1.} 
   {ees2 r r } }
\set Score.skipBars = ##t R1. * 3
R1.^\fermataMarkup_\markup{\italic "Segue"} 
\bar "|." 
}
