\version "2.6.4"
\header 	{
	title = "Sicilienne (Op 78)"
	composer = "Gabriel Fauré"
	copyright  = "Domaine Public - Transcription guitare Ludovic Alexandre Morin - revue et doigtée Olivier Flatrès - 20/11/05"
	tagline = ""
	mutopiatitle = "Sicilienne"
	mutopiacomposer = "FaureG"
	mutopiaopus = "O 78"
	mutopiainstrument = "Guitar"
	date = "19th Century"
	source = "Transcription"
	style = "Romantic"
	maintainer = "Olivier Flatrs"
	lastupdated = "2005/Nov/20"
        
        footer = "Mutopia-2005/11/25-636"
        tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
	}

crescendo = \markup {\italic "cresc."}
Cu = \markup {"  " \smaller \smaller \circle "1"}
Cd = \markup {"  " \smaller \smaller \circle "2"}
Ct = \markup {"  " \smaller \smaller \circle "3"}
Cq = \markup {"  " \smaller \smaller \circle "4"}
Cc = \markup {"  " \smaller \smaller \circle "5"}
Cs = \markup {"  " \smaller \smaller \circle "6"}
MDp = \markup {\smaller \smaller "p"}
MDi = \markup {\smaller \smaller "i"}
MDm = \markup {\smaller \smaller "m"}
MDa = \markup {\smaller \smaller "a"}
MDpima = \markup {\smaller \smaller "pima"}
MDia = \markup {\smaller \smaller "ia"}
MGz = \markup {" " \smaller \smaller \smaller \smaller \smaller \bold "0"}
MGu = \markup {" " \smaller \smaller \smaller \smaller \smaller \bold "1"}
MGd = \markup {" " \smaller \smaller \smaller \smaller \smaller \bold "2"}
MGt = \markup {" " \smaller \smaller \smaller \smaller \smaller \bold "3"}
MGq = \markup {" " \smaller \smaller \smaller \smaller \smaller \bold "4"}

GT = 	\relative c 
	{
	\time 6/8
	\key bes \major                                
	
	\partial 8 d8->_\Cq_\MDi
	\repeat volta 2 
	{ 
	<< { g16->^\Ct d_\MDi^\MGt^\Cc g^\MGq^\Cq d bes'->^\MGu_\Ct_\MDm^"BIII ----------------" g_\MDi d'->^\MGu f,_\MDp bes_\MDi d_\MDm g8->_\MDa } \\ { g,,4._\MDm_\MDp f_\MDm_\MDp } >>
	<< { bes''16->^\MGu^\Cu d,^\MGt_\MDi g^\MGq_\MDm a->^\MGu^\Cu_\MDa g8->^\MGq_\MDm a16->^\MGq^"BIII --------" c,^\MGt_\MDi d^\MGu_\MDm c d8-> } \\ { e,4._\Cc_\MDm_\MDp f_\Cq_\MDa_\MDp } >>
	<< { d'8.->^\MGq^"BI ----------------------------" c16->^\MGu_\MDm e8->^\MGz d8.-> c16-> e8-> } \\ { bes,16_\Cc_\MDm_\MDp f'_\MDp^\MGd bes8_\MDi^\MGt~ bes_\MDa bes,16  f' bes8~ bes } >>
	<< { d16->^\MGd fis,^\MGt_\MDp a^\MGu_\MDi fis a fis d'8 a_\MDm d,->^\MGz_\MDi } \\ { d,4._\MDm_\MDp~ d_\MDa } >>
	<< { g'16-> d g d bes'->^\MGu^"BIII ----------" g d'-> f, bes d f8->^\MGq } \\ { g,,4. f } >>
	<< { aes''16->^\MGq^"BI ------------" aes,_\MDi c_\MDm g'->^\MGt_\MDa f8->_\MDm g16->^\MGu g,_\MDi b_\MDm g f'8->^\MGq^\Cd_\MDa } \\ { ees,,4._\MDa_\MDp d_\MDa_\MDp } >>
	<< { e''16->^\MGu^\MGz g,^\MGq_\Cq_\MDp bes^\MGd_\MDi g ees'8->^\MGt_\MDa d16->^\MGd fis,^\MGq a^\MGu fis bes8->^\MGu^\markup {"     " \musicglyph #"scripts.coda" } } \\ { c,4._\MDm_\MDp d,_\MDm_\MDp } >>
	}
	 \alternative 
	{ 
	<< { \once \override TextScript #'extra-offset = #'(0.5 . 0.0 ) g'8->^\Ct g16_\Cq_\MDi^\MGq d_\Cc_\MDp g d g4->_\Ct_\MDm^\MGz d8->_\Cq_\MDi^\MGz } \\ { g,4._\MDm_\MDp s } >>
	<< { g'8-> g16 d g d g4-> r8 } \\ { g,4. s } >>
	}
	\repeat volta 2 
	{
	<< { b''16->^\MGd^\MGq^"BV -----------------------------" g,_\MDp d'^\MGt_\MDi g->^\MGq_\MDm a8->^\MGu_\MDa bes16->^\MGd^\MGt g,_\MDp c_\MDi c'->^\MGq_\MDm cis8->^\MGq_\MDa } \\ { e,,4._\MDm_\MDp ees_\MDm_\MDp } >>
	<< { \once \override TextScript #'extra-offset = #'(0.0 . 1.0 ) d''16->^\MGq^"BVIII ------" ees,_\MDi a^\MGt_\MDm  ees->^\Ct_"i" f8->^\MGt^\Ct_\MDm g16->^\MGq^"BI -------------" f,^\MGt_\MDp aes_\MDi f^\MGt_\MDp d'8->^\MGq_\MDm } \\ { f,4._\MDa_\MDp bes,_\MDa_\MDp } >>
 	<< { bes'16->^\MGu^\MGq bes,^\MGd_\MDp d^\MGz_\MDi g->^\MGz_\MDm a8->^\MGd_\MDa bes16->^\MGt^\MGq^"BI -----------" ees,_\MDp bes'_\MDi c->_\MDm cis8->^\MGd_\MDa } \\ { ees,,4._\MDm_\MDp c'_\MDm_\MDp } >>
	<< { d'16->^\MGd fis,^\MGt_\MDp a^\MGu_\MDi e'->^\MGz_\MDm fis8->^\MGu_\MDa <g d bes>4->^\MGt^\MGu^"BIII -" r8 } \\ { d,,4._\MDm_\MDp g4_\MDa_\MDm_\MDi_\MDp r8 } >>
	}
	\repeat volta 2 
	{
	<< { g''16->^\MGd^\MGq^\Cd a,^\MGu^\Cq_\MDi ees'^\MGt^\Ct_\MDm a, ees'8 d16->^\MGt^\MGu^"BIII -------" g,^\MGq^\Cq bes^\MGu g bes8 } \\ { f4._\Cc_\MDa_\MDp g,_\MDa_\MDp } >>
	<< { bes''16->^\MGu^"BVI ---------" bes,^\MGd_\MDp des^\MGu_\MDi a'->^\MGq_\MDm g8->^\MGt_\MDi a16->^\MGu^"BV -----------" a,^\MGd_\MDp c^\MGu_\MDi g'->^\MGq_\MDm fis8->^\MGt_\MDi } \\ { ees,4._\MDa_\MDp d_\MDa_\MDp } >>
	<< { g'16->^\MGd^\MGq^\Cd a,^\MGu^\Cq_\MDi ees'^\MGt^\Ct_\MDm a, ees'8 d16->^\MGt^\MGu^"BIII ---------" g,^\MGq^\Cq bes^\MGu g bes8 } \\ { f4._\Cc_\MDa_\MDp g,_\MDa_\MDp } >>
	}
	\alternative 
	{
	<< { bes'16->^\MGt^\MGq ees,^\MGu_\MDi a^\MGd_\MDm ees_\MDi bes'8->^\MGq_\MDm a8->^\MGq^\MGu^"BII --------------" fis16^\MGt_\MDp a^\MGu_\MDi d^\MGd_\MDm fis^\MGu_\MDa } \\ { c,4._\MDm_\MDp d_\MDm_\MDp } >>
	<< { bes'16->^\MGt^\MGq ees,^\MGu_\MDi a^\MGd_\MDm ees_\MDi bes'8->^\MGq_\MDm <a d,>4.->^\MGd^\fermata } \\ { c,4._\MDm_\MDp <a d,>_\MDpima_"D.C. al Coda" } >>
	}
	\bar "||"	
	\mark  \markup { \musicglyph #"scripts.coda" } 
	<< { g'16->^\MGd^\MGq^"BIII -------------" d^\MGt_\MDp g_\MDi bes_\MDm d_\MDi g_\MDm <g'\harmonic>4.^"Octav."^\fermata } \\ {g,,,4._\MDi_\MDp g_\MDia_\MDp } >>
	\bar "||"	
	}

Guitare = 	{
	\clef "G_8"
	\context Staff 
		<< 
		\set Staff.midiInstrument = "acoustic guitar (nylon)" 
		\GT 
		>>
	}		
		


\score 	{
	\new staff { \Guitare }
	\layout { }
	\midi { \tempo 4=100 }
	}

