%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * movement printout for conductor's score                             *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"
\include "styles.ily"
\thisTocLabel
\score {
  \keepWithTag #'printed        %----------------------------- [manual entry]
  \new StaffGroup
    <<
        \new GrandStaff
        <<
          \new Staff  {
            \set Staff.instrumentName = \thisInstrNameI %----- /common/variables.ily
            \thisClefInstrI     %----------------------------- /common/variables.ily
            \global             %----------------------------- /mov_/music.ily
            \violinI            %----------------------------- /mov_/music.ily [manually set instrument]
          }
          \new Staff  {
            \set Staff.instrumentName = \thisInstrNameII
            \thisClefInstrII
            \global \violinII
          }
        >>
        \new Staff {
          \set Staff.instrumentName = \thisInstrNameIII
          \thisClefInstrIII
          \global \viola
        }
        \new Staff {
          \set Staff.instrumentName = \thisInstrNameIV
          \thisClefInstrIV
          \global \continuo
        }
        \new PianoStaff
        <<
          \set PianoStaff.instrumentName = \thisInstrNameV
          \new Staff = "upper" {  %--------------------------- dependency with \staffUp in /common/definitions.ily
            \thisClefInstrVu      %--------------------------- /common/variables.ily
            \global \upperKeyb    %--------------------------- /mov_/music.ily [manually set instrument]
          }
          \new Staff = "lower" {  %--------------------------- dependency with \staffDown in /common/definitions.ily
            \thisClefInstrVd      %--------------------------- /common/variables.ily          %--------------------------- [manual entry]
            \global \lowerKeyb    %--------------------------- /mov_/music.ily [manually set instrument]
          }
        >>
    >>
    \layout{ }
}
