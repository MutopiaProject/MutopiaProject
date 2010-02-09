\version "2.12.3"

ViolinoSecondoAutumnThree =  {
\clef violin
\key f \major
\time 3/8

\mark "E"
\relative f' {
f16._"Allegro"^"La Caccia" c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 g8 f |
c c c |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 g8 f |
c4 r8 |
f16. f'32 f,8 f |
f16. ees'32 f,8 f |
f16. d'32 f,8 f |
f16. c'32 f,8 f |
f4 r8 |
f'8 f16 f f g |
a8 f f |
f f16 f f g |
a8 f f |
f,8 f16 f f g |
a8 f f  |
f8 f16 f f g |
a8 f f |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. f32 g8 e |
f4 r8 |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. f32 g8 e |
f4 r8 |
}
R4.*12
\relative f' {
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 g8 f |
c c c |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. f32 g8 e |
f4 r8 |
}
R4.*19
\relative f'' {
c16. g'32 c,8 c |
c16. g'32 c,8 c |
c16. e32 d8 c |
g g g |
c16. g'32 c,8 c |
c16. g'32 c,8 c |
c16. c32 d8 b |
\mark "F"
c4 r8 |
R4.
c,4 r8 |
R4. |
c4 r8 |
R4.
\mark "G"
r8^"Scioppi e Cani" r c |
\set autoBeaming = ##f
r r16 c c r32 c |
\set autoBeaming = ##t
%%%#(XXXOLD_override_auto_beam_setting '(begin 1 32 * *)  1 8)
%%%#(XXXOLD_override_auto_beam_setting '(end 1 32 * *)  1 8)
c[ d c d] 	c[ d c d] 	c[ d c d] |
c[ d c d] 	c[ d c d] 	c[ d c d] |
c4 r8 |
f4 r8 |
fis4 r8 |
g4 r8 |
gis4 r8 |
a4 r8 |
r r g, |
\set autoBeaming = ##f
r r16 g g r32 d' |
\set autoBeaming = ##t
d[ g d g] 	d[ g d g] 	d[ g d g] |
d[ g d g] 	d[ g d g] 	d[ g d g] |
%%%#(XXXOLD_override_auto_beam_setting '(begin 1 32 * *)  3 8)
%%%#(XXXOLD_override_auto_beam_setting '(end 1 32 * *)  3 8)
d8 r r |
c'16. g'32 c,8 c |
c16. g'32 c,8 c |
c16. e32 d8 c |
g g g |
c16. g'32 c,8 c |
c16. g'32 c,8 c |	% missing measure in violinII part!
c16. c32 d8 b |
c4 r8 |
R4. |
r8 r f, |
R4. |
r8 r bes, |
r r a |
r r d |
r r e |
r r fis |
r r e |
r r f! |
r r f |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 g8 f |
c c c |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 g8 f |
c4 r8 |
R4.*3 |
%%%#(XXXOLD_override_auto_beam_setting '(begin 1 32 * *)  1 8)
%%%#(XXXOLD_override_auto_beam_setting '(end 1 32 * *)  1 8)
f32[ c f c]	f[ c f c] 	f[ c f c] |
f32[ c f c]	f[ c f c] 	f[ c f c] |
\mark "H"
f4. |
e32[ c e c]	e[ c e c] 	e[ c e c] |
e4 r8 |
f32[ a, f' a,]	f'[ a, f' a,]	f'[ a, f' a,] |
f'4 r8 |
e32[ c e c]	e[ c e c] 	e[ c e c] |
e4 r8 |
R4.*6 |
%%%#(XXXOLD_override_auto_beam_setting '(begin 1 32 * *)  3 8)
%%%#(XXXOLD_override_auto_beam_setting '(end 1 32 * *)  3 8)
f'8 f16 f f g |
a8 f f |
f,8 f16 f f g |
a8 f f |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 g8 f |
c c c |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. f32 g8 e |
f4. |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. f32 g8 e |
f4.^\fermata |
}
\bar "||"
}


%\score {
%\ViolinoSecondoAutumnThree
%}
