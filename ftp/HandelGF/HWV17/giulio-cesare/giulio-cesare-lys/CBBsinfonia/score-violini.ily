%% Sinfonia
global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes #"tutti"
    >>
    \instrStaff \markup {Violino II.} <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header {
    opus = "Sinfonia."
  }
  \layout { }
}
