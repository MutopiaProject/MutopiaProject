\version "2.18.0"
% Fagotti (Bassoon)
fagottiA =  \relative c' {
  \key d \minor
  \time 4/4
  f2\f f |
  g1 |
  e2 e |
  f2. f4 |
  e d r a4 |
% BAR 6
  e' d r f |
  g f cis d |
  f e r2 |
  r2 c8 cis d e |
  f1 ~ |
  f2. c4 |
% BAR 12
  a fis a c |
  c2 b |
  g'2. d4 |
  b gis b d |
  c4. a8 d4. b8 |
  e4 a, r f' |
% BAR 18
  e e e2 |
  e4 r4 r8 c b a |
  gis f' d c b a gis b |
  a c, d f e d e e, |
  a c e a a, c e a |
% BAR 23
  a,4 d'2 d4 |
  gis,,8 b e gis gis, b e gis |
  a,4 e''2 e4 |
  d c r e |
  e e r8 a,, a' g |
  f f' e e, d d' a a, |
% BAR 29
  e' e' e, e g2 |
  as g |
  c,8 es g c c, es g c |
  c,4 es' es es |
  es( e) e2 |
  e2. cis4 |
% BAR 35
  cis4 e cis e |
  e( f) f2 |
  es es |
  d c |
  bes f' |
  f4 e a,4. a8 |
% BAR 41
  gis8 a gis a gis a gis a |
  bes4 a \clef tenor cis2 |
  d4 cis cis2 |
  d4 cis \clef bass a4. a8 |
  gis a gis a gis a gis a |
% BAR 46
  bes4 a \clef tenor cis2 |
  d4 cis cis2 |
  d4 cis \clef bass a4. a8 |
  gis a gis a gis a gis a |
  bes bes, bes' bes d2\sf |
% BAR 51
  es8( d) es( d) es( d) es( d) |
  cis4 e r a,8 a |
  d d, a a' d d, a a' |
  d d, a'4 r d8 d, |
  cis cis' d d, cis cis' d d, |
  cis cis' d a-. f-. d-. f-. a-. |
% BAR 57
  d, f a d d, f a d |
  f,4 d'2\sf d4 |
  f d bes2 |
  a,8 a' d, f a g a a, |
  d f a d d, f a d |
% BAR 62
  bes,4 d'2\sf d4 |
  g es g,,8 bes es g |
  a, a' d, f a g a a, |
  d4 r8 a' d f e d |
  cis bes g f e d cis e |
  d f g bes a g a a, |
  d4 r4 r2 \bar "|."
}

fagottiB =  \relative c' {
  \key d \minor
  \time 4/4
  d2\f d |
  e1 |
  cis2 cis |
  d2. d,4 |
  e f r f4 |
% BAR 6
  cis d r d'8 c |
  bes4 a g f |
  a a, r2 |
  r2 c'8 a bes g |
  f2. f4 |
  f f f f |
% BAR 12
  fis2 fis |
  g2. g4 |
  g g g g |
  gis2 gis |
  a b |
  c d |
% BAR 18
  e4 a, e2 |
  a4 r4 r8 c b a |
  gis f' d c b a gis b |
  a c, d f e d e e, |
  a c e a a, c e a |
% BAR 23
  a,4 b'2 b4 |
  gis,8 b e gis gis, b e gis |
  a,4 c'2 c4 |
  d c r c |
  b a r8 a, a' g |
  f f' e e, d d' a a, |
% BAR 29
  e' e' e, e e2 |
  f g |
  c,8 es g c c, es g c |
  c,4 c' c c |
  c( bes) bes2 |
  bes2. bes4 |
% BAR 35
  bes4 a a g |
  g( f) f8 d a f |
  g bes es g a, c fis a |
  bes, d g bes a, c f a |
  g, bes es g gis, b d gis |
  a4 a, a'4. a8 |
% BAR 41
  gis8 a gis a gis a gis a |
  bes4 a \clef tenor cis2 |
  d4 cis cis2 |
  d4 cis \clef bass a4. a8 |
  gis a gis a gis a gis a |
% BAR 46
  bes4 a \clef tenor cis2 |
  d4 cis cis2 |
  d4 cis \clef bass a4. a8 |
  gis a gis a gis a gis a |
  bes bes, bes' bes bes2\sf |
% BAR 51
  c8( bes) c( bes) c( bes) c( bes) |
  a4 a, r a'8 a |
  d d, a a' d d, a a' |
  d d, a'4 r d8 d, |
  cis cis' d d, cis cis' d d, |
  cis cis' d a-. f-. d-. f-. a-. |
% BAR 57
  d, f a d d, f a d |
  f,4 f2\sf f4 |
  d'4 bes g e |
  a,8 a' d, f a g a a, |
  d f a d d, f a d |
% BAR 62
  bes,4 bes'2\sf bes4 |
  bes g g,8 bes es g |
  a, a' d, f a g a a, |
  d4 r8 a' d f e d |
  cis bes g f e d cis e |
  d f g bes a g a a, |
  d4 r4 r2 \bar "|."
}

fagottiStaff =
  \context Staff = "fagotti" <<
    \clef bass
    \set Staff.instrumentName = #"Fagotti"
    \set Staff.shortInstrumentName = #"Fag."
    \set Staff.midiInstrument = "bassoon"

    \context Voice = one_fagotti {
      \partcombine \fagottiA \fagottiB
    }
  >>
