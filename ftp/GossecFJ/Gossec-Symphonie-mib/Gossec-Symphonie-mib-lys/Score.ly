\version "2.10.25"
\paper{ %#(define page-breaking ly:page-turn-breaking)
         top-margin = 5\mm
         bottom-margin = 5\mm
         before-title-space = 5\mm
         page-top-space = 5\mm
         head-separation = 5\mm
         between-system-padding = 5\mm
         between-system-space = 5\mm
         oddFooterMarkup = \markup { \tiny {\italic{"Le Concert - 1032 "} "Gossec: Symphonie n°2 en mi bémol"}}
}
\book{
           #(set-global-staff-size 14)  
\header {
    title = \markup {\fontsize #2 "Symphonie n°2"}
    subtitle =	\markup {\fontsize #2 "mi bémol"}
    composer =	\markup {\fontsize #2 "François-Joseph GOSSEC (1734-1829)"}
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
         \set Staff.instrumentName = \markup {"Cor Mi" \musicglyph #"accidentals.M2" " I-II"}
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
   \header { piece = \markup {\hspace #+10.0 \bold \huge "Largo"}     }
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
         \set Staff.instrumentName = \markup {"Cor Mi" \musicglyph #"accidentals.M2" " I-II"}
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
   \header { piece = \markup {\hspace #+10.0 \bold \huge "Allegro molto"}  }   
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
         \set Staff.instrumentName = \markup {"Cor Mi" \musicglyph #"accidentals.M2" " I-II"}
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
   \header { piece = \markup {\hspace #+10.0 \bold \huge "Allegretto Pastorale gracioso - Presto"}   }  
}
}
