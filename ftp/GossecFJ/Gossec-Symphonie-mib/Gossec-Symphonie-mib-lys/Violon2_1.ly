\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Violon2 - 1er mvt
\relative c''{
\clef treble
\key ees \major
\time 3/2




g4( f) ees2 aes,
g g'1\<(
f2\!\>) bes\p\!( aes)
g( f\prall) ees4 r
d1\<( e2\!)
f4.( g8) aes4-.\p aes-. aes-. aes-.
c,1\<( d2\!)
ees4.( f8) g4-.\p g-. g-. g-.
\times 2/3 {bes4-.\f g-. ees-.} \times 2/3 {aes-. f-. d-.} \times 2/3 {g-. ees-. bes-.}
ees4.( d8) d2 r
\set Score.skipBars = ##t R1. * 6 
%
%
%
%
%
<bes d>1.\< ~
<bes d>2 r r
<d bes'>1.\< ~
<d bes'>2 c'8\p( bes) c( bes) d( c) ees( d)
d2 bes'4^\markup{\italic "pizz."} a g f
ees d c bes a g
f g f ees d c
bes2 r r
\set Score.skipBars = ##t R1. * 2 
%
r8^\markup{\italic "arco"} ees'-|\p c( g) r d'-| bes( f) r c'-| a( ees)
d( c d ees f e f g aes! g aes bes)
aes( g fis g) aes( g fis g) g( f e f)
f( ees d ees) ees( d cis d) f( ees d c)
bes( c d ees f e f g aes! g aes bes)
aes( g fis g) aes( g fis g) g( f e f)
f( ees d ees) ees( d cis d) f( ees d c)
<f d'>2\f <bes f'> r
R1.
r8 bes\p( a bes) r d_\markup{\italic "cresc."}( c d) r d( c d)
\times 2/3 {g4-.\f ees-. c-.} \times 2/3 {f-. d-. bes-.} \times 2/3 {ees-. c-. a-.}
a1( bes2) \repeat volta 2 {
d,1.\< ~
d2\!\> ees\p( f)
g2.\f ees4-.\p f-. d-.
ees'2.\f c4-.\p d-. b-.
ees2.\f c4-. c-. c-.
c2\prall b r
c,1\<( des2\!)
<<{c1( bes2)}\\{s2\> s2\!\p s2}>>
aes f' ees
ees4( d) d2 r
 \set Score.skipBars = ##t R1. * 5 
%
%
%
%
f'4^\markup{\italic "pizz."} bes, ees bes d bes
<g ees'>2 r r4 g'
ees2 r r4 c
ees2 r r4 aes,
c2 r r
r4 d8 ees d4 d bes d
r g, r ees' r g
r c, r d r ees
R1.
<g,, ees'>1.\<^\markup{\italic "arco"} ~
<g ees'>2\! r r
<g ees'>1.\< ~
<g ees'>2\! f'8\p( ees) f( ees) g( f) aes( g)
g2 r r
r r4 g'\p-. g-. g-.
g4.( ees8) g2 r
r r4 <g, ees'>-|\f <ees bes' g'>-| <ees bes' bes'>-|
\appoggiatura d'8 c4 bes8 aes g2 f }
\alternative { {ees2 bes bes | bes1.} 
   {ees4\p g g g f f } }
r ees ees ees d d
r c c c c c
<b d>2 <b d> <b d>
<b d>1.^\fermataMarkup_\markup{\italic "Segue"} \bar "|." 
}
