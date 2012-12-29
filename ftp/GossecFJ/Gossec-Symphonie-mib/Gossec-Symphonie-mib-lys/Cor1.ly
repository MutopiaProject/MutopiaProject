\version "2.16.0"

\paper{ #(define page-breaking ly:page-turn-breaking)
         top-margin = 3.0
         bottom-margin = 3.0
         obsolete-before-title-space = 3.0  score-markup-spacing #'basic-distance = #(/ obsolete-before-title-space staff-space)
         obsolete-between-system-padding = 3.0  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
         oddFooterMarkup = \markup {\tiny {\italic{"Le Concert - 1032 "} "Gossec - Symphonie n°2 en mi bémol "}}
         #(set-global-staff-size 24)  
         first-page-number = 2
         ragged-last-bottom = ##f
      }

\book{
\header {
    title = 	"Symphonie n°2 en mi bémol "
    composer =	"François-Joseph GOSSEC "
    instrument =	"Cor 1 "
}


\score {
      \new Staff {
         \set Staff.instrumentName = \markup {\bold "Mi" \musicglyph #"accidentals.flat" "  "}
         \include "Cor1_1.ly"}
         \header { piece =  \markup {\hspace #+10.0 \bold "Largo"}     
                  opus = ""  }
}
\score {
      \new Staff {
         \set Staff.instrumentName = \markup {\bold "Mi" \musicglyph #"accidentals.flat" "  "}
         \include "Cor1_2.ly"}
         \header { piece = \markup {\hspace #+10.0 \bold "Allegro molto"}
                  opus = ""  }
}
\score {
      \new Staff {
         \set Staff.instrumentName = \markup {\bold "Mi" \musicglyph #"accidentals.flat" "  "}
         \include "Cor1_3.ly"}
         \header { piece = \markup {\hspace #+10.0 \bold "Allegretto Pastorale gracioso - Presto"}
                  opus = ""  }
}
}
