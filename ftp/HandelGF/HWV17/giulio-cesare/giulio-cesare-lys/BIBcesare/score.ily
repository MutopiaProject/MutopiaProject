%% Aria. Cesare: Va tacito e nascosto, quand' avido
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "Corno." <<
        \keepWithTag #'(corno up) \global
        \clef treble \includeNotes #"corno"
      >>
      \new InnerStaffGroup <<
        \instrStaff \markup "Violino I." <<
          \keepWithTag #'other \global
          \clef treble \includeNotes #"violino1"
        >>
        \instrStaff \markup "Violino II.  " <<
          \keepWithTag #'other \global
          \clef treble \includeNotes #"violino2"
        >>
        \instrStaff \markup "Viola." <<
          \keepWithTag #'other \global
          \clef alto \includeNotes #"viola"
        >>
      >>
      \lyricStaff \markup "Cesare." <<
        \keepWithTag #'other \global
        \cesare \includeNotes #"cesare"
      >> \includeLyrics #"cesare-lyrics"
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit 
      \keepWithTag #'(other down) \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 72 }
}
