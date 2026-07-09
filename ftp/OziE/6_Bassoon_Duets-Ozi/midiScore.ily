midiScore = \book {
  \header {
    title = "Six Duos pour deux bassons"
    subtitle=\subTitleMarkup
  }
  \score {
    \header {
      piece=\movementPiece
    }
    <<
    \new Staff  
    {
      \set Staff.midiInstrument = "bassoon"
      \compressMMRests {
        \set Staff.instrumentName = "Bsn1"
        \restStyle
        \playerOne
      }
    }
    \new Staff {
      \set Staff.midiInstrument = "bassoon"
      \compressMMRests {
        \set Staff.instrumentName = "Bsn2"
        \restStyle
        \playerTwo
      }
    }
  >>
    \layout {
    }
    \midi { 
    }
  }
}
