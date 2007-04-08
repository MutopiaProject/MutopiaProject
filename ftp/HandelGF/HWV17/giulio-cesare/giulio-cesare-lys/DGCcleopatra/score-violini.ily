global = \includeNotes #"global"

%% Aria. Cleopatra: Da tempeste il legno infranto
\score {
  \instrStaff \markup "Violini unisoni." <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violini" 
  >>
  \header { opus = "Aria. Cleopatra: Da tempeste il legno infranto" }
  \layout { }
}
