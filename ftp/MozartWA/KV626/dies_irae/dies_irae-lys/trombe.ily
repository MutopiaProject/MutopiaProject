\version "2.0.0"
% Trombe in D (Trumpet tuned in D)
trombeA = \notes \relative c'' {
  \property Staff.transposing = #+2 % C is D
  \key c \major
  \time 4/4
  c4\f r c r |
  r g8 g g g g g |
  g4 r g r |
  r g8 g g g g g |
  r4 g8 g g4 r |
% BAR 6
  r g8 g g4 r |
  c2 d4 c |
  g g8 g g g g g |
  g4 r4 r2 |
  R1*2 |
% BAR 12
  r2 c8 c c c |
  c4 r r2 |
  R1 |
  r2 d8 d d d |
  d4 r d r |
  d r c r |
% BAR 18
  d d d8 d d d |
  d4 r r2 |
  R1*2 |
  d4 r d r |
% BAR 23
  d1 |
  d4 r d r |
  g,8 g16 g g8 g g g g g |
  g4 g8 g g4 r |
  r g8 g g4 r |
  R1*12|
% BAR 29
% BAR 35
  g8 g16 g g8 g g4 r4 |
% BAR 41
  R1*3 |
  r2 g4\sf r4 |
  R1*3 |
% BAR 46
  r2 g4\sf r4 |
  R1 |
  r2 c2 |
% BAR 51
  R1 |
  g8 g16 g g8 g g g g g |
  g g g g g g g g |
  g4 g8 g g4 g8 g |
  g g g g g g g g |
  g4 g r2 |
% BAR 57
  c4 r r2 |
  c4 r r2 |
  c4 r r2 |
  d4 c g2 |
  c4 r r2 |
% BAR 62
  c4 r r2 |
  R1 |
  g4 g8 g g4 g8 g |
  g4 r r2 |
  R1 |
  c4 r g g8 g |
  g4 r r2 |
}  

trombeB = \notes \relative c' {
  \property Staff.transposing = #+2 % C is D
  \key c \major
  \time 4/4
  c4\f r c r |
  r c8 c c c c c |
  g4 r g r |
  r c8 c c c c c |
  r4 c8 c c4 r |
% BAR 6
  r c8 c c4 r |
  c2 g'4 c, |
  g g8 g g' g g g |
  g,4 r4 r2 |
  R1*2 |
% BAR 12
  r2 c8 c c c |
  c4 r r2 |
  R1 |
  r2 d'8 d d d |
  g,4 r c, r |
  g' r c, r |
% BAR 18
  d' d d8 d d d |
  g,4 r r2 |
  R1*2 |
  g4 r g r |
% BAR 23
  d'1 |
  d4 r d r |
  g,8 g16 g g8 g g g g g |
  c,4 g8 g g4 r |
  r g8 g g4 r |
  R1*12 |
% BAR 29
% BAR 35
  g8 g16 g g8 g g4 r |
% BAR 41
  R1*3 |
  r2 g4\sf r |
  R1*3 |
% BAR 46
  r2 g4\sf r |
  R1 |
  r2 c |
% BAR 51
  R1 |
  g8 g16 g g8 g g g g g |
  c c g g c c g g |
  c4 g8 g g4 c8 c |
  g g c c g g c c |
  g4 c r2 |
% BAR 57
  c4 r r2 |
  c4 r r2 |
  c4 r r2 |
  g'4 c, g2 |
  c4 r r2 |
% BAR 62
  c4 r r2 |
  R1 |
  g4 c8 c g4 g8 g |
  c4 r r2 |
  R1 |
  c4 r g4 g8 g |
  c4 r r2 |
}  

trombeStaff =
  \context Staff = trombe <<
    \clef treble
    \property Staff.instrument = "Trombe in D"
    \property Staff.instr      = \markup { \column < "Tro." "D" > }
    \property Staff.midiInstrument = "trumpet"

    \context Voice = one_trombe {
      \partcombine Voice
        \context Thread=one \trombeA
        \context Thread=two \trombeB
    }
  >>

