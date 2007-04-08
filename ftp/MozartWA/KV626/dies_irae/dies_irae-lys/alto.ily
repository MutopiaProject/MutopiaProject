\version "2.0.0"
altoLyrics = \lyrics {
  Di -- es i -- rae, di -- es il -- la,
  solv -- vet sae -- clum in fa -- vil -- la: 
  te -- ste Da -- vid cum Si -- byl -- la.

  Quan -- tus tre -- mor est fu -- tu -- rus,
  quan -- do ju -- dex est ven -- tu -- rus,
  cun -- cta stri -- cte dis -- cus -- su  -- rus!

  Di -- es i -- rae, di -- es il -- la,
  solv -- vet sae -- clum in fa -- vil -- la: 
  te -- ste Da -- vid cum Si -- byl -- la.

  Quan -- tus tre -- mor est fu -- tu -- rus,
  quan -- do ju -- dex est ven -- tu -- rus,
  cun -- cta stri -- cte dis -- cus -- su -- rus!

  Die -- es i -- rae, di -- es il -- la,
  die -- es i -- rae, di -- es il -- la,
  quan -- tus tre -- mor est fu -- tu -- rus,
  quand -- do ju -- dex est ven -- tu -- rus,
  cun -- cta stri -- cte dis -- cus -- su -- rus,

  cun -- cta stri -- cte, stri -- cte dis -- cus -- su -- rus,
  cun -- cta stri -- cte, stri -- cte dis -- cus -- su -- rus!
}

altoVoice = \notes \relative c'' {
  \key d \minor
  \time 4/4

  a2\f a2 |
  a4 a4 r2 |
  a2 a2 |
  a4 a4 r4 a8 a8 |
  g4 a4 r4 a8 a8 |
% BAR 6
  a4 a4 r4 a8 a8 |
  g4 a4 bes4 a4 |
  a4 a4 r2 |
  R1 |
  a2. a4 |
  f4 c f a |
% BAR 12
  c2 a |
  d,2. g4 |
  d4 d g b |
  d2 b |
  a2 gis |
  a4( c2) b8( a) |
% BAR 18
  gis4 a a( gis) |
  a r4 r2 |
  R1*2 |
  c2 c |
% BAR 23
  b4 b r2 |
  b2 b2 |
  a4 a4 r a8 a |
  a4 a r a8 a |
  gis4 a r e8 e |
  a4 g f e |
% BAR 29
  e e r2 |
  R1 |
  g2. g4 |
  g4 g g g |
  g2 g |
  g2. e4 |
% BAR 35
  g4 g e a |
  a2 a |
  bes2 c4.( a8) |
  g2 a |
  bes b |
  a4 a r2 |
% BAR 41
  R1 |
  r2 e4. e8 |
  f4 e e4. e8 |
  f4 e r2 |
  R1 |
% BAR 46
  r2 a4. a8 |
  gis4 a a4. a8 |
  gis4 a r2 |
  R1 |
  r2 g4. g8 |
% BAR 51
  a( bes) a( bes) a( bes) a( bes) |
  e,4 a r a8 a |
  a4 a a a |
  a a r a8 a |
  a4 a a a |
  a a r2 |
% BAR 57
  r4 f2 f4 |
  a4 f r2 |
  r2 bes4. bes8 |
  a4 a a2 |
  a4 f2 f4 |
% BAR 62
  d'4 bes r2 |
  r2 bes4. bes8 |
  a4 a a2 |
  a4 r4 r2 |
  R1*3 |
}

altoStaff =
  \context Staff = alto <<
    \clef treble
    \property Staff.instrument = #"Alto "
    \property Staff.instr      = #"A "
    \property Staff.midiInstrument = #"choir aahs"

    \addlyrics
      \context Voice = alto { \altoVoice }
      \context Lyrics = alto { \altoLyrics }
  >>
