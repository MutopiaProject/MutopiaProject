\version "2.0.0"
organo = \notes \relative c {
  \key d \minor
  \time 4/4
  d8\f f a d d, f a d |
  d, d'4 d d d8 |
  cis,8 e a cis cis, e a cis |
  d, d'4 d d d,8 |
  e4 f r f |
% BAR 6
  cis d r8 d8 d' c |
  bes bes, a a' g g, d' d' |
  a a, a' a a a a a |
  a a bes b c a bes g |
  f f f f f f f f |
  f f f f f f f f |
% BAR 12
  fis fis, a c fis c' a fis |
  g g g g g g g g |
  g g g g g g g g |
  gis gis, b d gis d' b g |
  a, c e a b, d gis b |
  c, e a c d, f b d |
% BAR 18
  e e, a  c e e e, e |
  a4 r r8 c b a |
  gis f' d c b a gis b |
  a c, d f e d e e, |
  a c e a a, c e a |
% BAR 23
  a,8 a'4 a a a8 |
  gis, b e gis gis, b e gis |
  a, a'4 a a a8 |
  d4 c r c |
  b a r8 a,8 a' g |
  f f' e e, d d' a a, |
% BAR 29
  e' e' e, e e e e e |
  d d d d g g g g |
  c, es g c c, es g c |
  c, c' c c c c c c |
  c c bes bes bes bes g e |
  bes e g bes bes, e g bes |
% BAR 35
  bes bes a a a a g g |
  g g f f f d a f |
  g bes es g a, c fis a |
  bes, d g bes a, c f a |
  g, bes es g gis, b d gis |
  a4 a, a'4. a8 |
% BAR 41
  gis a gis a gis a gis a |
  bes4-. a-.
  \clef tenor cis4. cis8 |
  d4 cis cis4. cis8 |
  d4 cis
  \clef bass a4. a8 |
  gis a gis a gis a gis a |
% BAR 46
  bes4-. a-.
  \clef tenor cis4. cis8 |
  d4 cis cis4. cis8 |
  d4 cis
  \clef bass a4. a8 |
  gis a gis a gis a gis a |
  bes bes, bes' bes bes bes bes bes |
% BAR 51
  c bes c bes c bes c bes |
  a4 a, r a'8 a |
  d d, a a' d d, a a' |
  d d, a'4 r d8 d, |
  cis cis' d d, cis cis' d d, |
  cis cis' d a-. f-.  d-. f-. a-. |
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
  d4 r8 a' d f e d |
  cis bes g f e d cis e |
  d f g bes a g a a, |
  d4 r r2 |
}

organoStaff =
  \context Staff = organo <<
    \property Staff.instrument = "Organo"
    \property Staff.instr      = "Org."
    \property Staff.midiInstrument = "church organ"
    \clef bass
    \context Voice = organ {
      \organo
    }
  >>
