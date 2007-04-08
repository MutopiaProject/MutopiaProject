%% Arioso. Tolomeo: Belle dee di questo core
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "(Violini.)" <<
        \keepWithTag #'up \global
        \override Score.VerticalAxisGroup #'remove-first = ##t
        \clef treble \includeNotes #"violini"
      >>
      \lyricStaff \markup "" <<
        \keepWithTag #'(up tolomeo)  \global
        \tolomeo \includeNotes #"tolomeo"
      >> \includeLyrics #"tolomeo-lyrics"
    >>
    \instrStaff \markup Bassi. <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header {
    scene = "SCENA IX."
    scenedescr = \markup \center-align {
      \line { Camera nel Serraglio. }
      \line { \smallCaps Tolomeo circondato dalla sue favorite, 
              e \smallCaps Cornelia frà loro, e poi \smallCaps Sesto. }
    }
    breakbefore = #(break-before?) 
  }
  \layout { 
    \context { \RemoveEmptyStaffContext }
    #(define tweak-key (*current-piece*))
  }
  \midi {\tempo 4 = 52}
}
