\version "2.16.0"      %Gossec - Symphonie si bémol
                        %Cor1 - 2e mvt  
\relative c''{
\clef treble
\key c \major
\time 6/8




\set Score.skipBars = ##t R2. * 4
%
%
%
c2.\p ~ 
c
\set Score.skipBars = ##t R2. * 2
%
r8 r g\p g g g
g4 r8 r4 r8
\set Score.skipBars = ##t R2. * 6
%
%
%
%
%
d'2. ~
d ~
d ~
d ~
d4. r4 r8
\set Score.skipBars = ##t R2. * 2
%
g,4 r8 g4 r8
g4 r8 g4 r8
g g g g4 r8 \bar ":|:"
g4.\f g8 g g 
\repeat unfold 2 {g4. g8 g g}
%
c2. 
g4. r4 r8
g4 g8 g4 r8
R2.
c4\pp r8 c4 r8
c4 r8 r4 r8
c4 r8 c4 r8
c4 r8 r4 r8
r4 r8 g4 g8
c4. r4 r8
r4 r8 g4 g8
c4 r8 r4 r8
\set Score.skipBars = ##t R2. * 6
%
%
%
%
%
c2. ~
c ~
c4. r4 r8
r4 r8 f e d 
c4 r8 c4 r8
c4 r8 c4 r8
c c c c4 r8 \bar ":|" 
}
