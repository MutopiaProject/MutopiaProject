global = \includeNotes #"global"

%% Aria. Cornelia: Priva son d'ogni conforto
\score {
  <<
    \lyricStaff \markup "Cornelia." <<
        \keepWithTag #'partUp \global
        \cornelia \includeNotes #"cornelia" 
      >>  \includeLyrics #"cornelia-lyrics" 
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \new Voice { \voiceOne \includeNotes #"violino1" }
        \new Voice { \voiceTwo \includeNotes #"violino2" }
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header {
    opus = "Aria. Cornelia: Priva son d'ogni conforto"
  }
  \layout { }
}
