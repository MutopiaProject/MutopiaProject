\version "2.16.0"

IIBasso =  \relative c {
  \clef "bass"
  \time 2/2
  \key d \minor
  \set Score.skipBars = ##t 

  %page 2
  %page 20
  \partial 4 r4 | d d d d | a a cis cis | d d d d | a a cis cis |
  %5
  d d d bes | a a'8. d16 c8. bes!16 a8. g16 | f4 f f f | f f f f | f f f f |
  %10
  c c c c | f a bes r | f bes c c, | f r8. g16 f8. e16 d8. cis16 | d4 r r2 |
  %15
  R1*18 |
  %33
  % Note: Violoncello part leaves out second half of 33 plus first half of 34.
  d'8. c16 bes8. a16 gis4 a |
  %34 Note: "c8 bes a g" in the manuscript.
  c8. bes16 a8. g16 fis4 g | 
  %37
  R1*2 | r8\f f g a bes4 r | r8 f g a d,4 a8. a16 |
  %39
  d4 a8. a16 d4 r4^\fermata \bar "|."
}
