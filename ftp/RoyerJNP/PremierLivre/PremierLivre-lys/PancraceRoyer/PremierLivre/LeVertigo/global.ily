\oldKey re \minor
\newKey sol \minor
\time 3/4
\tempo "Modérément"
\midiTempo #80
\once \override Score . RehearsalMark #'break-align-symbols = #'(time-signature)
s2.*23
\tempo "Lent"
s2.*2
\tempo "Vif"
\bar "|:" s2.*7 \alternatives s2. s2. \fineMark \bar "|." \pageBreak
s2.*61
\tempo "Lent"
s2.*3
\tempo "Vif"
s2.*9 \bar "|." \dacapoMarkText \markup \smaller { On joue les quatres premières mesures du rondeau molement ensuite à l'ordinaire. }