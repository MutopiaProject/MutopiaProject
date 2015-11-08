%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  * score block for Continuo part printout                              *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

%-------Typeset music
\score {
  \keepWithTag #'printed
   <<
      \new Staff = "Staff_continuo"
                                  { \set Staff.instrumentName = #"Continuo"
                                   \clef bass \global \condenseRests \continuo }
      \new FiguredBass {
                %arbitrary value to render extender lines that start without a figure
                \set FiguredBass.implicitBassFigures = #'(11)
                \figuredContinuo }
    >>
    \layout{ }
}
