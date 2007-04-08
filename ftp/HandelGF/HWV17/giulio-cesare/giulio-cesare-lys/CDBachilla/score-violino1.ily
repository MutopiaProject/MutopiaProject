global = \includeNotes #"global"

%% Aria. Achilla: Se a me non sei crudele
\score {
  \instrStaff \markup "Violini." <<
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violini"
  >>
  \header { opus = "Aria. Achilla: Se a me non sei crudele" }
  \layout { }
}
