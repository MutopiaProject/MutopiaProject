global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \keepWithTag #'(partUp not-flauti) \global
      \clef treble
      \set Score.skipBars = ##t
      \includeNotes #"violino1"
    >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'(partDown not-flauti) \global
      \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header {
    opus = "Aria. Sesto: Svegliatevi nel core"
  }
  \layout { }
}