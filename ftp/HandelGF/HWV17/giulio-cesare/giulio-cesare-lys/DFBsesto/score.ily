%% Aria. Sesto: La giustizia ha già sull'arco
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "Violini unisoni." <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"violini"
      >>
      \lyricStaff \markup Sesto. <<
        \keepWithTag #'() \global
        \sesto \includeNotes #"sesto" 
      >> \includeLyrics #"sesto-lyrics"
    >>
    \instrStaff \markup Bassi. <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 128 }
}
