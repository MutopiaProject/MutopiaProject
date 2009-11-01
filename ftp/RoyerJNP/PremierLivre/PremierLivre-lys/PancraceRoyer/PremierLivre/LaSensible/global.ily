\oldKey sol \minor
\newKey do \minor
\time 2/2
\midiTempo #80
\partial 2 s2 
\bar "|:" \mark "A" \grace s8 s1*11 \alternatives { s1*2 \break } s1*2
s1*11 s2. s8. \mark "A" s16 \bar "||" \break
\set Score.repeatCommands = #'((volta "2.")) s1
\set Score.repeatCommands = #'((volta #f))
s1*20 s2. s8. \mark "A" s16 \bar "||" \break
\set Score.repeatCommands = #'((volta "2.")) s1
\set Score.repeatCommands = #'((volta #f))
s1*5 s2 \bar "|."