%{
  ***********************************************************************
  *                                                                     *
  * score block for Keyboard part printout                              *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"
\include "styles.ily"

\score {
  \keepWithTag #'printed      %------------------------------ [manual entry]
 <<
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = \thisInstrNameV  %--   /common/variables.ily
      \new Staff = "upper" {  %-----------------------------  dependency with \staffUp in ../common/definitions.ily
        \thisClefInstrVu          %-----------------------------  /common/variables.ily
        \condenseRests        %----------------------------   /common/definitions.ily
        \global               %----------------------------   /mov_/music.ily
        \upperKeyb            %----------------------------   /mov_/music.ily [manually set instrument]
      }
      \new Staff = "lower" {  %-----------------------------  dependency with \staffDown in ../common/definitions.ily
        \thisClefInstrVd
        \condenseRests
        \global
        \lowerKeyb
      }
    >>
 >>
    \layout{ }
}
