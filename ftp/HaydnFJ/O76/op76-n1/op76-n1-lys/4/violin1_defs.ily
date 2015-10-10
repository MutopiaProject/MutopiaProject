\version "2.18.0"

violinIBreakI = {
  s1*107\pageBreak
}

violinIBreakBeforeIII = ##t

violinIBreakIV = {
  s4
  s1*33
  \once \override TextScript.extra-offset = #'(5 . -1)
  s2._\markup \large \bold "V.S." \pageBreak
}
