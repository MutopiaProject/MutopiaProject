global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I.II." <<
      \keepWithTag #'(partUp other) \global
      \clef treble
      \includeNotes #"violino1"
    >>
    \instrStaff \markup "Violino III." <<
      \keepWithTag #'other \global
      \clef treble
      \includeNotes #"violino2" >>
  >>
  \header { 
    piece = "Atto Primo, Scena I."
    opus = "Coro. Viva il nostre Alcide"
    breakbefore = ##t
  }
  \layout { }
}
