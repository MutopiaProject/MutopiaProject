\version "1.6.0"

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

\include "paper13.ly"

\score {
  \context StaffGroup <
    \context Staff <
      \property Staff.instrument = "Mandolin"
      \property Staff.midiInstrument = "acoustic guitar (nylon)" \IMand>
    \context Staff = ViolinI <
      \property Staff.instrument = "Violin I"
      \property Staff.midiInstrument = "violin" \IVlnI>
    \context Staff = ViolinII <
      \property Staff.instrument = "Violin II"
      \property Staff.midiInstrument = "violin" \IVlnII>
    \context Staff = Basso <
      \property Staff.instrument = "Cello"
      \property Staff.midiInstrument = "cello" \IBasso>
  >

  \header {piece = "Allegro" opus = "Gimo 88"}
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 80}
}

\score {
  \context StaffGroup <
    \context Staff <
      \property Staff.instrument = "Mandolin"
      \property Staff.midiInstrument = "acoustic guitar (nylon)" \IIMand>
    \context Staff = ViolinI <
      \property Staff.instrument = "Violin I"
      \property Staff.midiInstrument = "violin" \IIVlnI>
    \context Staff = ViolinII <
      \property Staff.instrument = "Violin II"
      \property Staff.midiInstrument = "violin" \IIVlnII>
    \context Staff = Basso <
      \property Staff.instrument = "Cello"
      \property Staff.midiInstrument = "cello" \IIBasso>
  >

  \header {piece = "Largo"}
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=66}
}

\score {
  \context StaffGroup <
    \context Staff <
      \property Staff.instrument = "Mandolin"
      \property Staff.midiInstrument = "acoustic guitar (nylon)" \IIIMand>
    \context Staff = ViolinI <
      \property Staff.instrument = "Violin I"
      \property Staff.midiInstrument = "violin" \IIIVlnI>
    \context Staff = ViolinII <
      \property Staff.instrument = "Violin II"
      \property Staff.midiInstrument = "violin" \IIIVlnII>
    \context Staff = Basso <
      \property Staff.instrument = "Cello"
      \property Staff.midiInstrument = "cello" \IIIBasso>
  >

  \header {piece = "Allegro"}
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 8=160}
}




