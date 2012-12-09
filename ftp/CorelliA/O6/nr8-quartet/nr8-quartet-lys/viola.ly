\version "2.16.0"
\include "global.ly"

\include "mvmts.ly"

\include "vla.ly"

\header {
    instrument = "Viola"
}

\score {
     \context Staff <<
        \clef alto
        \padtext \textUp \vlaI
    >>
    \header {
        piece = "1."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef alto
        \padtext \textUp \vlaII
    >>
    \header {
        piece = "2."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef alto
        \context Voice = "vm" \mIII
        \padtext \textUp \vlaIII
    >>
    \header {
        piece = "3."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef alto
        \padtext \textUp \vlaIV
    >>
    \header {
        piece = "4."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef alto
        \padtext \textUp \vlaV
    >>
    \header {
        piece = "5."
    }
    \layout { }
}

\score {
     \context Staff <<
        \clef alto
        \padtext \textUp \vlaVI
    >>
    \header {
        piece = "6. Pastorale"
    }
    \layout { }
}

