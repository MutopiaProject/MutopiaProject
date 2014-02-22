\version "2.18.0"
violinoB =  \relative c' {
  \key d \minor
  \time 4/4

  f2:16\f f2:16 |
  g8 g4 g g g8 |
  g2:16 g2:16 |
  f8 f4 f f f8 |
  g4 f8 f f f4 f8 |
% BAR 6
  a a4 a a a8 |
  g4:16 a4:16 bes4:16 a16 a d d |
  d8.^\trill( cis32) d cis8 a a a4 a8 ~ |
  a8 a16 a bes bes b b c c cis cis d d bes bes |
  a2:16 a:16 |
  a4:16 c,:16 f:16 a:16 |
% BAR 12
  c16 es, es es es4:16 c'16 d, d d d4:16 |
  d16 g g g g4:16 d16 g g g g4:16 |
  d2:16 g4:16 b:16 |
  d16 b b b b4:16 d16 b b b b4:16 |
  c2:16 d:16 |
  c:16 c4:16 b16 b a a |
% BAR 18
  gis4:16 a:16 a16 a b b gis gis b b |
  a8 r c16 c b b a4:16 a16 a c c |
  b b a a f' f e e d d c c b b gis gis |
  a a e' e a, a d d a a c c gis gis b b |
  a2:16 a:16 |
% BAR 23
  e8 e4 e e e8 |
  d2:16 d:16 |
  c8 e4 e e8-. e-. e-. |
  d4 e8 e e e4 e8( |
  gis4) a16 e a c e8 e4 e8 |
  f16 f a, a g g g' g f f f, f c' c a a |
% BAR 29
  c8.^\trill( b32) c b8 gis g g4 g8 |
  as as as as d, b b b |
  c16 es es es es4:16 es2:16 |
  g:16 g:16 |
  g8 g4 g4 g4 g8 |
  e2:16 e:16 |
% BAR 35
  e2:16 e:16 |
  a8 a4 a a a8 |
  g2:16 es:16 |
  d:16 c:16 |
  g':16 f:16 |
  f4:16 e:16 a,4. a8 |
% BAR 41
  gis16 gis a a gis gis a a gis gis a a gis gis a a |
  bes4-. a-. a'4. a8 |
  gis4 a a4. a8 |
  gis4 a a,4. a8 |
  gis16 gis a a gis gis a a gis gis a a gis gis a a |
% BAR 46
  bes4-. a-. e'4. e8 |
  f4 e e4. e8 |
  f4 e a,4. a8 |
  gis16 gis a a gis gis a a gis gis a a gis gis a a |
  bes8 g'16 g bes bes d d g8 g,4 g8 |
% BAR 51
  a16 a bes bes a a bes bes a a bes bes a a bes bes |
  e, g e g e a cis e a8 cis,4 cis8 |
  d4:16 cis:16 d:16 cis:16 |
  d:16 cis16 a cis e a8 f4 f8 |
  g4:16 f:16 g:16 f:16 |
  g:16 f8 a16 a f f d d f f a a |
% BAR 57
  d d a a f f d d d' d a a f f d d |
  d' d a a f f d d d' d a a f f d d |
  d' d bes bes f f d d d' d bes bes g g e e |
  cis' cis g g f f d' d e, e d' d e, e cis' cis |
  d8:16 a:16 f:16 d:16 d':16 a:16 f:16 d:16 |
% BAR 62
  d':16 bes:16 f:16 d:16 d':16 bes:16 f:16 d:16 |
  es':16 bes:16 g:16 es:16 bes':16 g:16 es:16 d:16 |
  cis:16 g':16 f:16 d':16 e,:16 d':16 a,:16 cis':16 |
  d,8 r f,:16 e:16 d:16 d:16 e:16 f:16 |
  e:16 d:16 bes':16 a:16 g:16 f:16 e:16 cis':16 |
  d2:16 d8:16 f:16 cis:16 e:16 |
  d4 d, r2 |
}

violinoBStaff =
  \context Staff = violinoB <<
    \set Staff.instrumentName = #'"Violino II"
    \set Staff.shortInstrumentName = #'"Vo. II"
    \set Staff.midiInstrument = "violin"
    \clef treble
    \context Voice = violinoB {
      \violinoB
    }
  >>
