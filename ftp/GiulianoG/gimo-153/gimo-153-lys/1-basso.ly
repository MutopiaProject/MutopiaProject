\version "2.16.0"

IBasso =  \relative c' {
  \clef "bass"
  \key bes\major
  \time 4/4
  \set Score.skipBars = ##t 

  %page 2
  %page 20
  \partial 8 r8 | bes bes bes bes bes bes bes bes |
  bes bes, bes bes bes bes bes bes | bes bes d d es es f f, |
  %4
  bes bes d d es es f f, | bes16 bes' f d bes8 r bes' bes bes bes |
  bes bes bes bes bes bes bes bes | a a a a a a a a | a a a a g g g g |
  %9
  c, c c c f f f f | f f f f f f f f | bes bes bes bes bes bes bes bes |
  a f f f f f f f | bes bes bes bes bes bes bes bes |
  %14
  bes bes bes bes bes bes bes bes | bes bes d, d es es f f, |
  bes bes d d es es f, f | bes bes16 bes bes8 bes bes8. g'16 f es d c |
  %18
  bes4 r r2 | R1*15 |
  %34
  r2 f'8 f f f | f f f f f a16 f c8 c | c c c c f f16 a c,8 c |
  c c c c f f a f | f f f f c c e c | c c c c f r f r | f r f r
  %40a Note: The bars get out of sync here
  bes bes bes bes | c c c, c f f a f | r f, a f f4 r4 | R1*12 |
  %55
  r2 g'8 g, g g |
  d' d, d d g' g, g g | % Note: bar 56 is d' d d d g g g, g, in the cello part
  d' d, d d g4-| bes-| |
  %58
  c-| d-| g,-| bes-| | c-| d-| g,8 g' f16 es d c | bes4 r r2 | R1*13
  %74
  r2 bes'8 bes, bes bes | f' f f f bes, bes bes bes | f f f f bes r bes r |
  r d es f g r bes, r | r d es f bes,4 r | bes8 bes16 bes bes8 bes bes4 r^\fermata \bar "|."
}

