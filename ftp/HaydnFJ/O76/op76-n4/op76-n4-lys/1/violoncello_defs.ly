\version "2.6.0"

celloBreakBeforeII = ##t

celloBreakIV = {
  s4
  s1*25 \pageBreak
}

celloOverridesI = {
  s1*42
  \lowerText s1 % 43
  s1*91
  \LowerText s1 % 135
}

celloOverridesII = {
  s2*93
  \lowerDynamics
}

celloOverridesIV = {
  s4
  s1*104
  s2. \lowerDynamics s4 % 105
  s1*70
  s4 \LowerText s2. % 176
}
