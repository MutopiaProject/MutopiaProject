%% Aria. Cesare: Empio, dirò, tu sei
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "Tutti (Violini.)" <<
        \scoreInit
        \keepWithTag #'up \global
        \clef treble
        \includeNotes #"tutti" 
      >>
      \lyricStaff \markup "Cesare." <<
        \keepWithTag #'() \global
        \cesare \includeNotes #"cesare" 
      >> \includeLyrics #"cesare-lyrics" 
    >>
    \instrStaff \markup "Bassi." <<
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    breakbefore = #(break-before?)
  }
  \layout { indent = \largeindent
            #(define tweak-key (*current-piece*))  }
  \midi {\tempo 4 = 120}
}
