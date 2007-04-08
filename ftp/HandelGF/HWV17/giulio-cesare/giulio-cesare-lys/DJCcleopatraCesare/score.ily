%% Duetto. Cleopatra e Cesare: Caro/Bella, più amabile beltà
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup \instruments { "(Violino I" "Oboe I.)" } <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"tutti1"
      >>
      \instrStaff \markup \instruments { "(Violino II" "Oboe II.)" } <<
        \keepWithTag #'() \global
        \clef treble \includeNotes #"tutti2"
      >>
    >>
    \new InnerChoirStaff <<
      \lyricStaff \markup Cleopatra. <<
        \keepWithTag #'() \global
        \cleopatra \includeNotes #"cleopatra"
      >> \includeLyrics #"cleopatra-lyrics"
      \lyricStaff \markup Cesare. <<
        \keepWithTag #'() \global
        \cesare \includeNotes #"cesare"
      >> \includeLyrics #"cesare-lyrics"            
    >>
    \instrStaff \markup Bassi. <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 168 }
}
