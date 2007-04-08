global = \includeNotes #"global"

%% Aria. Sesto: Cara speme, questo core tu cominci a lusingar
\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \set Score.skipBars = ##t
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"violino1"
    >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'partDown \global
      \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header { 
    opus = "Aria. Sesto: Cara speme, questo core tu cominci a lusingar"
  }
  \layout { }
}
