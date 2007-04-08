%% Aria. Cesare: Aure, deh, per pietà
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \new InnerStaffGroup <<
        \instrStaff \markup "" <<
          \keepWithTag #'up \global
          \clef treble \includeNotes #"violino1"
        >>
        \instrStaff \markup "" <<
          \keepWithTag #'() \global
          \clef treble \includeNotes #"violino2"
        >>
        \instrStaff \markup "" <<
          \keepWithTag #'() \global
          \clef alto \includeNotes #"viola"
        >>
      >>
      \lyricStaff \markup "" <<
        \keepWithTag #'cesare \global
        \cesare \includeNotes #"cesare"
      >> \includeLyrics #"cesare-lyrics"
    >>
    \instrStaff \markup "" <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { indent = \noindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 60 }
}
