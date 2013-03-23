\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Cor2 - 3ème mvt
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
r8 r g g4 g8
g g g g4 g8
g4 g8 g g g
g4 g8 g g g
g4 r8 r4 r8
R2.
r4 r8 r4 c,8
c4 d'8 c4 g8
e e e e e e
e4 \bar "||" r8 r4 r8
\set Score.skipBars = ##t R2. * 5 
%
%
%
%
r4 r8 r4 g,8
g4. g
g8 g g g4.
g g
g8 g g g4 r8
\set Score.skipBars = ##t R2. * 3 
%
%
r4 r8 e''4 c8
d4. d
g, r4 r8
g,4. g
g8 g g g4 r8
g4. g
g8 g g g4 r8
\set Score.skipBars = ##t R2. * 3 
%
%
r4 r8 e''4 c8
d4 d8 d4 d8
g,4. e'4 c8
d4 d8 d4 d8
g,4 r8 g4 r8
g4. r4 r8
\set Score.skipBars = ##t R2. * 8 
%
%
%
%
%
%
%
r8 r g g4 g8
g g g g4 g8
g4 g8 g g g
g4 g8 g g g
g4 r8 r4 r8
R2.
r4 r8 r4 c,8
c4 d'8 c4 g8 \bar "||" \override Score.RehearsalMark #'break-align-symbols = #'(time-signature) \override Score.RehearsalMark #'self-alignment-X = #left \override Score.RehearsalMark #'padding = #2.0 \time 3/8 \mark \markup {\bold "Presto"} \tempo 4.=90
e4 r8
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
e4.
g
c
c,4 r8
c4 r8
c4 r8
c4 r8
c4 r8
c'4.
g
e4 r8
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
c,4. ~
c
c4. ~
c
c'4. ~
c
g4. ~
g
e4 r8
\set Score.skipBars = ##t R4. * 2 
%
g4.
c4 r8
\set Score.skipBars = ##t R4. * 2 
%
g4.
c4 r8
\set Score.skipBars = ##t R4. * 5 
%
%
%
%
r8 e, e 
e e e
e4 r8
e4 r8
e4 r8 \bar "|." 
}
