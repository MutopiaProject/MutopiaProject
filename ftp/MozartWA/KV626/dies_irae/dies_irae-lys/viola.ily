\version "2.18.0"
viola =  \relative c' {
  \key d \minor
  \time 4/4
  a16\f d d d d4:16 a16 d d d d4:16 |
  a8 e'4 e e e8 |
  a,2:16 a2:16 |
  a8 d4 d d d8 |
  bes4 a8 a d d4 d8 |
% BAR 6
  e4 f8 f f f4 f8 |
  d8 d d d cis e f a |
  a a, a a a a a a |
  a a bes b c f f g |
  c,16 f f f f4:16 c16 f f f f4:16 |
  f2:16 f4:16 c:16 |
% BAR 12
  a:16 fis:16 a:16 c:16 |
  c2:16 b:16 |
  g'2.:16 d4:16 |
  b:16 gis:16 b:16 d:16 |
  c16 a' a a a4:16 d,16 gis gis gis gis4:16 |
  e16 a a a a4:16 d,16 f f f f4:16 |
% BAR 18
  b,16 b d d c c e e e2:16 |
  a,4 r r8 e' fis dis |
  e f d a' b, f' gis, e' |
  e e f f e d e e, |
  c'16 e e e e4:16 c16 e e e e4:16 |
% BAR 23
  d8 d4 d d d8 |
  gis,16 e' e e e4:16 gis,16 e' e e e4:16 |
  e8 a,4 a c8-. c-. c-. |
  d4 c8 c c c4 c8 |
  d4 c
  r8 c c b |
  a f' e e d d c c |
% BAR 29
  e e e e e e e e |
  b b b b g g g g |
  g16 c c c c4:16 g16 c c c c4:16 |
  c16 es es es es4:16 c16 es es es es4:16 |
  es8-. es( e) e4 e e8 |
  g,16 cis cis cis cis4:16 g16 cis cis cis cis4:16 |
% BAR 35
  cis16 g' g g g4:16 cis,16 g' g g a4:16 |
  e8-. e( f) f4 f f8 |
  bes,16 es es es es4:16 c16 fis fis fis fis4:16 |
  d16 g g g g4:16 c,16 f f f f4:16 |
  bes,16 es es es es4:16 b16 d d d d4:16 |
  a16 d d d a cis cis cis a4. a8 |
% BAR 41
  gis8 a gis a gis a gis a |
  bes4-. a-. e'4. e8 |
  f4 e e4. e8 |
  f4 e a,4. a8 |
  gis8 a gis a gis a gis a |
% BAR 46
  bes4-. a-. cis4. cis8 |
  d4 cis cis4. cis8 |
  d4 cis a4. a8 |
  gis8 a gis a gis a gis a |
  bes bes bes bes bes bes bes bes |
% BAR 51
  es( d) es( d) es( d) es( d) |
  cis4-. e-. r e8 e |
  f4:16 e:16 f:16 e:16 |
  f:16 e r d8 d |
  e4:16 d:16 e:16 d:16 |
  e:16 d8 a' f d f a |
% BAR 57
  d, f a d d, f a d |
  f,, a d f f, a d f |
  bes, d f bes e,, g bes e |
  a, a' d, f a g a a, |
  d f a d d, f a d |
% BAR 62
  bes, d f bes bes, d f bes |
  g, bes es g g, bes es g |
  a, a' d, f a g a a, |
  d4 r8 a bes d b gis |
  a bes g' f e d cis a' |
  a4:16 bes:16 a8 g a a, |
  d4 d, r2 |
}

violaStaff =
  \context Staff = "viola" <<
    \set Staff.instrumentName = "Viola"
    \set Staff.shortInstrumentName = "Va."
    \set Staff.midiInstrument = "viola"
    \clef alto
    \context Voice = "viola" {
      \viola
    }
  >>
