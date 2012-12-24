\version "2.16.0"
\include "global.ly"

\include "mvmts.ly"

\include "vii.ly"

\header {
    instrument = "Violin 2"
}

\score {
    \new Staff { \padtext \textUp \viiI }
    \header {
        piece = "1."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viiII }
    \header {
        piece = "2."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viiIII }
    \header {
        piece = "3."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viiIV }
    \header {
        piece = "4."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viiV }
    \header {
        piece = "5."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viiVI }
    \header {
        piece = "6. Pastorale"
    }
    \layout { }
}

