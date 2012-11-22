\version "2.16.0"
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


#(set-global-staff-size 13)

\score {
  <<
    \context Staff=A <<\set Staff.instrumentName = "Viola d'amore" \IAmore>>
    \context Staff=B <<\set Staff.instrumentName = "Lute" \ILute>>
   \context StaffGroup <<
    \context Staff=C <<\set Staff.instrumentName = "Violin I" \IVlnI>>
    \context Staff=D <<\set Staff.instrumentName = "Violin II" \IVlnII>>
   >>
    \context Staff=E <<\set Staff.instrumentName = "Viola" \IVla>>
    \context Staff=F <<\set Staff.instrumentName = "Basso Continuo" \IBasso>>
    \context FiguredBass \IFigures
  >>
  \header { piece = "Allegro" opus = "RV 540" }
  \layout {}
  
  \midi {
    \tempo 4 = 81
    }


}

\score {
  <<
    \context Staff=A <<\set Staff.instrumentName = "Viola d'amore" \IIAmore>>
    \context Staff=B <<\set Staff.instrumentName = "Lute" \IILute>>
   \context StaffGroup <<
    \context Staff=C <<\set Staff.instrumentName = "Violins I + II" \IIVln>>
   >>
  >>

  \header { piece = "Largo" }
  \layout {}
  
  \midi {
    \tempo 4 = 32
    }


}

\score {
  <<
    \context Staff=A <<\set Staff.instrumentName = "Viola d'amore" \IIIAmore>>
    \context Staff=B <<\set Staff.instrumentName = "Lute" \IIILute>>
   \context StaffGroup <<
    \context Staff=C <<\set Staff.instrumentName = "Violin I" \IIIVlnI>>
    \context Staff=D <<\set Staff.instrumentName = "Violin II" \IIIVlnII>>
   >>
    \context Staff=E <<\set Staff.instrumentName = "Viola" \IIIVla>>
    \context Staff=F <<\set Staff.instrumentName = "Basso Continuo" \IIIBasso>>
    \context FiguredBass \IIIFigures
  >>
  \header { piece = "Allegro" }
  
  \midi {
    \tempo 4 = 78
    }


  \layout {}
}