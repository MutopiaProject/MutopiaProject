global = \includeNotes #"global"

%% Sinfonia
\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'(not-corno partBoth) \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header {
    piece = "Scena Ultima."
    opus = "Sinfonia"
  }
  \layout { indent = \smallindent }
}
