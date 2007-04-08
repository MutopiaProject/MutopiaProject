% Don Giovanni part.
\version "1.6.0"

Instrument = "Don Giovanni"
\include "header.ly"
\include "paper20.ly"
\include "notes.ly"

\score {
  \addlyrics
    \context Staff = DonGiovanni \DonGiovanniStaff
    \context Lyrics \DonGiovanniLyrics

  \paper {}
  % no midi here, use score.ly for midi output.
}


