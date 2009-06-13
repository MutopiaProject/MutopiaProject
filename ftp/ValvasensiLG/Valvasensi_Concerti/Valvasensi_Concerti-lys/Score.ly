\version "2.12.2"

\header {
    title = "Brevi concerti ecclesiastici"
    composer = "Lazaro Girolamo Valvasensi (1585-1661)"
    date = "1620"
    mutopiatitle = "Brevi concerti ecclesiastici"
    mutopiacomposer = "ValvasensiLG"
    mutopiainstrument = "Voise (S), Basso Continuo"
    source = "Brevi concerti ecclesiastici alla romana commodi per cantarsi nel clavicembalo chitarone, over organo con una voce sola accuta ó grave à compiacenza delli cantanti, Venezia, Bartolomeo Magni, 1620"
    style = "Baroque"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Björn Sothmann"
    maintainerEmail = "bjoern.sothmann@rub.de"
    maintainerWeb = "http://www.tp3.rub.de/~bjoerns"

 footer = "Mutopia-2009/06/13-1681"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
      
\paper {
    tocTitle = "TABLE OF CONTENTS"
}


\include "book-titling.ily"
\include "deutsch.ly"


\bookTitle "Brevi concerti ecclesiastici"

\useRehearsalNumbers ##f



\pageBreak
\markuplines \table-of-contents



\pageBreak
\titledPiece \markup "O quam dulcis"
\score {
	<<
		\include "Parts/O_quam_dulcis_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/O_quam_dulcis_Lyrics.ly" }
		
		\include "Parts/O_quam_dulcis_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Alleluia hæc dies"
\score {
	<<
		\include "Parts/Alleluia_haec_dies_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Alleluia_haec_dies_Lyrics.ly" }
		
		\include "Parts/Alleluia_haec_dies_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Gaudete omnes lætamini"
\score {
	<<
		\include "Parts/Gaudete_omnes_laetamini_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Gaudete_omnes_laetamini_Lyrics.ly" }
		
		\include "Parts/Gaudete_omnes_laetamini_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Quid vidistis Pastores"
\score {
	<<
		\include "Parts/Quid_vidistis_Pastores_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Quid_vidistis_Pastores_Lyrics.ly" }
		
		\include "Parts/Quid_vidistis_Pastores_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		\context {
			\Score
			\override PaperColumn #'keep-inside-line = ##t
		}
	}
}

\titledPiece \markup "Alleluia Gaudeamus omnes"
\score {
	<<
		\include "Parts/Alleluia_Gaudeamus_omnes_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Alleluia_Gaudeamus_omnes_Lyrics.ly" }
		
		\include "Parts/Alleluia_Gaudeamus_omnes_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "O quam pulchra es amica mea"
\score {
	<<
		\include "Parts/O_quam_pulchra_es_amica_mea_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/O_quam_pulchra_es_amica_mea_Lyrics.ly" }
		
		\include "Parts/O_quam_pulchra_es_amica_mea_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Domine ne in furore tuo"
\score {
	<<
		\include "Parts/Domine_ne_in_furore_tuo_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Domine_ne_in_furore_tuo_Lyrics.ly" }
		
		\include "Parts/Domine_ne_in_furore_tuo_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Si bona suscepimus"
\score {
	<<
		\include "Parts/Si_bona_suscepimus_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Si_bona_suscepimus_Lyrics.ly" }
		
		\include "Parts/Si_bona_suscepimus_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Gaudeant Angeli canentes"
\score {
	<<
		\include "Parts/Gaudeant_Angeli_canentes_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Gaudeant_Angeli_canentes_Lyrics.ly" }
		
		\include "Parts/Gaudeant_Angeli_canentes_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		\context {
			\Score
			\override PaperColumn #'keep-inside-line = ##t
		}
	}
}

\titledPiece \markup "Benedicta sit Sancta Trinitas"
\score {
	<<
		\include "Parts/Benedicta_sit_Sancta_Trinitas_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Benedicta_sit_Sancta_Trinitas_Lyrics.ly" }
		
		\include "Parts/Benedicta_sit_Sancta_Trinitas_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Recordare Domine"
\score {
	<<
		\include "Parts/Recordare_Domine_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Recordare_Domine_Lyrics.ly" }
		
		\include "Parts/Recordare_Domine_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Peccavi"
\score {
	<<
		\include "Parts/Peccavi_Canto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "Parts/Peccavi_Lyrics.ly" }
		
		\include "Parts/Peccavi_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Gaudent in cælis"
\score {
	<<
		\include "Parts/Gaudent_in_caelis_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Gaudent_in_caelis_Lyrics.ly" }
		
		\include "Parts/Gaudent_in_caelis_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Adoramus te Christe"
\score {
	<<
		\include "Parts/Adoramus_te_Christe_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Adoramus_te_Christe_Lyrics.ly" }
		
		\include "Parts/Adoramus_te_Christe_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Ecce Sacerdos magnus"
\score {
	<<
		\include "Parts/Ecce_Sacerdos_magnus_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Ecce_Sacerdos_magnus_Lyrics.ly" }
		
		\include "Parts/Ecce_Sacerdos_magnus_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Vulnerasti cor meum"
\score {
	<<
		\include "Parts/Vulnerasti_cor_meum_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Vulnerasti_cor_meum_Lyrics.ly" }
		
		\include "Parts/Vulnerasti_cor_meum_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "O quam metuendus est locus iste"
\score {
	<<
		\include "Parts/O_quam_metuendus_est_locus_iste_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/O_quam_metuendus_est_locus_iste_Lyrics.ly" }
		
		\include "Parts/O_quam_metuendus_est_locus_iste_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Veni Sponsa Christi"
\score {
	<<
		\include "Parts/Veni_Sponsa_Christi_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Veni_Sponsa_Christi_Lyrics.ly" }
		
		\include "Parts/Veni_Sponsa_Christi_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Ave verum Corpus"
\score {
	<<
		\include "Parts/Ave_verum_Corpus_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Ave_verum_Corpus_Lyrics.ly" }
		
		\include "Parts/Ave_verum_Corpus_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		\context {
			\Score
			\override PaperColumn #'keep-inside-line = ##t
		}
	}
}

\titledPiece \markup "Prebe mihi cor fili"
\score {
	<<
		\include "Parts/Prebe_mihi_cor_fili_Canto.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "Parts/Prebe_mihi_cor_fili_Lyrics.ly" }
		
		\include "Parts/Prebe_mihi_cor_fili_Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}
