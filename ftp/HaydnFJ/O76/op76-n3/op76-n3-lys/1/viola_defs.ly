\version "2.6.0"

violaBreakBeforeII = ##t

violaBreakIII = {
  s4
  s1*10 \noBreak
}

violaBreakIV = {
  s4
  s1*15 \pageBreak
}

violaOverridesIV = {
  \lowerDynamics s4
  s1*16
  s2. \lowerDynamics s4
  s1*78
  \once \override Staff.DynamicText #'extra-offset = #'(0 . 0.5)
  s1*9
  \lowerHairpin
  s1*55
  \override Staff.DynamicText #'extra-offset = #'(0 . -1)
  s1*7 % 166
  \revert Staff.DynamicText #'extra-offset
  s1*9
  s4 \LowerText s2. % 176
}
