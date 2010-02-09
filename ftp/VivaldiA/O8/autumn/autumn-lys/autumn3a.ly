\version "2.12.3"

ViolinoPrimoAutumnThree =  {
\clef violin
\key f \major
\time 3/8

\mark "E"
\relative f' {
f16._"Allegro - Forte"^"La Caccia" c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
g g g |
f16. c'32 f,8 f |  % 5
f16. c'32 f,8 f |
f16. c'32 bes8 a |
g4 r8 |
f16. f'32 f,8 f |
f16. ees'32 f,8 f |  % 10
f16. d'32 f,8 f |
f16. c'32 f,8 f |
f4 r8 |
a'8 a16 a a bes |
c8 a a |  % 15
a a16 a a bes |
c8 a a |
a,8 a16 a a bes |
c8 a a  |
a8 a16 a a bes |  % 20
c8 a a |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 bes8 g |
a4 r8 |  % 25
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 bes8 g |
f4 r8 |
}
R4.*12
\relative f' {
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
g g g |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 bes8 g |
f4 r8 |
}
R4.*19
\relative f'' {
c16. g'32 c,8 c |
c16. g'32 c,8 c |
c16. g'32 f8 e |
d d d |
c16. g'32 c,8 c |
c16. g'32 c,8 c |
c16. e32 f8 d |
\mark "F"
e4 r8 |
R4.
c,4 r8 |
R4. |
c4 r8 |
R4.
\mark "G"
r8^"Scioppi e Cani" r c |
\set autoBeaming = ##f
r r16 c c r32 e |
\set autoBeaming = ##t
%%%#(XXXOLD_override_auto_beam_setting '(begin 1 32 * *)  1 8)
%%%#(XXXOLD_override_auto_beam_setting '(end 1 32 * *)  1 8)
e[ g e g] 	e[ g e g] 	e[ g e g] |
e[ g e g] 	e[ g e g] 	e[ g e g] |
e4 r8 |
f4 r8 |
fis4 r8 |
g4 r8 |
gis4 r8 |
a4 r8 |
r r g, |
\set autoBeaming = ##f
r r16 g g r32 b |
\set autoBeaming = ##t
bes[ d bes d]	bes[ d bes d] 	bes[ d bes d] |
bes[ d bes d]	bes[ d bes d] 	bes[ d bes d] |
bes8 r r |
%%%#(XXXOLD_override_auto_beam_setting '(begin 1 32 * *)  3 8)
%%%#(XXXOLD_override_auto_beam_setting '(end 1 32 * *)  3 8)
c'16. g'32 c,8 c |
c16. g'32 c,8 c |
c16. g'32 f8 e |
d d d |
c16. g'32 c,8 c |
c16. g'32 c,8 c |
c16. e32 f8 d |
e4 r8 |
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
f16. c'32 bes8 a |
g g g |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
g4 r8 |
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
f8 a'16 a a bes |
c8 a a |
a,8 a16 a a bes |
c8 a a |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
g g g |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 bes8 g |
f4. |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 bes8 g |
f4.^\fermata |
}
\bar "||"
}


%\score {
%\ViolinoPrimoAutumnThree
%}
