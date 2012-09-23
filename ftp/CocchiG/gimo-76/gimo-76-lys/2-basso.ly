\version "2.16.0"

IIBasso =  \relative c' {
  \clef "bass"
  \key g\minor
  \time 2/4
  \set Timing.baseMoment = #(ly:make-moment 1 8)
%  \set Timing.beamExceptions = #'((end . (
%    ((1 . 32) . (2 2 2 2 2 2 2 2))
%  )))

  %1 page 9
  r8  g[ bes g] | r  d[ fis d] | g es c d | g d g,4 |
  r8  g'[ bes g] | r  d[ fis d] |  g[ es c d] | g d g4 | 
  %9
  r8  f[ a f] | r  bes,[ d bes] | es es es e | f f, f f' | g g g g |
  %14 page 10
   f[ f f f] | es es f f | bes bes, bes4 | r8 g'16 bes! a8 bes,! | c c, c4 |
  r8 a''!16 bes bes8 cis, | d d, d fis' | g r f r | g cis, d fis |
  g r fis r | g bes d, fis | g bes c, es |  d[ bes c d] |
  %27 page 11 Note: Bar is written as "g bes c, eis". I assume that c, eis should be d, fis.
  g bes d, fis | g bes c, es | d bes c d | g d g,4 \bar "|."
}

