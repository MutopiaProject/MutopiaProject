\include "global.ly"

\include "mvmts.ly"

\include "vla.ly"

\score {
    \notes \context Staff <
        \clef alto
        \context Voice = vm \mI
        \context Voice = vla { \padtext \textUp \vlaIa \vlaIb }
    >
    \header {
        \include "header.ly"
        instrument = "Viola"
        piece = "1."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef alto
        \context Voice = vm \mII
        \context Voice = vla { \padtext \textUp \vlaIIa \vlaIIb }
    >
    \header {
        piece = "2."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef alto
        \context Voice = vm \mIII
        \context Voice = vla {
            \padtext \textUp
            \vlaIIIa %\break
            \vlaIIIb %\break
            \vlaIIIc \vlaIIId
        }
    >
    \header {
        piece = "3."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef alto
        \context Voice = vm \mIV
        \context Voice = vla { \padtext \textUp \vlaIVa \vlaIVb }
    >
    \header {
        piece = "4."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef alto
        \context Voice = vm \mV
        \context Voice = vla { \padtext \textUp \vlaVa \vlaVb \vlaVc \vlaVd }
    >
    \header {
        piece = "5."
    }
    \paper { }
}

\score {
    \notes \context Staff <
        \clef alto
        \context Voice = vm \mVI
        \context Voice = vla { \padtext \textUp \vlaVI }
    >
    \header {
        piece = "6. Pastorale"
    }
    \paper { }
}

