\oldKey re \minor
\newKey sol \minor
\time 3/4
\midiTempo #48
\partial 4 s4 \mark "A" s2.*10
\bar "|:" \mark "B" \grace s8 s2.*6 \alternatives s2. s2.
s2.*11 s2 s8 \mark "A" s8 \bar "||" \break
\set Score.repeatCommands = #'((volta "2.")) s2.
\set Score.repeatCommands = #'((volta #f))
s2.*14 s2 s8 \mark "B" s8 \bar "|."
\markDownEnd \mark \markup \smaller \override #'(line-width . 40) \justify {
 La seconde et dernière fois que l'on dit la petite reprise B, on peut
 la jouer une octave plus bas pour finir.
}