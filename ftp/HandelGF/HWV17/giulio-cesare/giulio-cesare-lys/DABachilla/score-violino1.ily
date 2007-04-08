global = \includeNotes #"global"

%% Aria. Achilla: Dal fulgor di questa spada
\score {
  \instrStaff \markup "Violini." <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violini"
  >>
  \header { opus = "Aria. Achilla: Dal fulgor di questa spada" }
  \layout { }
}
