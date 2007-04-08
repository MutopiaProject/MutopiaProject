\include "global.ly"

\include "mvmts.ly"

\include "clo.ly"

\score {
    \notes \context Staff <
        \clef bass
        \context Voice = vm \mI
        \context Voice = clo { \padtext \textUp \cloIa \cloIb }
    >
    \header {
        \include "header.ly"
        instrument = "Cello"
        piece = "1."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef bass
        \context Voice = vm \mII
        \context Voice = clo { \padtext \textUp \cloIIa \cloIIb }
    >
    \header {
        piece = "2."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef bass
        \context Voice = vm \mIII
        \context Voice = clo {
            \padtext \textUp
            \cloIIIa %\break
            \cloIIIb %\break
            \cloIIIc \cloIIId
        }
    >
    \header {
        piece = "3."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef bass
        \context Voice = vm \mIV
        \context Voice = clo { \padtext \textUp \cloIVa \cloIVb }
    >
    \header {
        piece = "4."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef bass
        \context Voice = vm \mV
        \context Voice = clo {
            \padtext \textUp
            \cloVa \break
            \cloVb \cloVc \cloVd
        }
    >
    \header {
        piece = "5."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef bass
        \context Voice = vm \mVI
        \context Voice = clo { \padtext \textUp \cloVI }
    >
    \header {
        piece = "6. Pastorale"
    }
    \paper { }
}

