global = \includeNotes #"global"

%% Aria. Sesto: La giustizia ha già sull'arco
\score {
  \instrStaff \markup "Violini unisoni." <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violini"
  >>
  \header { opus = "Aria. Sesto: La giustizia ha già sull'arco" }
  \layout { }
}
