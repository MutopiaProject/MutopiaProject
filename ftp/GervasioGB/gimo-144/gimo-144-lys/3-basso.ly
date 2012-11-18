\version "2.16.0"

IIIBasso =  \relative c {
  \clef "bass"
  \time 6/8
  \key d\major

  %1 page 9
  \repeat "volta" 2 {
  d4. cis4 a8 | d4. d8 e fis | g4. a | fis4 a8 fis4 d8 | g4. a |
  %6 Note: bar 16: the d'8 looks like a c'8 in the manuscript.
  d, d'8 a fis | d4. d | cis cis | b b | a a | a a | e' a, | a a | a d |
  %15 Note: bar 16: the a, looks like a g in the manuscript. 
  e gis | a, d | e gis | a a8 e cis | a4. a | a a | a a | a a | a a | a a |
  %25
  a a | a a | a a | a a | 
  %29 page 10
  a'8 d, e cis d e | a,4. r4 r8 |
  }

  \repeat "volta" 2 {
  %31
  a'4. e | a a,8 b cis | d4. e | cis a | d e | a, a8 fis' a | a,4. a | e' e |
  %39
  d d | d d | cis cis | a a | e' d8 fis e | dis4. b | b b | e e | e e |
  %48
  dis b | b b | e e8 cis e | e4. e | gis b, | a a | a a | a d |
  %56 page 11
  e e, | a cis8 e a | a b g fis g e | d4. cis4 a8 | d4. d8 e fis | g4. a |
  fis4 a8 fis4 d8 | g4. a | d a8 fis d | d4. bes | cis a | bes gis |
  %62
  a a8 cis fis | d4. bes | cis a | bes gis | a a8 b cis | g'!4. g | fis fis |
  %69
  e e | d d'8 a fis | g4. g fis fis | e e | d d | d d | d d | d d | d d |
  %88
  d d | g a | d, fis | g a | d,8 d d d4. \bar "|."
  }
}
