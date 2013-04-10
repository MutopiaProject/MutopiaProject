\version "2.16.0"

IIIBasso =  \relative c' {
  \clef "bass"
  \time 6/8
  \key g\major
  
  \repeat "volta" 2 {
  g4 d8 fis4 d8 | g4. fis | g d | g4 d8 fis4 d8 | g4. fis | g d | g4 d8 b4 g8 |
  %8
  g'4. g | fis fis | d d | g g | fis fis | d d | d d | g gis | a cis, |
  %17
  d fis | g gis | a cis,4 a8 | d4. cis4 a8 | d4. cis4 a8 | d4. a | d cis4 a8 |
  %24
  d4 a8 cis4 a8 | d4. cis4 a8 | d4. a | d d | d d | d d |
  }

  \repeat "volta" 2 {
  %30
  d4 a8 cis4 a8 | d4. cis | d a | d4 a8 cis4 a8 | d4. cis | d a |
  %36
  d8. e16 d8 c! b a | g'4 d8 fis4 d8 | g4. fis | g d | g4 d8 fis4 d8 | g4. fis! |
  %42
  g d | g g | b, b | c cis | a a | d4 fis8 a4 fis8 | d4. fis | g g | fis fis |
  %51
  g4 b,8 c4. | d d | g c, | d d | g g | fis4 d8 fis4 d8 | g4. fis4 d8 |
  %58
  g4. fis4 d8 | g4. g | fis4 d8 fis4 d8 | g4. fis4 d8 | g4. d | g, g | g g |
  %65
  g g \bar "|."
  }
}

