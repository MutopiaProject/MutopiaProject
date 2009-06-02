\score {
  \new GrandStaff <<
    \new Staff <<
      \global \clef "dessus"
      { \includeNotes "dessus-af2"
        \includeNotes "dessus-bf2"
        \includeNotes "dessus-c"
        \includeNotes "dessus-d2"
        \includeNotes "dessus-e2"
        \includeNotes "dessus-f" }
    >>
    \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus-av" >>
  >>
  \layout { }
}