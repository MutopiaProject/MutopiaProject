\version "2.6.0"

violaBreakII = {
  s2
  s1*39
  s2\pageBreak
}

violaBreakIV = {
  s1*83\pageBreak
}

violaOverridesIV = {
  s1*86
  s4 \once \override DynamicText #'extra-offset = #'(-1 . 0) s2. % 87
}
