%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  * score block for Keyboard part printout                              *
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
        \new PianoStaff = "StaffGroup_keyb"
        <<
          \set PianoStaff.instrumentName = #"Cembalo"
          \new Staff = "upper" { \clef treble \global \condenseRests \upperKeyb }
          \new Staff = "lower" { \clef bass \global \condenseRests \lowerKeyb }
        >>
        \new FiguredBass {
                  %arbitrary value to render extender lines that start without a figure
                  \set FiguredBass.implicitBassFigures = #'(11)
                  \figuredKeyb }
 >>
    \layout{ }
}
