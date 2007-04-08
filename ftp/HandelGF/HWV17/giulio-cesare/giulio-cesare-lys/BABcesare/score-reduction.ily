global = \includeNotes #"global"

%% Aria. Cesare: Presti omai l'egizia terra
\score {
  <<
    \lyricStaff \markup "Cesare." <<
      \keepWithTag #'partUp \global
      \cesare \includeNotes #"cesare"
    >> \includeLyrics #"cesare-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"tutti1"
        >>
      \new Staff <<
        \keepWithTag #'() \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header {
    opus = "Aria. Cesare: Presti omai l'egizia terra"
  }
  \layout { }
}
