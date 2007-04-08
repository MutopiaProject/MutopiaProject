%% Aria. Cesare: Alma del gran Pompeo
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \new InnerStaffGroup <<
        \instrStaff \markup "Violino I." <<
          \keepWithTag #'up \global
          \clef treble
          \includeNotes #"violino1" 
        >>
        \instrStaff \markup "Violino II." <<
          \keepWithTag #'() \global
          \clef treble
          \includeNotes #"violino2" 
        >>
        \instrStaff \markup "Viola" <<
          \keepWithTag #'() \global
          \clef alto
          \includeNotes #"viola" 
        >>
      >>
      \lyricStaff \markup "Cesare." <<
        \keepWithTag #'() \global
        \cesare \includeNotes #"cesare" 
      >> \includeLyrics #"cesare-lyrics" 
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'() \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA VII."
    scenedescr = \markup \center-align {
      \line { Quartieri nel campo di \smallCaps Cesare con l'urna 
              nel mezzo, ove }
      \line { sono le ceneri del capo di \smallCaps Pompeo, sopra 
              eminente cumulo di trofei. }
      \line { \smallCaps Cesare, poi \smallCaps Curio, che introduce 
              \smallCaps Cleopatra e \smallCaps Nireno. } 
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 44}
}
