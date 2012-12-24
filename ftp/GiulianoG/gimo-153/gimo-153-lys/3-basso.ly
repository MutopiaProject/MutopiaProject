\version "2.16.0"

IIIBasso =  \relative c' {
  \clef "bass"
  \time 3/8
  \key bes \major
  \set Score.skipBars = ##t 
  
  %page 3
  %page 21
  \partial 8 r8 bes bes, bes' | bes a f | bes bes, bes' | bes a f |
  %5
  bes bes, bes' | bes bes, bes' | bes bes, bes' | a a, a' | a a, a' |
  %10
  g g, g' | g e c | f f, f' | 
  %13
  f f, f | % Note: cello part measure 13 is: f f f,
  f' f, f | f' f, f | f' f, f |
  %17
  f' f, f | f' f, f |
  %20 Note: In the cello part, measure 20-26 are replaced by 3 empty measures.
  bes c d | es c c | d4 bes8 | es f f | bes, c d | es c c | d4 bes8 |
  %26
  es f f, | bes4 r8 | r d f | bes,4 r8 |
  %30
  r bes16 bes bes bes | bes4 r8 | R4.*32 |
  %64 Note: 64-66 look "f'8 f f, | c' c c | f f f, |" in the cello part.
  f'8 f, f' | c c c | f f, f' | c c c | f f f | f f f | f f f | f f f |
  %72
  c' c, c | f4 r8 | f4 r8 | f4 r8 | f4 r8 | f f f | f f f | f4 r8 |
  %80
  R4.*25 |
  %105
  g8 g g | d d d | g g g | d d d | g bes g | g d fis |
  %111
  g bes g | g d fis | g g g | fis d d | g g bes | fis d d | g g bes |
  %118
  c d d, | g g g | c d d, |  g[ f!16 es d c] | bes4 r8 |
  %123
  R4.*23 |
  %146
  bes8 bes bes | bes bes bes | bes bes bes | bes bes bes | bes r r |
  %151
  r d d | es4 r8 | r d f |  bes,8[ bes16 bes bes bes] |
  %155
   bes8[ bes16 bes bes bes] | bes4 r8^\fermata \bar "|."
}
