\version "2.16.0"

Instrument = ""
\include "header.ly"
\include "global.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

#(set-global-staff-size 13)

\score {
  <<
    \context StaffGroup = Score <<
      \context Staff <<\IGlobal>>
      \context Staff <<
	\set Staff.instrumentName = "Mandolin"
        \set Staff.midiInstrument = "acoustic guitar (nylon)" \IMand>>
      \context Staff = ViolinI <<
	\set Staff.instrumentName = "Violin I"
        \set Staff.midiInstrument = "violin" \IViolinI>>
      \context Staff = ViolinII <<
	\set Staff.instrumentName = "Violin II"
        \set Staff.midiInstrument = "violin" \IViolinII>>
      \context Staff = Basso <<
	\set Staff.instrumentName = "Basso"
        \set Staff.midiInstrument = "contrabass" \IBasso>>
    >>
  >>
  \layout {}
  
  \midi {
    \tempo 4 = 90
    }



  \header { piece = "Allegro" opus="Gimo 297" }
}

\score {
  <<
    \context StaffGroup = Score <<
      \context Staff <<\IIGlobal>>
      \context Staff <<
	\set Staff.instrumentName = "Mandolin"
        \set Staff.midiInstrument = "acoustic guitar (nylon)" \IIMand>>
      \context Staff = ViolinI <<
	\set Staff.instrumentName = "Violin I"
        \set Staff.midiInstrument = "violin" \IIViolinI>>
      \context Staff = ViolinII <<
	\set Staff.instrumentName = "Violin II"
        \set Staff.midiInstrument = "violin" \IIViolinII>>
      \context Staff = Basso <<
	\set Staff.instrumentName = "Basso"
        \set Staff.midiInstrument = "contrabass" \IIBasso>>
    >>
  >>
  \layout {}

  
  \midi {
    \tempo 4 = 40
    }


  \header { piece = "Largo"}
}

\score {
  <<
    \context StaffGroup = Score <<
      \context Staff <<\IIIGlobal>>
      \context Staff <<
	\set Staff.instrumentName = "Mandolin"
        \set Staff.midiInstrument = "acoustic guitar (nylon)" \IIIMand>>
      \context Staff = ViolinI <<
	\set Staff.instrumentName = "Violin I"
        \set Staff.midiInstrument = "violin" \IIIViolinI>>
      \context Staff = ViolinII <<
	\set Staff.instrumentName = "Violin II"
        \set Staff.midiInstrument = "violin" \IIIViolinII>>
      \context Staff = Basso <<
	\set Staff.instrumentName = "Basso"
        \set Staff.midiInstrument = "contrabass" \IIIBasso>>
    >>
  >>
  \layout {}
  
  \midi {
    \tempo 4. = 68
    }


  \header { piece = "Allegro"}
}
