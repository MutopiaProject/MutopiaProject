\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Basse - 1er mvt
\relative c{
\clef bass
\key ees \major
\time 3/2




ees,2( g b)
c(\<( bes a)\!
bes1.\p ~
bes2 d( ees4) r
bes2\<( aes g\!)
f r r
aes\<( g f\!)
ees r r
bes'-|\f c-| ees-|
bes' bes, r
R1.
f2^\markup{\italic "pizz."} f f
f r r
f f f
f r r
R1.
bes1.\<^\markup{\italic "arco"} ~
bes2 r\! r
bes1.\<
bes2 r\! r
bes r r
\set Score.skipBars = ##t R1. * 5 
%
%
%
%
ees4\p r f r f, r
\repeat unfold 6 {bes r bes r bes r}
%
%
%
%
%
bes2\f d r
R1.
bes4\p r_\markup{\italic "cresc."} bes r bes r
ees2\f f f,
bes' f bes, \repeat volta 2 {
bes1\<( aes2\!)
g\> r\! r
g'4\f  g g g\p g g
g\f g g g\p g g
g2\f( aes fis)
g-| g,-| r
aes\<( bes g\!)
aes(\p bes e)
f4 g aes2( a)
bes bes, r
R1.
bes2^\markup{\italic "pizz."} bes bes
bes r r
R1.
r4 bes bes bes bes bes
bes2 bes bes
ees r r4 ees
ees2 r r4 c
c2 r r4 aes
aes2 r r
r4 bes bes bes bes bes
r ees r bes r g
r aes r aes' r g
R1.
ees,1.\<^\markup{\italic "arco"} ~
ees2\! r r
ees1.\< ~
ees2\! r r
ees' r r
\set Score.skipBars = ##t R1. * 2 
%
r2 r4 ees-| bes-| g-|
aes2 bes bes }
\alternative { {ees2 ees ees | ees1.} 
   {ees1\p d2} }
c1 bes2
aes1.
g2 g g
g1.^\fermataMarkup_\markup{\italic "Segue"} \bar "|." 
}
