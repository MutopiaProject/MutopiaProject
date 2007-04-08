\version "2.6.0"

violinIIBreakBeforeII = ##t
violinIIBreakIV = {
  s1*28\pageBreak
}

violinIIOverridesI = {
  s8
  s1*67
  \lowerDynamics s1 % 68
  s1*8
  s2.. \lowerDynamics s8 % 77
  s1
  s2.. \lowerDynamics s8 % 79
}

violinIIOverridesII = {
  \lowerDynamics
  s2
  s1*13
  s2 \lowerDynamics s2 % 14
  s1*3
  s2 \lowerDynamics s2 % 18
}

violinIIOverridesIII = {
  s4
  s2.*58
  \lowerDynamics s2. % 59
}
