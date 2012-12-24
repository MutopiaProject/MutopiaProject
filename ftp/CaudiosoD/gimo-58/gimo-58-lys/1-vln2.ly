\version "2.16.0"

IVlnII =  \relative c''' {
  \clef "treble"
  \key g\major
  \time 4/4

  \set Score.skipBars = ##t

  % end beams on quarters by default, and on halfs for eights.

  %1 page 23
  <g b, d,>8  g,16[ a]  b8[ b] <<{\slashedGrace c 
 b a16 g \slashedGrace b8 a g16 fis} \\ {d2}>> |
  <g' b, d,>8  g,16[ a]  b8[ b] <<{\slashedGrace c b a16 g \slashedGrace b8 a g16 fis} \\ {d2}>> |
  g8 g, r d'' e16( c b  c) e( c b  c) |
  e8 e r e r g g, g' |
  g,16 b a b g b a b g8 d' r d |
  r d g g, g fis g g |
  a fis' r fis r fis a, fis |
  <g b,>4 r r r8 \times 2/3 {b'16 a g} |
  g8 g4 \times 2/3 {b16 a g} g8 g4 g8 ~ |
  %10
  g g4 e8 a,16 g fis8 r16 d'16 e fis |
  g8 d' b g e c' a fis |
  g d'16 b g8 f e c'16 a g8 fis |
  g8. fis32 e d8 cis g'8. fis32 e d8 cis |
  c!8. b32 c a'8 c, b8. a32 b g'8 g, |
  g g g fis g4 r |
  %16 Note: Only the noteheads of the g4: notes are written out in the manuscript.
  r r8 g g'16 g g g g4:16 |
  g: g: g: fis: |
  g16 b a g fis e d c b8. a32 g g8 g |
  fis4 g8 b,  c[ e']  d,[ <fis' a, d,>] |
  <g b, d,> \times 2/3 { b,,16[ c d]} g,4 g8 g' b, g' |
  %21
  g,4 g g'8 g, g' g, |
  g4 g g2:8 |
  g4: g c4 cis |
  d8 d d16 e fis d g8 g, b g |
  r c e c r g b g |
  r c e c r a cis a |
  r d fis d r a cis a |
  r d fis d r d fis d |
  %29
  g, r a r b4 r8 fis' |
  g r a r b,4 r8 cis |
  d4 fis r8 d g g, |
  r e' gis e a, r b r |
  cis4 r8 gis a r b r |
  cis r r gis gis2:8 |
  %35
  r8 e' a g! fis4 fis |
  cis cis d a |
  d8 r fis r g r a g |
  fis r d r g, r a r |
  d2 g4 r |
  g,2 a16 b! cis d e d cis b |
  a8 a' g g fis d fis d |
  %42
  r a' a, a' r d, fis d |
  r gis, gis gis r a a a |
  r a a' g! fis!4 cis |
  d e fis b,8 g' |
  fis d fis g a4 a, |
  d e fis b,8 g' |
  fis4 r8 gis,8 a2:8 |
  %49
  a2 d8 d'16 e fis8 fis |
  %50
  \slashedGrace g fis e16 d \slashedGrace fis8 e d16 cis d8 d16 e \slashedGrace g8 fis e16 d |
  \slashedGrace fis8 e d16 cis \slashedGrace e8 d cis16 b a8 d16 e fis8 fis |
  \slashedGrace g fis e16 d \slashedGrace fis8 e d16 cis d8 fis, fis d' |
  d d d4 r8 b b'4 |
  d,8 d d4 r8 a a'4 |
  r8 b, e16 d cis b a b cis d e d e cis |
  d e fis e d cis b a b cis d cis b a g fis |
  g a b a g fis e d g a b g a8 a, |
  d4 <fis' a, d,>8[ a] <g b, d,>[ b] <e, cis e,>[ a] |
  <fis a, d,>8[ d16. d32]  d8[ d] <d fis, a,>4 r4 |
  %60
  d8 d, d' d, d4 d |
  d8 d d d d2: |
  d8 d' d, d' d, d' d, d' |
  d,4 r8 gis8 a a, c! c |
  b2 e4 r |
  %65 Note: This bar was not present in the manuscript.
  b2 e4 r |
  b2 e4 e16 d c b |
  a2 d4 r |
  a2 d4 r |
  %69
  cis2 d4 r8 d |
  g4 cis,8 cis fis4 b,8 b |
  e4. eis8 fis2: |
  fis: e!8 ais, ais ais |
  b d e fis b,2: |
  ais: gis8 gis g g |
  fis' fis fis d e4. eis8 |
  fis fis e! d e2: |
  %77 page 24
  d2:8 e: |
  d: e8 e fis fis |
  g e ais, ais b b ais ais |
  b d e fis b,4 d |
  e fis b, r |
  %82
  <g'' b, d,>8  g,16[ a]  b8[ b] \slashedGrace c8 b a16 g \slashedGrace b8 a g16 fis |
  <g' b, d,>8  g,16[ a]  b8[ b] \slashedGrace c8 b a16 g \slashedGrace b8 a g16 fis |
  g8 g, r d'' e16 c b c e c b c |
  e8 e r e r g g, g' |
  g,16 g fis g g g fis g g8 g' r d |
  r d g g, g fis fis g |
  a fis' r fis r fis a, fis |
  %89
  g16 b e d c b a g g8 fis r4 |
  r8 bes, bes'4 a8 a d,4 |
  r8 as as'4 g8 g g,4 |
  g'2 a8. bes16 c8 fis,! |
  g r g' r fis! r a, r |
  g r g' r d a bes fis! |
  g d es cis d fis d fis |
  %96
  <fis' a, d,>4 fis,16 a g fis g,8 g' g, g' |
  g,4 g' g,2:8 | 
  g: g8. b'16 a g fis e |
  d8 d' d, d' d,4 d' |
  d,2: d: |
  d4 r r8 g g, g' |
  a2 fis ~ |
  %103
  fis e~ |
  e d~ |
  d4 e d8 d d4 |
  R1*2 |
  %108
  r2 g2_ \markup{\italic "d."} ~ |
  g4 r r2 |
  r2 b, ~ |
  b2. r4 |
  d8 d c c b bes16 a g4 |
  r r8 g'8 g g, r g' |
  es d d d d d d4 |
  %115
  r8 g g,4 r8 g' g,4 |
  es'8 es d c b!4 r |
  r g' fis! r |
  r c b b |
  b b b r |
  r2 d4 d |
  b g' fis r |
  R1 |
  %123
  r2 <g' b, d,>8  g,16[ a] b8 b |
  \slashedGrace c8 b a16 g \slashedGrace b8 a g16 fis g8 g16 a b8 b |
  \slashedGrace c8 b a16 g \slashedGrace b8 a g16 fis g8 b, g4 |
  c'8 e, g,4 b'8 d, g,4 |
  a'8 fis' g, b fis16 fis e fis fis8 g16 fis |
  %128 Note: The 16th triplets were written as 32th triplets in the manuscript.
  g4 r8 \times 2/3 {b'16 a g} g8 g4 \times 2/3 {b16 a g} |
  g8 g4 g g e8 |
  \times 2/3 {a,16 g fis} fis8 r16 d' e fis  g8[ d' b g] |
  %131 Note: The f? is a fis! in the manuscript.
   e[ c' a fis] g d'16 b g8 f? |
  e c'16 a g8 fis! g8. fis32 e d8 cis |
  g'8. fis32 e d8 cis d d, r d' |
  c!8. b32 c a'8 c, b8. a32 b g'8 g,~ |
  g g4 fis8 g4 r |
  b16 c d e fis g a b d,,4 <fis' a, d,> |
  %137
  <g b, d,>8 <d, g,>16[ <d g,>] <d g,>8[ <d g,>] <g' b, d, g,>4 r4^\fermata \bar "|."
}
