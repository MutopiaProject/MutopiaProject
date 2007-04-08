global = \includeNotes #"global"

%% Aria. Tolomeo: L'empio, sleale, indegno
\score {
  <<
    \lyricStaff \markup "Tolomeo." <<
      \keepWithTag #'(tolomeo partUp) \global
      \tolomeo \includeNotes #"tolomeo" 
    >> \includeLyrics #"tolomeo-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"violino1" \includeNotes #"violino2"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Tolomeo: L'empio, sleale, indegno" }
  \layout { }
}
