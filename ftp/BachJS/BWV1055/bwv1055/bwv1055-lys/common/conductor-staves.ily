%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  * score block for conductor's printout                                *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

%-------Typeset music
\score {
  \keepWithTag #'printed
  \new StaffGroup
    <<
        \new GrandStaff = "GrandStaff_violins"
        <<
          \new Staff = "Staff_violinI"  { \set Staff.instrumentName = #"Violin I"
                                          \clef treble \global \violinI }
          \new Staff = "Staff_violinII" { \set Staff.instrumentName = #"Violin II"
                                          \clef treble \global \violinII }
        >>
        \new Staff = "Staff_viola" { \set Staff.instrumentName = #"Viola"
                                     \clef alto \global \viola }
        \new Staff = "Staff_continuo"
                                    { \set Staff.instrumentName = #"Continuo"
                                     \clef bass \global \continuo }
        \new FiguredBass {
                  %arbitrary value to render extender lines that start without a figure
                  \set FiguredBass.implicitBassFigures = #'(11)
                  \figuredContinuo }
        \new PianoStaff = "StaffGroup_keyb"
        <<
          \set PianoStaff.instrumentName = #"Cembalo"
          \new Staff = "upper" { \clef treble \global \upperKeyb }
          \new Staff = "lower" { \clef bass \global \lowerKeyb }
        >>
        \new FiguredBass {
                  %arbitrary value to render extender lines that start without a figure
                  \set FiguredBass.implicitBassFigures = #'(11)
                  \figuredKeyb }
    >>
    \layout{ 
        \context { \FiguredBass    
        \override BassFigure #'font-size = # -1 }
    }
}
