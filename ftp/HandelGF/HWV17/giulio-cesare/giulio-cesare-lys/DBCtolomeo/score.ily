%% Aria. Tolomeo: Domerò la tua fierezza
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup \instruments { Violini unisoni. } <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"violini" 
      >>
      \lyricStaff \markup "Tolomeo." <<
        \keepWithTag #'tolomeo \global
        \tolomeo \includeNotes #"tolomeo" 
      >> \includeLyrics #"tolomeo-lyrics"
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
