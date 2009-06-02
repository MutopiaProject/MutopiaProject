\score {
  \new GrandStaff <<
    \new Staff <<
      \global \clef "dessus"
      { \includeNotes "dessus-af1"
        \includeNotes "dessus-bf1"
        \includeNotes "dessus-c"
        \includeNotes "dessus-d1"
        \includeNotes "dessus-e1"
        \includeNotes "dessus-f" }
    >>
    \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus-av" >>
  >>
  \layout { }
}