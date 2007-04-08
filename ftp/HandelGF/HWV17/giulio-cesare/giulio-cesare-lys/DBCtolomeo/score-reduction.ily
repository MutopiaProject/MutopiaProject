global = \includeNotes #"global"

%% Aria. Tolomeo: Domerò la tua fierezza
\score {
  <<
    \lyricStaff \markup "Tolomeo." <<
      \keepWithTag #'(partUp tolomeo) \global
      \tolomeo \includeNotes #"tolomeo" 
    >> \includeLyrics #"tolomeo-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"violini" 
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Tolomeo: Domerò la tua fierezza" }
  \layout { } 
}
