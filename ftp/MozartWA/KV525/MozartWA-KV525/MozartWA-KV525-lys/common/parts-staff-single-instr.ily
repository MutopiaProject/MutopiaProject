%{
  ***********************************************************************
  *                                                                     *
  * score block for single-staff instruments                            *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"
\include "styles.ily"

\score {
  \keepWithTag #'printed        %------------------------------- [manual entry]
        <<
          \new Staff {
            \set Staff.instrumentName = \thisInstrName  %------- defined ahead of file insertion
            \thisClef           %------------------------------- defined ahead of file insertion
            \condenseRests      %------------------------------- /common/definitions.ily
            \global             %------------------------------- /mov_/music.ily
            \theseNotes         %------------------------------- defined ahead of file insertion
          }
        >>
    \layout{ }
}
