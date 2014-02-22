\version "2.18.0"
bassoLyrics = \lyricmode {
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

  Quan -- tus tre -- mor -- est fu -- tu rus,
  quan -- tus tre -- mor -- est fu -- tu rus,
  quan -- tus tre -- mor -- est fu -- tu rus,
  quan -- tus tre -- mor -- est fu -- tu rus,
  quand -- do ju -- dex est ven -- tu -- rus,
  cun -- cta stri -- cte dis -- cus -- su -- rus,

  cun -- cta stri -- cte, stri -- cte dis -- cus -- su -- rus,
  cun -- cta stri -- cte, stri -- cte dis -- cus -- su -- rus!
}

bassoVoice =  \relative c' {
  \key d \minor
  \time 4/4

  d2\f d2 |
  d4 d4 r2 |
  cis2 cis2 |
  d4 d4 r4 d,8 d8 |
  e4 f4 r4 f8 f8 |
% BAR 6
  cis4 d4 r4 d'8 c8 |
  bes4 a4 g4 d4 |
  a'4 a4 r2 |
  R1 |
  f2. f4 |
  f f f f |
% BAR 12
  fis2 fis |
  g2. g4 |
  g g g g |
  gis2 gis |
  a2 b |
  c d |
% BAR 18
  e4 a, e2 |
  a4 r4 r2 |
  R1*2 |
  a2 a |
% BAR 23
  a4 a r2 |
  gis2 gis |
  a4 a r a8 a |
  d4 c r c8 c |
  b4 a r a8 g |
  f4 e d a' |
% BAR 29
  e e r2 |
  R1 |
  c'2. c4 |
  c c c c |
  c( bes) bes2 |
  bes2. bes4 |
% BAS 35
  bes a a g |
  g( f) f2 |
  g2 a |
  bes a |
  g gis |
  a4 a a4. a8 |
% BAR 41
  gis( a) gis( a) gis( a) gis( a) |
  bes4 a r2 |
  R1 |
  r2 a4. a8 |
  gis( a) gis( a) gis( a) gis( a) |
% BAR 46
  bes4 a r2 |
  R1 |
  r2 a4. a8 |
  gis( a) gis( a) gis( a) gis( a) |
  bes4 bes, bes'4. bes8 |
% BAR 51
  c8( bes) c( bes) c( bes) c( bes) |
  a4 a r a8 a |
  d4 a d a |
  d a r d8 d |
  cis4 d cis d |
  cis d r2 |
% BAR 57
  R1 |
  r4 f,2 f4 |
  d' bes g e |
  a d, a'2 |
  d,4 r4 r2 |
% BAR 62
  r4 bes'2 bes4 |
  bes g g g |
  a d a2  |
  d,4 r4 r2 |
  R1*3 |
}

bassoStaff =
\context Staff = "basso" <<
  \clef bass
  \set Staff.instrumentName = #"Basso "
  \set Staff.shortInstrumentName = #"B "
  \set Staff.midiInstrument = #"choir aahs"

  \new Voice = "basso" { \bassoVoice }
  \new Lyrics \lyricsto "basso" { \bassoLyrics }
>>
