%% Sinfonia
\score {
  \new StaffGroup <<
    \instrStaff \markup Oboe. <<
      \keepWithTag #'up \global
      \clef treble \includeNotes #"oboe"
    >>
    \new InnerStaffGroup <<
      \instrStaff \markup Violini. <<
        \keepWithTag #'() \global
        \clef treble \includeNotes #"violini"
      >>
      \instrStaff \markup Viola. <<
        \keepWithTag #'() \global
        \clef alto \includeNotes #"viola"
      >>
    >>
    \instrStaff \markup Bassi. <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header {
    scene = "SCENA II."
    scenedescr = \markup \center-align {
      \line { Al suono d'una bellica Sinfonia segue la battaglia trà soldati }
      \line { di \smallCaps Cleopatra, e di \smallCaps Tolomeo, 
              e questi ultimi hanno la vittoria; }
      \line { finita la Sinfonia entra \smallCaps Tolomeo con
              \smallCaps Cleopatra prigioniera. }
    }
    piece = "SINFONIA"
    breakbefore = #(break-before?) 
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 128 }
}
