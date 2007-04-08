global = \includeNotes #"global"

%% Aria. Sesto: Cara speme, questo core tu cominci a lusingar
\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \set Score.skipBars = ##t
    \clef alto
    \includeNotes #"viola"
  >>
  \header { 
    opus = "Aria. Sesto: Cara speme, questo core tu cominci a lusingar"
  }
  \layout { indent = \smallindent }
}
