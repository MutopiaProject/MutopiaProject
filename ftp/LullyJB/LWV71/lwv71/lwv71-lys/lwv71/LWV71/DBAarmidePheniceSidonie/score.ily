\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Phenice"
      \set Staff . shortInstrumentName = "P."
      \global \basDessus \includeNotes "phenice"
    >> \includeLyrics "paroles-phenice"
    \newStaffWithLyrics <<
      \characterName \markup "Sidonie"
      \set Staff . shortInstrumentName = "S."
      \global \basDessus \includeNotes "sidonie"
      {  
        s1*10 s2. s1 s2. s1 s2.*15 s1*7 s2. s1*14 s1.*34 s1*4
        \set Staff.voltaOnThisStaff = ##t s1*3
        \set Staff.voltaOnThisStaff = ##f
      }
    >> \includeLyrics "paroles-sidonie"
    \newStaffWithLyrics <<
      \characterName \markup "Armide"
      \set Staff . shortInstrumentName = "A."
      \scoreInit \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles-armide"
    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header { 
    scene = "SCÈNE DEUXIÈME"
    sceneDescription = \markup \center-align {
      \line \smallCaps { Armide, Phenice, Sidonie }
    }
  }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*))
    \context { \RemoveEmptyStaffContext } 
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
