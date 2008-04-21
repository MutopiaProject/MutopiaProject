% Created on Mon Apr 07 19:35:14 CEST 2008
\version "2.11.43"

\header {
	title = "Sonata XI"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Sonata XI, from Op. 1"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 369"
	mutopiainstrument = "Recorder and Basso Continuo"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 27, 1879"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/04/21-1397"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"


\score {
	<<
		\include "1-Larghetto/Flauto.ly"
		\include "1-Larghetto/Basso.ly"
	>>
	
	\header {
		piece="Larghetto"
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "2-Allegro/Flauto.ly"
		\include "2-Allegro/Basso.ly"
	>>
	
	\header {
		piece="Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "3-Siciliana/Flauto.ly"
		\include "3-Siciliana/Basso.ly"
	>>
	
	\header {
		piece="Siciliana"
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "4-Allegro/Flauto.ly"
		\include "4-Allegro/Basso.ly"
	>>
	
	\header {
		piece="Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

