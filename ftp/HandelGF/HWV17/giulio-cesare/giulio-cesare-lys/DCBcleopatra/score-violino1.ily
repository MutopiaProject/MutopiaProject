global = \includeNotes #"global-1"

%% Aria. Cleopatra: Piangerò la sorte mia
\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \set Score.skipBars = ##t
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"violino1-1"
    >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'partDown \global
      \clef treble
      \includeNotes #"violino2-1"
    >>
  >>
  \header { opus = "Aria. Cleopatra: Piangerò la sorte mia" }
  \layout { }
}

global = \includeNotes #"global-2"

\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef treble
    { s1^\markup "Viol I. II." }
    \includeNotes #"violini-2"
  >>
  \layout { indent = \noindent }
}
