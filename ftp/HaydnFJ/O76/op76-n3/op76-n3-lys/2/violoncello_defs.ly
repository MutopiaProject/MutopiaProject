\version "2.6.0"

celloBreakBeforeII = ##t
celloBreakIV = {
  s8
  s2*93\pageBreak
}

celloOverridesII = {
  s8
  s2.*16
  \lowerDynamics s2. % 17
  s2.*3
  \lowerDynamics s2. % 21
  s2.*18
  \raiseText s2. % 40
  s2.*8
  \raiseText s2. % 49
}

celloOverridesIII = {
  s4
  s2 \lowerDynamics s4 % 1
}
