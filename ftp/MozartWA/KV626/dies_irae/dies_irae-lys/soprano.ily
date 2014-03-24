\version "2.18.0"
sopranoLyrics = \lyricmode {
  Di -- es i -- rae, di -- es il -- la,
  solv -- vet sae -- clum in fa -- vil -- la:
  te -- ste Da -- vid cum Si -- byl -- la.

  Quan -- tus tre -- mor est fu -- tu -- rus,
  quan -- do ju -- dex est ven -- tu -- rus,
  cun -- cta stri -- cte dis -- cus -- su -- rus!

  Di -- es i -- rae, di -- es il -- la,
  solv -- vet sae -- clum in fa -- vil -- la:
  te -- ste Da -- vid cum Si -- byl -- la.

  Quan -- tus tre -- mor est fu -- tu -- rus,
  quan -- do ju -- dex est ven -- tu -- rus,
  cun -- cta stri -- cte dis -- cus -- su -- rus!

  Die -- es i -- rae, di -- es il -- la,
  die -- es i -- rae, di -- es il -- la,
  quan -- tus tre -- mor est fu -- tu -- rus
  quand -- do ju -- dex est ven -- tu -- rus,
  cun -- cta stri -- cte dis -- cus -- su -- rus,

  cun -- cta stri -- cte, stri -- cte dis -- cus -- su -- rus,
  cun -- cta stri -- cte, stri -- cte dis -- cus -- su -- rus!
}

sopranoVoice =  \relative c'' {
  \key d \minor
  \time 4/4

  d2\f a2 |
  e'4 a,4 r2 |
  e'2 a,2 |
  f'4 d4 r4 d8 d8 |
  cis4 d4 r4 d8 d8 |
% BAR 6
  e4 f4 d4. d8 |
  g4 f4 e4 d4 |
  d4 cis4 r2 |
  R1 |
  f2. c4 |
  a4 f a c |
% BAR 12
  es2 d |
  g2. d4 |
  b4 g b d |
  f2 e |
  e2 e |
  e d |
% BAR 18
  d4 c b2 |
  a4 r4 r2 |
  R1*2 |
  e'2 e |
% BAR 23
  e4 b r2 |
  e2 e |
  e4 c r a8 a |
  f'4 e r a,8 a |
  d4 c e4. e8 |
  d4 c bes a |
% BAR 29
  a gis r2 |
  R1 |
  c2. g'4 |
  es c g c |
  c( cis) cis2 |
  cis2. g'4 |
% BAR 35
  e cis a cis |
  cis( d) d2 |
  es2 fis |
  g f |
  es d |
  d4 cis r2 |
% BAR 41
  R1 |
  r2 a4. a8 |
  gis4 a a4. a8 |
  gis4 a r2 |
  R1 |
% BAR 46
  r2 e'4. e8 |
  f4 e e4. e8 |
  f4 e r2 |
  R1 |
  r2 g4. g8 |
% BAR 51
  fis8( g) fis( g) fis( g) fis( g) |
  g4 cis, r4 cis8 cis |
  d4 cis d cis |
  d cis r d8 d |
  g4 f g f |
  g f r2 |
% BAR 57
  r4 d2 d4 |
  f d r2 |
  r2 g4. g8 |
  g4 f e2 |
  d4 d2 d4 |
% BAR 62
  f d r2 |
  r2 g4. g8 |
  g4 f e2 |
  d4 r4 r2 |
  R1*3 |
}

sopranoStaff =
  \context Staff = "soprano" <<
    \clef treble
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S"
    \set Staff.midiInstrument = #"choir aahs"

      \new Voice = "soprano" { \sopranoVoice }
      \new Lyrics \lyricsto "soprano" { \sopranoLyrics }
  >>
