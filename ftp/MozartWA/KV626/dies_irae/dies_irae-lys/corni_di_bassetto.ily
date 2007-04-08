\version "2.0.0"
% Corni di Basetto(Basset Horns tuned in F)
corniDiBassettoA = \notes \relative c''' {
  \property Staff.transposing = #-7 % C is F
  \key c \major
  \time 4/4

  a2\f e |
  b'1 |
  b2 e, |
  c'2. a4 |
  gis a r a4 |
% BAR 6
  b c a2 ~ |
  a4 c b a |
  a gis r2 |
  r2 g8 gis a b |
  c2. g4 |
  e c e g |
% BAR 12
  bes2 a |
  d,2. a'4 |
  fis d fis a |
  c2 b |
  b1 ~ |
  b2 a2 ~ |
% BAR 18
  a4 g fis2 |
  e4 r r2 |
  R1*2 |
  g2 g |
% BAR 23
  a1 |
  a2 a |
  g1 |
  c4 b r b |
  a g r b |
  a g f e |
% BAR 29
  e dis fis2 ~ |
  fis1 |
  g2 g |
  bes4 g d g |
  g( gis) gis2 |
  gis2 gis |
% BAR 35
  b4 gis e gis |
  gis( a) a2 |
  bes2 g |
  f c' |
  bes a |
  a4 gis r2 |
% BAR 41
  R1 |
  r2 e |
  dis4 e e2 |
  dis4 e r2 |
  R1 |
% BAR 46
  r2 b'2 |
  c4 b b2 |
  c4 b r2 |
  R1 |
  r2 a2\sf |
% BAR 51
  g8( a) g( a) g( a) g( a) |
  b4 gis r gis |
  a gis a gis |
  a gis r a |
  b a b a |
  b a r2 |
% BAR 57
  r4 a2\sf a4 |
  c a r2 |
  r2 a4. a8 |
  gis4 a2\sf gis4 |
  a4 a2 a4 |
% BAR 62
  c4 a r2 |
  r2 bes4. a8 |
  gis4 a2 gis4 |
  a r4 r2 |
  r2 r4 e8 gis |
  a4 a2 gis4 |
  a r4 r2 \bar "|."
}

corniDiBassettoB = \notes \relative c'' {
  \property Staff.transposing = #-7 % C is F
  \key c \major
  \time 4/4

  c2\f c |
  d1 |
  d2 d |
  c2. c4 |
  d e r c4 |
% BAR 6
  b a r e' |
  d e f e |
  e e r2 |
  r2 g,8 c4 f8 |
  e1 |
  c4 g c e |
% BAR 12
  g2 e |
  d1 ~ |
  d4 a d fis |
  a2 fis |
  e dis |
  e4 g2 fis8 e |
% BAR 18
  dis4 e2 dis4 |
  e4 r r2 |
  R1*2 |
  e2 e |
 
% BAR 23
  fis1 |
  fis2 fis |
  e1 |
  e4 g r g |
  dis e r g8 fis |
  e4 d c b |
% BAR 29
  b b d2 |
  es2 d4 c |
  bes2 bes |
  d4 d d d |
  d2 d |
  d b |
% BAR 35
  d4 d b e |
  e2 e |
  f e |
  d e |
  f fis |
  e r |
% BAR 41
  R1 |
  r2 b |
  c4 b b2 |
  c4 b r2 |
  R1 |
% BAR 46
  r2 e |
  dis4 e e2 |
  dis4 e r2 |
  R1 |
  r2 d\sf |
% BAR 51
  e8( f) e( f) e( f) e( f) |
  e4 e r b |
  c b c b |
  c b r c |
  d c d c |
  d c r2 |
% BAR 57
  r4 c2\sf c4 |
  e c r2 |
  r2 d4. d8 |
  d4 c b2 |
  a4 c2\sf c4 |
% BAR 62
  a'4 f r2 |
  r2 d4. d8 |
  d4 c b2 |
  a4 r4 r2 |
  r2 r4 e'8 d |
  c e f d c4 b |
  a r r2 \bar "|."
}

corniDiBassettoStaff =
  \context Staff = corniDiBassetto <<
    \clef treble
    \property Staff.instrument = \markup { \column < "Corni di" "Bassetto in F" > }
    \property Staff.instr      = \markup { \column < "Cor." "F" > }
    \property Staff.midiInstrument = "clarinet"

    \context Voice = one_corniDiBassetto {
      \partcombine Voice
        \context Thread=one \corniDiBassettoA
        \context Thread=two \corniDiBassettoB
    }
  >>
