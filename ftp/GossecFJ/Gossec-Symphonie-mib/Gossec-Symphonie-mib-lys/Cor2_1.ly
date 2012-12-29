\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Cor2 - 1er mvt
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
e'2 d c
c4. g8 g2 r
d'4-. d-. d-. d-. d-. d-. 
d1.
d4-. d-. d-. d-. d-. d-. 
d1.
d4-. d-. d-. d-. d-. d-. 
d1.
g,1.\< ~
g2 r\! r
g1.\< ~
g2 r\! r
\set Score.skipBars = ##t R1. * 3 
%
%
g,2 g4 g g g
c2 r r
d'1.
c4 r d r d r
g, r r1
\set Score.skipBars = ##t R1. * 5 
%
%
%
%
%
g2-| g-| r
c4 r d r d r
g, r g r g r
c2\f d d
d1. \repeat volta 2 {
\set Score.skipBars = ##t R1. * 2 
%
e,2 r r
e r r
e r r
e e r
\set Score.skipBars = ##t R1. * 4 
%
%
%
g4-. g-. g-. g-. g-. g-. 
g1.
g4-. g,-. g-. g-. g-. g-. 
g1.
g4 g g g g g
g1.
c'4 c c c c2
r4 c c c c2
r4 c c c c2
r4 c c c d c
g2 r r
c,4 r c r c r
c r g' r c r
d2 c g
e1.\< ~
e2 r\! r
e1.\< ~
e2 r\! r
\set Score.skipBars = ##t R1. * 2
%
r2 r4 e'-. e-. e-.
e4. d8 c2 r
c4. d8 c2 g }
\alternative { {e2 r r | R1.} 
   {e2 r r } }
\set Score.skipBars = ##t R1. * 3
R1.^\fermataMarkup_\markup{\italic "Segue"} 
\bar "|." 
}
