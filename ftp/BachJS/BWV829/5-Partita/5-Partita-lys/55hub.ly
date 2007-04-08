% The fifth movement of the Bach Partitas
% set in LilyPond by Carl Bolstad
% on 5/14/2004.

\version "2.7.40"

% The following file s so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First, the notes for the right hand:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RightHandNotes =  \relative d' { \stemUp
  d8 s s g s s | b s s d s s | g s s b s s | <b g>2 \prall <a fs>4 | 
% RH meas 5:
  b8 s s e, s s | a s s d, s s | g s s cs, s s | fs s s b, s s | e s s a, s s | 
% RH meas 10:
  d s s g, s s | r4 << { d' cs | cs2( d4) } \\ { \stemDown e, g | g2( fs4) } >> | \bar ":|:" | 
% RH after the bouble repeat bar, meas 13:
  \change Staff = down a,8 s s d s s | \change Staff = up fs s s a s s | cs s s ds s s | 
% RH meas 16, two voices (top and bottom - inner s the left hand):
  <<
     { fs4. g16 a g4 }
   \\
     { \change Staff = down \stemDown ds,2 e4 }
  >> |
  \stemUp \change Staff = down b8 s s e s s | \change Staff = up g s s b s s | d s s f s s |
% RH meas 20, two voices as before:
  <<
    { gs8 a b d, c4 }
   \\
    { \change Staff = down \stemDown e,2 a,4 }
  >>
  \change Staff = up |
  fs''8 s s b, s s | g' s s as, s s | fs' s s b, s s | a' s s ds, s s | 
% RH meas 25:
  gs s s c, s s | fs s s b, s s | e s s a, s s | ds  s s ds, s s  | c' s s  ds  s s | fs  s s a  s s |
% RH meas 31:
  <<
    { \stemUp g4 e ds | ds( e2) | }
  \\
    { \stemDown e4 b a | a( g2) | }
  >>
% RH meas 33:
  \change Staff = down a,8 s \change Staff = up s g' s s | a, s s a' s s | a, s s g' s s | a, s s a' s s |
  g, s s f' s s | g, s s g' s s |
% RH meas 39:
  g, s s f' s s | g, s s g' s s | fs e d a' fs e | d a d fs d fs | g d g b g b | d b g f' d b |
% RH meas 45:
  e s s a, s s | d s s g, s s | c s s fs, s s | b s s e, s s | a s s d, s s |
  g s s \change Staff = down c, s s | \change Staff = up
% RH meas 51:
  r4
  <<
    { g'' fs | fs2( g4) \fermata }
  \\
    { a, c | c2( b4) \fermata }
  >>
  \bar ":|"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Notes for the left hand:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LeftHandNotes =  \relative d' { \stemDown
  \change Staff = up d8 g, b g' b, d | b' d, g d' g, b | g' b, d b' d, g | r d cs d d,4 |
% LH meas 5:
  b''8 d, g e g, b | a' cs, e d fs, a | g' b, d cs e, g | fs' a, cs b d, fs | e' g, b a cs, e |
% LH meas 10:
  d' fs, a g b, d | \change Staff = down g,4 r a | d2. |
%double-bar, meas 13:
  a8 d, fs d' fs, a | \change Staff = up fs' a, d a' d, fs | cs' fs, a ds a cs~ | cs4 b2 |
% LH meas 17:
  \change Staff = down b,8 e, g e' g, b | \change Staff = up g' b, e b' e, g | d' gs, b f' b, d_~ |
% LH meas 20:
  d4 gs, a | fs'8 a, c b ds, fs | g' b, e as, cs, e | fs' a, c b ds, fs | 
% LH meas 24:
  a' c, e ds fs, a | g' b, d c e, g | fs' a, c b d, fs | e' g, b a c, e | ds' fs, a ds, fs a |
% LH meas 29:
  c fs, a ds a c | fs c ds a' ds, fs | \change Staff = down r4 g,, b | e4. d8 cs b |
% LH meas 33:
  a \change Staff = up e' cs g' e cs | a fs' d a' fs d | a e' cs g' e cs | a fs' d a' fs d |
% LH meas 37:
  g, d' b f' d b | g e' c g' e c | g d' b f' d b | g e' c g' e c | \change Staff = down c,4 fs a |
% LH meas 42:
  fs d c | b d g | b d \change Staff = up g | e'8 g, b a c, e | d' fs, a g b, d | c' e, g fs a, c |
% LH meas 48:
  b' d, fs e g, b | a' c, e d fs, a | g' \change Staff = down
% LH meas 50 (2nd eighth note):
  b, d c e, g | c,4 r d | g,2. \fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% And here s the staff structure: %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 
 \context PianoStaff
  <<
    \context Staff = "up" {
      \set Staff.midiInstrument = #"harpsichord"
      \key g \major
      \time 3/4
      \RightHandNotes
    }
    \context Staff = "down" { 
      \set Staff.midiInstrument = #"harpsichord"
      \key g \major
      \time 3/4
      \clef bass
      \LeftHandNotes
    }
  >>
 \header { piece = "5. Tempo di Minuetta" }
 \layout { }
 \midi { \tempo 4 = 120 }
} 
