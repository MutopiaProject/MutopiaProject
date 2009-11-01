\keys re \major
\time 3/4
\tempo "Tendrement"
\midiTempo #92
\once \override Score  .RehearsalMark #'break-align-symbols = #'(time-signature)
\mark "A" s2.*18 \alternatives s2. s2.
s2.*16 s2 s8. \mark A s16 \bar "||"
\set Score.repeatCommands = #'((volta "2.")) s2.
\set Score.repeatCommands = #'((volta #f))
s2.*27 s2 s8. \mark A s16 \bar "||"
\set Score.repeatCommands = #'((volta "2.")) s2.
\set Score.repeatCommands = #'((volta #f))
s4 \tempo "Lentement" s2 s2. \bar "|."