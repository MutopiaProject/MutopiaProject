global = \includeNotes #"global"

%% Coro. Ritorni omai nel nostro core
\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \keepWithTag #'(partUp other) \global
      \clef treble
      \includeNotes #"tutti1"
    >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'(partDown other) \global
      \clef treble
      \includeNotes #"tutti2"
    >>
  >>
  \header {
    opus = "Coro. Ritorni omai nel nostro core"
  }
  \layout { }
}