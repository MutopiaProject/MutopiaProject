global = \includeNotes #"global"

%% Aria. Cleopatra: Tu la mia stella sei, amabile speranza
\score {
  <<
    \lyricStaff \markup "Cleopatra." <<
      \keepWithTag #'partUp \global
      \cleopatra \includeNotes #"cleopatra" 
    >> \includeLyrics #"cleopatra-lyrics" 
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"violini"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Cleopatra: Tu la mia stella sei, amabile speranza" }
  \layout { }
}
