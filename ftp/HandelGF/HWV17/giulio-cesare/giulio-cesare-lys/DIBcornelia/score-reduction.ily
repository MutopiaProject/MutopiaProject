global = \includeNotes #"global"

%% Aria. Cornelia: Non ha più che temere
\score {
  <<
    \lyricStaff \markup "Cornelia." <<
      \keepWithTag #'partUp \global
      \cornelia \includeNotes #"cornelia" 
    >> \includeLyrics #"cornelia-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"tutti" 
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Cornelia: Non ha più che temere" }
  \layout { }
}
