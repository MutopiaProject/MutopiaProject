%% Aria. Tolomeo: Sì, spietata, il tuo rigore
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "(Violino I.)" <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"violino1" 
      >>
      \instrStaff \markup "(Violino II.)  " <<
        \keepWithTag #'() \global
        \clef treble \includeNotes #"violino2" 
      >>
      \instrStaff \markup "(Viola.)" <<
        \keepWithTag #'() \global
        \clef alto \includeNotes #"viola" 
      >>
      \lyricStaff \markup "Tolomeo." <<
        \keepWithTag #'tolomeo \global
        \tolomeo \includeNotes #"tolomeo" 
      >> \includeLyrics #"tolomeo-lyrics"
    >>
    \instrStaff \markup "(Bassi.)" <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    \context { \RemoveEmptyStaffContext
               \consists "Mark_engraver" } 
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 4 = 140 }
}
