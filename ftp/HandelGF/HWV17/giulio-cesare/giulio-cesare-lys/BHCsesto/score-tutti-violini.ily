global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'(full partBoth) \includeNotes #"global"
    {
      \clef treble
      \set Score.skipBars = ##t
      R1*3 R1*12 R1*2 r4 r2. R1*7 r4 \break
      \includeNotes #"tutti"
    }
  >>
  \header {
    opus = "Aria. Sesto: Cara speme, questo core tu cominci a lusingar"
  }
  \layout { indent = \smallindent }
}
