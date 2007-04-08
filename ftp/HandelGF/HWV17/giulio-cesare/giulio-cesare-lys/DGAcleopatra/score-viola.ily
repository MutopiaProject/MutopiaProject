global = \includeNotes #"global"

%% Recit. Cleopatra: Voi, che mie fide ancelle
\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header {
    piece = "Scena VII."
    opus = "Recit. Cleopatra: Voi, che mie fide ancelle"
  }
  \layout { indent = \smallindent }
}
