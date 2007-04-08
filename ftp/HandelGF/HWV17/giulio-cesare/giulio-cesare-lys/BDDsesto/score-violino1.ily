global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'(partBoth not-flauti) \global
    \clef treble
    \set Score.skipBars = ##t
    \includeNotes #"violino1"
  >>
  \header {
    opus = "Aria. Sesto: Svegliatevi nel core"
  }
  \layout { indent = \smallindent }
}