\version "2.16.0"

IMand =  \relative c'' {
  \clef "treble"
  \time 4/4
  \key c\major
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  \partial 8 g8 |
  %1 page 2
  <c e,>4 <c e,> <c e,> r8 g' | \slashedGrace f e d16 c \slashedGrace e8 d c16 b c4 r8 g' |
  \slashedGrace f e d16 c \slashedGrace e8 d c16 b <c e, g,>4 r8 e8 |
  %4
  d16 b g a c a fis d' b a b c d8 dis | e16 g e c e c b a d b a g c a g fis |
  g4 e'16 fis g e  d8[ b] \slashedGrace d c[ b16 a] |
  %7
  b4 e16 fis g e  d8[ b] \slashedGrace d c[ b16 a] | g d b g g' d b g g' e c g g' e c g |
  c' a fis d c' a fis d d' b g d d' b g d |
  %10 Note: the a16 in bar 11 is a g16 in the manuscript
  c' a fis d c' a fis d a'' g fis e d c b a | g8 b16 c d8 d c a16 b c8 c |
  b8 b16 c d8 d c a16 b c8 c | b16 g a b c d e fis g b a g fis e d c |
  %14
  b d b g a c a fis g8 fis!16 e d c b a |
  %15 Note: the fis'' is an eis'' in the manuscript.
  b8 g'' a,, fis'' <g b, d,>8. a,16 g f e d | <c' e, g,>4 c16 d e f
    <<{g4 g8 g |  fis[ e]} \\ {e4 e8 e |  d[ c]}>> g'16 e d c a' f e d <c e, g,>8 <b d,> |
  % 18
  <c e, g,>4 <<{g'8 g} \\ {e e}>> gis( a) <<{f f} \\ {d d}>> |
  fis g <<{e e} \\ {c c}>> d16 e f?8 e16 d c b |
  <c e, g,>4 <<{g'8 g} \\ {e e}>> gis a <<{f f} \\ {d d}>> |
  fis g <<{e e} \\ {c c}>> d16 e f?8 e16 d c b |
  %22
  c4 g,8 c' b4 g,8 b' | c4 g,8 c' d4 g,,8 d'' |
  <<{e s f s g s f s | e s d s c s b s} {s g, s g s g s g | s g s g s g s g}>> |
  %26
  <c' e, g,>4 <<{g'8 f e4 d8 b} \\ {e d c4 d,}>> |
  <c' e, g,>4 <<{g'8 f e4 d8 b} \\ {e d c4 d,}>> |
  <c' e, g,>8 e, f g a e f g | \time 2/4 <c e, g,>4 r8
  }

  \repeat "volta" 2 {
  d,8 | \time 4/4
  %30
  g4 g g r8 d' | \slashedGrace c b a16 g \slashedGrace b8 a g16 fis g4 r8 d' |
  \slashedGrace c b a16 g \slashedGrace b8 a g16 fis g4 r8 d |
  %33
  g16 a bes c d e fis g es8 d r g | g16 fis a g fis es d c bes c d8 r g |
  g16 fis a g fis es d c bes a g8 r d' |
  %36 page 4
   es[ g]  es[ d]  cis[ d] r d |  f[ as]  f[ d b c] r d |
  es16 d c bes a8 g fis16 d fis a fis d fis a |
  %39
  g d g b! g d g b a d, a' c a d, a' c | b g a b c d e fis g b a g fis e d c |
  b g a b c d e fis g b a g fis e d c | b d b g a c a fis b d b g a c a fis |
  %43
  g8 b a c b d c e |  d[ b] \slashedGrace d c[ b16 a] g8 b a c |
  b d c e  d[ b] \slashedGrace d c[ b16 a] | g fis e d c b a g g' fis e d c b a g |
  %47
  c8 b16 c d8 <fis' a, d,> <g b, d,>8. a16 g f? e d |
  <<{c4 c c} {e, e e} \\ g,2.>> r8 g'' |
  \slashedGrace f e d16 c \slashedGrace e8 d c16 b c4 r8 g' |
  \slashedGrace f e d16 c \slashedGrace e8 d c16 b c4 r8 g |
  c16 d e f  g8[ bes,]  gis[ a] r a |
  %52
  d16 e fis g  a8[ a,]  ais[ b!] r d | g,16 a b c d e f d e c b c e c b c |
  %54 page 5
  e16 c b c d c b c f c b c d c b c | e c b c d c b c g' c, b c d c b c |
  f c b c d c b c a' g f e f e d c | d c b a d c b a g4 r8 g |
  %58
  a f b g c e16 f g f e d | c8 e16 f g f e d <c e, g,>4 e,8 g |
  f a g b c e16 f g f e d | c8 e16 f g f e d <c e, g,>4 r |
  %62 Note: The b:s in bar 65 should probably be g:s.
  \times 4/6 {g,16 d' b' b d, g,} <<{b'4 c c | d d c c | b b c c | d d c c}
    {d, e e | f f e e | d d e e | f f e e} {g, g g | g g g g |
    g g g g | g g b b}>> |
  %66
  b'8 g' f16 g f e  d8[ c] \slashedGrace g' f[ e16 d] | c4 b c e,8 g |
  c e, f g a e f g | <c e, g,>2 r2_\fermata \bar "|."
  }
}
