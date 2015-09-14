%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  * Parts staff for violins and viola                                   *
  *                                                                     *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"


%-------Typeset music
\score {
  \keepWithTag #'printed
        <<
          \new Staff = "Staff_violinI"  { \set Staff.instrumentName = #"Violin I"
                                          \clef treble \global \condenseRests \violinI }
        >>
    \layout{ }
}
