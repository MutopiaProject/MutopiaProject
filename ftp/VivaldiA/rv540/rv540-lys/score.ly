\version "1.6.9"
Instrument = ""
\include "header.ly"
\include "1-amore.ly"
\include "1-lute.ly"
\include "1-vln1.ly"
\include "1-vln2.ly"
\include "1-vla.ly"
\include "1-basso.ly"
\include "2-amore.ly"
\include "2-lute.ly"
\include "2-vln.ly"
\include "3-amore.ly"
\include "3-lute.ly"
\include "3-vln1.ly"
\include "3-vln2.ly"
\include "3-vla.ly"
\include "3-basso.ly"


\include "paper13.ly"

\score {
  <
    \context Staff=A <\property Staff.instrument = "Viola d'amore" \IAmore>
    \context Staff=B <\property Staff.instrument = "Lute" \ILute>
   \context StaffGroup <
    \context Staff=C <\property Staff.instrument = "Violin I" \IVlnI>
    \context Staff=D <\property Staff.instrument = "Violin II" \IVlnII>
   >
    \context Staff=E <\property Staff.instrument = "Viola" \IVla>
    \context Staff=F <\property Staff.instrument = "Basso Continuo" \IBasso>
    \context FiguredBass \IFigures
  >
  \header { piece = "Allegro" opus = "RV 540" }
  \paper {}
  \midi { \tempo 4 = 81 }
}

\score {
  <
    \context Staff=A <\property Staff.instrument = "Viola d'amore" \IIAmore>
    \context Staff=B <\property Staff.instrument = "Lute" \IILute>
   \context StaffGroup <
    \context Staff=C <\property Staff.instrument = "Violins I + II" \IIVln>
   >
  >

  \header { piece = "Largo" }
  \paper {}
  \midi { \tempo 4 = 32 }
}

\score {
  <
    \context Staff=A <\property Staff.instrument = "Viola d'amore" \IIIAmore>
    \context Staff=B <\property Staff.instrument = "Lute" \IIILute>
   \context StaffGroup <
    \context Staff=C <\property Staff.instrument = "Violin I" \IIIVlnI>
    \context Staff=D <\property Staff.instrument = "Violin II" \IIIVlnII>
   >
    \context Staff=E <\property Staff.instrument = "Viola" \IIIVla>
    \context Staff=F <\property Staff.instrument = "Basso Continuo" \IIIBasso>
    \context FiguredBass \IIIFigures
  >
  \header { piece = "Allegro" }
  \midi { \tempo 4 = 78 }
  \paper {}
}