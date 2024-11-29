\version "2.18.2"

\header {
  title = "Zweistimmige Fuge"
  instrument = "für Orgel"
  composer = "Ludwig van Beethoven"
  opus = "WoO 31"
  mutopiatitle = "Fuge - WoO 31"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Organ"
  mutopiaopus = "WoO 31"
  date = "1783"
  source = "Breitkopf and Härtel"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Alexander Jones"
}

global = {
  \key d \major
  \time 2/2
  \tempo "In geschwinder Bewegung."
}

rightMusic = {
  \global
  \clef soprano
  \override Staff.KeySignature.sharp-positions = #'(3)
  d'2 fis' |
  e' a' ~ |
  a'4 fis' e' d' |
  e'1 ~ |
  e'4 a'2 gis'4 |
  a'2. cis'4 |
  d'2 fis' |
  e' a' ~ |
  a'4 fis' e' d' |
  g'2 b' |
  a' d'' ~ |
  d''4 b' a' g' |
  fis' d' e' fis' |
  g'2 b' ~ |
  b'4 e' fis' g' |
  a'1 ~ |
  a'4 d' e' fis' |
  g'1 ~ |
  g'4 cis' d' e' |
  fis' e' d' cis' |
  b b cis' d' |
  e'1 ~ |
  e'4 d'8 cis' d'4 b |
  ais1\trill |
  b2 r4 b' ~ |
  b' ais'8 gis' ais'4 cis'' |
  b'2 d'' |
  cis'' fis'' ~ |
  fis''4 d'' cis'' b' |
  g''1 ~ |
  g''4 e'' d'' cis'' |
  fis''1 ~ |
  fis''4 d'' cis'' b' |
  e''1 ~ |
  e''4 cis'' b' ais' |
  b'\prall( ais' b' cis'') |
  d''\prall( cis'' d'' eis'') |
  fis'' cis'' a' fis' |
  eis' cis' dis' eis' |
  fis' eis' fis' e' |
  dis' b cis' dis' |
  e'2 g' |
  fis' b' ~ |
  b'4 g' fis' e' |
  dis' b cis' dis' |
  e'2 b' |
  c''4 a' fis' e' |
  d'2 a'\trill |
  b'4 g' e' d' |
  c'2 g'\trill |
  a'4 fis' d' c' |
  \grace b16 g'2 b' |
  a' d'' ~ |
  d''4 b' a' g' |
  fis' d' e' fis' |
  g' d''2 f'4 |
  e'2 c'' |
  f'4 c''2 e'4 |
  d'2 b' |
  e'4 b'2 d'4 |
  c' e' a' cis' |
  d' fis' a' cis' |
  b d' gis' bis |
  cis' eis' gis' b |
  \grace a16 fis'2 a' |
  gis' cis'' ~ |
  cis''4 a' gis' fis' |
  eis' cis' dis' eis' |
  fis' fis'' cis'' e'' |
  d''2 b' |
  e'4 e'' b' d'' |
  cis''2 a' ~ |
  a'4 g' e' cis' |
  d'2 fis' |
  e' a' ~ |
  a'4 fis' e' d' |
  e'1 ~ |
  e'4 a'2 gis'4 |
  a'2 cis'' |
  d''4 b' a' gis' |
  << {a'2 r |
      r d'' ~ |
      d'' cis'' |
      d'' fis'' |
      e'' a'' ~ |
      a''4 b'2 g''4 ~ |
      g'' a'2 fis''4 ~ |
      fis'' g'2 e''4 ~ |
      e'' fis'2 d''4 ~ |
      d''2 cis''\trill |
      d''1 |
      cis'' |
      c'' ~ |
      c''4 b'8 a' b'4 b' |}
     \\
     {a2 cis' |
      d' fis' |
      e' a' ~ |
      a'4 fis' e' d' ~ |
      d'2 cis' |
      d' e' |
      cis' d' |
      b cis' |
      d'1 |
      e' |
      d'2 fis' |
      e' a' ~ |
      a'4 fis' e' d' |
      <d' g'>2. <d' g'>4 |}
  >>
  <d' fis' a' d''>1\fermata | \bar ".."
}

leftMusic = {
  \global
  \clef bass
  r1 |
  r1 |
  r1 |
  a2 cis' |
  b e' ~ |
  e'4 cis' b a |
  b1 |
  cis' |
  d2 c' |
  r4 b a g |
  fis d e fis |
  g2 b |
  a d' ~ |
  d'4 b a g |
  cis'1 ~ |
  cis'4 fis g a |
  b1 ~ |
  b4 e fis g |
  a1 |
  d |
  g ~ |
  g4 cis d e |
  fis1 ~ |
  fis4 e d cis |
  b,2 d |
  cis fis ~ |
  fis4 d cis b, ~ |
  b, ais,8 gis, ais,4 fis, |
  b,2 d |
  e4 g a b |
  a,2 a |
  d4 fis g a |
  g,2 b, |
  cis4 e fis g |
  fis1 |
  g ~ |
  g |
  fis2 a |
  gis cis' ~ |
  cis'4. b8 ais4 fis |
  b2 a |
  r4 g fis e |
  dis  b, cis dis |
  e2 g |
  fis b ~ |
  b4 g fis e |
  a1 ~ |
  a4 fis e d |
  g1 ~ |
  g4 e d c |
  fis1 |
  r4 b a g |
  fis d e fis |
  g2 b |
  a d' ~ |
  d'4 b a g |
  c' c'8 b c'4 b |
  a2 f |
  b4 b8 ais b4 a |
  gis2 e |
  a4 a8 gis a4 g |
  fis2 d |
  gis fis |
  eis cis |
  r4 a gis fis |
  eis cis dis eis |
  fis2 a |
  gis cis' |
  a ais |
  b,4 b fis a |
  gis2 e |
  a,4 a e gis |
  a1 |
  r4 fis e d |
  cis a, b, cis |
  d2 fis |
  a cis' |
  b e' ~ |
  e'4 cis' b a |
  b1 |
  <a, a>_\markup{Pedal} ~ |
  \repeat unfold 8 {<a, a>1 ~ |}
  <a, a>1 |
  <d, d> ~ |
  <d, d> ~ |
  <d, d> |
  <g, d g> |
  <d, fis, a, d>_\fermata | \bar ".."
}

\score {
  \new PianoStaff \with {
    instrumentName = "Organ"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } { \rightMusic }
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \leftMusic }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
