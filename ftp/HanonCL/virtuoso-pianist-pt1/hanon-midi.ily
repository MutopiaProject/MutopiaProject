\version "2.18.2"

\score {
  \new PianoStaff <<
    \new Staff = "upper" { \globalT \RH }
    \new Staff = "lower" { \globalB \LH }
  >>
  \midi { \tempo 4 = 90 }
}