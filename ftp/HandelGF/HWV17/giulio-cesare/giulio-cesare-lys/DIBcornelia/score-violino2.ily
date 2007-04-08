global = \includeNotes #"global"

%% Aria. Cornelia: Non ha più che temere
\score {
  \instrStaff \markup { Tutti unisoni. } <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"tutti" 
  >>
  \header { opus = "Aria. Cornelia: Non ha più che temere" }
  \layout { }
}
