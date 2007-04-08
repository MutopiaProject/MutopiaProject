global = \includeNotes #"global"

%% Aria. Sesto: L'aura che spira
\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header { opus = "Aria. Sesto: L'aura che spira" }
  \layout { indent = \smallindent }
}
