global = \includeNotes #"global"

%% Aria. Cleopatra: Non disperar, chi sa ?
\score {
  <<
    \lyricStaff \markup "Cleopatra." <<
        \keepWithTag #'(cleopatra partUp not-violini) \global
        \cleopatra \includeNotes #"cleopatra" 
      >> \includeLyrics #"cleopatra-lyrics" 
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'(bassi) \global
        \clef treble
        { \includeNotes #"violini" r4 R1*12 }
      >>
      \new Staff <<
        \keepWithTag #'(bassi partDown) \global
        \clef bass
        \keepWithTag #'() \includeNotes #"bassi"
      >>
    >>
  >>
  \header {
    opus = "Aria. Cleopatra: Non disperar, chi sa ?"
  }
  \layout { }
  %%\midi {\tempo 4 = 128}
}
