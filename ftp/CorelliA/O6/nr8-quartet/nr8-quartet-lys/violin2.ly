\include "global.ly"

\include "mvmts.ly"

\include "vii.ly"

\score {
    \notes \context Staff <
        \context Voice = vm \mI
        \context Voice = vii { \padtext \textUp \viiIa \viiIb }
    >
    \header {
        \include "header.ly"
        instrument = "Violin 2"
        piece = "1."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mII
        \context Voice = vii { \padtext \textUp \viiIIa \viiIIb }
    >
    \header {
        piece = "2."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mIII
        \context Voice = vii {
            \padtext \textUp
            \viiIIIa %\break
            \viiIIIb %\break
            \viiIIIc \viiIIId
        }
    >
    \header {
        piece = "3."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mIV
        \context Voice = vii { \padtext \textUp \viiIVa \viiIVb }
    >
    \header {
        piece = "4."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mV
        \context Voice = vii { \padtext \textUp \viiVa \viiVb \viiVc \viiVd }
    >
    \header {
        piece = "5."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mVI
        \context Voice = vii { \padtext \textUp \viiVI }
    >
    \header {
        piece = "6. Pastorale"
    }
    \paper { }
}

