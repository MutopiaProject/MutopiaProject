\version "2.16.0"

Instrument = ""
\include "header.ly"
\include "1-mand.ly"
\include "1-vln1.ly"
\include "1-vln2.ly"
\include "1-basso.ly"
\include "2-mand.ly"
\include "2-vln1.ly"
\include "2-vln2.ly"
\include "2-basso.ly"
\include "3-mand.ly"
\include "3-vln1.ly"
\include "3-vln2.ly"
\include "3-basso.ly"

#(set-global-staff-size 13)
\score {
  \context StaffGroup <<
    \context Staff <<
      \set Staff.instrumentName = "Mandolin"
      \set Staff.midiInstrument = "acoustic guitar (nylon)" \IMand>>
    \context Staff = ViolinI <<
      \set Staff.instrumentName = "Violin I"
      \set Staff.midiInstrument = "violin" \IVlnI>>
    \context Staff = ViolinII <<
      \set Staff.instrumentName = "Violin II"
      \set Staff.midiInstrument = "violin" \IVlnII>>
    \context Staff = Basso <<
      \set Staff.instrumentName = "Cello"
      \set Staff.midiInstrument = "cello" \IBasso>>
  >>

  \header {piece = "Maestoso" opus = "Gimo 153"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context StaffGroup <<
    \context Staff <<
      \set Staff.instrumentName = "Mandolin"
      \set Staff.midiInstrument = "acoustic guitar (nylon)" \IIMand>>
    \context Staff = ViolinI <<
      \set Staff.instrumentName = "Violin I"
      \set Staff.midiInstrument = "violin" \IIVlnI>>
    \context Staff = ViolinII <<
      \set Staff.instrumentName = "Violin II"
      \set Staff.midiInstrument = "violin" \IIVlnII>>
    \context Staff = Basso <<
      \set Staff.instrumentName = "Cello"
      \set Staff.midiInstrument = "cello" \IIBasso>>
  >>

  \header {piece = "Larghetto"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context StaffGroup <<
    \context Staff <<
      \set Staff.instrumentName = "Mandolin"
      \set Staff.midiInstrument = "acoustic guitar (nylon)" \IIIMand>>
    \context Staff = ViolinI <<
      \set Staff.instrumentName = "Violin I"
      \set Staff.midiInstrument = "violin" \IIIVlnI>>
    \context Staff = ViolinII <<
      \set Staff.instrumentName = "Violin II"
      \set Staff.midiInstrument = "violin" \IIIVlnII>>
    \context Staff = Basso <<
      \set Staff.instrumentName = "Cello"
      \set Staff.midiInstrument = "cello" \IIIBasso>>
  >>

  \header {piece = "Allegro"}
  \layout {}
  
  \midi {
    \tempo 4. = 36
    }


}
