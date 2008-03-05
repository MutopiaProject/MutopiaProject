\tag #'autres \keys re \major
\tag #'cor \keys do \major
\tag #'cor \transposition re'
\time 6/8 \partial 2 s2 s2.*7 s4 \bar "||" \fineMark
\set Score.repeatCommands = #'((volta "1."))
s8 s4.
\set Score.repeatCommands = #'((volta #f))
s2.*7 s4 \bar ":|"
\set Score.repeatCommands = #'((volta "2."))
s8 s4.
\set Score.repeatCommands = #'((volta #f))
s2.*7 s4 \dacapoMark \bar "|." \break