global = \includeNotes #"global"

%% Sinfonia
\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \set Score.skipBars = ##t
      \keepWithTag #'(not-corno partUp) \global
      \clef treble
      \includeNotes #"violino1"
    >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'(not-corno partDown) \global
        \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header {
    piece = "Scena Ultima."
    opus = "Sinfonia"
  }
  \layout {}
}
