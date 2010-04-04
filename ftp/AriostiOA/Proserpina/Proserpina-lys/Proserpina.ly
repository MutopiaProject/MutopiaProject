% Created on Tue Jul 22 21:05:34 CEST 2008
\version "2.12.2"

\header {
	title = "Il Ratto di Proserpina"
	composer = "Ottavio Attilio Ariosti (1666-1729)"
	mutopiatitle = "Il Ratto di Proserpina, Cantata di Basso"
	mutopiacomposer = "AriostiOA"
	mutopiainstrument = "Voice (Bass), Basso Continuo"
	source = "18th century manuscript, Museo internazionale e biblioteca della musica di Bologna"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2010/04/04-1758"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

\score {
	<<
		\include "1-Rec/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "1-Rec/Lyrics.ly" }
		
		\include "1-Rec/BC.ly"
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
		\include "2-Aria/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "2-Aria/Lyrics.ly" }
		
		\include "2-Aria/BC.ly"
	>>
	
	\header{
		piece = "Aria"
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "3-Rec/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "3-Rec/Lyrics.ly" }
		
		\include "3-Rec/BC.ly"
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
		\include "4-Aria/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "4-Aria/Lyrics.ly" }
		
		\include "4-Aria/BC.ly"
	>>
	
	\header{
		piece = "Aria: Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}
