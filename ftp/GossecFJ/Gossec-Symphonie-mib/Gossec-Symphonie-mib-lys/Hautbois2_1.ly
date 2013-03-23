\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Hautbois2 - 1er mvt
\relative c''{
\clef treble
\key ees \major
\time 3/2




R1.
r2 g1(
f2) r r
R1.
d1( e2)
f r r
c'1( d2)
ees r r
g( f ees)
ees4. d8 d2 r
R1.
c2( bes a)
bes r r
\set Score.skipBars = ##t R1. * 2 
%
c2( bes a)
d1.\< ~ 
d2 r\! r
bes'1.\< ~
bes2 r\! r
\set Score.skipBars = ##t R1. * 3 
%
%
d,2 d4 d d d
ees2 d4( c bes ees)
d2( c d)
ees4 r d r c r
bes r r2 r
\set Score.skipBars = ##t R1. * 5 
%
%
%
%
d2-| f!-| r
r8 ees( d ees) r d( c d) r c( bes c)
r bes( a bes) r d( c d) r d( c d)
ees2( d) c
c1( bes2) \repeat volta 2 {
\set Score.skipBars = ##t R1. * 4 
%
%
%
ees2. c4 c c
c2\trill b r
\set Score.skipBars = ##t R1. * 5 
%
%
%
%
f'2( ees d)
ees r r
\set Score.skipBars = ##t R1. * 2 
%
f2( ees d)
ees4 ees8 f ees4-. g-. ees2
r4 ees8 f ees4-. c-. ees2
r4 c8 d c4-. aes-. c2
r4 aes8 bes aes4 aes f' ees
d2 r r
g,4 r ees' r g r
c, r d r ees r
\times 2/3 {\appoggiatura bes'8 aes4( g f)} ees2 d\trill
g,1.\< ~
g2 r\! r
ees'1.\< ~
ees2 r\! r
r4 g-. g-. g-. g-. g-. 
g4. f8 ees2 r
R1.
r2 r4 bes-| ees-| g-|
\times 2/3 {\appoggiatura d8 c4( bes aes)} g2 f }
\alternative { {g2 r r | R1.} 
   {g2 r r } }
\set Score.skipBars = ##t R1. * 3
R1.^\fermataMarkup_\markup{\italic "Segue"} 
\bar "|." 
}
