\version "2.16.0"

IMand =  \relative c' {
  \clef "treble"
  \time 4/4
  \key g\major

  \repeat "volta" 2 {
  \partial 8 d8 |
  <g g,>4 <g g,> g16 a b c d e fis g |
  <g, g,>4 <g g,> g16 a b c d e fis g |
  %3
  \grace { g16[ fis] } e8 d r g16 fis a g fis e d c b a |
  b c d8 r g16 fis a g fis e d c b a |
  %5
  b a g8 r g'16 fis g d b g g' d b g |
  <<e'8 \\ { c[ d]}>> r g16 fis g d b g g' d b g |
  <<{ c8[ b]} \\ { a[ g]}>> r g'16 fis g e cis a g' e cis a |
  %8
  fis' e fis g fis e fis g a fis d a a' fis d a |
  %9 Note: In [145], this bar is only 1/2 long, and subsequent bar lines are out of sync.
  g' e cis a g' e cis a fis' e fis g fis e fis g |
  a fis d a a' fis d a g' fis g a g fis e d |
  %11
  cis a a' a, g' a, fis' a, e'8 g16 a, fis' a, e' a, |
  %12 Note: In [146], this bar is only 1/2 long, and subsequent bar lines are out of sync.
  %After this bar, [145] and [146] have the same bar lines.
  \time 2/4 fis'8 a16 a, g' a, fis' a, | \time 4/4
  e'8 g16 a, fis' a, e' a, fis' a fis d e g e cis |
  %14
  fis a fis d e g e cis d fis e d cis b a g |
  fis8 d' \slashedGrace fis8 e8 d16 cis d8 fis, g a |
  d,4 r8 a''8 f d r g | e cis r g' f d a cis! |
  %18
  d4 r8 a' f d r g | e cis r g' f e16 f <<{s8 f} \\ {g d}>> |
  %20
  <<{f e4} \\ {d8 cis4}>> r8 a,16 b cis d e fis g e |
  fis d cis d fis d cis d a b cis d e fis g e |
  fis a fis d e g e cis d8 r <<{fis fis} \\ {d d}>> |
  %23
  <<{e4 g8 g fis4 fis8 fis} \\ {cis4 e8 e d4 d8 d}>> |
  e'32( fis  g8.) b,16 d cis e d8 cis16 b a g fis e |
  %25
  fis8 d' \slashedGrace fis8 e8 d16 cis d8 fis, g a |
  %26 Note: This bar is only 1/2 long, so after this the bar lines are synchronised again.
  d,4 r8 s2
  }
 
  \repeat "volta" 2 {
  a8
  %27
  d4 d d16 e fis g a b cis d | d,4 d d16 e fis g a b cis d |
  %29
  \grace cis8 b8 a r d16 cis e d cis b a g fis e |
  fis g a8 r d16 cis e d cis b a g fis e |
  fis e d8 r d <g g,>4 <g g,> | g16 a b c d e fis g <g, g,>4 <g g,> |
  %33
  g16 a b c d e fis g \slashedGrace fis8 e8 d r g16 fis |
  a g fis e d c b a b c d8 r g16 fis | a g fis e d c b a b a g8 r d' |
  %36
  g,16 a b c d e f d e c b c d c b c | e c b c d c b c g a b c d e f d |
  %38
  e8 c r e a,16 b cis d e fis g e | 
  fis d cis d e d cis d fis d cis d e d cis d |
  a b cis d e fis g e fis8 d r d | d4 es8 c c4 d8 bes |
  %42
  a32( bes  c8.) bes16 a g fis g4 r8 d'8 | d4 es8 c d4 d8 bes |
  a32( bes  c8.) bes16 a g fis g8 b16 d, a' d, c' a | 
  %45
  b8 d16 d, c' d, b' d, a'8 c16 d, b' d, a' d, |
  b' d b g a c a fis b d b g a c a fis | g'8 fis16 e d c b a b8 g' a g16 fis |
  %48
  g8 b, c d g,4 <<{b8 b} \\ {g g}>> | <<{a4 c8 c b4 b8 b} \\ {fis4 a8 a g4 g8 g}>> |
  a32( b  c8.) e,16 g fis g g4 <<{b8 b} \\ {g g}>> | <<{a4 c8 c b4 b8 b} \\ {fis4 a8 a g4 g8 g}>> | 
  %52
  a32( b  c8.) e,16 g fis a g8 fis16 e d c b a |
  b8 g''8 a g16 fis g8 b, c d | <g b, d, g,>4 r r2 \bar "|."
  }
}
