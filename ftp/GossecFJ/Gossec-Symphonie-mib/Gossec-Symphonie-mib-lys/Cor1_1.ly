\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Cor1 - 1er mvt
\relative c''{
\clef treble
\key c \major
\time 3/2




R1.
r2 c1\<(
g2) r\! r
\set Score.skipBars = ##t R1. * 5 
%
%
%
%
g'2 f e
e4. d8 d2 r
\repeat unfold 3 {d4-. d-. d-. d-. d-. d-. 
d1.}
%
%
%
%
d1.\< ~
d2 r\! r
d1.\< ~
d2 r\! r
\set Score.skipBars = ##t R1. * 3 
%
%
g,2 g4 g g g
c2 r r
d1.
e4 r d r d r
d r r1
\set Score.skipBars = ##t R1. * 5 
%
%
%
%
%
d2-| d-| r
c4 r d r d r
g, r g r g r
e'2\f d d
d1. \repeat volta 2 {
\set Score.skipBars = ##t R1. * 2 
%
e2 r r
e r r
e r r
e e r
\set Score.skipBars = ##t R1. * 4 
%
%
%
g,4-. g-. g-. g-. g-. g-. 
g1.
g4-. g-. g-. g-. g-. g-. 
g1.
g4 g g g g g
g1.
c4 c c c c2
r4 c c c c2
r4 c c c c2
r4 c c c f e
d2 r r
c4 r c r c r
c r d r e r
f2 e d
c1.\< ~
c2 r\! r
c1.\< ~
c2 r\! r
\set Score.skipBars = ##t R1. * 2
%
r2 r4 g'-. g-. g-.
g4. f8 e2 r
f e d }
\alternative { {c2 r r | R1.} 
   {c2 r r } }
\set Score.skipBars = ##t R1. * 3
R1.^\fermataMarkup_\markup{\italic "Segue"} 
\bar "|." 
}
