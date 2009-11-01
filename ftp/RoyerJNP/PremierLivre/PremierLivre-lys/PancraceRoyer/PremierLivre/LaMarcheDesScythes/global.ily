<<
  { \oldKey re \minor
    \newKey do \minor
    \time 2/2
    \overrideBeamSettings #'Staff #'(2 . 2) #'end
    #'((* . (1 1))
    ((1 . 8) . (4 4))
    ((1 . 16) . (4 4 4 4))
    ((1 . 32) . (8 8 8 8)))
    \midiTempo #132
    \tempo "Fièrement"
    s1
    \once \override Score . RehearsalMark #'outside-staff-priority = #50
    \once \override Score . RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup { A \small { Toujours deux fois le rondeau } }
    \bar "|:" \grace s8 s1*8 \alternatives { s1 \bar ":|:" \break } s1
    s1*8
    s2. s8. \mark A s16 \bar "||" \break
    \set Score.repeatCommands = #'((volta "2.")) s2
    \set Score.repeatCommands = #'((volta #f)) s2
    s1*19
    s2. s8. \mark A s16 \bar "||" \break
    \keys do \major
    \set Score.repeatCommands = #'((volta "2.")) s2
    \set Score.repeatCommands = #'((volta #f)) s2
    s1*24
    \oldKey re \minor
    \newKey do \minor
    s2. s8. \mark A s16 \bar "||" \break
    \set Score.repeatCommands = #'((volta "2.")) s2
    \set Score.repeatCommands = #'((volta #f)) s2
    s1*60
    s2. s8. \mark A s16 \bar "|." }
  \whenLetter {
    s1*41 \pageBreak
    s1*26 \pageBreak
    s1*21 \pageBreak
    s1*20 \pageBreak
  }
  \whenAfour {
    s1*44 \pageBreak
    s1*32 \pageBreak
    s1*26 \pageBreak
  }
>>