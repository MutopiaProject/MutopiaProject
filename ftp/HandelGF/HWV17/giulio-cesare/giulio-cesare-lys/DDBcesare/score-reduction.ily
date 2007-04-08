%% Aria. Cesare: Aure, deh, per pietà
global = \includeNotes #"global"

\score {
  <<
    \lyricStaff \markup "" <<
      \keepWithTag #'(cesare partUp) \global
      \cesare \includeNotes #"cesare"
    >> \includeLyrics #"cesare-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"violino1" \includeNotes #"violino2"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Cesare: Aure, deh, per pietà" }
  \layout { indent = \noindent }
}
