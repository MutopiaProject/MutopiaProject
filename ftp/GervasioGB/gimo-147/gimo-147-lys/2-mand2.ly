\version "1.6.0"

IIMandII = \notes \relative c' {
  \clef "treble"
  \key es\major
  \time 2/4

  \property Staff.autoBeamSettings \override #'(end 1 8 * *) = #(make-moment 1 2)

  \repeat "volta" 2 {
  g16 g g g bes bes bes bes |
  g g g g bes bes bes bes |
  as as as as bes bes bes bes |
  %4 
  as as as as bes bes bes bes |
  bes bes bes bes d d d d |
  bes bes bes bes d d d d |
  g, g g g bes bes bes bes |
  %8
  g g g g bes bes bes bes |
  as as as as bes bes bes bes |
  as as as as bes bes bes bes |
  bes bes bes bes d d d d |
  %12
  bes bes bes bes d d d d |
  <es2 g,> |
  g,16 bes g bes g bes g bes |
  as c as c as c as c |
  %16
  g bes g bes g bes g bes |
  d f d f d f d f |
  g, bes g bes g bes g bes |
  as c as c as c as c |
  %20
  g bes g bes g bes g bes |
  g as bes g d' es f d |
  <es2 g,> |
  }

  \repeat "volta" 2 {
  bes16 d bes d bes d bes d |
  %24
  es g es g es g es g |
  as f d bes d bes d bes |
  g bes g bes g bes g bes |
  d f d f d f d f |
  %28
  es g es g es g es g |
  bes, d f as f d f d |
  <es4 bes> es'16 es es es |
  c c c c as as as as |
  %32
  g g g g es es es es |
  bes bes bes bes d d d d |
  es4 <{g8. g16 | [g8 g g g]} \\ {bes,4 | bes2}> |
  %36
  <es4 g,> es'16 es es es |
  c c c c as as as as |
  g g g g es es es es |
  bes bes bes bes d d d d |
  %40 Note: the bes,4 is connected to the g16 in 148, so the bar looks like "es8 es es es g8. <g16 bes,>"
  es es es es <{g8. g16} \\ bes,4> |
  <{g8 g g g} \\ bes,2> |
  <es2 g,> \bar "|."
  }
}
