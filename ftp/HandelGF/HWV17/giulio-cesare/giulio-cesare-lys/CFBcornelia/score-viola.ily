global = \includeNotes #"global"

%% Aria. Cornelia: Cessa omai di sospirare
\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola" 
  >>
  \header { opus = "Aria. Cornelia: Cessa omai di sospirare" }
  \layout { indent = \smallindent }
}
