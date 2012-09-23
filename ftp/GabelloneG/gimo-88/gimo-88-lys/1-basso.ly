\version "2.16.0"

%Note: The original of the basso part is messed up. I have added half bars in different places in order to make it sound all right.

IBasso =  \relative c {
  \clef "bass"
  \key f\major
  \set Score.skipBars = ##t 

  \partial 8 r8 |
  %1 page 2
  %Note: Bars 1-3 were originally 2 bars: r8 f a c f,4 r | r8 f a f bes bes bes bes |
  %Note also: Bar 2: r8 f a c was written r8 f a f in the manuscript, but by similarity with bar 42 and bar 1, it seems more likely that it should be r8 f a c.
  r2 r8 f a c | f,4 r r8 f a c | f,4 r bes8 bes bes bes |
  %4
  g8 g g g a a a a |
  f f f f g g g g | c, c c c f4 c'16 bes a g | f8 f f f f f f f |
  c c c c c c c c |
  %9 page 3
  g' g g g g g g g | c, c c c c c c c | c r c r c c c c | c c c c c2:8 |
  c8 c c c c2: | c8 r c r c c c c | f f f f f2: |
  %16 page 4
  f8 f f f f g a bes | c c c, c f f16 g a8 f | g g c, c f f,16 g a8 f |
  g g c c f f f f | f f f f f f f f | f g a bes c c c, c |
  f r f r f f f f |
  %23 First note is a clear g4 in the manuscript, which does not make sense.
  f4 r f8 r f r |
  %24 page 5
  f f f f f f f f | bes, bes bes bes f' f f f | c c c c f f f,4 | R1*2 |
  %29
  r8 \clef "tenor" f'' f f r e e e |  d[ d] \clef "bass"  g,[ g] c, e f fis |
  %31 page 6
  r8  g16.[ a32]  g8[ f!] e e e e | e e e e b? b b b |
  b? b b b c r c r | d r d r e r e r | f4 r g8 f e f | g g g, g c4 r |
  %37 page 7
  % Note: Bars 37-42 were originally 5 bars: R1*3 | r2 r8 c e g | c,4 r r8 c e g |
  R1*4 | r8 c e g c,4 r | r8 c e g c,4 r |
  %43
  cis8 cis cis cis d2: |
  cis8 cis cis cis d4 r8 d |
  %45 page 8
  b b b b  c[ c]  f[ f] | r g e c f d g e | a f b? g c4 r8 f, | g g g, g c4 f |
  g8 g g, g c r c r | c c' g e c4 r |
  %51 page 9
  c4 r8 g' c,4 r8 g' | c, c c c c4 r | R1*5 |
  %58 page 10
  r8 c c c c r c r | r c c c c r c r | r c c c c r c r |
  f f f f c' c, c'16 bes a g |
  %62 page 11
  f8 r f r  f[ f]  f[ f] | f f f f bes bes bes bes | f f f f c c c c |
  f f f4 a,8 r a r | bes r bes r a r a r |
  %67 page 12
  bes4 r b8 r b r | c r c r b r b r | c r c r c4 c | c r c c | c r c c |
  %72 page 13
  c r f r | R1*6
  %79 page 14
  f8 f f f f f f f | c c c c c c c c | g' g g g g g g g | r c g e c c c c |
  %83 page 15
  c c c c c c c c | c c c c c c c c | c c c c c c c c | c c c c c c c c |
  f f f f f f f f | f f f f f g a bes |
  %89 page 16
  %Note: The original has 2 measures too much, so I have commented out two measures:
  %c, c c c f f f f | f f f f f g a bes |
  c c c, c f r f r | f f f f f4 r^\fermata \bar "|."
} 


