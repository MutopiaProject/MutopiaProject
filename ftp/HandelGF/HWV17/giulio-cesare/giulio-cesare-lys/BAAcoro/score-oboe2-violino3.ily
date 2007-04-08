global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'(partUp other) \global
    \clef treble
    \includeNotes #"violino2"
  >>
  \header { 
    piece = "Atto Primo, Scena I."
    opus = "Coro. Viva il nostre Alcide"
    %%breakbefore = ##t
  }
  \layout { indent = \smallindent }
}
