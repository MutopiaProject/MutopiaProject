global = \includeNotes #"global"

%% Aria. Cesare: Non è si vago e bello
\score {
  <<
    \lyricStaff \markup "" <<
      \keepWithTag #'(partUp with-break) \global
      \cesare \includeNotes #"cesare" 
    >> \includeLyrics #"cesare-lyrics"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"tutti"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
        \includeFigures #"figures"
      >>
    >>
  >>
  \header { opus = "Aria. Cesare: Non è si vago e bello" }
  \layout { indent = \noindent }
}
