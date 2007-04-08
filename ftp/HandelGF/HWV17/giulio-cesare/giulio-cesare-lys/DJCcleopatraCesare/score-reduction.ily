global = \includeNotes #"global"

%% Duetto. Cleopatra e Cesare: Caro/Bella, più amabile beltà
\score {
  <<
    \new ChoirStaff <<
      \lyricStaff \markup Cleopatra. <<
        \keepWithTag #'partUp \global
        \cleopatra \includeNotes #"cleopatra"
      >> \includeLyrics #"cleopatra-lyrics"
      \lyricStaff \markup Cesare. <<
        \keepWithTag #'() \global
        \cesare \includeNotes #"cesare"
      >> \includeLyrics #"cesare-lyrics"            
    >>
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"tutti1" \includeNotes #"tutti2"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header { opus = "Duetto. Cleopatra e Cesare: Caro/Bella, più amabile beltà" }
  \layout { }
}
