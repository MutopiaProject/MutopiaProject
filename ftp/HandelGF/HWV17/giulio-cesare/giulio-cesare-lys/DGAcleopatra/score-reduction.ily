global = \includeNotes #"global"

%% Recit. Cleopatra: Voi, che mie fide ancelle
\score {
  <<
    \lyricStaff \markup "Cleopatra." <<
      \keepWithTag #'partUp \global
      { R4.*10 }
      \cleopatra \includeNotes #"cleopatra" 
    >> \includeLyrics #"cleopatra-lyrics"
    \new Staff \with {
      fontSize = #-2
      \override StaffSymbol #'staff-space = #(magstep -2)
    } <<
      \notemode {
        \time 3/8
        \key c \minor
        \clef treble
        \once \override TextScript #'padding = #2
        s4^"Oboe"
      }
      \includeNotes #"oboe"
    >>
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
  \header {
    piece = "Scena VII."
    opus = "Recit. Cleopatra: Voi, che mie fide ancelle"
  }
  \layout { }
}
