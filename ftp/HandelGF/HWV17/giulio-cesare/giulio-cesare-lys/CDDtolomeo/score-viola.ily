global = \includeNotes #"global"

%% Aria. Tolomeo: Sì, spietata, il tuo rigore
\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola" 
  >>
  \header { opus = "Aria. Tolomeo: Sì, spietata, il tuo rigore" }
  \layout { indent = \smallindent } 
}
