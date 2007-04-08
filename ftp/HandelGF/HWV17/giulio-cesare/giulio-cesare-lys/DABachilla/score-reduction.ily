global = \includeNotes #"global"

%% Aria. Achilla: Dal fulgor di questa spada
\score {
  <<
    \lyricStaff \markup "Achilla." <<
      \keepWithTag #'partUp \global
      \achilla \includeNotes #"achilla"
    >> \includeLyrics #"achilla-lyrics"
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
  \header { opus = "Aria. Achilla: Dal fulgor di questa spada" }
  \layout { }
}
