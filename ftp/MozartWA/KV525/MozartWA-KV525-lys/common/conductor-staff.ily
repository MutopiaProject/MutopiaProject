\include "version.ily"
\include "styles.ily"
\score {
  \keepWithTag #'printed        %----------------------------- [manual entry]
  \new StaffGroup
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
 
        \new Staff {
          \set Staff.instrumentName = \thisInstrNameIII
          \thisClefInstrIII
          \global \viola
        }
        \new Staff {
          \set Staff.instrumentName = \thisInstrNameIV
          \thisClefInstrIV
          \global \cello
        }
    >>
    \layout{ }
}























