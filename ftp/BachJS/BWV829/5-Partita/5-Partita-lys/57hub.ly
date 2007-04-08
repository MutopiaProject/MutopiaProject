% The 6th movement of the 5th Partita of J. S. Bach, set for Mutopia
% by Carl Bolstad on 5/27/2004.

\version "2.7.40"

% The following file is so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"

%*************************************
TopVoice =  \relative g'' {
 \stemUp \partial 8*1 s8 |
 s4 s s |
 s4. s8 s g |
 b8. g16 e cs a'8 d, r |
 g8. e16 cs a fs' e fs a d, fs |
% top meas 5:
 g fs g b e, g a g a c fs, a |
 b a c b a g fs e fs g e fs |
 g4 c8 fs, g4~ |
 g8 fs a d, e fs |
 g s4 s4. |
% top meas 10:
 s e8 fs gs |
 a s4 s4. |
 s fs8 g a~ |
 a8 g4~ g8 fs4~ |
 fs8 e4~ e8 d fs~ |
% top meas 15:
 fs e r r r e~ |
 e d r r r d~ |
 d c r r r c~ |
 c b d~ d cs a'~ |
 a g r cs, a d~ |
% top meas 20:
 d cs r d4.~ |
 d16 c d e b d c4.~ |
 c16 b c d a c b a b c d b |
 e8. c16 a fs d'8 g, r |
 c8. a16 fs d b'8 e, r |
% top meas 25:
 a8. fs16 d b g'8 cs, r |
 r16 e fs a d, fs g fs g b e, g |
 a g a c fs, a b a b cs d b |
 cs8 a e'~ e d fs~ |
 fs e g~ g fs a |
% top meas 30:
 b8. g16 e cs a'8 d, r |
 g8. e16 cs a fs'8 d c |
 b e g,~ g[ fs] \bar ":|:" s |
 s2.*4 |
 s4. s8 s a |
 d, g r r16 g fs e fs d |
 b cs cs8. \prall b32 cs d16 e d cs d b |
% top meas 40:
 cs ds ds8. \prall cs32 ds e16 b' a g a fs |
 g8 gs8. \prall fs32 gs a16 e' d c d b |
 c a' g f g e f8 gs, a |
 r16 c' b a b d, c b' a gs a c, |
 b a'='' g fs g b, a g' fs e fs a |
% top meas 45:
 ds, e e8. \prall ds32 e fs16 e fs a g fs |
 e8 a r r16 a g fs g e |
 cs ds ds8. \prall cs32 ds e16 ds e g fs a |
 g fs g b e, gs a gs a c fs, a |
 b a b d gs, b c b a gs a e |
% top meas 50:
 f8. d'16 b gs e8 a r |
 d,8. b'16 gs e c8 e a |
 d, g r r16 g fs e fs d |
 b cs cs8. \prall b32 cs d8 b8. \prall a32 b |
 c16 d c b c a b a b c d8 |
% top meas 55:
 g, c r r16 c b a b g |
 e fs fs8. \prall e32 fs g8 d' e |
 a,=' e' fs b, fs' g |
 c,4.~ c16 d c b c a |
 b8 cs4 d8 a d~ |
% top meas 60:
 d16 b g8 c fs, d g~ |
 g32 fs e16 d8 r r16 c d f e g |
 f g f e f d e a g fs g e |
 fs b a g a fs g8 a r |
 r16 d, g b a fs fs8( g) \bar ":|" 
}

%************************************
MiddleVoice =  \relative d'' {
 \stemDown \partial 8*1 d8 |
 e8. c16 a fs d'8 g, r |
 c8. a16 fs d b' a b c b a |
 g8 g, g'~ g16 e fs a g fs |
 e8 cs a d a' b |
% middle meas 5:
 e, b' c fs, c' d |
 g, e' c d a d~ |
 d c4~ c16 a b d c b |
 a4.~ a8 g a |
 b16 a b d g, b c b c e a, c |
% middle meas 10:
 d c d f b, d e8 a, b |
 c16 b c e a, c d c d fs b, d |
 e d e g cs, e fs8 b, cs |
 d16 cs d e b d cs b cs d a cs |
 b a b c g b a4 r8 |
% middle meas 15:
 r r d~ d cs r |
 r r c~ c b r |
 r r b~ b a r |
 r r fs~ fs e a |
 b8. g16 e cs a'8 d, r |
% middle meas 20:
 g8. e16 cs a fs' e fs a d, fs |
 g4.~ g16 fs g b e, g |
 a4. g~ |
 g16 \change Staff = down \stemUp g, s4 s s8 |
 s2. |
% middle meas 25:
 s2. |
 s2. |
 s2. |
 \change Staff = up \stemDown s4. s8 s d''~ |
 d cs e~ e d fs~ |
% middle meas 30:
 fs16 d e8 g,~ g16 e fs a d, fs |
 b8 cs r d a4~ |
 a16 g8. e8~ e[ d] \bar ":|:" s |
 s2.*8 |
% middle meas 41:
 r16 e d c d b c8 d e |
 a, d r \change Staff = down r16 d c b c a |
 fs gs gs8. \prall fs32 gs a8 c \change Staff = up e |
 ds b' e, c'16 b a g a fs |
% middle meas 45:
 b a g fs g e ds8 fs b~ |
 b a c ds, b e~ |
 e fs4 b,8 r r |
 s2. |
 s4. s8 s s16 e' |
% middle meas 50:
 a,8 d r r16 d c b c a |
 fs gs gs8.  \prall fs32 gs a16 gs a b c a |
 b a b cs d b cs8 a d |
 r16 a g fs g e fs g f e f d |
 e fs! fs8. \prall e32 fs g4~ g16 fs~ |
% middle meas 55:
 fs e8 a16 g a fs8 d \change Staff = down \stemUp g,~ |
 g a4 d,8 r r \stemNeutral |
 s2. |
 \change Staff = up \stemDown r16 b''=' a g a e fs8 r r |
 r16 a g fs g e fs4 d8 |
% middle meas 60:
 e8. \change Staff = down \stemUp c16 a fs d'8 g, r |
 c8. a16 fs d b'4. |
 c8 d b\rest g e g\rest |
 a fs a\rest \change Staff = up \stemDown r16 d=' c b c a |
 b d8.~ d8 c( b) 
} 

%************************************
BottomVoice =  \relative d' {
 \partial 8*1 r8 |
 r2. |
 r2. |
 r2. |
 r2. |
% bottom meas 5:
 r2. | 
 r4. r8 r d |
 e8. c16 a fs d'8 g, r |
 c8. a16 fs d b' a b c b a |
 g8 d' e a, e' f |
% bottom meas 10:
 \clef treble b, f' g c,16 b c d c b |
 a8 e' fs b, fs' g |
 cs, g' a d,16 cs d e d cs |
 \clef bass b8. g16 e cs a'8 d, r |
 g8. e16 cs a fs' e fs a d, fs |
% bottom meas 15:
 gs fs gs b e, gs as gs as cs fs, as |
 b as b d fs, as gs fs gs b e, gs |
 a g a c e, g fs e fs a d, fs |
 g fs g a b g a g a b cs a |
 d b e8 g,~ g16 e fs a g fs |
% bottom meas 20:
 e a, a' g fs e d8 a' b |
 e, b g e b'' c |
 fs, d e f e d |
 <<
    { s8 c'4~ c16 a b4~ |
      b16 g a4~ a16 fs g4~ |
      g16 e fs4~ fs16 d e8 r | }
  \\
    { c8. a'16 fs a b,8. g'16 e g |
      a,8. fs'16 d fs g,8. e'16 cs e |
      fs,8. d'16 b d e,8. cs'16 a cs | }
 >>
% bottom meas 26:
 d,8 a' b e, b' c |
 fs, c' d g, d' e |
 a,16 fs' g a e g fs e fs a d, fs |
 e d e g cs, e d cs d fs b, d |
% bottom meas 30:
 g,8 g' r r r fs~ |
 fs16 d e g a, cs d e fs a d, fs |
 g e cs e a, cs d,8[ d'] \bar ":|:" a' |
<<
  { s2. |
    s4. s8 s d=' |
    g, c r r16 c b a b g |
    e fs fs8. \prall e32 fs g8 gs8. \prall fs32 gs |
    a16 b a g a fs g b a b c a |
    b a b cs d b cs8 a d |
    r16 a g fs g e fs gs gs8. \prall fs32 gs |
    a8 fs4 e8 r r |
  }
\\
  { d= g r r16 g fs e fs d |
    b cs cs8. \prall b32 cs d16 cs d e fs d |
    % lower bottom meas 35:
    e d e fs g e fs8 d g |
    r16 d c b c a b e d cs d b |
    cs8 ds8. \prall cs32 ds e16 fs fs8. \prall e32 fs |
    g8 e r a d, r |
    g, a r d b r |
    r16 b a g a fs g8 a b |
  }
>>
 e,8 s s s4. |
 s2.*3 |
% bottom meas 45:
 s4. s8 s b'' |
 c8. a16 fs ds b'8 e, r |
 a8. fs16 ds b g' fs g b ds, fs |
 e8 b' c fs, c' d |
 gs, d' e a, b c~ |
% bottom meas 50:
 c b a gs a r |
 r2. |
 r2. |
 r2. |
 r4. r8 r d,= |
 e8. c16 a fs d'8 g, r |
 \stemDown c8. a16 fs d b' a b d g, b |
 \stemNeutral c b c e a, c d c d fs b, d |
 e8 c a d fs d |
 g e a d,16 e d c b a |
% bottom meas 60:
 \stemDown g8 c r r16 c b a b g |
 e fs fs8. _\prall e32 fs g8 g, g' |
 a16 b b8. _\prall a32 b c8 cs8. _\prall b32 cs |
 d8 ds8. _\prall cs32 ds e16 fs fs8. \prall e32 fs |
 \stemNeutral g8 <b, b,> <d d,> <g, g,>4 \bar ":|" 
}

%************************************
%************************************
% The score, to put it all together:
%************************************
%************************************

\score {
  \context PianoStaff <<
    \context Staff = "up" {
        \set Staff.midiInstrument = #"harpsichord"
      {
      \key g \major
      \time 6/8
        <<
          { \TopVoice }
        \\
          { \MiddleVoice }
        >>
     }
    }
    \context Staff = "down" {
        \set Staff.midiInstrument = #"harpsichord"
      {
      \key g \major
      \time 6/8
      \clef bass
        \BottomVoice
     }
    }
  >>
  \layout { }
  \midi { \tempo 8 = 120 }
  \header {
    piece = "7. Gigue"
  }
}
