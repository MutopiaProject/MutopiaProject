% Set by Carl Bolstad for Mutopia, started March 19, 2004

% LilyPond version number, needed by Mutopia or to update this file:

\version "2.7.40"

% The following file is so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"


% Notes for the right hand part, stored in a constant:
RHand =  \relative c'' { 
 d16 c b a g8 r <b, d> r 
 <c e> r <b d> r r4
 d'16 c b a g fs e d c16 b a g
 \stemUp { <fs a c>8 r <d g b> } \stemNeutral r r4
% Right Hand Measure 5:
 s16 b' c d e fs g a b c d e
 s a,, b c d e fs g a b c d
 s g,, a b c d e fs g a b c
 r c a fs d s8. d,,16 s8.
 r16 b''' g fs d b s4.
% Right Hand Measure 10:
 r16 b' g e cs s8. cs,,16 s8.
 r16 a''' fs e cs a s4.
 r16 a' fs d b s8. b,,16 s8.
 r16 g''' e d b g s4.
 r16 g' e cs a s8. a,,16 s8.
% Right Hand Measure 15:
 s16 a'' b cs d e f d s f e d
 cs d e fs g a bf g f' e d cs
 a' g fs e d8 r <fs, a> r 
 <g b> r <fs a> r r4
 a'16 g fs e d cs b a g fs e d
% Right Hand Measure 20:
 <cs e g>8 r <a d fs> r r4
 r16 fs' e fs g fs e fs g e a b
 cs g fs g a g fs g a fs b cs
 d a g a b a g a b g cs d 
 e b a b cs b a b cs a d e
% Right Hand Measure 25:
 fs g a8 r fs g a
 b16 a b8 cs, e fs g
 a16 g a8 b, fs' b a
 g16 fs g8 a, e' a g
 fs16 e d cs d fs a, cs d fs a, cs
% Right Hand Measure 30:
 f e d cs d f gs, cs d f a, d
 f e d cs d f gs, cs d f e d
 cs s4 cs,16 e g cs g fs e
 <fs a d>8 s8. d16 fs a d a g fs
 <g cs e>8 s8. e16 g cs \stemUp e cs b a~
% Right Hand Measure 35:
 <a d f>8 \stemNeutral s8. f16 a d \stemUp f? d c b~
 <b d gs>8 s gs,16 b d gs b d f gs?
 <cs, e a>8 a16 b cs d e8~ e g,~
 g fs16 gs as b cs d e d cs e
% Right Hand Measures 39 and 40, using polyphonic voice splitting:
 << { d8 r r4 fs8 r a r r4 ds,8 r } \\
    { b,16 cs d e fs g a8~ a c,~ c b16 cs ds e fs g a g fs a} 
 >>
% Right Hand Measure 41, first two beats:
 << { b'16 a g fs e8 r } \\
    { <e, g>8 } \\
    { \stemDown e'8 }
 >>
% Continuing:
 << { <g, b>8 r <a c> r <g b> r r4 } \\
    { e8 s ds s e s s4 }
 >>
% Right Hand Measure 43:
 \stemNeutral b''16 a g fs e d c b a g fs e
 <ds fs a>8 r <b e g> r r4
% Right Hand Measure 45:
 s16 g a b c d e fs g a b c
 s a, b c d e fs g a b c d
 s b, c d e fs g a b c d e
 s c, d e f g a b c d e f
 ds a' fs ds b2~
% Right Hand Measure 50:
 b16 a, b cs ds e fs g a g fs a
 g fs g a b c d e f e d f
 e d e fs gs a b c d c b d 
 c b a gs a g f e d c b a 
% RH measure 54, two voices again for one measure:
 << { r16 d c b c b a g f e d c } \\
    { gs'16 r r8 a16 r r8 r4 }
 >>
% RH measuer 55:
 r16 f e d e d c b a gs fs e
 s2.
 r16 f'' e d e d c b a d e f
 b, d e f g, f' e d c d e c 
 a d c b c b a g f b c d
% RH meas. 60:
 g, b c d e, d' c b a b c a 
 f8 b16 c d4~ d16 g, f e 
 f8 b16 c d4~ d16 c b d
 g, c b a g f e d c e d c
 \stemUp b c d e \stemNeutral f g a b c d e f
% RH meas 65:
 g f e d c8 r <g e> r
 <f a> r <e g> r r4
 g'16 f e d c b a g f e d c
 <b d f>8 r \stemUp <e c g> \stemNeutral r r4
 r8 c'8 e c a fs~
% RH meas 70:
 fs16 b d b fs b d b e, b' d b
 c8 a' c a fs d~
 d16 g b g d g b g c, b' a g
 fs8 d,16 e fs g a8~ a c,~
 \stemUp c16 bf c d \stemNeutral e fs g a bf a g bf
% RH meas 75:
 a g fs g a bf c8~ c ef,~
 ef16 d e fs g a bf c d c bf d
 c bf a bf c d ef8~ ef g,~
 g16 fs e d e fs g a b c d ef
 f8 g, r b c d
% RH meas 80:
 e16 d e8 fs, a b c
 d16 fs, e fs g fs e fs g e a b
 c e, d e fs e d e fs d g a
 b a g fs g b d, fs g b d, fs
 bf a g fs g bf cs, fs g bf d, fs
% RH meas 85:
 bf a g fs g bf cs, fs g bf a g
 <a d fs>4\fermata r16 fs' g a g fs e d
 d'8 fs, g b, a fs'
 g,16 g' fs g e g d g c, g' b, g'
 a, fs' e fs d fs c fs b, fs' a, c
% RH meas 90:
 f g, fs! g a g b g c g d' g,
 e' fs, e fs g fs a fs b fs c' fs,
 d' e, d e fs e g e a e b' e,
 c'4~ c16 d, a' c b a g fs
 \stemUp e d c b a g fs e d c b a
% RH meas 95:
 g2. \bar "|."
}

% Notes for the left hand part:
LHand =  \relative g {
 r4 r g8 r
 g r g r r4
 s2.
 \stemDown { <d g,>8 r <g, g,> } r r4
% Left Hand Measure 5:
 g'16 s2 s8.
 fs16 s2 s8.
 e16 s2 s8.
 d16 s4 a'16 fs d s c' b a 
 g s4 s16 g d g, fs' e d
% Left Hand Measure 10:
 cs s4 g'16 e cs s b' a g
 fs s s4 fs16 cs fs, e' d cs
 b s4 fs'16 d b s a' g fs
 e s s4 e16 b e, d' cs b
 a s4 e'16 cs a s g' fs e
% Left Hand Measure 15:
 d s4 s8. gs16 s8.
 s2.
 r4 r d'8 r 
 d r d r r4
 s2.
% Left Hand Measure 20:
 \stemNeutral
 <d, a'>8 r <d, d'> r r4
 g8 g' b g e cs
 a a' cs a fs d
 b b' d b g e
 cs cs' e cs a fs
% Left Hand Measure 25:
 d16 d' cs d e d cs d b d b a
 g d' cs d e d cs d a d a g
 fs d' cs d e d cs d g, d' g, fs
 e d' cs d e d cs d fs, d' fs, e
 d8 a' fs d cs a'
% Left Hand Measure 30:
 b, gs' f d a a'
 gs, b' f d gs, b'
 a16 a, cs e a s8. s4
 r16 a, d fs a s8. s4
 r16 a, e' a cs s8. s4
% Left Hand Measure 35:
 r16 a, d a' d s8. s4
 r16 a, b d s2
 a,8 r r4 <a'' cs>8 r
 <as cs> r r4 <fs as>8 r
 b r r4 e,8 r
% Left Hand Measure 40:
 ds r r4 b'8 r
 s2.
 s2.
 s2.
 <e, b'>8 r <e e,> r r4
% Left Hand Measure 45:
 e16 s8. s2
 fs16  s8. s2
 g16 s8. s2
 a16 s8. s2
 r8 b,16 cs ds e fs g a g fs a
% Left Hand Measure 50:
 g4~ g16 fs e d cs e ds fs
 e4~ e16 d c b a c b d 
 c4~ c16 b a g fs a gs b
 a r r8 a'16 r r8 r4
 s2.
% LH measure 55:
 b16 r r8 gs16 r r8 s4
 << { r16 b a gs a f e d c b a gs } \\
    { d'16 r r8 c16 r r8 s4 }
 >>
 a8 a' c a f d 
 g, g' b g e c
 f, f' a f d b
% LH meas 60:
 e, e' g e c a
 d,16 c d e f g a b c b a g
 b a g a b c d e f e d f
 e e, f g a b c d e d e f
 g8 f16 e d c b a g f e d
% LH meas 65:
 c8 r r4 c''8 r
 c r c r r4
 s2.
 \stemDown <g c,>8 r <c, c,> r r4 \stemNeutral
 c16 c' e c a c e c fs, c' e c
% LH meas 70:
 b,8 b' d b g e 
 a,16 a' c a fs a c a d, a' c a 
 g,8 g' b g e c
 d r d, r <d' fs> r
 <d g> r d, r <d' e g cs> r
% LH meas 75:
 <d fs a d> r d, r <d' fs a> r
 <d g bf> r d, r <d' g bf> r
 <d fs a> r d, r <d' g bf> r
 <d a' c> <g bf> <fs a> <e g> <d f> <c ef>
 <g b d>16 g' fs! g a g fs g e g e d
% LH meas 80:
 c g' fs g a g fs g d g d c
 b8 g' b g e c
 a fs' a fs d b
 g d' b g fs d'
 e, cs' bf g d d'
% LH meas 85:
 cs, e' bf g cs, e'
 c,!4\fermata r4 r
 r16 b' c d c b a g d'8 d,
 g g' r b e, g
 g, c' r a d, fs
% LH meas 90:
 g,16 b' a b g b f b e, b' d, b'
 c, a' g a fs a e a d, a' c, a'
 b, g' fs g e g d g c, g' b, g'
 a, c e g fs8 d g b,
 \stemDown c a d4 d,
% LH meas 95:
 g,2. \bar "|."
}


% And here's the score, put together:

\score {
   
    \context PianoStaff 
    <<
% The following is a translator block, to bring the upper and lower
% staffs closer together:
%       \context {
%          \PianoStaff 
%            \override VerticalAlignment #'forced-distance = #7
%       }
% It's not actually working yet; won't compile at all this way.
% and the rest of this is as before:
      \context Staff = "up"  {
        \set Staff.midiInstrument = #"harpsichord"
        \key g \major
        \time 3/4
% These "autochange" and "context" lines are to make the notes
% jump down to the bass clef staff when the upper part goes down.
% They have to come just before the notes.
        \autochange 
        \context Voice
% and here are the notes:
        \RHand
      }
      \context Staff = "down" {
        \set Staff.midiInstrument = #"harpsichord"
        \clef bass
        \key g \major
        \time 3/4
% Could put autochange staffing here too, but not for now.
        \LHand
      }
    >>
  \header {
    piece = "1. Praeambulum" %I really wanted this at the beginning of the staff. Maybe it's better here, anyway.
  }
 \layout { }
 \midi { 
   \tempo 4=120
 }
}

