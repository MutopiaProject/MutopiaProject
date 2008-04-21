\version "2.11.43"

\header {
	title = "Tanti strali"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Tanti strali, Duetto XII"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 197"
	mutopiainstrument = "2 Voices (Soprano, Alto), Basso Continuo"
	date = "1710-12?"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 32a, 1880"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/04/21-1394"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

\score {
	<<
		\include "Duetto-1/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Duetto-1/VerseS.ly" }
		
		\include "Duetto-1/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "Duetto-1/VerseA.ly" }
		
		\include "Duetto-1/Basso.ly"
	>>
	
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "Duetto-2/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Duetto-2/VerseS.ly" }
		
		\include "Duetto-2/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "Duetto-2/VerseA.ly" }
		
		\include "Duetto-2/Basso.ly"
	>>
	
	\header{
		piece="Andante"
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "Duetto-3/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Duetto-3/VerseS.ly" }
		
		\include "Duetto-3/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "Duetto-3/VerseA.ly" }
		
		\include "Duetto-3/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}
