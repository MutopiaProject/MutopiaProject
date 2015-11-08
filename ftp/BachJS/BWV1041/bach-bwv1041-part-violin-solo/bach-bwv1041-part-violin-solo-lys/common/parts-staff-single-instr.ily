%{
  ***********************************************************************
  * BachJS - Violin Concerto No.1 in A minor                            *
  * typeset by Federico Bruni and Javier Ruiz-Alma                      *
  *                                                                     *
  *                                                                     *
  * score block for single-staff instruments                            *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"
\include "titles.ily"

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
    \layout{
        \context {
          \Score
          \override NonMusicalPaperColumn.line-break-permission = ##f
          \override NonMusicalPaperColumn.page-break-permission = ##f
        }
    }
}
