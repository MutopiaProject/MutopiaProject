\score {
  \new StaffGroup <<
    \new Staff << \global \clef "dessus" \includeNotes "dessus1" >>
    \new Staff <<
      \global \includeNotes "haute-contre-notes"
      { \clef "haute-contre" s2.*14 s2
        \set Staff.forceClef = ##t \clef "dessus"       \includeNotes "dessus2-B"
        \set Staff.forceClef = ##t \clef "haute-contre" s4 s2.*3 s2
        \set Staff.forceClef = ##t \clef "dessus"       \includeNotes "dessus2-D"
        \set Staff.forceClef = ##t \clef "haute-contre" s4 s2. s2
        \set Staff.forceClef = ##t \clef "dessus"       \includeNotes "dessus2-F"
        \set Staff.forceClef = ##t \clef "haute-contre" } >>
    \new Staff << \global \clef "taille" \includeNotes "taille" >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}