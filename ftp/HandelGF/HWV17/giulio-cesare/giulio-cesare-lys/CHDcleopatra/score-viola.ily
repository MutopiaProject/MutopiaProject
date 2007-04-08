global = \includeNotes #"global"

%% Aria. Cleopatra: Se pietà di me non senti
\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header { opus = "Aria. Cleopatra: Se pietà di me non senti" }
  \layout { indent = \smallindent }
}
