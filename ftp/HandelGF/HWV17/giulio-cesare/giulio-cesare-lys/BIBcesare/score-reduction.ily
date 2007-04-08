global = \includeNotes #"global"

%% Aria. Cesare: Va tacito e nascosto, quand' avido
\score {
  <<
    \lyricStaff \markup "Cesare." <<
      \keepWithTag #'(partUp other) \global
      \cesare \includeNotes #"cesare"
    >> \includeLyrics #"cesare-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'other \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"violino1" \includeNotes #"violino2"
      >>
      \new Staff <<
        \keepWithTag #'(other partDown) \global
        \clef bass
        \includeNotes #"bassi"
        \includeFigures #"figures"
      >>
    >>
  >>
  \header { opus = "Aria. Cesare: Va tacito e nascosto, quand' avido" }
  \layout { }
}
