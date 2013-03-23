\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Violon1 - 1er mvt
\relative c''{
\clef treble
\key ees \major
\time 3/2




bes4\p aes g2 f
ees ees'1\< ~
ees2\!\>( d\p c)
bes( aes)\prall g4 r
f1\<( g2)\!
aes4.( bes8) c4-.\p c-. c-. c-.
ees,1(\< f2)\!
g4.( aes8) bes4-.\p bes-. bes-. bes-.
\times 2/3 {bes4-.\f g-. ees-.} \times 2/3 {aes4-. f-. d-.} \times 2/3 {g4-. ees-. bes-.}
g'4.( f8) f2 r
\set Score.skipBars = ##t R1. * 6 
%
%
%
%
%
<f bes>1.\< ~
<f bes>2 c'8\p( bes) c( bes) d( c) ees( d)
<f, d'>1.\< ~
<f d'>2 ees'8\p( d) ees( d) f( ees) g( f)
f2 d'4^\markup{\italic "pizz."} c bes a
g f ees d c bes
a bes a g f ees 
d2 r r
\set Score.skipBars = ##t R1. * 2 
%
r8^\markup{\pad-markup #2.0 \italic "arco"} g'-|\p ees( c) r f-| d( bes) r ees-| c( a)
r4 bes r d r f
r ees r ees r d
r c r bes r a
r bes r d r f
r ees r ees r d
r c r bes r a
<d, bes' bes'>2\f <d bes' aes'!> r
R1.
r8 d'\p( c d) r f_\markup{\italic "cresc."}( ees f) r bes( a bes)
\times 2/3 {g4-.\f ees-. c-.} \times 2/3 {f-. d-. bes-.} \times 2/3 {ees-. c-. a-.}
a1( bes2) \repeat volta 2 {
bes1.\<(
b2\!\>) c\p\!( d)
ees2.\f c4-.\p d-. b-.
g'2.\f ees4-.\p f-. d-.
c'2.\f ees,4-.\p ees-. ees-.
ees2\prall d r
ees,1.\< ~
ees2\!\> ees'\!\p( des)
c4 bes aes2 g
g4( f) f2 r
\set Score.skipBars = ##t R1. * 5 
%
%
%
%
aes'4^\markup{\italic "pizz."} bes, g' bes, f' bes,
<bes g'>2 r r4 bes'
g2 r r4 ees
g2 r r4 c,
ees2 r r
r4 f8 g f4 f bes aes
r ees r g r bes
r aes r f r g
R1.
<bes,, ees>1.\<^\markup{\italic "arco"}  ~
<bes ees>2\! f'8\p( ees) f( ees) g( f) aes( g)
<bes, g'>1.\< ~
<bes g'>2\! aes'8\p( g) aes( g) bes( aes) c( bes)
bes1 r2
r r4 bes'-.\p bes-. bes-.
bes4.( g8) bes2 r
r r4 <g, ees'>-|\f <ees bes' g'>-| <ees bes' bes'>-|
\appoggiatura bes''8 aes4 g8 f ees2 d\prall }
\alternative { {ees2 ees, ees | ees1.} 
   {ees'4\p bes bes bes bes bes } }
r g g g g g
r g g g fis fis
g2 g g
g1.^\fermataMarkup_\markup{\italic "Segue"} \bar "|." 
}
