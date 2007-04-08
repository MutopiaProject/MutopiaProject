%% Sinfonia
global = \includeNotes #"global"

\score {
  <<
    \lyricStaff \markup Cesare. <<
      \keepWithTag #'partUp \global
      \cesare \includeNotes #"cesare"
    >> \includeLyrics #"cesare-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"tutti" \includeNotes #"violino2"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Cesare: Se in fiorito" }
  \layout {}
}
