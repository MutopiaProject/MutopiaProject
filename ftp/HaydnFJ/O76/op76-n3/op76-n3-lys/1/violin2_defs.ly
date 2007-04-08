\version "2.6.0"

violinIIBreakBeforeII = ##t

violinIIBreakIII = {
  s4
  s1*10 \noBreak
}

violinIIBreakIV = {
  s4
  s1*15 \pageBreak
}

violinIIOverridesI = {
  s1*181
  \once \override Staff.DynamicText #'extra-offset = #'(0 . -2)
  s1*13
  s2. \lowerDynamics
}

violinIIOverridesII = {
  \once \override Staff.TextScript #'extra-offset = #'(0 . -1.5)
  s2*32
  \once \override Staff.TextScript #'extra-offset = #'(0 . -1)
  s2*16
  \once \override Staff.DynamicText #'extra-offset = #'(0 . -1)
}

violinIIOverridesIV = {
  \lowerDynamics
  s4
  s1*16
  \lowerDynamics
  s1*37
  \override Staff.DynamicText #'extra-offset = #'(0 . -1)
  s1*10
  \revert Staff.DynamicText #'extra-offset
  s1*9
  \override Staff.DynamicText #'extra-offset = #'(0 . -1)
  s1*34 % 105
  \revert Staff.DynamicText #'extra-offset
  s1*32
  \lowerText
  s1*19
  \lowerHairpin
  s1*2
  \override Staff.DynamicText #'extra-offset = #'(0 . -1)
  s1*10
  \revert Staff.DynamicText #'extra-offset
  s1*6
  s4 \lowerText s2.
}
