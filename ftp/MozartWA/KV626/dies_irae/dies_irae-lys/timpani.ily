\version "2.18.0"
% Timpani in D.A (timpani with D and A)
timpani =  \relative c {
  \key c \major
  \time 4/4

  d4\f r d r |
  r d8 d d d d d |
  a4 r a r |
  r d8 d d d d d |
  r4 d8 d d4 r |
% BAR 6
  r d8 d d4 r |
  d8 d d d a4 d |
  a8 a16 a a8 a a a a a |
  a4 r4 r2 |
  R1*2 |
% BAR 12
  r2 d8 d d d |
  d4 r r2 |
  R1*2 |
  a4 r d r |
  a r d r |
% BAR 18
  R1 |
  a4 r r2 |
  R1*2 |
  a4 r a r |
% BAR 23
  a8 a16 a a8 a a a a a |
  a4 r r2 |
  a8 a16 a a8 a a a a a |
  d4 a8 a a4 r |
  r a8 a a4 r |
  R1*12 |
% BAR 29
% BAR 35
  a8 a16 a a8 a a4 r |
% BAR 41
  R1*3 |
  r2 a4\sf r |
  R1*3 |
% BAR 46
  r2 a4\sf r |
  R1 |
  r2 d8 d16 d d8 d |
% BAR 51
  R1 |
  a8 a16 a a8 a a a a a |
  d4 a d a |
  d a8 a a4 d |
  a d a d |
  a d r2 |
% BAR 57
  d4 r r2 |
  d4 r r2 |
  d4 r r2 |
  a4 d8 d a4 a8 a |
  d4 r r2 |
% BAR 62
  d4 r r2 |
  R1 |
  a4 d8 d a4 a8 a |
  d4 r r2 |
  R1 |
  d4 r a4 a8 a |
  d4 r r2 |
}

timpaniStaff =
  \context Staff = "timpani" <<
    \set Staff.instrumentName = \markup { \center-column { "Timpani" "in D.A" } }
    \set Staff.shortInstrumentName = \markup { \center-column { "Tim." "D.A" } }
    \set Staff.midiInstrument = "timpani"
    \clef bass
    \context Voice = "timpani" {
      \timpani
    }
  >>
