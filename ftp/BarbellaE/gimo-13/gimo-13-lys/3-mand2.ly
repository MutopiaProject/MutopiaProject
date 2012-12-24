\version "2.16.0"

IIIMandII =  \relative c' {
  \clef "treble"
  \time 3/4
  \key g\major

  %page 8
  \repeat "volta" 2 {
  g4 b cis | d2 c!4 | b8 c b4 a | g4.  d'8[ fis d] | g d a' d, fis d |
  %6
  g d a' d, fis d | g4. b8 a g | g8. fis16 fis2 | d8 e fis d d' d, |
  %10
  a'2 d,4 | <d' d,>2 <fis a, d,>4 | <fis a,>8 e d cis <d d,>4 |
  g,8 d g d g d | fis d fis d e cis | d fis a4 a, | d8 e fis e fis d |
  %17
  g d g d g d | fis d fis d fis d | d' fis a, fis g e | fis4 d2 |
  }

  %21
  \repeat "volta" 2 {
  r4 r d' | e d c | b8 d c b a gis | a4 a a | a2 c4 | d c b | a8 c b a g fis |
  %28
  g b, g2 | b8 g' b, g' b, g' | c, g' c, g' b, g' | a, fis' a, fis' a, fis' |
  %32 page 9
  b, fis' b, fis' a, fis' | g, e' g, e' g, e' | a, e' a, e' a, e' | 
  fis a fis a fis a | g, g' g, g' g, g' | g,4 a cis | d2 c!4 |
  %39
  b8. b16 b4 a | g4. d'8 fis d | g d a' d, fis d | g d a' d, fis d |
  g b d, b c a | b2 g4 |
  }

  %45
  \repeat "volta" 2 {
  \key g\minor
  g'4 g bes | c2 bes4 | d,2 e4 | fis2 d4 | g, g' bes | c2 bes4 |
  a8 c bes a g f | g2 g,4 |
  }

  %53
  \repeat "volta" 2 {
  bes4 d es | f es d | a'8 bes c a bes g | <<a2 \\ f>> f4 |
  %57
  d8 bes d bes d bes | es c es c es c | bes d f d es c | g2 as4 | 
  %61
  g4.  c'8[ d es] | f es d c b as | g f es d c b | c4 g c |
  a'8 b cis d e fis | g4 bes, g | a cis, a |
  %68 page 10
  d2. | bes!4 d bes'! | c8 a c a bes g | d2 e4 | f2 d4 | bes d bes' |
  %74
  c2 bes4 | a8 c bes a g f | g4.  g8[ bes g] | c g c g c g |
  bes g bes g bes g | a c bes a g f | f4 g bes, | c8 g c g c g |
  %82
  bes g bes g a g | c c' bes a g fis | g,2. \bar "|."
  }
}
