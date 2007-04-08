global = \includeNotes #"global"

%% Aria. Sesto e Cornelia: Son nato a sospirar/Son nata a lagrimar, e il dolce
\score {
  <<
    \new ChoirStaff <<
      \lyricStaff \markup Sesto. <<
        \keepWithTag #'partUp \global
        \sesto \includeNotes #"sesto"
      >> \includeLyrics #"sesto-lyrics"
      \lyricStaff \markup Cornelia. <<
        \keepWithTag #'() \global
        \cornelia \includeNotes #"cornelia"
      >> \includeLyrics #"cornelia-lyrics"            
    >>
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"violino1" 
        \keepWithTag #'() \includeNotes #"violino2"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Sesto e Cornelia: Son nato a sospirar/Son nata a lagrimar, e il dolce" }
  \layout { }
}
