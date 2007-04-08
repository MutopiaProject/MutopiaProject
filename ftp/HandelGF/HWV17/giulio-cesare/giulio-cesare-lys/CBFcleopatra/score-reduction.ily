%% Sinfonia
global = \includeNotes #"global"

\score {
  <<
    \lyricStaff \markup Cleopatra. <<
      \keepWithTag #'partUp \global
      \cleopatra \includeNotes #"cleopatra"
    >> \includeLyrics #"cleopatra-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"orch-violino1" \includeNotes #"tutti"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"bassi" \includeNotes #"orch-bassi"
      >>
    >>
  >>
  \header { opus = "Aria. Cleopatra: V'adoro, pupile" }
  \layout {}
}
