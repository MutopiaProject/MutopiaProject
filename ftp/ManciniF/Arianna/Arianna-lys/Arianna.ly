 % Created on Sun Nov 18 14:09:41 CET 2007
\version "2.10.33"

\header {
	title = "L'Arianna"
	composer = "Francesco Mancini (1672-1737)"
	mutopiatitle = "Ebra d'Amor fuggia, Cantata a voce sola di Soprano"
	mutopiacomposer = "ManciniF"
	mutopiainstrument = "Voice (Soprano) and Basso Continuo"
	source = "Conservatorio S. Pietro a Majella, DM90132501375"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/11/25-1170"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"


\score {
	<<
		\include "1-Rec/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "1-Rec/Verse.ly" }
		
		\include "1-Rec/Basso.ly"
	>>
	
	\header{
		piece = "Recitativo"
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "2-Aria/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "2-Aria/Verse.ly" }
		
		\include "2-Aria/Basso.ly"
	>>
	
	\header{
	piece = "Aria Allegro"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\include "3-Rec/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "3-Rec/Verse.ly" }
		
		\include "3-Rec/Basso.ly"
	>>
	
	\header{
	piece = "Recitativo"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\include "4-Aria/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "4-Aria/Verse.ly" }
		
		\include "4-Aria/Basso.ly"
	>>

	\midi {
	}
	
	\header{
	piece = "Aria Andante spiccato"
	}
	
	\layout  {
		indent = 0
	}
}

\score {
	<<
		\include "5-Rec/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "5-Rec/Verse.ly" }
		
		\include "5-Rec/Basso.ly"
	>>
	
	\header{
	piece = "Recitativo"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\include "6-Aria/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "6-Aria/Verse.ly" }
		
		\include "6-Aria/Basso.ly"
	>>
	
	\header{
	piece = "Aria Presto"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\include "7-Rec/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "7-Rec/Verse.ly" }
		
		\include "7-Rec/Basso.ly"
	>>
	
	\header{
	piece = "Recitativo"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\include "8-Aria/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "8-Aria/Verse.ly" }
		
		\include "8-Aria/Basso.ly"
	>>
	
	\header{
	piece = "Aria Largo"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\include "9-Rec/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "9-Rec/Verse.ly" }
		
		\include "9-Rec/Basso.ly"
	>>
	
	\header{
	piece = "Recitativo"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\paper {
}
