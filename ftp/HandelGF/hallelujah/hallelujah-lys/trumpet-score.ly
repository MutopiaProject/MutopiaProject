\include "trumpet.ly"

trumpetStaff = <<

\context Voice = BbTrumpetI \notes \transpose bes c' \trumpetI
>>

     
\score {
  <<
    \context Staff = trumpets \trumpetStaff
  >>

  \header {
       instrument = "Bb Trumpet"
 }
 
}
