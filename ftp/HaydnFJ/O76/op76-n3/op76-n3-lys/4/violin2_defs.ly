\version "2.6.0"

violinIIBreakI = {
  s1*141\pageBreak
}

violinIIBreakBeforeIV = ##t

violinIIOverridesI = {
  s1*47
  s2 \lowerDynamics s2 % 48
  s1*49
  s8 \LowerText s2.. % 98
  s1*10
  \lowerText s1 % 109
  s1*5
  \lowerText s1 % 115
}

violinIIOverridesII = {
  s2.*15
  s8 \lowerDynamics s8 s2 % 16
  s2.*12
  \lowerHairpin s2. % 29
  s2.*34
  \lowerHairpin s2. % 64
}

violinIIOverridesIV = {
  \LowerText s4
  s1*39
  \lowerDynamics s1 % 40
  s1*72
  \lowerDynamics s1 % 113
}
