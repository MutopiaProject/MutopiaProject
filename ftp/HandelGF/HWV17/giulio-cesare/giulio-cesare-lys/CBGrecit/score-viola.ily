global = \includeNotes #"global"

%% Recitativo
\score {
  \new Staff <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    { R1*3 R1 s4 }
  >>
  \header { opus = "Recitativo." }
  \layout { indent = \smallindent }
}
