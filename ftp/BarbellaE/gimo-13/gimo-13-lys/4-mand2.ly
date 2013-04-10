\version "2.16.0"

IVMandII =  \relative c'' {
  \clef "treble"
  \time 2/4
  \key g\minor
  \set Timing.baseMoment = #(ly:make-moment 1 2)

  %page 10
  \repeat "volta" 2 {
  \partial 4 <<{bes8 bes | bes bes bes c | bes bes bes c}
    {g g | g g g g | g g g g}>> | bes a g fis |
  %4
  g g <<{bes bes | bes bes bes c | bes bes bes c} {g g | g g g g | g g g g }>> |
  %7
  g a g fis | <g g,>4 r8
  }
  
  \repeat "volta" 2 {
  bes |
  %9
  d d d bes | c c c a | bes bes bes g | a a a f |
  %13 page 11
  d' d d b | c c c a | bes d, es c | <d bes>4.
  }

  \repeat "volta" 2 {
  r8 | 
  %17
  r4 r8 g | c g a e | f f f c' | d bes bes, a | g g' g <bes g> |
  %22
  <<{bes bes bes c} {g g g g}>> | bes a g fis | g4 g,4 |
  }
  
  \repeat "volta" 2 {
  %25
  g'8 a bes c | d d, fis d | g bes a g | fis d fis d | a' d, fis d |
  %30
  g d bes' g | es c' bes a | g4 g, |
  }

  \repeat "volta" 2 {
  %33
  f'!8 d f d | es c' es, c' | f, as g f | es d c bes | a a' g es |
  %38
  f d' f, d' | g, bes a g | fis e d c | bes g' bes g | c g c e, |
  %43
  f c' a f | bes f bes d, | es bes' g es | a es a c, | d a' fis d |
  %48
  g d bes g | g' a bes c | c d, fis d | g bes a g | fis d fis d |
  %53
  a' d, fis d | g d bes' g | f c' bes a | g4 g,
  }

  \repeat "volta" 2 {
  %57 page 12  
  r4 <<{bes'8 bes | bes bes bes c | bes bes bes c | bes} {g g | g g g g |
    g g g g | g}>> a g fis | g g <bes g> <bes g> |
  %62
  <<{bes bes bes c | bes bes bes c} {g g g g | g g g g} {g, s s s | g}>>
  %64
  bes' a g fis | g4 r8 bes | d d d b | c c c a | bes! bes bes g |
  %69
  a a a f | d' d d b | c c c a | bes c es, c | <d bes>4 r |
  %74
  <<{bes'8 bes bes c | bes bes bes c} {g g g g | g g g g} g,>>
  bes' a g f | g d g bes |
  %78
  <<{bes bes bes c | bes bes bes c} {g g g g | g g g g}>> |
  bes a g fis | g d g bes |
  %82
  <<{bes bes bes c | bes bes bes c} {g g g g | g g g} {g, s s s | g}>> |
  bes' a g fis | g2 | es | cis4 d8 es |
  %88 page 13
  d c! bes a | g4 <bes' g> |
  %90
  <bes g g,> <cis g> | <cis? g> <d d,>8 <es d,> |
  <<{d c bes a} \\ d,2>> | g4 d8 b |
  %94
  <<{b'4 b | b} {d, d | d} {g, g | g}>> r4^\fermata \bar "|."
  }
}

