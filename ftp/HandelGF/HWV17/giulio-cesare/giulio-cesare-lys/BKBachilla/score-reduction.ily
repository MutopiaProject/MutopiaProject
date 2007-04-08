global = \includeNotes #"global"

%% Aria. Achilla: Tu sei il cor di questo core
\score {
  <<
    \lyricStaff \markup Achilla. <<
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
        \keepWithTag #'no-basson \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Achilla: Tu sei il cor di questo core" }
  \layout { }
}
