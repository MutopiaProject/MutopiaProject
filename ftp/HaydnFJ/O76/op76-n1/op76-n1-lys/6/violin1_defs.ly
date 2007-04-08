\version "2.6.0"

violinIBreakI = {
  s16
  s2*144\pageBreak
}

violinIBreakII = {
  s2.*63\pageBreak
}

violinIBreakBeforeIV = ##t

violinIOverridesII = {
  s2.*5
  s8 \raiseScript s8 s2 % 6
  s2.*9
  s8 \lowerDynamics s8 s2 % 16
  s2.*9
  s8 \once \override Staff.Script #'extra-offset = #'(-0.5 . 0.7) s8 s2 % 26
  s2.*11
  \lowerText s2. % 38
  s2.*15
  s8 \raiseScript s8 s2 % 54
  s2.*6
  s8 \raiseScript s8 s2 % 61
  s2.*45
  s8 \raiseText s8 s2 % 107
  s2.
  s8 \raiseText s8 s2 % 109
}

violinIOverridesIII = {
  s4
  s2.*155
  \override Score.RehearsalMark #'extra-offset = #'(0 . 4)
}
