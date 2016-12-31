\version "2.18.2"

\include "TenthRegiment.ly"

\score {
  <<
    \new Staff  {
      \time 6/8
      \unfoldRepeats
      \rehearsalMarks
    }
    
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "flute"
      \set Staff.instrumentName = "Flute 1"
      \set Staff.shortInstrumentName = "Fl 1"
      \tempo 4.=120
\unfoldRepeats      
      \keepWithTag #'fluteOne \fluteOne
    }
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "flute"
      \set Staff.instrumentName = "Flute 2"
      \set Staff.shortInstrumentName = "Fl 2"
      \tempo 4.=120
\unfoldRepeats      
      \fluteTwo
    }
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "clarinet"
      \set Staff.instrumentName = "Clarinet 1"
      \set Staff.shortInstrumentName = "Clar 1"
      \tempo 4.=120
\unfoldRepeats      
      \transpose c bes, \clarinetOne
    }
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "clarinet"
      \set Staff.instrumentName = "Clarinet 2"
      \set Staff.shortInstrumentName = "Clar 2"
      \tempo 4.=120
\unfoldRepeats      
      \transpose c bes, \clarinetTwo
    }
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "clarinet"
      \set Staff.instrumentName = "Clarinet 3"
      \set Staff.shortInstrumentName = "Clar 3"
      \tempo 4.=120
\unfoldRepeats      
      \transpose c bes, \clarinetThree
    }
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "clarinet"
      \set Staff.instrumentName = "Bass Clarinet"
      \set Staff.shortInstrumentName = "B. Cl"
      \tempo 4.=120
\unfoldRepeats      
      \transpose c bes,, \clarinetBass
    }
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "tenor sax"
      \set Staff.instrumentName = "Tenor Sax"
      \set Staff.shortInstrumentName = "Ten Sax"
      \tempo 4.=120
\unfoldRepeats      
      \transpose c bes,, \saxTenor
    }
    
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trumpet"
      \set Staff.instrumentName = "Solo Cornet"
      \set Staff.shortInstrumentName = "Corn Solo"
      \tempo 4.=120
\unfoldRepeats      
      \transpose c bes, \cornetSolo
    }
    
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trumpet"
      \set Staff.instrumentName = "Cornet 1"
      \set Staff.shortInstrumentName = "Corn 1"
      \tempo 4.=120
\unfoldRepeats      
      \transpose c bes, \cornetOne
    }
    
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trumpet"
      \set Staff.instrumentName = "Cornet 2"
      \set Staff.shortInstrumentName = "Corn 2"
      \tempo 4.=120
\unfoldRepeats      
      \transpose c bes, \cornetTwo
    }
    
    \new Staff  {
      \time 6/8
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trumpet"
      \set Staff.instrumentName = "Cornet 3"
      \set Staff.shortInstrumentName = "Corn 3"
      \tempo 4.=120
\unfoldRepeats      
      \transpose c bes, \cornetThree
    }
    
    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trombone"
      \set Staff.instrumentName = "Baritone TC"
      \set Staff.shortInstrumentName = "Bari TC"
      \tempo 4.=120
\unfoldRepeats            
      \transpose c bes,, \baritoneTC
    }
  >>
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}
