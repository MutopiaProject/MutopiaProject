\version "2.16.0"
\include "global.ly"

\include "mvmts.ly"

\include "clo.ly"

\header {
    instrument = "Cello"
}

\score {
     \context Staff <<
        \clef bass
        \padtext \textUp \cloI
    >>
    \header {
        piece = "1."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef bass
        \padtext \textUp \cloII
    >>
    \header {
        piece = "2."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef bass
        \context Voice = "vm" \mIII
        \padtext \textUp \cloIII
    >>
    \header {
        piece = "3."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef bass
        \padtext \textUp \cloIV
    >>
    \header {
        piece = "4."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef bass
        \padtext \textUp \cloV
    >>
    \header {
        piece = "5."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef bass
        \padtext \textUp \cloVI
    >>
    \header {
        piece = "6. Pastorale"
    }
    \layout { }
}

