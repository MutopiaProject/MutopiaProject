\version "2.16.0"

#(set-global-staff-size 14)  

\paper{ %#(define page-breaking ly:page-turn-breaking)
         top-margin = 5\mm
         bottom-margin = 5\mm
         obsolete-before-title-space = 5\mm  score-markup-spacing #'basic-distance = #(/ obsolete-before-title-space staff-space)
         obsolete-page-top-space = 5\mm  top-system-spacing #'basic-distance = #(/ obsolete-page-top-space staff-space)
         head-separation = 5\mm
         obsolete-between-system-padding = 5\mm  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
         obsolete-between-system-space = 5\mm  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
         oddFooterMarkup = \markup { \tiny {"Gossec: Symphonie n°1 en si bémol"}}
}
\book{
\header {
    title = \markup {\fontsize #2 "Symphonie n°1"}
    subtitle =	\markup {\fontsize #2 "si bémol"}
    composer =	\markup {\fontsize #2 "François-Joseph GOSSEC (1734-1829)"}
    source = "Sieber - Paris (XVIIIth century)"
    style = "classical"
    copyright = "Public Domain"
    maintainer = "M. Leménager"
}
%%% 1er mouvement
\score {
   \new StaffGroup <<
   \override Score.BarNumber #'padding = #2 
   \override Score.BarNumber #'font-size = #2 
   \set Score.soloText = #"I."
   \set Score.soloIIText = #"II."
   
      \new Staff {
         \set Staff.instrumentName = "Hautbois I-II"
         \set Staff.shortInstrumentName = "Hb"
         \partcombine 
            \relative c'' {\include "Hautbois1_1.ly"}
            \relative c'' {\include "Hautbois2_1.ly"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Cor Si" \musicglyph #"accidentals.flat" " I-II"}
         \set Staff.shortInstrumentName = "C."
         \partcombine 
            \relative c'' {\include "Cor1_1.ly"}
            \relative c'' {\include "Cor2_1.ly"}
      }
       \new GrandStaff <<
         \new Staff {
            \set Staff.instrumentName = "Violon I"
            \set Staff.shortInstrumentName = "I"
            \include "Violon1_1.ly"
         }
         \new Staff {
            \set Staff.instrumentName = "Violon II"
            \set Staff.shortInstrumentName = "II"
            \include "Violon2_1.ly"
         }
      >>
      \new Staff {
         \set Staff.instrumentName = "Alto"
         \include "Alto_1.ly"
      }
      \new Staff {
         \set Staff.instrumentName = "Basse"
         \include "Basse_1.ly"
      }
   >>
   \header { piece = \markup {\hspace #+10.0 \bold \huge "Allegro Maestoso"}     }
}

%%%2ème mouvement
\score {
   \new StaffGroup <<
   \override Score.BarNumber #'padding = #2 
   \override Score.BarNumber #'font-size = #2 
   \set Score.soloText = #"I."
   \set Score.soloIIText = #"II."
   
      \new Staff {
         \set Staff.instrumentName = "Hautbois I-II"
         \set Staff.shortInstrumentName = "Hb"
         \partcombine 
            \relative c'' {\include "Hautbois1_2.ly"}
            \relative c'' {\include "Hautbois2_2.ly"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Cor Mi" \musicglyph #"accidentals.flat" " I-II"}
         \set Staff.shortInstrumentName = "C."
         \partcombine 
            \relative c'' {\include "Cor1_2.ly"}
            \relative c'' {\include "Cor2_2.ly"}
      }
       \new GrandStaff <<
         \new Staff {
            \set Staff.instrumentName = "Violon I"
            \set Staff.shortInstrumentName = "I"
            \include "Violon1_2.ly"
         }
         \new Staff {
            \set Staff.instrumentName = "Violon II"
            \set Staff.shortInstrumentName = "II"
            \include "Violon2_2.ly"
         }
      >>
      \new Staff {
         \set Staff.instrumentName = "Alto"
         \include "Alto_2.ly"
      }
      \new Staff {
         \set Staff.instrumentName = "Basse"
         \include "Basse_2.ly"
      }
   >>
   \header { piece = \markup {\hspace #+10.0 \bold \huge "Larghetto Siciliana Pantomina"}  }   
}

%%%3ème mouvement
\score {
   \new StaffGroup <<
   \override Score.BarNumber #'padding = #2 
   \override Score.BarNumber #'font-size = #2 
   \set Score.soloText = #"I."
   \set Score.soloIIText = #"II."
   
      \new Staff {
         \set Staff.instrumentName = "Hautbois I-II"
         \set Staff.shortInstrumentName = "Hb"
         \partcombine 
            \relative c'' {\include "Hautbois1_3.ly"}
            \relative c'' {\include "Hautbois2_3.ly"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Cor Si" \musicglyph #"accidentals.flat" " I-II"}
         \set Staff.shortInstrumentName = "C."
         \partcombine 
            \relative c'' {\include "Cor1_3.ly"}
            \relative c'' {\include "Cor2_3.ly"}
      }
       \new GrandStaff <<
         \new Staff {
            \set Staff.instrumentName = "Violon I"
            \set Staff.shortInstrumentName = "I"
            \include "Violon1_3.ly"
         }
         \new Staff {
            \set Staff.instrumentName = "Violon II"
            \set Staff.shortInstrumentName = "II"
            \include "Violon2_3.ly"
         }
      >>
      \new Staff {
         \set Staff.instrumentName = "Alto"
         \include "Alto_3.ly"
      }
      \new Staff {
         \set Staff.instrumentName = "Basse"
         \include "Basse_3.ly"
      }
   >>
   \header { piece = \markup {\hspace #+10.0 \bold \huge "Non Presto"}   }  
}
}
