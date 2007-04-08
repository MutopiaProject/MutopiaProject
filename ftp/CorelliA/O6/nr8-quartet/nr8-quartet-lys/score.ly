\include "global.ly"
\include "paper16.ly"

\include "mvmts.ly"

\include "vi.ly"
\include "vii.ly"
\include "vla.ly"
\include "clo.ly"

\score {
    \notes {
        \padbarnos
        \context Score <
            \context StaffGroup <
                \context Staff = srvi
                    <
                        \mI
                        { \viIa \viIb }
                    >
                \context Staff = srvii
                    { \viiIa \viiIb }
                \context Staff = svla
                    { \clef alto \vlaIa \vlaIb }
                \context Staff = sclo
                    { \clef bass \cloIa \cloIb }
            >
        >
    }
    \header {
        \include "header.ly"
        piece = "1."
    }
    \paper {
    }
}

\score {
    \notes {
        \padbarnos
        \context Score <
            \context StaffGroup <
                \context Staff = srvi
                    <
                        \mII
                        { \viIIa \viIIb }
                    >
                \context Staff = srvii
                    { \viiIIa \viiIIb }
                \context Staff = svla
                    { \clef alto \vlaIIa \vlaIIb }
                \context Staff = sclo
                    { \clef bass \cloIIa \cloIIb }
            >
        >
    }
    \header {
        piece = "2."
    }
    \paper {
    }
}

\score {
    \notes {
        \padbarnos
        \context Score <
            \context StaffGroup <
                \context Staff = srvi
                    <
                        \mIII
                        { \viIIIa \viIIIb \viIIIc \viIIId }
                    >
                \context Staff = srvii
                    { \viiIIIa \viiIIIb \viiIIIc \viiIIId }
                \context Staff = svla
                    { \clef alto \vlaIIIa \vlaIIIb \vlaIIIc \vlaIIId }
                \context Staff = sclo
                    { \clef bass \cloIIIa \cloIIIb \cloIIIc \cloIIId }
            >
        >
    }
    \header {
        piece = "3."
    }
    \paper {
    }
}

\score {
    \notes {
        \padbarnos
        \context Score <
            \context StaffGroup <
                \context Staff = srvi
                    <
                        \mIV
                        { \viIVa \viIVb }
                    >
                \context Staff = srvii
                    { \viiIVa \viiIVb }
                \context Staff = svla
                    { \clef alto \vlaIVa \vlaIVb }
                \context Staff = sclo
                    { \clef bass \cloIVa \cloIVb }
            >
        >
    }
    \header {
        piece = "4."
    }
    \paper {
    }
}

\score {
    \notes {
        \padbarnos
        \context Score <
            \context StaffGroup <
                \context Staff = srvi
                    <
                        \mV
                        { \viVa \viVb \viVc \viVd }
                    >
                \context Staff = srvii
                    { \viiVa \viiVb \viiVc \viiVd }
                \context Staff = svla
                    { \clef alto \vlaVa \vlaVb \vlaVc \vlaVd }
                \context Staff = sclo
                    { \clef bass \cloVa \cloVb \cloVc \cloVd }
            >
        >
    }
    \header {
        piece = "5."
    }
    \paper {
    }
}

\score {
    \notes {
        \padbarnos
        \context Score <
            \context StaffGroup <
                \context Staff = srvi
                    <
                        \mVI
                        \viVI
                    >
                \context Staff = srvii
                    { \viiVI }
                \context Staff = svla
                    { \clef alto \vlaVI }
                \context Staff = sclo
                    { \clef bass \cloVI }
            >
        >
    }
    \header {
        piece = "6. Pastorale"
    }
    \paper {
    }
}

