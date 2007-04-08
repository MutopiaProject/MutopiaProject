global = \includeNotes #"global"

%% Aria. Sesto: L'aura che spira
\score {
  <<
    \lyricStaff \markup Sesto. <<
      \keepWithTag #'partUp \global
      \sesto \includeNotes #"sesto" 
    >> \includeLyrics #"sesto-lyrics"
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
  \header { opus = "Aria. Sesto: L'aura che spira" }
  \layout { }
}
