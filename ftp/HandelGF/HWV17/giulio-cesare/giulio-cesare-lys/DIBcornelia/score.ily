%% Aria. Cornelia: Non ha più che temere
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup { Tutti unisoni. } <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"tutti" 
      >>
      \lyricStaff \markup "Cornelia." <<
        \keepWithTag #'() \global
        \cornelia \includeNotes #"cornelia" 
      >> \includeLyrics #"cornelia-lyrics" 
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 128 }
}
