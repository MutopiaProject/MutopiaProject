\version "2.18.0"

IBasso =  \relative c' {
  \clef "bass"
  \key es\major
  \time 4/4

  \repeat "volta" 2 {
  \partial 8 r8 |
  %1 page 3
  g4 d es f | g d8 bes es4 g8 es | d d d d es4 es8 g | d4 d es g8 es |
  %5
  d4 es8 d es g f es | d4 bes r8 es es,4 | c''8 bes as g f es d bes |
  d' c bes as g f es es, | es'' d c bes as g f d | f es d c bes as g bes |
  %11
  es4 as,8 a bes bes' bes,4 | f' f, f' f, | d' bes d bes | a a r8 bes' bes,4 |
  bes r a a | bes r d a | a8 bes es e f4 r8 es | d f bes,4 d a |
  %19
  bes e f f, | bes8 bes' f d bes4 d | es g f es |
  d r d d | es g f f, | bes8 bes' f d bes bes' f d |
  %25
  bes4 r8^\fermata
  }

  \repeat "volta" 2 {
  r8 bes4 r | es8 d c bes a4 a | bes r bes r | es8 d c bes a4 f |
  bes d8 bes es4 d | c8 c c c d g f es | es4 d8 bes es4 d |
  %32
  c8 c c c d es f f, | bes bes' bes,4 g g | g r as c | as c g g | g r as c |
  as c a a | a? r d f | bes, r a a | f r d' f | bes, d8 bes bes4 r |
  %42
  d2 es | f d | bes es8 es' bes g | es4 r d bes | es r g f |
  d8 es as, a bes4 bes | c r g' f | d8 es as, a bes4 bes |
  %50
  es8 es' bes g es4 es' | as, as, bes' as | g r g r | as r bes bes, |
  %54
  r8 es' bes g es4 es, | es r8^\fermata
  }
}
