%% Aria. Cleopatra: Non disperar, chi sa ?
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup \instruments { Violini unisoni. } <<
        \keepWithTag #'(violini up) \global
        \clef treble \includeNotes #"violini" 
      >>
      \instrStaff \markup "Viola" <<
        \keepWithTag #'() \global
        \clef alto \includeNotes #"viola" 
      >>
      \lyricStaff \markup "Cleopatra." <<
        \keepWithTag #'(cleopatra) \global
        \cleopatra \includeNotes #"cleopatra" 
      >> \includeLyrics #"cleopatra-lyrics" 
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'(bassi down) \global
      \clef bass \keepWithTag #'bass-part \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 128}
}
