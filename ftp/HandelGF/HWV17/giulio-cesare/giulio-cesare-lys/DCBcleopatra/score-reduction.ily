global = \includeNotes #"global-1"

%% Aria. Cleopatra: Piangerò la sorte mia
\score {
  <<
    \lyricStaff \markup Cleopatra. <<
      \keepWithTag #'partUp \global
      \cleopatra \includeNotes #"cleopatra-1" 
    >> \includeLyrics #"cleopatra-lyrics-1"
    \new PianoStaff <<
      \new Staff <<
      \keepWithTag #'() \global
      \clef treble
      \set Staff.printPartCombineTexts = ##f
      \partcombine \includeNotes #"violino1-1" \includeNotes #"violino2-1"
    >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"bassi-1"
      >>
    >>
  >>
  \header { opus = "Aria. Cleopatra: Piangerò la sorte mia" }
  \layout { }
}

global = \includeNotes #"global-2"

\score {
  <<
    \lyricStaff \markup "" <<
      \keepWithTag #'partUp \global
      \cleopatra \includeNotes #"cleopatra-2" 
    >> \includeLyrics #"cleopatra-lyrics-2"
    \new PianoStaff <<
      \new Staff <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"violini-2"
      >>
      \new Staff <<
        \keepWithTag #'partDown \global
        \clef bass
        \includeNotes #"cello-2"
        \includeFigures #"figures-2"
      >>
    >>
  >>
  \layout { indent = \noindent }
}
