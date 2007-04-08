%% Arioso. Cornelia: Deh, piangete, o mesti lumi
global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \lyricStaff \markup Cornelia. <<
      \keepWithTag #'partUp \global
      \cornelia \includeNotes #"cornelia"
    >> \includeLyrics #"cornelia-lyrics"
    \instrStaff \markup Bassi. <<
      \keepWithTag #'partDown \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    piece = "Scena III."
    opus = "Arioso. Cornelia: Deh, piangete, o mesti lumi"
  }
  \layout { }
}
