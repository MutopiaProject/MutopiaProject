\version "2.6.0"

violinIBreakI = {
  s1*107\pageBreak
}

violinIBreakBeforeIII = ##t

violinIBreakIV = {
  s4
  s1*33
  \once \override TextScript #'extra-offset = #'(5 . -1)
  s2._\markup \large \bold "V.S." \pageBreak
}

violinIOverridesI = {
  s1*68
  s2. \lowerDynamics s4 % 69
  s1*35
  s2 \lowerDynamics s2 % 105
  s1*8
  s2. \lowerDynamics s4 % 114
}

violinIOverridesIV = {
  s4
  s1*109
  s2 s8 \lowerDynamics s4. % 110
}
