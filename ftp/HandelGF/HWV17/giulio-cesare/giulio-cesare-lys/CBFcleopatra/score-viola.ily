%% Sinfonia
global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup {Viola.} <<
      \set Score.skipBars = ##t
      \keepWithTag #'(partUp tutti) \global
      \clef alto
      \includeNotes #"viola"
    >>
    \instrStaff \markup \instruments { Viola (Orchestra) } <<
      \keepWithTag #'partDown \global
      \clef alto
      \includeNotes #"orch-viola"
    >>
  >>
  \header { opus = "Aria. Cleopatra: V'adoro, pupile" }
  \layout {}
}
