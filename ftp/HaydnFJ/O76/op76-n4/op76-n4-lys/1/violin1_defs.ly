\version "2.6.0"

violinIBreakI = {
  s1*87
  s2. \pageBreak s4
}

violinIBreakBeforeII = ##t

violinIBreakBeforeIII = ##t

violinIBreakIV = {
  s4
  s1*78 \pageBreak
}

violinIOverridesI = {
  s1*121
  \once \override Staff.Script #'extra-offset = #'(0 . 0.5)
}

violinIOverridesII = {
  \once \override Staff.TextScript #'extra-offset = #'(0 . -1.5)
  s2*48
  \once \override Staff.DynamicText #'extra-offset = #'(0 . -1)
  s2*30
  \override Staff.TextScript #'extra-offset = #'(0 . -2)
  s2
  \revert Staff.TextScript #'extra-offset
}

violinIOverridesIII = {
  s4
  s2.*73 | 
  \override Score.RehearsalMark #'extra-offset = #'(0 . 3)
}

violinIOverridesIV = {
  \once \override Staff.DynamicText #'extra-offset = #'(0 . -0.5)
  s4
  s1*14
  \override Staff.DynamicText #'extra-offset = #'(0 . -1)
  s1*3
  \revert Staff.DynamicText #'extra-offset
  s1*36
  \override Staff.DynamicText #'extra-offset = #'(0 . -1.5)
  s1*7
  \revert Staff.DynamicText #'extra-offset
  %61
  s1*44
  \once \override Staff.Hairpin #'extra-offset = #'(0 . -1)
  s1*55
  \override Staff.DynamicText #'extra-offset = #'(0. . -1)
  s1
  \once \override Staff.DynamicText #'extra-offset = #'(0. . -1.5)
  s1*5
  \once \override Staff.DynamicText #'extra-offset = #'(0. . -1.5)
  s1*4
  \revert Staff.DynamicText #'extra-offset
}
