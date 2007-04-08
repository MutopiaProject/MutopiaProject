\version "2.0.0"
tenoreLyrics = \lyrics {
  Di -- es i -- rae, di -- es il -- la,
  solv -- vet sae -- clum in fa -- vil -- la: 
  te -- ste Da -- vid cum Si -- byl -- la.

  Quan -- tus, quan -- tus tre -- mor est fu -- tu -- rus,
  quan -- do ju -- dex est ven -- tu -- rus,
  cun -- cta stri -- cte, stri -- cte dis -- cus -- su -- rus!

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

tenoreVoice = \notes \relative c' {
  \key d \minor
  \time 4/4

  f2\f f2 |
  g4 g4 r2 |
  g2 g2 |
  f4 f4 r4 f8 f8 |
  e4 d4 r4 a8 a8 |
% BAR 6
  e'4 d4 r4 f8 f8 |
  d4 d4 cis4 f4 |
  f4 e4 r2 |
  R1 |
  c2. f,4 |
  f'2. c4 |
% BAR 12
  a fis a c |
  c2 b |
  g'2. d4 |
  b gis b d |
  c4. a8 d4. b8 |
  e4 a, r4 f'8 f |
% BAR 18
  e4 e e2 |
  e4 r4 r2 |
  R1*2 |
  e2 e |
% BAR 23
  d4 d r2 |
  d2 d |
  c4 c r c8 c |
  d4 e r4 e8 e |
  e4 e r c8 b |
  a4 c d c |
% BAR 29
  c b r2 |
  R1 |
  es2. es4 |
  es es es es |
  es( e) e2 |
  e2. cis4 |
% BAR 35
  cis e cis e |
  e( f) f2 |
  es2 es |
  d c |
  bes f' |
  f4 e r2 |
% BAR 41
  R1 |
  r2 cis4. cis8 |
  d4 cis cis4. cis8 |
  d4 cis r2 |
  R1 |
% BAR 46
  r2 cis4. cis8 |
  d4 cis cis4. cis8 |
  d4 cis r2 |
  R1 |
  r2 d4. d8 |
% BAR 51
  es( d) es( d) es( d) es( d) |
  cis4 e r e8 e |
  f4 e f e |
  f e r f8 f |
  e4 d e d |
  e d r2 |
% BAR 57
  R1 |
  r4 d2 d4 |
  f d  d4.  d8 |
  cis4 d d( cis) |
  d r4 r2 |
% BAR 62
  r4 d2 d4 |
  g es es4. d8 |
  cis4 d d( cis) |
  d r4 r2 |
  R1 * 3 |
}

tenoreStaff =
  \context Staff = tenore <<
    \clef treble_8
    \property Staff.instrument = #"Tenore "
    \property Staff.instr      = #"T "
    \property Staff.midiInstrument = #"choir aahs"

    \addlyrics
      \context Voice = tenore { \tenoreVoice }
      \context Lyrics = tenore { \tenoreLyrics }
  >>
