\version "2.0.1"

\header {
   title = "DIVERTIMENTO II"
   subtitle = "for Oboe, Clarinet and Bassoon"
   composer = "W.A.Mozart, K.V.A. 229, No.2"
   instrument = "Oboe"

   mutopiatitle = "DIVERTIMENTO II for Oboe, Clarinet and Bassoon"
   mutopiacomposer = "W.A.Mozart"
   mutopiaopus = "K.V.A. 229"
   mutopiainstrument = "Ensemble: Oboe, Clarinet, Bassoon"
   source = "Boosey & Hawkes"
   style = "Classical"
   copyright = "Public Domain"
   maintainer = "Vit Reichel"
   maintainerEmail = "vit.reichel@volny.cz"
   maintainerWeb = "www.volny.cz/respiro"
   lastupdated = "2003/Oct/08"
   
   tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
   footer = "Mutopia-2003/10/08-261"
}

\include "includes/definitions.ly"
\include "includes/allegro.ly"
\include "includes/menuettoOne.ly"
\include "includes/larghetto.ly"
\include "includes/menuettoTwo.ly"
\include "includes/rondo.ly"

\paper { }

\score {
   \oboeAllegro
   \header {
      opus = "(1756 - 1791)"
      piece = "Allegro"
   }
}

\score {
   \context Staff = ob <<
   \oboeMenuettoOne
   \textUpMenuettoOne
   \textDownMenuettoOne
   >>
   \header {
      piece = "\\newpage Menuetto"
   }
}

\score {
   \oboeLarghetto
   \header {
      piece = "\\newpage Larghetto"
   }
}

\score {
   \context Staff = ob <<
   \oboeMenuettoTwo
   \textUpMenuettoTwo
   \textDownMenuettoTwo
   >>
   \header {
      piece = "\\newpage Menuetto"
   }
}

\score {
<<
   \property Score.BarNumber \override #'padding = #2
   \oboeRondo
>>
   \header {
      piece = "\\newpage Rondo"
   }
}
