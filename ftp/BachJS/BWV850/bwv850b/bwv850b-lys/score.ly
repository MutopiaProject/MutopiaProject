\version "2.11.52"
%\include "notes.lyi"

\include "articulate.ly"
\header {
	title = "Fuga V"
	opus = "BWV 850"
	composer = "Johann Sebastian Bach (1685-1750)"
	
	mutopiatitle = "Das Wohltemperierte Clavier I, Fuga V"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 850"
	mutopiainstrument = "Harpsichord, Piano"
	source = "Breitkopf & Härtel, 1866, Plate XIV, p.20-21"

	style= "Baroque"
	copyright = "Creative Commons Share-Alike 4.0"
	maintainer = "Sven Reichard"
}

\include "bwv850b-notes.ly"

\score {
%\articulate
  \new GrandStaff <<
    \new Staff {
      \global \clef soprano
       \soprano
    }
    \new Staff {
      \global \clef alto
       \alto
    }
    \new Staff {
      \global \clef tenor
       \tenor
    }
    \new Staff {
      \global \clef bass
       \bass
    }
  >>
  \layout{}
  }

