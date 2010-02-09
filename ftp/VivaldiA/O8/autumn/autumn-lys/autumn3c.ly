\version "2.12.3"

AltoViolaAutumnThree =  {
\clef alto
\key f \major
\time 3/8

\mark "E"
\relative c' {
a8_"Allegro"^"La Caccia" c8 a |
a c a |
a d d |
e16 d c bes a g |
a8 c a |
a c a |
a d d |
e16 d c bes a g |
a8 f' f |
c f f |
bes, f' f |
a, f' f |
a,4 r8 |
c'8 c16 c c e, |
c8 c c |
c'8 c16 c c e, |
c8 c c |
c8 c16 c c e |
c8 c c |
c8 c16 c c e |
c8 c c |
a c a |
a c a |
a d c |
a4 r8 |
a8 c a |
a c a |
a d c |
a4 r8 |
R4.*12 |
a8 c a |
a c a |
bes d d |
e16 d c bes a g |
a8 c a |
a c a |
a d c |
a4 r8 |
R4.*19 |
e'8 g e |
e g e |
e a a |
b16 a g f e d |
e8 g e |
e g e |
e a g |
\mark "F"
e4 r8 |
R4. |
c4 r8 |
R4. |
c4 r8 | % 80
R4. |
\mark "G"
r8^"Scioppi e Cani" c r |
\set autoBeaming = ##f
r16 c c8 r16 g |
\set autoBeaming = ##t
 g32[ bes g bes ]	 g[ bes g bes ]	 g[ bes g bes ] |
 g32[ bes g bes ]	 g[ bes g bes ]	 g[ bes g bes ] |  % 85
g4 r8 |
f'4 r8 |
fis4 r8 |
g4 r8 |
gis4 r8 |  % 90
a4 r8 |
r8 g, r |
\set autoBeaming = ##f
r16 g g8 r16 b |
\set autoBeaming = ##t
 bes32[ g bes g ]	 bes[ g bes g ]	 bes[ g bes g ] |
 bes32[ g bes g ]	 bes[ g bes g ]	 bes[ g bes g ] |  % 95
g4 r8 | 	% extra 8th rest written here
e'8 g e |
e g e |
e a a |
b16 a g f e d |  % 100
e8 g e |
e g e |
e a g |
e4 r8 |
R4. |  % 105
r8 f r |
R4. |
r8 bes, r |
r a r |
r d r |  % 110
r e r |
r fis r |
r e r |
r f! r |
r f r |  % 115
a,8 c a |
a c a |
a d d |
e16 d c bes a g |
a8 c a |  % 120
a c a |
a d d |
e4 r8 |
R4.*3 |
 f32[ c f c ]	 f[ c f c ]	 f[ c f c ] |
 f32[ c f c ]	 f[ c f c ]	 f[ c f c ] |
\mark "H"
f4 r8 |
 e32[ c e c ]	 e[ c e c ]	 e[ c e c ] |  % 130
e4 r8 |
 f32[ a, f' a, ]	 f'[ a, f' a, ]	 f'[ a, f' a, ] |
f'4 r8 |
 e32[ c e c ]	 e[ c e c ] 	 e[ c e c ] |
e4 r8 |
R4.*6 |
c'8 c16 c c g |
c,8 c c |
c8 c16 c c e, |
c8 c c |
a'8 c a |
a c a |
a d d |
e16 d c bes a g |
a8 c a |
a c a |
a d c |
a4. |
a8 c a |
a c a |
a d c |
a4.^\fermata
}
\bar "||"
}


%\score {
%\AltoViolaAutumnThree
%}


