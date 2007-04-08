global = \includeNotes #"global"

%% Aria. Cleopatra: Se pietà di me non senti
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
        \includeNotes #"violino12"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
        \includeFigures #"figures"
      >>
    >>
  >>
  \header { opus = "Aria. Cleopatra: Se pietà di me non senti" }
  \layout { }
}
