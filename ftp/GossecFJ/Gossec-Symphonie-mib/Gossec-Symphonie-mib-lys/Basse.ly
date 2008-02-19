\version "2.10.25"

\paper{ #(define page-breaking ly:page-turn-breaking)
         top-margin = 3.0
         bottom-margin = 3.0
         before-title-space = 3.0
         between-system-padding = 3.0
         oddFooterMarkup = \markup {\tiny {\italic{"Le Concert - 1032 "} "Gossec - Symphonie n°2 en mi bémol "}}
         #(set-global-staff-size 24)  
       %  first-page-number = 2
         ragged-last-bottom = ##f
      }

\book{
\header {
    title = 	"Symphonie n°2 en mi bémol "
    composer =	"François-Joseph GOSSEC "
    instrument =	"Basse "
}


\score {
      \new Staff {
         \include "Basse_1.ly"}
         \header { piece =  \markup {\hspace #+10.0 \bold "Largo"}     
                  opus = ""  }
}
\score {
      \new Staff {
         \include "Basse_2.ly"}
         \header { piece = \markup {\hspace #+10.0 \bold "Allegro molto"}
                  opus = ""  }
}
\score {
      \new Staff {
         \include "Basse_3.ly"}
         \header { piece = \markup {\hspace #+10.0 \bold "Allegretto Pastorale gracioso - Presto"}
                  opus = ""  }
}
}
