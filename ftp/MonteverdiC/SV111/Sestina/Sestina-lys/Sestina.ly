\version "2.12.2"

\header {
	title = \markup {\smallCaps "Sestina."}
	subtitle = "Lagrime d'Amante al Sepolcro dell'Amata."
	composer = "Claudio Monteverdi (1567-1643)"
	mutopiatitle = "Sestina"
	mutopiacomposer = "MonteverdiC"
	mutopiaopus = "SV 111"
	mutopiainstrument = "Voice (SSATB), Basso Continuo"
	date = "1614"
	source = "II Sesto Libro de Madrigali a cinque voci, con vno Dialogo a Sette, Con il suo Basso continuo per poterli concertare nel Clauacembano, & altri Stromenti. Di Claudio Monteverde Maestro di Cappella della Sereniss. Sig. di Venetia in S. Marco. Nuouamente composti, & dati in luce. Con Privilegio. - In Venetia appresso Ricciardo Amadino, 1614."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2009/10/14-1717"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

\score {
	<<
		\include "Incenerite_spoglie/Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Incenerite_spoglie/VerseC.ly" }
		
		\include "Incenerite_spoglie/Quinto.ly"
		\context Lyrics = "lmelodyQui" \lyricmode  { \lyricsto "melodyQui" \include "Incenerite_spoglie/VerseQ.ly" }
		
		\include "Incenerite_spoglie/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "Incenerite_spoglie/VerseA.ly" }
		
		\include "Incenerite_spoglie/Tenore.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "Incenerite_spoglie/VerseT.ly" }
		
		\include "Incenerite_spoglie/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "Incenerite_spoglie/VerseB.ly" }
		
		\include "Incenerite_spoglie/BC.ly"
		\include "Incenerite_spoglie/BC_fig.ly"
	>>
	
	\header {
		piece = "Prima parte."
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "Ditelo_O_fiumi/Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Ditelo_O_fiumi/VerseC.ly" }
		
		\include "Ditelo_O_fiumi/Quinto.ly"
		\context Lyrics = "lmelodyQui" \lyricmode  { \lyricsto "melodyQui" \include "Ditelo_O_fiumi/VerseQ.ly" }
		
		\include "Ditelo_O_fiumi/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "Ditelo_O_fiumi/VerseA.ly" }
		
		\include "Ditelo_O_fiumi/Tenore.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "Ditelo_O_fiumi/VerseT.ly" }
		
		\include "Ditelo_O_fiumi/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "Ditelo_O_fiumi/VerseB.ly" }
		
		\include "Ditelo_O_fiumi/BC.ly"
	>>
	
	\header {
		piece = "Seconda parte."
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "Dara_la_notte/Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Dara_la_notte/VerseC.ly" }
		
		\include "Dara_la_notte/Quinto.ly"
		\context Lyrics = "lmelodyQui" \lyricmode  { \lyricsto "melodyQui" \include "Dara_la_notte/VerseQ.ly" }
		
		\include "Dara_la_notte/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "Dara_la_notte/VerseA.ly" }
		
		\include "Dara_la_notte/Tenore.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "Dara_la_notte/VerseT.ly" }
		
		\include "Dara_la_notte/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "Dara_la_notte/VerseB.ly" }
		
		\include "Dara_la_notte/BC.ly"
	>>
	
	\header {
		piece = "Terza parte."
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "Ma_te_raccoglie/Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Ma_te_raccoglie/VerseC.ly" }
		
		\include "Ma_te_raccoglie/Quinto.ly"
		\context Lyrics = "lmelodyQui" \lyricmode  { \lyricsto "melodyQui" \include "Ma_te_raccoglie/VerseQ.ly" }
		
		\include "Ma_te_raccoglie/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "Ma_te_raccoglie/VerseA.ly" }
		
		\include "Ma_te_raccoglie/Tenore.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "Ma_te_raccoglie/VerseT.ly" }
		
		\include "Ma_te_raccoglie/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "Ma_te_raccoglie/VerseB.ly" }
		
		\include "Ma_te_raccoglie/BC.ly"
		\include "Ma_te_raccoglie/BC_fig.ly"
	>>
	
	\header {
		piece = "Quarta parte."
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "O_chiome_dOr/Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "O_chiome_dOr/VerseC.ly" }
		
		\include "O_chiome_dOr/Quinto.ly"
		\context Lyrics = "lmelodyQui" \lyricmode  { \lyricsto "melodyQui" \include "O_chiome_dOr/VerseQ.ly" }
		
		\include "O_chiome_dOr/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "O_chiome_dOr/VerseA.ly" }
		
		\include "O_chiome_dOr/Tenore.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "O_chiome_dOr/VerseT.ly" }
		
		\include "O_chiome_dOr/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "O_chiome_dOr/VerseB.ly" }
		
		\include "O_chiome_dOr/BC.ly"
	>>
	
	\header {
		piece = "Quinta parte."
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "Dunque_amate_reliquie/Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Dunque_amate_reliquie/VerseC.ly" }
		
		\include "Dunque_amate_reliquie/Quinto.ly"
		\context Lyrics = "lmelodyQui" \lyricmode  { \lyricsto "melodyQui" \include "Dunque_amate_reliquie/VerseQ.ly" }
		
		\include "Dunque_amate_reliquie/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "Dunque_amate_reliquie/VerseA.ly" }
		
		\include "Dunque_amate_reliquie/Tenore.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "Dunque_amate_reliquie/VerseT.ly" }
		
		\include "Dunque_amate_reliquie/Basso.ly"
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \include "Dunque_amate_reliquie/VerseB.ly" }
		
		\include "Dunque_amate_reliquie/BC.ly"
		\include "Dunque_amate_reliquie/BC_fig.ly"
	>>
	
	\header {
		piece = "Sesta & ultima parte."
	}
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}
