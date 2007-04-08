%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup Achilla. <<
      \keepWithTag #'recit  \global
      \achilla \includeNotes #"achilla"
    >> \includeLyrics #"achilla-lyrics"
    \instrStaff \markup "" <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header {
    act = "ATTO TERZO"
    scene = "SCENA I."
    scenedescr = \markup \center-align {
      \line { Bosco vicino alla città di Alessandria. }
      \line { \smallCaps Achilla con seguito di Soldati. } }
    breakbefore = #(break-before?) 
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
