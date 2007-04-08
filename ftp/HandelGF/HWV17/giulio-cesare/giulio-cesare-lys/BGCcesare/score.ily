%% Aria. Cesare: Non è si vago e bello
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "" <<
        \keepWithTag #'(up with-break) \global
        \clef treble
        { s2 s8 s8^"Tutti." }
        \includeNotes #"tutti"
      >>
      \instrStaff \markup "" <<
        \keepWithTag #'() \global
        \clef alto
        \includeNotes #"viola"
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
      \includeFigures #"figures"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    indent = \noindent
    \context {
      \Staff
      \remove "Axis_group_engraver"
      \consists "Hara_kiri_engraver"
      \override Beam #'auto-knee-gap = #'() 
    }
    #(define tweak-key (*current-piece*))
  }
  \midi {\tempo 4 = 108}
}
