\version "2.6.0"

violinIIBreakBeforeII = ##t
violinIIBreakIV = {
  s8
  s2*63 \pageBreak
}

violinIIOverridesI = {
  s1*136
  s4 \lowerDynamics s2. % 137
  s1*4
  s4. \lowerDynamics s8 s2 % 142
}

violinIIOverridesII = {
  s8
  s2.*17
  s4. \lowerDynamics s4. % 18
  s2.*2
  \lowerDynamics s2. % 21
  s4. \lowerDynamics s4. % 22
  s2.*9
  \lowerDynamics s2. % 32
  s2.*32
  \override Staff.DynamicText #'extra-offset = #'(0 . -1) s2.*1 \revert Staff.DynamicText #'extra-offset % 64
}

violinIIOverridesIII = {
  \lowerDynamics
  s4
  s2.*80
  \override Score.RehearsalMark #'extra-offset = #'(0 . 1)
}

violinIIOverridesIV = {
  s8
  s2*180
  \lowerDynamics
}
