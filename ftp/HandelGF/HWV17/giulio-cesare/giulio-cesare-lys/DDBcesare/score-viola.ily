%% Aria. Cesare: Aure, deh, per pietà
global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header { opus = "Aria. Cesare: Aure, deh, per pietà" }
  \layout { indent = \noindent }
}
