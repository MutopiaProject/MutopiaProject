\version "2.16.0"
\include "global.ly"
#(set-global-staff-size 16)

\include "mvmts.ly"

\include "vi.ly"
\include "vii.ly"
\include "vla.ly"
\include "clo.ly"

\score {
     {
        \padbarnos
            \new StaffGroup <<
                \new Staff = "srvi"  \viI
                \new Staff = "srvii" \viiI
                \new Staff = "svla"  {\clef alto \vlaI}
                \new Staff = "sclo"  {\clef bass \cloI}
            >>
    }
    \header {
        piece = "1."
    }
    \layout {
        %Needed in version 2.16.1, otherwise notes are too tight
        \context {
            \Score
            \override StaffGrouper #'staff-staff-spacing #'padding = #4
            \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 16)
        }
    }
}

\score {
     {
        \padbarnos
            \new StaffGroup <<
                \new Staff = "srvi"  \viII
                \new Staff = "srvii" \viiII
                \new Staff = "svla"  {\clef alto \vlaII}
                \new Staff = "sclo"  {\clef bass \cloII}
            >>
    }
    \header {
        piece = "2."
    }
    \layout {
    }
}

\score {
     {
        \padbarnos
            \new StaffGroup <<
                \new Staff = "srvi"  \viIII
                \new Staff = "srvii" \viiIII
                \new Staff = "svla"  {\clef alto \vlaIII}
                \new Staff = "sclo"  {\clef bass \cloIII}
            >>
    }
    \header {
        piece = "3."
    }
    \layout {
    }
}

\score {
     {
        \padbarnos
            \new StaffGroup <<
                \new Staff = "srvi"  \viIV
                \new Staff = "srvii" \viiIV
                \new Staff = "svla"  {\clef alto \vlaIV}
                \new Staff = "sclo"  {\clef bass \cloIV}
            >>
    }
    \header {
        piece = "4."
    }
    \layout {
    }
}

\score {
     {
        \padbarnos
            \new StaffGroup <<
                \new Staff = "srvi"  \viV
                \new Staff = "srvii" \viiV
                \new Staff = "svla"  {\clef alto \vlaV}
                \new Staff = "sclo"  {\clef bass \cloV}
            >>
    }
    \header {
        piece = "5."
    }
    \layout {
    }
}

\score {
     {
        \padbarnos
            \new StaffGroup <<
                \new Staff = "srvi"  \viVI
                \new Staff = "srvii" \viiVI
                \new Staff = "svla"  {\clef alto \vlaVI}
                \new Staff = "sclo"  {\clef bass \cloVI}
            >>
    }
    \header {
        piece = "6. Pastorale"
    }
    \layout {
    }
}
