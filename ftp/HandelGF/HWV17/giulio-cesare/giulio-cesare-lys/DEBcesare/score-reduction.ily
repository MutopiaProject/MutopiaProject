global = \includeNotes #"global"

%% Aria. Cesare: Quel torrente che cade dal monte
\score {
  <<
    \lyricStaff \markup "Cesare." <<
      \keepWithTag #'(partUp cesare) \global
      \cesare \includeNotes #"cesare" 
    >> \includeLyrics #"cesare-lyrics"
    \new PianoStaff <<
        \new Staff <<
          \keepWithTag #'() \global
          \clef treble
          \includeNotes #"tutti" 
        >>
        \new Staff <<
          \keepWithTag #'partDown \global
          \clef bass
          \includeNotes #"bassi"
        >>
      >>
  >>
  \header { opus = "Aria. Cesare: Quel torrente che cade dal monte" }
  \layout { indent = \largeindent }
}
