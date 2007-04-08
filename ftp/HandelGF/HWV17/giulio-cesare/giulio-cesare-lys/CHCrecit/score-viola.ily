global = \includeNotes #"global"

%% Recit. Cleopatra: Cleopatra: Che sento? oh Dio!
\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header { opus = "Recit. Cleopatra: Cleopatra: Che sento? oh Dio!." }
  \layout { indent = \smallindent }
}
