%% Aria. Cleopatra: Tu la mia stella sei, amabile speranza
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup { \hspace #8 "(Violini.)" } <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"violini"
      >>
      \lyricStaff \markup "Cleopatra." <<
        \keepWithTag #'() \global
        \cleopatra \includeNotes #"cleopatra" 
      >> \includeLyrics #"cleopatra-lyrics" 
    >>
    \instrStaff \markup "(Bassi.)" <<
      \scoreInit
      { s2.*72 s4. s4 \break }
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
