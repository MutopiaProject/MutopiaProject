%% Aria. Cleopatra: Se pietà di me non senti
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "Violino I. II." <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"violino12"
      >>
      \instrStaff \markup "Violino III." <<
        \keepWithTag #'() \global
        \clef treble \includeNotes #"violino3"
      >>
      \instrStaff \markup "Viola." <<
        \keepWithTag #'() \global
        \clef alto \includeNotes #"viola"
      >>
      \instrStaff \markup "Bassons." <<
        \keepWithTag #'() \global
        \clef bass \includeNotes #"bassons"
      >>
      \lyricStaff \markup Cleopatra. <<
        \keepWithTag #'() \global
        \cleopatra \includeNotes #"cleopatra" 
      >> \includeLyrics #"cleopatra-lyrics"
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 116 }
}
