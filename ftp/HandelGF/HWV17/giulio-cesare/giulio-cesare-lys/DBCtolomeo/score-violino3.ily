global = \includeNotes #"global"

%% Aria. Tolomeo: Domerò la tua fierezza
\score {
  \instrStaff \markup "Violini unisoni." <<
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violini"
  >>
  \header { opus = "Aria. Tolomeo: Domerò la tua fierezza" }
  \layout { } 
}
