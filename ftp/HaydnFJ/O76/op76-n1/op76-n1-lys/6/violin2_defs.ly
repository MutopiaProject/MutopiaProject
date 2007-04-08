\version "2.6.0"

violinIIBreakI = {
  s16
  s2*107
  s4. s16 \break s16
  s2*80\pageBreak
}

violinIIBreakIII = {
  s4
  s2.*140\pageBreak
}

violinIIOverridesI = {
  s16
  s2*2
  \lowerDynamics s2 % 3
  s2
  \lowerDynamics s2 % 5
  s2
  \lowerDynamics s2 % 7
  s2*13
  \lowerDynamics s2 % 21
  s2*119
  \lowerHairpin s2 % 141
  \lowerHairpin s2 % 142
  \lowerDynamics s2 % 143
}

violinIIOverridesII = {
  s2.*14
  \lowerHairpin s2. % 15
  s2.*8
  \lowerHairpin s2. % 24
  s2.*12
  \lowerHairpin s2. % 37
  s2.*44
  s8 \raiseScript s8 s2 % 82
  s2.*23
  \lowerDynamics s2. % 106
  s2.
  \lowerDynamics s2. % 108
}

violinIIOverridesIII = {
  s4
  s2.*155
  \override Score.RehearsalMark #'extra-offset = #'(0 . 1)
}
