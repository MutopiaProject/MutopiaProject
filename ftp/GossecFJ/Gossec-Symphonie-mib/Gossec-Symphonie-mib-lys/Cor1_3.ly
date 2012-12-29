\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Cor1 - 3ème mvt
\relative c''{
\clef treble
\key c \major
\time 6/8
\override Score.MetronomeMark #'transparent = ##t
\tempo 4.=60


\set Score.skipBars = ##t R2. * 8 
%
%
%
%
%
%
%
r8 r g' g4 g8
g g g g4 g8
g4 g8 g g g
g4 g8 g g g
g4 r8 r4 r8
R2.
r4 r8 r4 c,8
c4 f8 e4 d8
c c c c c c
c4 \bar "||" r8 r4 r8
\set Score.skipBars = ##t R2. * 5 
%
%
%
%
r4 r8 r4 g8
g4. g
g8 g g g4.
g g
g8 g g g4 r8
g'4.\p( fis)
g( fis) 
g( fis)
g g4 e8
d4. d
d r4 r8
g,4. g
g8 g g g4 r8
g4. g
g8 g g g4 r8
g'4.( fis)
g( fis) 
g( fis)
g g4 e8
d4 d8 d4 d8
d4. g4 e8
d4 d8 d4 d8
d4 r8 g,4 r8
g4. r4 r8
\set Score.skipBars = ##t R2. * 8 
%
%
%
%
%
%
%
r8 r g' g4 g8
g g g g4 g8
g4 g8 g g g
g4 g8 g g g
g4 r8 r4 r8
R2.
r4 r8 r4 c,8
c4 f8 e4 d8 \bar "||" \override Score.RehearsalMark #'break-align-symbols = #'(time-signature) \override Score.RehearsalMark #'self-alignment-X = #left \override Score.RehearsalMark #'padding = #2.0 \time 3/8 \mark \markup {\bold "Presto"} \tempo 4.=90
c4 r8
\set Score.skipBars = ##t R4. * 8 
%
%
%
%
%
%
%
\repeat unfold 8 {g4 r8}
%
%
%
%
%
%
%
\set Score.skipBars = ##t R4. * 7 
%
%
%
%
%
%
c4.
d
e4 r8
c4 r8
c4 r8
c4 r8
c4. ~
c
e
d
c4 r8
\repeat unfold 8 {g4 r8}
%
%
%
%
%
%
%
\set Score.skipBars = ##t R4. * 7 
%
%
%
%
%
%
g4.
g
c4. ~
c
c4. ~
c
e4. ~
e
d4. ~
d
c4 r8
\set Score.skipBars = ##t R4. * 2 
%
d4.
e4 r8
\set Score.skipBars = ##t R4. * 2 
%
d4.
e4 r8
\set Score.skipBars = ##t R4. * 5 
%
%
%
%
r8 c c
c c c
c4 r8
c4 r8
c4 r8 \bar "|." 
}
