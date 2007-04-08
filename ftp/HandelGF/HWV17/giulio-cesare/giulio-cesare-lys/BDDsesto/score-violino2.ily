global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'(partBoth not-flauti) \global
    \set Score.skipBars = ##t
    \clef treble
    \includeNotes #"violino2"
  >>
  \header {
    opus = "Aria. Sesto: Svegliatevi nel core"
  }
  \layout { indent = \smallindent }
}