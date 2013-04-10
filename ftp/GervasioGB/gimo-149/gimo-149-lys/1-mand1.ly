\version "2.16.0"

md = \markup {\italic "d."}

IMandI =  \relative c'' {
  \clef "treble"
  \time 4/4
  \key d\major

  %1 page 2
  <fis a, d,>4 <a a,> <fis a, d,> a16 fis d a |
  <fis' a, d,>4 <a a,> <fis a, d,> a16 fis d a |
  <g' b, d, g,>4 <b b,> <g b, d, g> b16 g d b |
  <g' b, d, g,>4 <b b,> <g b, d, g> b16 g d b |
  <fis' a, d,>4 <a a,> <fis a, d,> a16 fis d a |
  <fis' a, d,>4 <a a,> <fis a, d,> a16 fis d a |
  %7
  <<{e'4 fis e} {cis d cis} \\ {a a a}>> a'16 e cis a |
  <<{e'4 fis e} {cis d cis}>> a'16 e cis a |
  <fis' a,>4 <fis a,> <fis a,> d,16 e fis g |
  a b a g fis g fis e d4 <fis' a, d,> |
  <g b, d,> <<e cis \\ a>> <fis' a, d,> d,16 e fis g |
  %12 page 3
  a b a g fis g fis e d4 <fis' a, d,> |
  <g b, d,> <<e cis \\ a>> <fis' a, d,> r8 fis |
  %14 Note: Quarters in bars 14 and 16 are written without stems in the manuscript. My interpretation is :16.
  <<{e16 e e e_ \markup{\italic "simili"} a4:16 e: fis: | e} \\ {cis16 cis cis cis cis4:16 cis: d: |
  cis}>> cis8 e d b gis b | <<{e4:16 fis: e: a: | e} \\ {cis:16 d: cis: cis: |
  cis}>> cis8 e d b gis b |
  %18
  a'16 gis fis e d cis b a <cis e,>4 <<b \\ gis>> |
  a'16 gis fis e d cis b a <cis e,>4 <<b \\ gis>> |
  <<{a'16 a a a a a a a a a a a a a a a} \\
    {cis, cis cis cis cis cis cis cis cis cis cis cis cis cis cis cis}>> |
  %21 page 4
  <<{a' a a a a a a a a a a a a a a a | gis gis gis gis gis gis gis gis
    gis gis gis gis gis gis gis gis} \\ {b, b b b b b b b b b b b b b b b |
    b b b b b b b b b b b b b b b b}>> |
  a'8_\f  e[_\md cis e] d_\f  fis[_\md b, d] |
   cis[^|_\f e_\md a, cis]  b[^|_\f d_\md gis, b] |
  %25 Note: the cis8 e was written as cis16 e in the manuscript
  a'^|_\f  e[_\md cis8 e] d^|_\f  fis[_\md b, d] |
  cis_\f  e[_\md a, cis] b^|_\f  d[_\md gis, b] |
  a4 a'16_\f a a a a4 e16 e e e | e4 cis16 cis cis cis cis4 a16 a a a |
  %29
  a4 e16 e e e e4 cis16 cis cis cis | cis4 a16 a a a a4 r8 a''8 |
  %31 page 5
  g e a, g' fis4 d8 a' | g e fis d \grace d8 cis4_\f a8_\md a' |
  g e a, g' fis4 d8 a' | g e fis d \grace d8 cis4 a'16 a a a |
  g g g g <<{fis fis fis fis e4} \\ {d16 d d d cis4}>> a'16 a a a |
  %36
  g g g g <<{fis fis fis fis e4} \\ {d16 d d d cis4}>> b'16 b b b |
  a a a a g g g g fis4 d8 b' | a g fis e d4 fis16 fis fis fis |
  %39 page 6
  g g g g e e e e <fis a, d,>4 fis,16 fis fis fis |
  g g g g a a a a d,4 fis'16 fis fis fis |
  g g g g e e e e <fis a, d,>4 fis,16 fis fis fis |
  g g g g a a a a d,4 <fis' a, d,>8 a16 g |
  %43
  fis8 a, b g <<a4 \\ fis>> <fis' a, d,>8 a16 g |
  fis8 fis, g a d,4 <fis' a, d,>8 a16 g |
  fis8 a, b g a4 <fis' a, d,>8 a16 g |
  fis8 fis, g a d,4 <fis' a, d,>4 |
  %47
  <g b, d, g,> <<e cis \\ a,>> <fis'' a, d,> fis8 a |
  <fis a, d,> a <fis a, d,> a <fis a, d,>4 r^\fermata_\fermata \bar "|."
}
