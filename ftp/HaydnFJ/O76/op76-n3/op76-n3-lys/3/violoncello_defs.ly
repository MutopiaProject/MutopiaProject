\version "2.6.0"

celloBreakI = {
  s8
  s1*78\pageBreak
}

celloBreakBeforeIV = ##t

celloOverridesI = {
  s8
  s1*67
  \override Staff.DynamicText #'extra-offset = #'(0 . -1.5)
  s1*2 \revert Staff.DynamicText #'extra-offset % 69
  \once \override Staff.TextScript #'extra-offset = #'(0 . 0.3) s1 % 70
}
