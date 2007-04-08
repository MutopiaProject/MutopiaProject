global = \includeNotes #"global"

%% Coro. Ritorni omai nel nostro core
\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'(partBoth other) \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header {
    opus = "Coro. Ritorni omai nel nostro core"
  }
  \layout { indent = \smallindent }
}