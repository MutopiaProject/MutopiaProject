\version "2.16.0"

IIMandI =  \relative c' {
  \clef "treble"
  \key es\major
  \time 2/4

  \repeat "volta" 2 {
  es16 es es es g g g g |
  es es es es g g g g |
  f f f f as as as as |
  %4
  f f f f as as as as |
  d, d d d f f f f |
  %6 Note: this bar is "es es es es g g g g" in both sources.
  d d d d f f f f |
  es es es es g g g g |
  %8
  es es es es g g g g |
  f f f f as as as as |
  f f f f as as as as |
  d, d d d f f f f |
  %12
  d d d d f f f f |
  <es g,>2 |
  bes'8 g es bes' |
  c as es c' |
  %16
  bes g es bes' |
  as f d f |
  bes g es bes' |
  c as es c' |
  %20
  bes g es bes' |
  as f d bes |
  <es g,>2
  }

  \repeat "volta" 2 {
  d8 bes d f |
  %24
  es bes g' bes |
  as f d bes |
  es bes es g |
  f bes, f' bes |
  %28
  g bes, g' bes |
  as f d bes |
  <es g,>4 es'16 es es es |
  c c c c as as as as |
  %32
  g g g g bes bes bes bes |
  d, d d d f f f f |
  es es es es es8. es16 |
   es8[ es es es] |
  %36
  <es g,>4 es'16 es es es |
  c c c c as as as as |
  g g g g bes bes bes bes |
  d, d d d f f f f |
  %40
  es es es es es8. es16 |
  es8 es es es |
  <es g,>2 \bar "|."
  }
}
