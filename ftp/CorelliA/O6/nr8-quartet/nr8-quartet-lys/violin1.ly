\include "global.ly"

\include "mvmts.ly"

\include "vi.ly"

\score {
    \notes \context Staff <
        \context Voice = vm \mI
        \context Voice = vi { \padtext \textUp \viIa \viIb }
    >
    \header {
        \include "header.ly"
        instrument = "Violin 1"
        piece = "1."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mII
        \context Voice = vi { \padtext \textUp \viIIa \viIIb }
    >
    \header {
        piece = "\\newpage 2."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mIII
        \context Voice = vi {
            \padtext \textUp
            \viIIIa %\break
            \viIIIb %\break
            \viIIIc \viIIId
        }
    >
    \header {
        piece = "\\newpage 3."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mIV
        \context Voice = vi {
            \padtext \textUp
            \viIVa %\break
            \viIVb
        }
    >
    \header {
        piece = "\\newpage 4."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mV
        \context Voice = vi {
            \padtext \textUp
            \viVa \newpage
            \viVb
            \viVc \viVd }
    >
    \header {
        piece = "\vfil 5."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \context Voice = vm \mVI
        \context Voice = vi { \padtext \textUp \viVI }
    >
    \header {
        piece = "\\newpage 6. Pastorale"
    }
    \paper { }
}

