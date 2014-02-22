\version "2.18.0"
violinoA =  \relative c'' {
  \key d \minor
  \time 4/4
  d16\f a a a a4:16 d16 a a a a4:16 |
  e'8 a,4 a a a8 |
  d16 a a a a4:16 d16 a a a a4:16 |
  f'8 a,4 a a8-. d-. d-. |
  cis4 d16 a d f a8 a4 a8 ~ |
% BAR 6
  a4 f16 d f a d8 d4 d8 ~ |
  d8 g,16 g f f d' d e, e cis' cis d d f, f |
  f8.^\trill( e32) f e8 a a, a4 a8 ~ |
  a8 a16 a bes bes b b c c cis cis d d e e |
  f c c c c4:16 f16 c c c c4:16 |
  f:16 f,:16 a:16 c:16 |
% BAR 12
  es16 c c c c4:16 d16 c c c c4:16 |
  g'16 d d d d4:16 g16 d d d d4:16 |
  b4:16 g:16 b:16 d:16 |
  f16 d d d d4:16 e16 d d d d4:16 |
  a'16 e e e e4:16 gis16 e e e e4:16 |
  a16 e e e e4:16 f16 d d d d4:16 |
% BAR 18
  d16 d b b c c a' a b, b a' a b, b gis' gis |
  a, a c' c a a g g f f e e dis dis fis fis |
  e e d d b' b a a gis gis f f e e d d |
  c c a' a f f d d c c a' a b, b gis' gis |
  a c, c c c4:16 a'16 c, c c c4:16 |
% BAR 23
  b'8 b,4 b b b8 |
  b'16 b, b b b4:16 b'16 b, b b b4:16 |
  c'8 c,4 c a8-. a-. a-. |
  <d, a' f'>4 e'16 a, c e a8 e4 e8 ~ |
  e4 a16 e a c e8 e4 e8 |
  d16 d d, d c c c' c bes bes bes, bes a a a' a |
% BAR 29
  a8.^\trill( gis32) a gis8 e4 e, e'8 |
  f16 f as as f f d d b b g g f f d d |
  <g, es' c'> g' g g g4:16 c16 g g g g4:16 |
  es'16 c c c c4:16 g16 c c c c4:16 |
  c8-. c( cis) cis4 cis cis8 |
  cis16 g g g g4:16 cis16 g g g g4:16 |
% BAR 35
  e'16 cis cis cis cis4:16 a16 cis cis cis cis4:16 |
  cis8 cis( d) d4 d d8 |
  es16 bes bes bes bes4:16 fis'16 c c c c4:16 |
  g'16 d d d d4:16 f16 c c c c4:16 |
  es16 bes bes bes bes4:16 d16 b b b b4:16 |
  d16 a a a cis a a a a,4. a8 |
% BAR 41
  gis16 gis a a gis gis a a gis gis a a gis gis a a |
  bes4-. a-. e'16 e a a cis cis e e |
  f f gis, gis a a e' e e, e a a cis cis e e |
  f f gis, gis a a e' e a,,4. a8 |
  gis16 gis a a gis gis a a gis gis a a gis gis a a |
% BAR 46
  bes4-. a-. a'16 a cis cis e e a a |
  gis gis b, b a a a' a a, a cis cis e e a a |
  gis gis b, b a a a' a a,,4. a8 |
  gis16 gis a a gis gis a a gis gis a a gis gis a a |
  bes8 g'16 g bes bes d d g8 g4 g8 |
% BAR 51
  fis16 fis g g fis fis g g fis fis g g fis fis g g |
  g e g e cis a cis e a8 a4 a8 ~ |
  a a4 a a a8 ~ |
  a4 cis,16 a cis e a8 a4 a8 ~ |
  a8 a4 a a a8 ~ |
  a8 a4 a16 a f f d d f f a a |
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
  d8 f,16 f d8:16 c:16 bes:16 a:16 gis:16 b:16 |
  a:16 g':16 e:16 d:16 cis:16 bes':16 a:16 g:16 |
  f:16 d':16 bes:16 g:16 f:16 d':16 e,:16 cis':16 |
  d4 d,, r2 |
}

violinoAStaff =
  \context Staff = violinoA <<
    \set Staff.instrumentName = #'"Violino I"
    \set Staff.shortInstrumentName = #'"Vo. I"
    \set Staff.midiInstrument = "violin"
    \clef treble
    \context Voice = violinoA {
      \violinoA
    }
  >>
