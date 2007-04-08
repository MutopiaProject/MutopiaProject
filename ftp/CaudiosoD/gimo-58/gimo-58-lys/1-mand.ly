\version "1.6.0"

%Note: Each place that says "x8. \times 2/3 {y32 z x} x8 x" was written as "x8 y32 z x x8 x" in the manuscript.

%Note: I have often ignored noStroke when it is obvious that there should be a slash through a grace note.
noStroke = {\property Voice.Stem \set #'stroke-style = #'()}

IMand = \notes \relative c''' {
  \clef "treble"
  \key g\major
  \time 4/4

  % end beams on quarters by default
  \property  Score.autoBeamSettings \override
    #'(end * * * *) = #(make-moment 1 4)
  \property  Score.autoBeamSettings \override
    #'(end 1 8 * *) = #(make-moment 1 2)

  %1 page 9
  <g8 b, d, g,> b,16 c d8 d <{\grace e d c16( )b \grace d8 c b16( )a} \\ {d,4 d}> |
  <g'8 b, d, g,> b,16 c d8 d <{\grace e d c16 b \grace d8 c b16 a} \\ {d,4 d}> |
  g8 g, r d'' e16( c b )c e( c b )c |
  e8 g r g r g-. e-. c-. |
  d16 b a b d b a b d8 g r g |
  r g d b c16-. c( b )c c-. c( b )c |
  c8 a' r a r a c, a |
  b16 g a b c d e fis g8. \times 2/3 {b32 a g} g8 g |
  g8. \times 2/3 {b32 a g} g8 g a8. \times 2/3 {c32 b a} a8 a |
  %10 Note: the dot in a8. was left out in the manuscript.
  a8. c32 b a8 g fis16 e d8 r16 d e fis |
  g8 d' b g e c' a fis |
  g d'16 b g8 f e c'16 a g8 fis |
  g8. fis32 e d8 cis g'8. fis32 e d8 cis |
  c!8. b32 c a'8 c, b8. a32 b g'8 b, |
  a8. b32 c b8 b b16 g a b c d e fis |
  %16 Note: Only the noteheads of the g4: notes are written out in the manuscript.
  g4:16 g: g: g16 g b b |
  a4: a: a: a: |
  g16 b a g fis e d c b8. a32 g c8 cis |
  d4 [b,8 d'] [c, e'] [d, <fis' a, d,>] |
  <g b, d,> \times 2/3 {[b,,16 c d]} g,4 <d''^"Solo" b g,> <e c g,> |
  %21
  <{<d8 b> b16 b b8 b <d4 b> <e c>} {g,,8 g16 g g8 g g4 g}>
  <{<d8 b> b16 b b8 b} {g,8 g16 g g8 g}> <{d8 e d c} \\ {b c b a}> |
  <{d8 e d c d e16 d c8 b} \\ {b8 c b a b c16 b a8 g}> |
  <{[b8 a]} \\ {[g fis]}> r d <d16 b g,> d d d <d b g,> d d d |
  <e c g,> e e e <e c g,> e e e <d4 b g,> <d b g,> |
  <e c g,> <e c g,> <e cis \\ a> <e cis \\ a> |
  <fis d a> <fis d a> <e cis a> <e cis a> |
  <fis d a> <fis d a> d16 e fis g a8 a |
  b,16 a' a a cis, a' a a d,16 e fis g a8 a |
  b,16 a' a a cis, a' a a d,16 e fis g a8 a |
  %30
  a16 g fis e d c! b c <c4 fis, a,> <b g g,> |
  e16 fis gis a b8 b cis,16 b' b b dis, b' b b |
  e,16 fis gis a b8 b cis,16 b' b b dis, b' b b |
  e,16 fis gis a b8 b b16 a gis fis e d cis d |
  <d4 gis, b,> <{cis8 r} \\ {a a}> d16 a( b )a d a( b )a |
  e' a,( b )a e' a, b a \grace g'8 fis e16 d \grace fis8 e d16 cis |
  d8 a' r a, b g' r cis, |
  d16 fis a8 r c,! b g' r cis, |
  d16 e f e d c bes a bes c d c bes a g fis! |
  g a bes a g f e d a'8 a, r e'' |
  %41
  a,16 cis e e a, cis e e <fis2 \\ s \\ d \\ a> |
  <g \\ s \\ cis, \\ e,> <fis \\ s \\ d \\ d,> |
  <f \\ s \\ d \\ gis,> <e \\ s \\ d \\ a> |
  <e \\ s \\ cis \\ g> d16 d cis b a g fis e |
  fis d e fis g a b cis? d d e fis g a b cis |
  d8 a fis d a16_| a( b )a g_| g( fis )e |
  fis d e fis g a b cis d d e fis g a b cis |
  d8 a fis d a,4 \grace a''8 g fis16 e |
  %49
  e2^\trill_"v.v." d8 fis16 g a8 a |
  <{\grace b a g16 fis \grace a8 g fis16 e fis8 fis16 g \grace b8 a g16 fis} \\ {a,2~a}> |
  <{\grace a8 g fis16 e \grace g8 fis e16 d s4 \grace {[fis16 g]} a8 a} \\ {a,2 [cis8 a] [a a]}> |
  <{\grace b a g16 fis \grace a8 g fis16 e [fis8 d]} \\ {a2 a8 r}> d,8 a'' |
  b16 g fis g b g fis g dis8 e g b |
  a16 fis e fis a fis e fis cis8 d fis a |
  g16 g fis g g fis e d cis d e fis g fis g e |
  fis g a g fis e d cis d e fis e d cis b a |
  b cis d cis b a g fis g a b g a8 a, |
  d4 <fis'8 a, d,> a <g b, d,> b <e, cis e,> a |
  <{<fis8 a,> a,16. a32 a8 a <fis'4 a,>} {d,8 d16. d32 d8 d d4}> r4 |
  %60 Note: fis16. fis32 was written fis16 fis16 in the manuscript (only this bar)
  <{<a4 fis> <b g> <a8 fis> fis16. fis32 fis8 fis} {d,4 d d8 d16. d32 d8 d}>
  <{<a4 fis> <b g> <a8 fis> fis16. fis32 fis8 fis} {d,4 d d8 d16. d32 d8 d}>
  <{[a8 b a g] [a b a g]} \\ {[fis g fis e] [fis g fis e]}> |
  <{a b16 a g8 fis [fis e]} \\ {fis8 g16 fis e8 d [d cis]}> r8 a |
  b,16 cis dis e fis g a fis g b a g fis e dis e |
  b cis dis? e fis g a fis g b a g fis e dis! e |
  %66
  b cis dis e fis g a fis g e b g e8 e' |
  a,16 b cis d e fis g e fis a g fis e d cis! d |
  a b cis d e fis g e fis a g fis e d cis d |
  a b cis d e fis g e fis e d8 fis fis |
  b16 a g fis e8 e a16 g fis e d8 d |
  %71
  g16 fis e d cis8 b ais fis ais cis |
  d cis e fis g fis4 e8 |
  d16 d cis b cis8 ais b4 g'16 g fis eis |
  fis!8 fis, fis'16 fis e dis e!8 e, e'16 e d16 cis16 |
  d8 d, d'16 d cis b cis d e fis g8 b, |
  %76
  \grace {\noStroke b8} ais4 r8 b c!16 d e fis g8 ais,! |
  b16 cis d8 r b c16 d e fis g8 ais, |
  b16 cis d8 r b c16 e d cis b8 ais |
  b g' fis16 e d cis d8 g fis16 e d cis |
  d d cis b cis cis b ais b8 b' d,, b'' |
  e,, b'' fis, ais' g,,4 r |
  %82 page 10
  <g''8_"V.v" b, d,> b,16 c d8 d <{\grace e8 d c16 b \grace d8 c b16 a} \\ d,2> |
  <g'8 b, d,> b,16 c d8 d <{\grace e8 d c16 b \grace d8 c b16 a} \\ d,2> |
  g8 g, r d'' e16 c( b )c e c( b )c |
  e8 g r g r g e c |
  d16 b( a )b d b( a )b d8 g r g |
  r g d b c16 c( b )c c c( b )c |
  c8 a' r a r a c, a |
  %89
  b16 d g fis e d c b b8 a r d |
  bes g es' cis d d, r a' |
  f d d' b! c c, r c' |
  c16 es d c c8 c fis8. g16 a8 c, |
  bes g' r cis, d a' r c, |
  bes g' r cis, d a bes! fis! |
  g d es cis d d' d, d' |
  %96
  <fis4 a, d,> r <d^"Solo" b g,> <e c g,> |
  <d8 b> g,, <e'' c> g,, <{[d'' e d c]} \\ {[b c b a]}> |
  <{[d e d c]} \\ {[b c b a]}> <d4 b g,> r |
  <a'4 fis d,> <b g d,> <a8 fis> d,, <b'' g> d,, |
  <{[fis' b a g] [a b a g]} \\ {[d g fis e] [fis g fis e]}> |
  <a4 fis d,> r8 d, g d b g |
  e'16 g fis e e g fis e fis g a b c8 c, |
  d16 fis e d d fis e d e fis g a b8 b, |
  c16 e d c c e d c d e fis g a8 a, |
  %105
  b16 d g fis e d c b b8 a d b, |
  [c e' fis d,] [e g' a a,] |
  b'16 g d b g8 b, [c e' d, fis'] |
  [e, g' fis, a'] b16 a g fis g fis g a |
  b a g fis g fis g a b b a g fis fis e d |
  \grace c8 b a16 g \grace b8 a g16 fis b a g fis g fis g a |
  %111
  b a g fis g fis g a b b' a g fis e d c |
  [b8 g' d, fis'] g4 r8 d |
  es g r es d g r d |
  c a' bes, g' bes, d, r d' |
  es g r es d g r bes, |
  a16 es' d c bes8 a g4 g'16 b! a g |
  fis a g fis e g fis e d8 d, c'16 e d c |
  %118
  b d c b a c b a [g8 g, b' g,] |
  [d'' g,, g''8 b] d,,4 c'16 e d c |
  b d c b a c b a [g8 g, b' g,] |
  [d'' g,, g''8 b] d,,4 c'16 e d c |
  b d c b a c b a g fis e d c b a g |
  %123
  <a'4 e c> <fis' a, d,> <g8 b, d,> [b,16_"V.v." c] d8 d |
  <{\grace e8 d c16 b \grace d8 c b16 a b8 b16 c \grace e8 d d} \\ {d,2 d}> |
  <{\grace e8 d c16 b \grace d8 c b16 a} \\ d,2> b8 g g,4 |
  e''8 c g,4 d''8 b g,4 |
  [c'8 a' b, g'] a,16 d( cis )d d,4 |
  g'8. \times 2/3 {b32 a g} g8 g g8. \times 2/3 {b32 a g} g8 g |
  a8. \times 2/3 {c32 b a} a8 a a8. c32 b a8 g |
  %130
  \times 2/3 {fis16 e d} d8^| r16 d e fis [g8 d' b g] |
  [e c' a fis] g d'16 b g8 f |
  e c'16 a g8 fis! g8. fis32 e d8 cis |
  g'8. fis32 e d8 cis d d, r d' |
  c!8.^\trill b32 c a'8 c, b8.^\trill a32 b g'8 b, |
  a8. b32 c b8 a g16 a b c d e fis g |
  b, c d e fis g a b d,,4 <fis' a, d,> |
  %137
  <g8 b, d, g,> <d,16 g,> <d g,> <d8 g,> <d g,> <g'4 b, d, g,> r4^\fermata \bar "|."
}
