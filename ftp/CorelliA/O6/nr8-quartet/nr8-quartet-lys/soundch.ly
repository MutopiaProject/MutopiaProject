\include "global.ly"

\include "vi.ly"
\include "vii.ly"
\include "vla.ly"
\include "clo.ly"

\score {
    \notes {
        <
            {
                \tempo 4=100
                s2.*7
                \tempo 4=50
                s4
                \tempo 4=100
                s2
            }
            \context Staff = vi { 
                \property Staff.midiInstrument = #"violin"
                \viIa 
            }
            \context Staff = vii { 
                \property Staff.midiInstrument = #"violin"
                \viiIa 
            }
            \context Staff = vla { 
                \property Staff.midiInstrument = #"viola"
                \vlaIa
            }
            \context Staff = clo { 
                \property Staff.midiInstrument = #"cello"
                \cloIa 
            }
        >
        <
            {
                \tempo 4=50
                s1*13
            }
            \context Staff = vi { 
                \property Staff.midiInstrument = #"violin"
                \viIb 
            }
            \context Staff = vii { 
                \property Staff.midiInstrument = #"violin"
                \viiIb 
            }
            \context Staff = vla { 
                \property Staff.midiInstrument = #"viola"
                \vlaIb
            }
            \context Staff = clo { 
                \property Staff.midiInstrument = #"cello"
                \cloIb 
            }
        >
        <
            {
                \tempo 4=130
                s1*21 s1*21
                s1*21 s1*19 s4
                \tempo 4=110
                s2. s1
            }
            \context Staff = vi { 
                \property Staff.midiInstrument = #"violin"
                { \viIIa \viIIa \viIIb \viIIb }
            }
            \context Staff = vii { 
                \property Staff.midiInstrument = #"violin"
                { \viiIIa \viiIIa \viiIIb \viiIIb }
            }
            \context Staff = vla { 
                \property Staff.midiInstrument = #"viola"
                { \vlaIIa \vlaIIa \vlaIIb \vlaIIb }
            }
            \context Staff = clo { 
                \property Staff.midiInstrument = #"cello"
                { \cloIIa \cloIIa \cloIIb \cloIIb }
            }
        >
        <
            {
                \tempo 8=60
                s1*7 s2
                \tempo 8=55
                s8
                \tempo 8=53
                s4.
            }
            \context Staff = vi { 
                \property Staff.midiInstrument = #"violin"
                \viIIIa
            }
            \context Staff = vii { 
                \property Staff.midiInstrument = #"violin"
                \viiIIIa
            }
            \context Staff = vla { 
                \property Staff.midiInstrument = #"viola"
                \vlaIIIa
            }
            \context Staff = clo { 
                \property Staff.midiInstrument = #"cello"
                \cloIIIa
            }
        >
        <
            {
                \tempo 2=65
                s1*12 s2
                \tempo 2=40
                s2
            }
            \context Staff = vi { 
                \property Staff.midiInstrument = #"violin"
                \viIIIb
            }
            \context Staff = vii { 
                \property Staff.midiInstrument = #"violin"
                \viiIIIb
            }
            \context Staff = vla { 
                \property Staff.midiInstrument = #"viola"
                \vlaIIIb
            }
            \context Staff = clo { 
                \property Staff.midiInstrument = #"cello"
                \cloIIIb
            }
        >
        <
            {
                \tempo 8=60
                s1*7 s2
                \tempo 8=55
                s8
                \tempo 8=53
                s4.
                \tempo 8=60
                s1 s4
                \tempo 8=58
                s4
                \tempo 8=56
                s4 s4
                s1*2
            }
            \context Staff = vi { 
                \property Staff.midiInstrument = #"violin"
                \viIIIc \viIIId
            }
            \context Staff = vii { 
                \property Staff.midiInstrument = #"violin"
                \viiIIIc \viiIIId
            }
            \context Staff = vla { 
                \property Staff.midiInstrument = #"viola"
                \vlaIIIc \vlaIIId
            }
            \context Staff = clo { 
                \property Staff.midiInstrument = #"cello"
                \cloIIIc \cloIIId
            }
        >
        <
            {
                \tempo 4=170
                s2.*8 s2.*8
                s2.*20 s2.*17
                \tempo 4=160
                s2.
                \tempo 4=155
                s2.*2
            }
            \context Staff = vi { 
                \property Staff.midiInstrument = #"violin"
                { \viIVa \viIVa \viIVb \viIVb }
            }
            \context Staff = vii { 
                \property Staff.midiInstrument = #"violin"
                { \viiIVa \viiIVa \viiIVb \viiIVb }
            }
            \context Staff = vla { 
                \property Staff.midiInstrument = #"viola"
                { \vlaIVa \vlaIVa \vlaIVb \vlaIVb }
            }
            \context Staff = clo { 
                \property Staff.midiInstrument = #"cello"
                { \cloIVa \cloIVa \cloIVb \cloIVb }
            }
        >
        <
            {
                \tempo 2=120
                s2 s1*23 s2 s2 s1*23 s2
                s2 s1*43 s2 s2 s1*41 s2.
                \tempo 2=110
                s4 s1
                \tempo 1=30
                s1
            }
            \context Staff = vi { 
                \property Staff.midiInstrument = #"violin"
                { \viVa \viVa \viVb \viVc \viVb \viVd }
            }
            \context Staff = vii { 
                \property Staff.midiInstrument = #"violin"
                { \viiVa \viiVa \viiVb \viiVc \viiVb \viiVd }
            }
            \context Staff = vla { 
                \property Staff.midiInstrument = #"viola"
                { \vlaVa \vlaVa \vlaVb \vlaVc \vlaVb \vlaVd }
            }
            \context Staff = clo { 
                \property Staff.midiInstrument = #"cello"
                { \cloVa \cloVa \cloVb \cloVc \cloVb \cloVd }
            }
        >
        <
            {
                \tempo 4=75
                s1.*23
                \tempo 4=70
                s1.*3
                \tempo 4=75
                s1
            }
            \context Staff = vi { 
                \property Staff.midiInstrument = #"violin"
                { \viVI }
            }
            \context Staff = vii { 
                \property Staff.midiInstrument = #"violin"
                { \viiVI }
            }
            \context Staff = vla { 
                \property Staff.midiInstrument = #"viola"
                { \vlaVI }
            }
            \context Staff = clo { 
                \property Staff.midiInstrument = #"cello"
                { \cloVI }
            }
        >
    }
    \midi { \tempo 4=100 }
}

