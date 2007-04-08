%% Sinfonia
global = \includeNotes #"global"

\score {
  <<
    \lyricStaff \markup "" <<
      \keepWithTag #'recit \global
      { \includeNotes #"recit" R2.*4 }
    >> \includeLyrics #"lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"tutti" \includeNotes #"harpe1"
      >>
      \new Staff <<
        \keepWithTag #'() \global
        \clef bass
        \includeNotes #"harpe2"
      >>
    >>
  >>
  \header {
    opus = "Sinfonia."
  }
  \layout { indent = \smallindent }
}
