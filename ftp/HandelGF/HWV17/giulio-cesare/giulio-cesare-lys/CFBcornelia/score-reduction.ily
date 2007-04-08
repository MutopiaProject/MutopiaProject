global = \includeNotes #"global"

%% Aria. Cornelia: Cessa omai di sospirare
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
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"flauti" \includeNotes #"violino1"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Cornelia: Cessa omai di sospirare" }
  \layout { }
}
