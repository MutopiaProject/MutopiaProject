%% Aria. Achilla: Dal fulgor di questa spada
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "(Violini.)" <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"violini"
      >>
      \lyricStaff \markup "Achilla." <<
        \keepWithTag #'() \global
        \achilla \includeNotes #"achilla"
      >> \includeLyrics #"achilla-lyrics"
    >>
    \instrStaff \markup "(Bassi.)" <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 104 }
}
