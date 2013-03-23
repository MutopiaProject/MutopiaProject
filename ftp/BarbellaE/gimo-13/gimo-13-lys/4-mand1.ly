\version "2.16.0"

IVMandI =  \relative c'' {
  \clef "treble"
  \time 2/4
  \key g\minor
  \set Timing.baseMoment = #(ly:make-moment 1 2)

  %page 10
  \repeat "volta" 2 {
  \partial 4 d8-. g-. | d d d es | d d d es |
  %3
  <<{d-. c-. bes-. a-. | bes g d' g} \\ {d,2 | d4}>> | d'8 d d es | d d d es |
  %7
  <<{d c bes a} \\ d,2>> | <g g,>4 r8
  }
  
  \repeat "volta" 2 {
  bes |
  %9
  f' f f d | es es es c | d d d bes | c c c f, |
  %13 page 11
  f' f f d | es es es c | d bes c a | bes4.
  }

  \repeat "volta" 2 {
  d8 | 
  %17
  g d es b | c c c g' | f c d a | bes bes bes d | d bes bes g' |
  %22
  g d d es | d c bes a | g4 g,8 r |
  }
  
  \repeat "volta" 2 {
  %25
  d''4 g | fis d | bes cis | d d, | <c' d,> a' | <bes, d,> g' |
  %31
  a,8 es' d fis, | g4 g, |
  }

  \repeat "volta" 2 {
  %33
  b'4 as' | g c, | d b | c c, | cis' bes' | a d, | e cis | d d, |
  %41
  d' g | es c | a f' | d bes | g es' | c a | fis d' | bes g | d' g |
  %50
  fis d | bes cis | d d, | c'! a' | bes, g' | a,8 es' d fis, | g4 g, |
  }

  %57 page 12  
  \repeat "volta" 2 {
  r4 d''8 g | d d d es | d d d es | <<{d c bes a} \\ d,2>> |
  %61
  <bes' d,>8 g d' g |
  % Note: the d, in <d d, g,> looks like an es, but d makes more sense.
  <d d, g,> d d es | <d d, g,> d d es |
  <<{d c bes a} \\ d,2>> | g4 r8 bes8 | f' f f d | es es es c | d d d b |
  %69
  c c c a | f' f f d | es es es c | d bes c a | bes4 d8 g | d d d es |
  %75
  d d d es | <<{d c bes a} \\ d,2>> | <bes' d,>8 g d' g |
  <<{d d d es | d d d es} \\ {d, d d s | d d s s }>> | <<{d' c bes a} \\ d,2>> |
  %81
  bes'8 g <d' bes> g | <d d, g,> d d es | <d d, g,> d d es |
  <<{d c bes a} \\ d,2>> | g2 | es | cis4 d8 c' |
  %88 page 13
  bes a g fis | g2 | es | cis4 d8 c' | bes a g fis | g4 d8 b |
  %94
  <<{g''4 g | g} {b,! b! | b!} {d, d | d} {g, g | g}>> r4^\fermata \bar "|."
  }
}


