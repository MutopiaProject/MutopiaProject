%% Aria. Cesare: Presti omai l'egizia terra
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup { "" \raise #-10 "Tutti." } <<
        \scoreInit
        \keepWithTag #'up \global
        \clef treble
        \includeNotes #"tutti1"
      >>
      \instrStaff \markup "" <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"tutti2"
      >>
      \instrStaff \markup "Viola." <<
        \keepWithTag #'() \global
        \clef alto
        \includeNotes #"viola"
      >>
      \lyricStaff \markup "Cesare." <<
        \keepWithTag #'() \global
        \cesare \includeNotes #"cesare"
      >> \includeLyrics #"cesare-lyrics"
    >>
    \instrStaff \markup "Bassi." <<
      \keepWithTag #'() \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  
  \header {
    breakbefore = #(break-before?)
  }
  \layout { indent = \largeindent
            #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
