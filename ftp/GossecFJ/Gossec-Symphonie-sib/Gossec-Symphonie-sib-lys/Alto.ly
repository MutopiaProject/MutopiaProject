\version "2.16.0"

\paper{ #(define page-breaking ly:page-turn-breaking)
         top-margin = 3.0
         bottom-margin = 3.0
         obsolete-before-title-space = 3.0  score-markup-spacing #'basic-distance = #(/ obsolete-before-title-space staff-space)
         obsolete-page-top-space = 5.0  top-system-spacing #'basic-distance = #(/ obsolete-page-top-space staff-space)
         obsolete-between-system-padding = 3.0  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
         oddFooterMarkup = \markup {\tiny {"Gossec - Symphonie n°1 en si bémol "}}
         #(set-global-staff-size 24)  
         first-page-number = 2
         ragged-last-bottom = ##f
     }

\book{
\header {
    title = 	"Symphonie n°1 en si bémol "
    composer =	"François-Joseph GOSSEC "
    source = "Sieber - Paris (XVIIIth century)"
    style = "classical"
    copyright = "Public Domain"
    maintainer = "M. Leménager"
    instrument =	"Alto"
}


\score {
      \new Staff {
         \include "Alto_1.ly"}
         \header { piece =  \markup {\hspace #+10.0 \bold "Allegro Maestoso"}     
                  opus = ""  }
}
\score {
      \new Staff {
         \include "Alto_2.ly"}
         \header { piece = \markup {\hspace #+10.0 \bold "Larghetto Siciliana Pantomina"}
                  opus = ""  }
}
\score {
      \new Staff {
         \include "Alto_3.ly"}
         \header { piece = \markup {\hspace #+10.0 \bold "Non Presto"}
                  opus = ""  }
}
}
