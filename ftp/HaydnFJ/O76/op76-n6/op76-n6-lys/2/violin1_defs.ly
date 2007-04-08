\version "2.6.0"

violinIBreakI = {
  s1*98 \pageBreak
}

violinIBreakII = {
  s8
  s2.*24 |  \pageBreak
}

violinIBreakBeforeIV = ##t

violinIBreakIV = {
  s8
  s2*7
  s4.\break s8
  s2*214
  s4. \bar "" \pageBreak s8 |
}

violinIOverridesI = {
  s1*94
  \lowerDynamics s1 % 95
  s1*12
  s2 \lowerDynamics s2 % 108
  s1*28
  s4 \lowerDynamics s2.
}

violinIOverridesII = {
  \LowerText s8
  s2.*25
  s4. s4 \lowerDynamics s8 % 26
}

violinIOverridesIII = {
  s4
  s2.*18
  s4 \raiseScript s2 % 19
  s2.*61
  \override Score.RehearsalMark #'extra-offset = #'(0 . 4)
}
