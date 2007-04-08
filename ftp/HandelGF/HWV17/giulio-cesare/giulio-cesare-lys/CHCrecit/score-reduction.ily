global = \includeNotes #"global"

%% Recit. Cleopatra: Cleopatra: Che sento? oh Dio!
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
        \partcombine \includeNotes #"violino1" \includeNotes #"violino2"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
        \includeFigures #"figures"
      >>
    >>
  >>
  \header { opus = "Recit. Cleopatra: Cleopatra: Che sento? oh Dio!." }
  \layout { }
}
