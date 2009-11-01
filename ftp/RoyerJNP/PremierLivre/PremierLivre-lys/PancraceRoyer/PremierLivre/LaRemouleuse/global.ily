\keys sol \major
\time 6/8
\tempo "Modérément"
\midiTempo #108
\once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
\mark "A"
\partial 2 s2 s2.*7 s4 \bar "||"
s8 s4. s2.*7 s4 s16 \mark "A" s16 \bar "||" \break
\tempo "Mineur"
\oldKey re \minor
\newKey sol \minor
s4. \mark "B" s2.*7 s4. \bar "||"
s4. s2.*10
\time 2/2 \tempo "Lent" \grace s8
s1*2
\set Score.measureLength = #(ly:make-moment 2 4) s2 \bar ""
\time 6/8
\set Score.measureLength = #(ly:make-moment 3 8) s4.
\set Score.measureLength = #(ly:make-moment 6 8)
s16 \mark "B" s16*11 \bar "||"
s4 \keys sol \major s8 s8. \mark "A" s16
\markDownEnd \mark \markup \smaller \right-column { "Le majeur" "tout entier" }