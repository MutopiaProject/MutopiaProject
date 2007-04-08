% 6 Partitas for solo keyboard by JS Bach
% Partita 5, 3rd movement
% set with LilyPond by Carl Bolstad
% 4/25/2004

\version "2.7.40"

% The following file is so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"

% Here are the notes, stored in named constants ***********************************************

RHand =  \relative d'' { \partial 16*3 d16 e fs
% RH meas 1:
 g d b d g, b
 d b g' d b' g
 a fs d fs a, d
 fs d a' fs c' a
 b g d g c a
 b g d g c a
 b g a fs g e
 fs d a d fs d
 g d a' d, b' d,
% RH meas 10:
 e c g c e c
 fs c g' c, a' c,
 ds b fs b ds b
 e b fs' b, g' b,
 cs g' d g e g
 fs d gs d b' d,
 cs d e cs a g
 fs a d a fs' d 
 gs( a) a,4~
 a16 b cs a e' a,
% RH meas 20:
 fs'( g) a,4~
 a16 b cs d e fs
 g a b cs d cs32 b 
 a16 g fs8-. e-. \prall
 d16 a gs b e, d'
 cs a e d cs d 
 c' a fs d cs d
 b' a g d cs d
 a' g fs d cs d
 g fs e d cs b
% RH meas 30:
 a cs e g cs e
 <<
   { a8 d, cs d8. }
   \\
   { r8 fs, e fs8. }
 >>
 \bar ":|:"
% Second section:
 r16 a'8 fs d cs
 d e fs 
 g16 a a8. \prall g32 a
 b4 b,8 
 e ds e
 a c, b
 g' a16 g fs e
% RH meas 40:
 ds8 b b'~
 b g e~
 e16 ds e ds cs b
 a'8 fs ds~
 ds16 cs e ds cs b
 g'8 fs e
 c' b a~
 a16 g b a g fs
 e4 g8
 cs, a b
% RH meas 50:
 cs d e
 fs d e
 fs g a
 b g a
 b c d
 e, fs g
 a d, a'
 b16 g d b d g
 a fs ds b as b
 g' e b g b e
% RH meas 60:
 f d b g fs! g
 e' d c b a g
 fs a c d fs a
 <<
   { d8 g, fs g8. }
   \\
   { r8 b, a b8. }
 >>
 \bar ":|"
% end of the piece!
}

LHand =  \relative g { \partial 16*3 r8.
% LH meas 1:
 g8 b d
 b g r
 fs a d 
 a fs r
 g b d g b, d 
 g, c a
 d d, c'
 b a g
% LH meas 10:
 c c, b'
 a g fs
 b b, a'
 g fs e
 a b cs
 d b e, 
 a a, a'~
 a fs d~
 d16 cs d cs b a
 g'8 e cs~
% LH meas 20:
 cs16 b d cs b a
 fs'8 e d
 cs d e
 fs g a
 b e, gs
 a a, g'
 fs d fs
 g b, e
 fs a, d
 e g, b
 cs a' g 
 fs g, a
 d,8.
 \bar ":|:"
% Second section:
 a''16 b cs
 d a fs a e g
 fs a g b a c
 b d c e d fs
 g d b d g, b
 c b a b g b
 fs a e a ds, a'
 e g d g c, a'
% LH meas 40:
 b fs ds fs a, ds
 g, b e b g' e
 as( b) b,4~
 b16 cs ds b fs' b,
 g'( a) b,4~
 b16 cs ds e fs g
 a b cs ds e ds
 e8 g, b
 e,16 b g b e, e'
 a, b cs a d a
% LH meas 50:
 e' a, fs' a, g' a,
 d e fs d g d
 a' d, b' d, c' d,
 g a b g c g
 d' g, e' g, f' g,
 c d c b a g
 fs e d c b a
 g b d g fs e
 ds8 b ds
 e,16 g b e d c 
% LH meas 60:
 b8 g b
 c, g' c~
 c fs, a
 b, c d
 g,8. \bar ":|"
% end of the piece!
}


% And here is the score all put together: *****************************************************

\score {
 
 \context PianoStaff
 <<
   \context Staff = "up" {
     \set Staff.midiInstrument = #"harpsichord"
     \key g \major
     \time 3/8
     \RHand
   }
   \context Staff = "down" {
     \set Staff.midiInstrument = #"harpsichord"
     \key g \major
     \time 3/8
     \clef bass
     \LHand
   }
 >>
 \header { piece = "3. Corrente" } 
 \midi { \tempo 8=120 }
 \layout { }
}
