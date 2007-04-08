global = \includeNotes #"global"

%% Coro. Ritorni omai nel nostro core
\score {
  <<
    \new ChoirStaff <<
      \lyricStaff \markup "" <<
        \keepWithTag #'(partUp other with-breaks) \global
        \clef treble
        \includeNotes #"soprano1" 
      >> \includeLyrics #"soprano1-lyrics"
      \lyricStaff \markup "" <<
        \keepWithTag #'other \global
        \clef treble
        \includeNotes #"soprano2"
      >> \includeLyrics #"soprano2-lyrics"
      \lyricStaff \markup "" <<
        \keepWithTag #'other \global
        \clef alto
        \includeNotes #"alto"
      >> \includeLyrics #"lyrics"
      \lyricStaff \markup "" <<
        \keepWithTag #'other \global
        \clef bass
        \includeNotes #"bass"
      >> \includeLyrics #"lyrics"
    >>
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'other \global
        \clef treble
        \set Staff.printPartCombineTexts = ##f
        \partcombine \includeNotes #"tutti1" \includeNotes #"tutti2"
      >>
      \new Staff <<
        \keepWithTag #'other \global
        \clef bass
        \includeNotes #"bassi"
      >>
    >>
  >>
  \header {
    opus = "Coro. Ritorni omai nel nostro core"
  }
  \layout { indent = \smallindent }
}