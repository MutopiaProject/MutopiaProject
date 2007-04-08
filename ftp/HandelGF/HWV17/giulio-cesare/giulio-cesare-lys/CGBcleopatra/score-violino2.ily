global = \includeNotes #"global"

%% Aria. Cleopatra: Venere bella
\score {
  \instrStaff \markup "Violini." <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violini"
  >>
  \header { opus = "Aria. Cleopatra: Venere bella" }
  \layout { }
}
