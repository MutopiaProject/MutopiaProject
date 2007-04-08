\version "1.6.0"

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

\include "paper13.ly"

\score {
  <
    \context StaffGroup = Score <
      \context Staff <\IGlobal>
      \context Staff <
	\property Staff.instrument = "Mandolin"
        \property Staff.midiInstrument = "acoustic guitar (nylon)" \IMand>
      \context Staff = ViolinI <
	\property Staff.instrument = "Violin I"
        \property Staff.midiInstrument = "violin" \IViolinI>
      \context Staff = ViolinII <
	\property Staff.instrument = "Violin II"
        \property Staff.midiInstrument = "violin" \IViolinII>
      \context Staff = Basso <
	\property Staff.instrument = "Basso"
        \property Staff.midiInstrument = "contrabass" \IBasso>
    >
  >
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi { \tempo 4 = 90 }

  \header { piece = "Allegro" opus="Gimo 297" }
}

\score {
  <
    \context StaffGroup = Score <
      \context Staff <\IIGlobal>
      \context Staff <
	\property Staff.instrument = "Mandolin"
        \property Staff.midiInstrument = "acoustic guitar (nylon)" \IIMand>
      \context Staff = ViolinI <
	\property Staff.instrument = "Violin I"
        \property Staff.midiInstrument = "violin" \IIViolinI>
      \context Staff = ViolinII <
	\property Staff.instrument = "Violin II"
        \property Staff.midiInstrument = "violin" \IIViolinII>
      \context Staff = Basso <
	\property Staff.instrument = "Basso"
        \property Staff.midiInstrument = "contrabass" \IIBasso>
    >
  >
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}

  \midi { \tempo 4 = 40 }
  \header { piece = "Largo"}
}

\score {
  <
    \context StaffGroup = Score <
      \context Staff <\IIIGlobal>
      \context Staff <
	\property Staff.instrument = "Mandolin"
        \property Staff.midiInstrument = "acoustic guitar (nylon)" \IIIMand>
      \context Staff = ViolinI <
	\property Staff.instrument = "Violin I"
        \property Staff.midiInstrument = "violin" \IIIViolinI>
      \context Staff = ViolinII <
	\property Staff.instrument = "Violin II"
        \property Staff.midiInstrument = "violin" \IIIViolinII>
      \context Staff = Basso <
	\property Staff.instrument = "Basso"
        \property Staff.midiInstrument = "contrabass" \IIIBasso>
    >
  >
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi { \tempo 8 = 204 }
  \header { piece = "Allegro"}
}



