global = \includeNotes #"global"

%% Aria. Sesto: La giustizia ha già sull'arco
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
        \includeNotes #"violini"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
        \includeFigures #"figures"
      >>
    >>
  >>
  \header { opus = "Aria. Sesto: La giustizia ha già sull'arco" }
  \layout { }
}
