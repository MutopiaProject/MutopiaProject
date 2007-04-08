global = \includeNotes #"global"

%% Aria. Cesare: Al lampo dell'armi
\score {
  \instrStaff \markup \column { "(Violini)" "unisoni." } <<
    \keepWithTag #'(partBoth full) \global
    \clef treble
    \includeNotes #"violini" 
  >>
  \header { opus = "Aria. Cesare: Al lampo dell'armi" }
  \layout { indent = \largeindent }
}
