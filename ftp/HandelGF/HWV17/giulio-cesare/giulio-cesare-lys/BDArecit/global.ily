\time 4/4
\key c \major
s1 
\override Staff.TimeSignature #'transparent = ##t
s4 s2 s4 s1*3 s2.
\tag #'recit {
    \once \override Voice . TextScript #'no-spacing-rods = ##f
    \once \override Voice. TextScript #'extra-offset = #(cons 0 -11)
}
s4 -\tag #'recit ^\markup \scenic \column { "(Vuol rapire la spada dal"
                                            "fianco di Sesto per isvenarsi,"
                                            "e Curio la frastorna.)" }
s1 s1*6 
\set Score.measureLength = #(ly:make-moment 5 4)
s1 s4
\set Score.measureLength = #(ly:make-moment 4 4)
s1 s4 s2 s4 s1 s4 s2. s1*4
\set Score.measureLength = #(ly:make-moment 5 4)
s8 s8 -\tag #'recit ^\markup \scenic "(parte.)" 
s2 s2 
\set Score.measureLength = #(ly:make-moment 4 4)
s1 s1 s1*3
\bar "|."
