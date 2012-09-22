\version "2.16.0"

IVlnI =  \relative c''' {
  \clef "treble"
  \key g\major
  \time 4/4

  \set Score.skipBars = ##t

  % end beams on quarters by default, and on halfs for eights.

  %1 page 16
  <g b, d,>8  b,16[ c]  <<{s4 \slashedGrace e8 d c16(  b) \slashedGrace d8 c b16(  a)} \\ {d8 d d,2}>> |
  <g' b, d,>8  b,16[ c] <<{s4 \slashedGrace e8 d c16(  b) \slashedGrace d8 c b16(  a)} \\ {d8 d d,2}>> |
  g8 g, r d'' e16( c b  c) e( c b  c) |
  e8 g r g r g e c |
  d16 b( a  b) d b( a  b) d8 g r g |
  r g d b c16 c b c c c b c |
  c8 a' r a r a c, a |
  b16 g a b c d e fis g8. \times 2/3 {b32 a g} g8 g |
  g8. \times 2/3 {b32( a  g)} g8 g a8. \times 2/3 {c32 b a} a8 a |
  %10 Note: the dot in a8. was left out in the manuscript.
  a8. \times 2/3 {c32 b a} a8 g fis16 e d8 r16 d e fis |
  g8 d' b g e c' a fis |
  g d'16 b g8 f e c'16 a g8 fis |
  g8. fis32 e d8 cis g'8. fis32 e d8 cis! |
  c!8. b32 c a'8 c, b8.^\trill a32 b g'8 b, |
  a8. b32 c b8 b b16 g a b c d e fis |
  %16 Note: Only the noteheads of the g4: notes are written out in the manuscript.
  g16 g g g g4:16 g: g16 g b b |
  a4: a: a: a: |
  g16 b a g fis e d c b8. a32 g c8 cis |
  d4  b,8[ d']  c,[ e']  d,[ <fis' a, d,>] |
  <g b, d,> \times 2/3 { b,,16[ c d]} g,4 g8 g' g, g' |
  %21
  g,4 g g8 g' g, g' |
  g,4 g g2:8 |
  g: g4 e' | 
  d8 d fis16 g a fis g8 b, d b |
  r8 g'4 g8 r b, d b |
  r g'4 g8 r cis, e cis |
  r a'4 a8 r cis, a cis |
  r a'4 a8 r a4 fis8 |
  %29
  g, r a r b4 r8 d' |
  d r cis r fis,4 r8 <e' g,> |
  <d fis,>4 <a d,> r8 d, g g, |
  r b'4 gis8 a, r b r |
  cis4 r8 gis a r b r |
  cis4 r8 d' d d b b |
  r b cis cis d4 a | 
  %36
  a a a g |
  fis8 r a r g r e' e, |
  a r fis r g r e r |
  f4. fis8 g4 r |
  b,2 a16 b cis d  e d cis b |
  a8 cis' cis cis <d fis,> <a fis> d <a fis> |
  %42
  r a e' e r fis, a fis |
  r b b b r a a, a' |
  r a a a a4 e |
  d e fis d'8 g, |
  a fis a b a4 cis, |
  d e fis d'8 g, |
  a4 r8 b, a4 e''8^\f d16 cis |
  %49 Note: The \slashedGrace b8 was not present in the manuscript.
  <<
  {s1 |
  \slashedGrace b'8 a g16 fis \slashedGrace a8 g fis16 e fis8 fis16 g \slashedGrace b8 a g16 fis |
  \slashedGrace a8 g fis16 e \slashedGrace g8 fis e16 d s4 \grace{fis16[ g]} a8 a |
  \slashedGrace b8 a g16 fis \slashedGrace a8 g fis16 e <fis a,>8[ d]} \\
  {d8 d cis cis d8 fis16 g a8 a |
  a,2~a |
  a4. r8 cis8 a a a |
  a2 s8 r d,8[ a'']}
  >>
  b16 g fis g b g fis g dis8 e g b |
  a16 fis e fis a fis e fis cis8 d fis a |
  g16 g fis g g fis e d cis d e fis g fis g e |
  fis g a g fis e d cis d e fis e d cis b a |
  b cis d cis b a g fis g a b g a8 a, |
  d4 <fis' a, d,>8[ a] <g b, d,>[ b] <e, cis e,>[ a] |
  <fis a, d,>8  <a, d,>16.[ q32]  q8[ q] <fis' a, d,>4 r4 |
  %60
  d,8 d' d, d' d,4 d |
  d16 d' cis d d, d' cis d d,2:8 |
  d: d: |
  d4 r8 b'8 a4 e'8 e |
  dis2 e4 r |
  dis2 e4 r |
  dis,2 e4 g16( fis e  dis) |
  cis2 d4 r |
  cis2 d4 r |
  %69
  a'2. r8 a |
  b2 a |
  g4. gis8  fis[ ais]  cis[ ais] |
  %72 page 17
  a2: cis: |
  b8 fis g fis fis d d' d |
  cis cis c c b b bes bes |
  a a fis fis g4. gis8 |
  %76
  fis fis4 fis8 g!2: |
  fis: g: |
  fis: g8 g fis fis |
  g b cis fis, fis e fis fis |
  fis fis g fis fis4 fis |
  g fis fis r |
  %82
  <<
  {s2 \slashedGrace e'8 d c16 b \slashedGrace d8 c b16 a |
  s2 \slashedGrace e'8 d c16 b \slashedGrace d8 c b16 a} \\
  {<g' b, d,>8  b,16[ c]  d8[ d] d,2 |
  <g' b, d,>8  b,16[ c]  d8[ d] d,2}
  >>
  g8 g, r d'' e16( c b  c) e( c b  c) |
  e8 g r g r g e c |
  d16 b a b d b a b d8 g r g |
  r g d b c16-. c( b  c) c-. c( b  c) |
  c8 a' r a r a c, a |
  %89
  b16 d g fis e d c b b8 a r d |
  bes g es' cis d d, r a' |
  f d d' b! c c, r c' |
  c16 es d c c8 c fis!8. g16 a8 c, |
  bes g' r cis, d a' r c, |
  bes g' r cis, d a bes! fis! |
  g d es cis d d' d, d' |
  %96
  <fis a, d,>4 d16 c b! a g8 g, g' g, |
  g4 g' g,8 g g g |
  g2: g8. b'16 a g fis e |
  d8 d' d d, d4 d' |
  d,2: d: |
  d4 r r8 b' d, d' |
  e1 |
  d |
  c |
  b8 e16 d c b a g g8 fis g4 |
  %106
  R1*2 |
  r2 b2~ |
  b4 r r2 |
  r g2~ |
  g~ g4 r |
  %112
  g8 b fis a g16 g g g g4:16 |
  g: g: g: g: |
  g16 g fis fis g g bes bes fis fis fis fis fis fis g g |
  g4: g: g: g: |
  g: g16 g fis fis g4 r |
  %117
  r cis16 e d cis d4 r |
  r fis,16 a g fis g4 d |
  d d d r |
  r2 d4 d |
  d b' a r |
  R1 |
  %123
  <<
  {s1 |
  \slashedGrace e'8 d c16 b \slashedGrace d8 c b16 a b8 b16 c  d8[ d] |
  \slashedGrace e8 d c16 b \slashedGrace d8 c b16 a s2} \\
  {r2 <g' b, d,>8  b,16[ c] d8 d |
  d,2 d |
  d2 b'8 g g,4}
  >>
  e''8 c g,4 d''8 b g,4 |
   c'8[ a' b, g'] a,16 d cis d d,4 |
  g'8. \times 2/3 {b32 a g} g8 g g8. \times 2/3 {b32 a g} g8 g |
  a8. \times 2/3 {c32 b a} a8 a a8. c32 b a8 g |
  %130 Note:  d16[ e fis] was  d32[ e fis] in the manuscript
  \times 2/3 {fis16 e d} d8 r16  d16[ e fis]  g8[ d' b g] |
   e[ c' a fis] g d'16 b g8 f |
  e c'16 a g8 fis! g8. fis32 e d8 cis |
  g'8. fis32 e d8 cis d d, r d' |
  c!8. b32 c a'8 c, b8. a32 b g'8 b, |
  a8. b32 c b8 a g16 a b c d e fis g |
  b, c d e fis g a b d,,4 <fis' a, d,> |
  %137
  <g b, d, g,>8 <d, g,>16[ <d g,>] <d g,>8[ <d g,>] <g' b, d, g,>4 r4^\fermata \bar "|."
}
