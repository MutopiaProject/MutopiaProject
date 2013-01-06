% Don Giovanni part.
\version "2.16.1"

Instrument = "Don Giovanni"
\include "header.ly"
#(set-global-staff-size 20)
\include "notes.ly"

\score {
    \context Staff = DonGiovanni \DonGiovanniStaff
  \addlyrics \DonGiovanniLyrics

  \layout {}
  % no midi here, use score.ly for midi output.
}
