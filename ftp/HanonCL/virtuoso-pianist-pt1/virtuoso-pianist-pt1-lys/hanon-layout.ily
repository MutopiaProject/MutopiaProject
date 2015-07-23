\version "2.18.2"

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \lblExNum
    \new Staff = "upper" { \globalT \RH }
    \new Staff = "lower" { \globalB \LH }
  >>
  \layout { }
}