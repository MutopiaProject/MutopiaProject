\version "2.6.0"

violaBreakBeforeIII = ##t

violaBreakI = {
  s1*74\pageBreak
}

violaBreakIV = {
  s4
  s1*110\pageBreak
}

violaOverridesI = {
  s1*97
  s4 \LowerText s2. % 98
  s1*10
  \lowerText s1 % 109
  s1*44
  s2. \raiseBeam s4 % 154
  s4 \raiseBeam s2. % 155
}

violaOverridesII = {
  s2.*28
  \lowerHairpin s2. % 29
}

violaOverridesIII = {
  s4
  s2.*80
  \lowerHairpin s2. % 81
}
