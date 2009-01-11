\version "2.10.33"

\header {
	title = "Calcante ed Achille"
	composer = "Nicola Porpora (1686-1768)"
	mutopiatitle = "Calcante ed Achille, Cantata a due Voci per Soprano e Basso"
	mutopiacomposer = "PorporaN"
	mutopiainstrument = "Voice (Soprano), Basso, String Ensemble, Basso Continuo"
	source = "Conservatorio S. Pietro a Majella, DM90133200439"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/12/02-1182"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

Ach = {\set Staff.forceClef = ##t \clef treble \mark "Ach:"}
Calc = {\set Staff.forceClef = ##t \clef bass \mark "Calc:"}

\score {
	<<
		\include "1-Moderato/ViolinoI.ly"
		\include "1-Moderato/ViolinoII.ly"
		\include "1-Moderato/Viola.ly"
		\include "1-Moderato/Basso.ly"
	>>
	
	\header{
		piece = "Moderato"
	}
	
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "2-Cantabile/ViolinoI.ly"
		\include "2-Cantabile/ViolinoII.ly"
	>>
	
	\header{
		piece = "Cantabile"
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "3-Allegro/Violino.ly"
		\include "3-Allegro/Basso.ly"
	>>
	
	\header{
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
		indent=25
	}
}

\score {
	<<
		\include "4-Rec/ViolinoI.ly"
		\include "4-Rec/ViolinoII.ly"
		\include "4-Rec/Viola.ly"
		\include "4-Rec/Calcante.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "4-Rec/Verse.ly" }
		\include "4-Rec/Basso.ly"
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
		\include "5-Aria/ViolinoI.ly"
		\include "5-Aria/ViolinoII.ly"
		\include "5-Aria/Viola.ly"
		\include "5-Aria/Calcante.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "5-Aria/Verse.ly" }
		\include "5-Aria/Basso.ly"
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
		\include "6-Rec/Achille.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "6-Rec/Verse.ly" }
		\include "6-Rec/Basso.ly"
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
		\include "7-Aria/ViolinoI.ly"
		\include "7-Aria/ViolinoII.ly"
		\include "7-Aria/Viola.ly"
		\include "7-Aria/Achille.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "7-Aria/Verse.ly" }
		\include "7-Aria/Basso.ly"
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
		\include "8-Rec/Achille.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "8-Rec/Verse.ly" }
		\include "8-Rec/Basso.ly"
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
		\include "9-Duetto/ViolinoI.ly"
		\include "9-Duetto/ViolinoII.ly"
		\include "9-Duetto/Viola.ly"
		\include "9-Duetto/Achille.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "9-Duetto/VerseA.ly" }
		\include "9-Duetto/Calcante.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "9-Duetto/VerseC.ly" }
		\include "9-Duetto/Basso.ly"
	>>
	
	\header{
		piece = "Duetto"
	}
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

