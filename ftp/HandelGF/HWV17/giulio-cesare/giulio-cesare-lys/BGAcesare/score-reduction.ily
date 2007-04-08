global = \includeNotes #"global"

%% Aria. Cesare: Alma del gran Pompeo
\score {
  <<
    \lyricStaff \markup "Cesare." <<
      \keepWithTag #'partUp \global
      \cesare \includeNotes #"cesare" 
    >> \includeLyrics #"cesare-lyrics" 
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"violino1" \includeNotes #"violino2"
      >>
      \new Staff <<
        \keepWithTag #'() \global
        \clef bass
        \includeNotes #"bassi"
        \includeFigures #"figures"
      >>
    >>
  >>
  \header {
    piece = "Scena VII."
    opus = "Recit. Cesare: Alma del gran Pompeo"
  }
  \layout { }
}
