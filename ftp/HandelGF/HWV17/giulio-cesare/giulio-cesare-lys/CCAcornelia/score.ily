%% Arioso. Cornelia: Deh, piangete, o mesti lumi
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup Cornelia. <<
      \scoreInit 
      \keepWithTag #'up \global
      \cornelia \includeNotes #"cornelia"
    >> \includeLyrics #"cornelia-lyrics"
    \instrStaff \markup Bassi. <<
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA III."
    scenedescr = \markup \center-align { 
      \line { Giardino del serraglio, dove corrisponde quello delle fiere. }
      \line { \smallCaps Cornelia con picciola zappa nelle mani, che in coltivando fiori, epio \smallCaps Achilla. }
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 44}
}
