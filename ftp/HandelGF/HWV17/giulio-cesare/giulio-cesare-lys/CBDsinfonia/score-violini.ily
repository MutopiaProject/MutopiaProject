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
    \new InnerStaffGroup <<
      \instrStaff \markup "Violino I." <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"orch-tutti1"
      >>
      \instrStaff \markup "Violino II." <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"orch-tutti2"
      >>
    >>
  >>
  \layout {}
}