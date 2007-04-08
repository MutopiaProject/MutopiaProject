global = \includeNotes #"global"

%% Aria. Cesare: Quel torrente che cade dal monte
\score {
  \instrStaff \markup "Violini." <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"tutti" 
  >>
  \header { opus = "Aria. Cesare: Quel torrente che cade dal monte" }
  \layout { indent = \largeindent }
}
