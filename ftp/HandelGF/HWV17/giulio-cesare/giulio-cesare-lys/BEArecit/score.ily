%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \scoreInit
      \keepWithTag #'recit \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'() \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA V."
    scenedescr = \markup \center-align {
      \line { Gabinetto. }
      \line { \smallCaps Cleopatra con seguito, di Egizii damigelli, }
      \line { poi \smallCaps Nireno, e dopo \smallCaps Tolomeo con guardie. } }
    breakbefore = #(break-before?)
  }
  \layout { indent = \smallindent
            #(define tweak-key (*current-piece*))  }
  \midi { \tempo 4 = 120 }
}
