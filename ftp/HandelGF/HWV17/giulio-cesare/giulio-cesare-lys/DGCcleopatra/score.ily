%% Aria. Cleopatra: Da tempeste il legno infranto
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup \instruments { Violini unisoni. } <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"violini" 
      >>
      \lyricStaff \markup "Cleopatra." <<
        \keepWithTag #'cleopatra \global
        \cleopatra \includeNotes #"cleopatra" 
      >> \includeLyrics #"cleopatra-lyrics"
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
