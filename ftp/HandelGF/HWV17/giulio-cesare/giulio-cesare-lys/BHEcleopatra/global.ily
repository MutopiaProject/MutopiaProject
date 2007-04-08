\time 6/8
\key bes \major
#(override-auto-beam-setting '(end * * * *) 3 8 'Staff)
%%\scoreTempo \markup { \null \translate #'(-5 . 0) "Allegro, mà non troppo." }
%%s2.
s2 s8.
\tag #'(up partUp partBoth) {
  \once \override Staff . RehearsalMark #'self-alignment-X = #1
  \once \override Staff . RehearsalMark #'no-spacing-rods = ##t
  \once \override Staff . RehearsalMark #'padding = #2
  \mark \markup { \null \translate #(cons 0 1) 
                  \tempo "    Allegro, mà non troppo." }
}
s16
\scoreSegno
s2.*71 s4. s4
\scoreFine
\bar "|." 
s8
s2.*18 
\scoreDalSegnoAndText \markup "(parte.)"
\bar "||"
