global = \includeNotes #"global"

%% Coro. Viva il nostre Alcide
\score {
  <<
    \new ChoirStaff <<
      \lyricStaff \markup "" <<
        \includePageTweaks
        \keepWithTag #'other \global
        \clef treble
        \includeNotes #"soprano" >> \includeLyrics #"soprano-lyrics"
      \lyricStaff \markup "" <<
        \keepWithTag #'other \global
        \clef alto
        \includeNotes #"alto" >> \includeLyrics #"alto-lyrics"
      \lyricStaff \markup "" <<
        \keepWithTag #'other \global
        \clef tenor
        \includeNotes #"tenor" >> \includeLyrics #"tenor-lyrics"
      \lyricStaff \markup "" <<
        \keepWithTag #'other \global
        \clef bass
        \includeNotes #"bass" >> \includeLyrics #"bass-lyrics"
    >>
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'other \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine 
        \includeNotes #"violino1" 
        \includeNotes #"violino2"
      >>
      \new Staff <<
        \keepWithTag #'other \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header {
    piece = "Atti Primo, Scena I."
    opus = "Coro. Viva il nostre Alcide"
  }
  \layout { indent = \smallindent }
}
