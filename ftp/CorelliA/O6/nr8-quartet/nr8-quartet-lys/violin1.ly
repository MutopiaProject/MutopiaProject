\version "2.16.0"
\include "global.ly"

\include "mvmts.ly"

\include "vi.ly"

\header {
    instrument = "Violin 1"
}

\score {
    \new Staff { \padtext \textUp \viI }
    \header {
        piece = "1."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viII }
    \header {
        piece = "2."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viIII }
    \header {
        piece = "3."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viIV }
    \header {
        piece = "4."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viV }
    \header {
        piece = "5."
    }
    \layout { }
}

\score {
    \new Staff { \padtext \textUp \viVI }
    \header {
        piece = "6. Pastorale"
    }
    \layout { }
}

