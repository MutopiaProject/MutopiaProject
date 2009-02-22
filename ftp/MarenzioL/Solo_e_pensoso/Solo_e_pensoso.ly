\version "2.12.1"

\header {
	title = "Solo e pensoso"
	composer = "Luca Marenzio (1553?-1599)"
	mutopiatitle = "Solo e pensoso, Madrigale a 5 voci"
	mutopiacomposer = "MarenzioL"
	mutopiainstrument = "Voice (SATTB)"
	source = "G. Ricordi, 1908 (Milan). Plate 101387-409, Editor: Luigi Torchi (1858–1920)"
	style = "Renaissance"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2009/02/22-1636"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseCan= \lyricmode {
So -- lo_e pen -- so -- so_i più de -- ser -- ti cam -- pi vo' mi -- su -- ran -- do_a pas -- si tar -- di_e len -- ti e gli_oc -- chi por -- to per fug -- gir in -- ten -- ti e gli_oc -- chi por -- to per fug -- gir in -- ten -- ti do -- ve ve -- stig -- gio_hu -- man do -- ve ve -- stig -- gio_hu -- man l'a -- re -- na stam -- pi l'a -- re -- na stam -- pi al -- tro scher -- mo non tro -- vo che mi scam -- pi Dal ma -- ni -- fe -- sto_ac -- cor -- ger de le gen -- ti per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti Per -- chè per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti per -- chè di fuor si leg -- ge per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti di fuor si leg -- ge co -- m'io den -- tro_av -- vam -- pi co -- m'io den -- tro_av -- vam -- pi Si ch'io mi cre -- d'ho -- mai che mon -- ti piag -- ge e fiu -- mi e fiu -- mi_e sel -- ve sap -- pian di che tem -- pre sap -- pian di che tem -- pre sap -- pian di che tem -- pre sia la mia vi -- ta ch'è ce -- la -- ta al -- trui ma pur si a -- spre vie nè sì sel -- vag -- ge ch'a -- mor non ven -- ga sem -- pre ra -- gio -- nan -- do con me -- co cer -- car non so cer -- car non so et io con lu -- i cer -- car non so et io con lu -- i et io con lu -- i et io con lu -- i
}

verseAlt= \lyricmode {
So -- lo_e pen -- so -- so_i più de -- ser -- ti cam -- pi i più de -- ser -- ti cam -- pi vo' mi -- su -- ran -- do vo' mi -- su -- ran -- do_a pas -- si tar -- di_e len -- ti e gli_oc -- chi por -- to per fug -- gir in -- ten -- ti e gli_oc -- chi por -- to per fug -- gir in -- ten -- ti do -- ve ve -- stig -- gio_hu -- man l'a -- re -- na l'a -- re -- na stam -- pi al -- tro scher -- mo non tro -- vo che mi scam -- pi Dal ma -- ni -- fe -- sto_ac -- cor -- ger de le gen -- ti per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti Per -- chè per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti d'al -- le -- grez -- za spen -- ti per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti co -- m'io den -- tro_av -- vam -- po per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti co -- m'io den -- tro_av -- vam -- pi Si ch'io mi cre -- d'ho -- mai che mon -- ti piag -- ge e fiu -- mi_e sel -- ve sap -- pian sap -- pian di che tem -- pre sap -- pian di che tem -- pre sap -- pian di che tem -- pre sia la mia vi -- ta ch'è ce -- la -- ta al -- trui ma pur si a -- spre vie nè sì sel -- vag -- ge cer -- car non so cer -- car non so cer -- car non so che_a -- mor non ven -- ga sem -- pre ra -- gio -- nan -- do con me -- co et io con lu -- i cer -- car non so et io con lu -- i
}

verseTen= \lyricmode {
So -- lo_e pen -- so -- so_i più de -- ser -- ti cam -- pi i più de -- ser -- ti cam -- pi vo' mi -- su -- ran -- do_a pas -- si tar -- di_e len -- ti vo' mi -- su -- ran -- do a pas -- si tar -- di_e len -- ti e gli_oc -- chi por -- to per fug -- gir in -- ten -- ti e gli_oc -- chi por -- to per fug -- gir in -- ten -- ti do -- ve ve -- stig -- gio_hu -- man do -- ve ve -- stig -- gio hu -- man l'a -- re -- na stam -- pi al -- tro scher -- mo non tro -- vo non tro -- vo Dal ma -- ni -- fe -- sto_ac -- cor -- ger de le gen -- ti per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti Per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti di fuor si leg -- ge co -- m'io den -- tro_av -- vam -- pi per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti d fuor si leg -- ge co -- m'io den -- tro_av -- vam -- pi co -- m'io den -- tro_av -- vam -- pi Si ch'io mi cre -- d'ho -- mai che mon -- ti piag -- ge e fiu -- mi_e sel -- ve e sel -- ve sap -- pian di che tem -- pre sap -- pian di che tem -- pre sia la mia vi -- ta ch'è ce -- la -- ta al -- trui ma pur si a -- spre vie nè sì sel -- vag -- ge cer -- car non so ch'a -- mor non ven -- ga sem -- pre ra -- gio -- nan -- do cer -- car non so che_a -- mor non ven -- ga sem -- pre ra -- gio -- nan -- do con me -- co et io con lu -- i et io con lu -- i
}

verseQui= \lyricmode {
So -- lo_e pen -- so -- so_i più de -- ser -- ti cam -- pi vo' mi -- su -- ran -- do_a pas -- si tar -- di_e len -- ti a pas -- si tar -- di e len -- ti e gli_oc -- chi por -- to per fug -- gir in -- ten -- ti do -- ve ve -- stig -- gio_hu -- man do -- ve ve -- stig -- gio_hu -- man l'a -- re -- na stam -- pi al -- tro scher -- mo non tro -- vo non tro -- vo che mi scam -- pi Dal ma -- ni -- fe -- sto_ac -- cor -- ger de le gen -- ti per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti per -- chè ne -- gli_at -- ti per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti di fuor di fuor si leg -- ge co -- me i -- o den -- tro_av -- vam -- pi co -- m'io den -- tro_av -- vam -- pi e fiu -- mi e fiu -- mi_e sel -- ve sap -- pian di che tem -- pre sap -- pian di che tem -- pre sap -- pian di che tem -- pre ma pur si a -- spre vie nè sì sel -- vag -- ge cer -- car non so cer -- car non so cer -- car non so ch'a -- mor non ven -- ga sem -- pre ra -- gio -- nan -- do con me -- co cer -- car non so et io con lu -- i et io con lu -- i et io con lu -- i
}

verseBas= \lyricmode {
So -- lo_e pen -- so -- so_i più de -- ser -- ti cam -- pi vo' mi -- su -- ran -- do_a pas -- si tar -- di_e len -- ti vo' mi -- su -- ran -- do_a pas -- si tar -- di_e len -- ti e gli_oc -- chi por -- to per fug -- gir in -- ten -- ti do -- ve ve -- stig -- gio_hu -- man do -- ve ve -- stig -- gio_hu -- man l'a -- re -- na stam -- pi l'a -- re -- na stam -- pi al -- tro scher -- mo non tro -- vo non tro -- vo che mi scam -- pi Dal ma -- ni -- fe -- sto_ac -- cor -- ger de le gen -- ti Di fuor si leg -- ge co -- m'io den -- tro_av -- vam -- pi per -- chè ne -- gli_at -- ti d'al -- le -- grez -- za spen -- ti co -- m'io den -- tro_av -- vam -- pi di fuor si leg -- ge co -- m'io den -- tro_av -- vam -- pi co -- m'io den -- tro_av -- vam -- pi e fiu -- mi_e sel -- ve e fiu -- mi_e sel -- ve sap -- pian di che tem -- pre sia la mia vi -- ta sia la mia vi -- ta ma pur si a -- spre vie nè sì sel -- vag -- ge cer -- car non so che_a -- mor non ven -- ga sem -- pre ra -- gio -- nan -- do con me -- co cer -- car non so cer -- car non so cer -- car non so et io non lu -- i et io con lu -- i
}


staffCanto = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Canto"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyCan" {
			\dynamicUp
			\autoBeamOff
			g1 |
			gis |
			a |
			b |
			h |
			c |
			cis |
			d |
			dis |
			e |
			f |
			fis |
			g |
			gis |
			a |
			gis |
			g |
			fis |
			f |
			e |
			es |
			d~ |
			d~ |
			d |
			r4 h e4. c8 |
			f4. d8 e c d4 |
			e2 d |
			c r |
			r g4 c~ |
			c8 a f'4. c8 d e |
			f2 c |
			d1 |
			e |
			c4 d c d~ |
			d h h2 |
			R1 |
			e4 f e f~ |
			f d d2 |
			e1 |
			a,4 h c2 |
			h r |
			r4 e a, g |
			a2 h |
			r e2~ |
			e g |
			f1 e2 r4 d |
			h e d4. h8 |
			c[\melisma d e a,] h[ c d g,] |
			a[ h] c4. h8[ h a16 g] |
			a2\melismaEnd h |
			R1*4 |
			e1 |
			h4 c g'2~ |
			g d |
			f1 |
			e2. a,8 h |
			c4\melisma d2 cis4\melismaEnd |
			d1 |
			e4 e2 d4 |
			f4. e8 d c d4~ |
			d8 c d4 e2 |
			r4 g g2 |
			R1*2 |
			g,4 g2 d'4 |
			e4. d8 c h c4~ |
			c8 h c2 h4 |
			r4 c c2 |
			R1 |
			g'2 c,~ |
			c4 a f'2 |
			e r |
			c4 c2 g'4 |
			a4. g8 f e f4~ |
			f8 e f2 e4 |
			R1*2 |
			g2 c,4 a |
			f'2 e |
			r g8 f e d |
			c4 c f,8 g a h |
			cis4\melisma d2 cis4\melismaEnd |
			d1 \bar "||"
			r2 a~ |
			a4 d8 c f2~ |
			f4 c e2~ |
			e4 d g8[\melisma f e d] |
			c4.\melismaEnd g8 a2 |
			h h |
			a1 |
			g2 r |
			a4 d,8[\melisma e] f[ g a h] |
			c2\melismaEnd c |
			h8[\melisma a g a ] h[ c d e] |
			f1\melismaEnd |
			c4 g'4. f8 f f |
			e[\melisma d] d2 cis4\melismaEnd |
			d2 r |
			r4 f4. e8 e e |
			d[\melisma c] c2 h4\melismaEnd |
			c2 r4 c~ |
			c8 h h h a2 |
			a4 h2 c4~ |
			c d d2 |
			e1 |
			d8 e c4. d8 h4 |
			cis1 |
			r2 h~ |
			h d~ |
			d d~ |
			d c~ |
			c b |
			b1 |
			b2 c~ |
			c h |
			e1 |
			a, |
			R1 |
			g'2 f4. f8 |
			e4. e8 d4. d8 |
			c4. c8 h4 h8 h |
			a2 g4 e' |
			f d e2 |
			r4 h c a |
			h2 r |
			h4 a8 g d'2 |
			g,4 e' f d |
			e2 r |
			e4 d8 c g'2~\melisma |
			g4 f8[ e] d2\melismaEnd |
			e r4 c |
			h8[ a] c2 h4 |
			c e e e |
			d1 |
			h |
		}

	\bar "|."
	}

}

staffAlto = \new Staff  {
	\set Staff.instrumentName="Alto"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef mezzosoprano
	\relative c'' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			r4 d h g |
			e h h'2 |
			e, f4.\melisma e8 |
			d2\melismaEnd g, |
			g'4\melisma a2 gis4\melismaEnd |
			a1 |
			r4 a a4. a8 |
			a4 g fis2~ |
			fis fis |
			gis4 a2 h4 |
			c a r2 |
			R1 |
			g2 a |
			h1 |
			c |
			h |
			b |
			a |
			a~ |
			a |
			g2 a~\melisma |
			a4 g g2~ |
			g4 fis8[ e] fis2\melismaEnd |
			g1 |
			d4 g4. e8 a4~ |
			a8 d, a' h c4 h |
			g c, r2 |
			R1 |
			a'4 c4. g8 e4 |
			a1 |
			f4. g8 a h c4~\melisma |
			c h8[ a] h2\melismaEnd |
			c1 |
			R1*2 |
			g4 a g a~ |
			a a a2 |
			R1*2 |
			r4 e2 a,4 |
			h2 r |
			a'4 a,2 b4 |
			a2 g |
			r g'~ |
			g g |
			a1 |
			a |
			r2 r4 g |
			e a g4. e8 |
			f[\melisma g a d,] e[ f] g4~ |
			g8[ fis16 e] fis4\melismaEnd g2 |
			R1*4 |
			r2 g~ |
			g g4 e |
			d1 |
			a' |
			c2 g4 c |
			c8[ h] a4.\melisma g16[ f] e4\melismaEnd |
			fis1 |
			g4 c2 h4 |
			c4. h8 a g a4~ |
			a8 g a2 gis4 |
			r4 g c2 |
			R1*2 |
			d,4 e2 f4 |
			g4. f8 e d e4~ |
			e8 d e2 d4 |
			R1 |
			r2 r4 d~ |
			d8 c d e f4 c |
			r c' a d |
			c4. h8 a g a4~ |
			a8 g a2 g4 |
			r2 f4. g8 |
			a4. h8 c2 |
			a1 |
			r2 c,4 g'~ |
			g g a4. g8 |
			f e d4. c8 c4~|
			c h r2 |
			c'8 h a g a2~ |
			a1 |
			fis \bar "||"
			e2. f8 e |
			a2. f4 |
			c'2. g4 |
			h2 e,4 a~\melisma |
			a8[ g] g2 fis4\melismaEnd |
			g1 |
			R1 |
			h4 e,8[\melisma f] g[ a h c] |
			d4. c16[ h] a4\melismaEnd d,4 |
			g4 a g2~ |
			g1 |
			a |
			r2 r4 c~ |
			c8 h h h a[\melisma g] g4~ |
			g fis\melismaEnd g2 |
			r4 a4. g8 g g |
			f4.\melisma e8 d2\melismaEnd |
			g2 r4 a~ |
			a8 g g g f4 e |
			r fis g2 |
			a h |
			c1 |
			h8 c a4. a8 gis4 |
			a1 |
			g |
			h~ |
			h2 a |
			a1~ |
			a2 d, |
			f1 |
			g2 g~ |
			g g |
			e1 |
			d |
			R1 |
			g4 c2 h4 |
			c e, f d |
			e r r g |
			a f g2 |
			r c |
			h4. h8 a4. a8 |
			g4. g8 f4. f8 |
			e4 e8 e d2 |
			c r |
			e4 d8 c g'2 |
			c, r |
			g'4 c2 h4 |
			c1 |
			R1 |
			e,4 d8 c g'4\melisma a~ |
			a8[ g] g2 fis4\melismaEnd |
			g1 |
		}

	\bar "|."
	}

}

staffTenore = \new Staff  {
	\set Staff.instrumentName="Tenore"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef alto
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			R1 |
			r2 r4 e |
			c a f d |
			g4. g8 d'4 g~\melisma |
			g8[ f16 e] d4\melismaEnd e2 |
			a,1 |
			r4 a a e' |
			d4. g,8 a4 d, |
			r2 h'~ |
			h4 c2 h4 |
			a4. a8 h4 c |
			d1~ |
			d2 c |
			h1 |
			a |
			e' |
			d2 d |
			d1 |
			c~ |
			c |
			r4 g' c, c |
			d2. g,4 |
			a1 |
			g~ |
			g2 r |
			r2 c4 g'~ |
			g8 e a4. d,8 f g |
			a4 g2 f4~ |
			f e r g, |
			c4. a8 f'4. c8 |
			d e f2 e4 |
			g1 |
			c, |
			R1 |
			d4 e d e~ |
			e c c2 |
			R1*2 |
			g'4 a g a~ |
			a g8[\melisma f] e4\melismaEnd f |
			g2 e4 a,~ |
			a4 e' fis\melisma g~ |
			g fis\melismaEnd g2 |
			r h,~ |
			h h |
			a1 |
			a4 e' a,2 |
			h1 |
			R1*2 |
			r4 d h2 |
			c1 |
			R1*3 |
			r2 e~ |
			e d4 c |
			h1 |
			a |
			e'2. f4 |
			g f e2 |
			d1 |
			c4 c2 g'4 |
			a4. g8 f e f4~ |
			f8 e f4 e2 |
			r4 e e e |
			f4. e8 d c d4~ |
			d8 c d2 cis4 |
			R1*2 |
			r2 g' |
			c,2. e4 |
			f4 e d8 c b a |
			g2 f |
			f'4 f2 d4 |
			a'4. g8 f e f4~ |
			f8 e f2 e4 |
			r2 a |
			d, a |
			f' e |
			a,8 h c d e2 |
			h r |
			R1 |
			r2 e8 d c h |
			a1~ |
			a |
			a \bar "||" |
			a2. d8 c |
			f2. d4 |
			a'2. e4 |
			g2. c,4 |
			e2 d |
			R1 |
			c4 f,8[\melisma g] a[ h c d] |
			e4. d16[c] h4\melismaEnd g |
			a2 f |
			R1 |
			r2 r4 h |
			a8[\melisma g f g] a[ h c d] |
			e2\melismaEnd a |
			R1 |
			r4 d,4. d8 c c |
			h4 a r2 |
			r4 a'4. g8 g f |
			e2 c |
			R1 |
			r4 d e2 |
			f g |
			c,1 |
			g'8 e f4. d8 e4 |
			a,1 |
			r2 e'~ |
			e d~ |
			d d |
			e1 |
			f |
			d |
			es2 es~ |
			es d |
			a'1 |
			fis |
			R1 |
			r4 e f d |
			e2 r4 g~ |
			g f4. f8 e4~ |
			e8 e d4. c8 c4~ |
			c8 h h4 g'2 |
			r4 g e f |
			d1 |
			g2 f4. f8 |
			e4. e8 d4. d8 |
			c4. c8 h4 h8 h 
			a2 h |
			R1 |
			e4 d8 c g'2~\melisma |
			g4 f8[ e] d2\melismaEnd |
			c e4 d8 c |
			d1 |
			d |
		}

	\bar "|."
	}

}

staffQuinto = \new Staff  {
	\set Staff.instrumentName="Quinto"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef alto
	\relative c' { 	
		\context Voice = "melodyQui" {
			\dynamicUp
			\autoBeamOff
			R1*4 |
			r2 r4 e |
			c a f f' |
			g e e a,~ |
			a d4.\melisma c16[ h] a4\melismaEnd |
			h1 |
			R1 |
			a4 d2 c4~ |
			c h2 a4 |
			h2 e,4 e'~ |
			e h e2 |
			e1 |
			R1 |
			r2 g, |
			a a~ |
			a c~ |
			c e |
			R1 |
			r2 d |
			d1 |
			h~ |
			h2 r |
			r2 r4 g4 |
			c4. a8 d4. h8 |
			c d e4 g a~ |
			a2 e |
			R1*3 |
			g4 a g a~ |
			a f f2 |
			R1*3 |
			f4 g fis g~ |
			g e e2 |
			r a |
			d, cis |
			r2 d~ |
			d d |
			r e~ |
			e d |
			d1 |
			cis4 cis d2~ |
			d4 g r2 |
			R1*2 |
			r2 r4 g |
			e a g4. e8 |
			f8[\melisma g a d,] e[ f g c,] |
			d[ e] f4. e8[ e d16 c] |
			d2\melismaEnd e |
			r h~ |
			h4 g2 g'4 |
			g1 |
			f2 c~ |
			c e |
			e4 a, a'2 |
			a1 |
			R1*3 |
			c,4 c2 g'4 |
			a4. g8 f e f4~ |
			f8 e f2 e4 |
			r h g a |
			c2 g |
			R1 |
			a'4 a2 g4 |
			b4. a8 g f g4~ |
			g8 f g4 a2~ |
			a r |
			R1*2 |
			f2 c |
			r a' |
			d, a |
			f' g |
			d8 c d e f4. g8 |
			a1 |
			g |
			r2 a,8 h c d |
			e1 |
			d \bar "||"
			R1*5 |
			d4 g,8[\melisma a] h[ c d e] |
			f2\melismaEnd c |
			r2 r4 g' |
			f2 f |
			e1 |
			d |
			r2 r4 a'~ |
			a8 g g g c,2 |
			g'2 r |
			r r4 e~ |
			e8 d d d c4 h |
			R1 |
			r4 g'4. f8 f f |
			e[\melisma d] d2 cis4\melismaEnd |
			d2 r |
			R1*3 |
			r2 e~ |
			e g~ |
			g fis |
			fis1 |
			e2 a,~ |
			a f'~ |
			f b,~ |
			b g |
			g1 |
			a~ |
			a |
			r4 e' f d |
			e2 r |
			g4 a2 g4 |
			a c, d h |
			c r r g' |
			f4. f8 e4. e8 |
			d4. d8 c4. h8 |
			h4 h8 h a2 |
			g r |
			r4 g' a f |
			g2 r |
			R1 |
			e4 d8 c g'2 |
			c, r |
			e4 d8 c g'2 |
			g r |
			d4 c8 h a2 |
			g1 |
		}

	\bar "|."
	}

}

staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef varbaritone
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R1*5 |
			r4 c a f |
			e a, a'4. a8 |
			fis4 g d2 |
			h1 |
			e4 a2 g4 |
			f2 e |
			d c |
			h c |
			e1 |
			a,2 a' |
			e e |
			g1 |
			d |
			f |
			a |
			c |
			h, |
			d |
			g, |
			R1*3 |
			f'4 c'4. g8 d'4~ |
			d8 d, a' h c4 e, |
			f2 f |
			R1*3 |
			a4 b a b~ |
			b g g2 |
			R1 |
			c4 d cis d~ |
			d h h2 |
			c1 |
			f,4 g4 a2 |
			g r4 a |
			d, cis d2~ |
			d g |
			r e~ |
			e h |
			d1 |
			a4 a' fis2 |
			g1 |
			R1*3 |
			r2 r4 c |
			a d c4. a8 |
			h[\melisma c d g,] a[ h] c4~ |
			c8[ h16 a] h4\melismaEnd c2 |
			r e,~ |
			e h4 c |
			g'1 |
			d2 a'~ |
			a c~ |
			c4 f,8 g a2 |
			d,1 |
			R1*3 |
			r2 c' |
			f,2. d4 |
			b'2 a |
			g4. f8 e4 d |
			c1 |
			g' |
			f4 f2 c'4 |
			d4. c8 b a b4~ |
			b8 a b4 a2 |
			R1 |
			r2 f4. g8 |
			a4. h8 c2 |
			f,1 |
			R |
			r2 c' |
			f, c |
			g' f |
			d8 e f g a2 |
			e1 |
			a8 g f e d4\melisma c8[ h] |
			a4 g a2\melismaEnd |
			d1 \bar "||"
			R1*5 |
			g1 |
			f2 f |
			e1 |
			d |
			c4 a8[\melisma h] c[ d e f] |
			g2\melismaEnd g |
			f8[\melisma e d e] f[ g a h] |
			c2\melismaEnd a |
			g4. g8 f4 e |
			d2 h4 c |
			d2 e |
			f\melisma g\melismaEnd |
			c,4 e f2 |
			g a |
			d, r |
			R1*4 |
			e1 |
			h'1~ |
			h2 fis |
			a1 |
			d, |
			b' |
			es,2 es~ |
			es g |
			cis,1 |
			d |
			d'4 c2 h4 |
			c2 r |
			c b4. b8 |
			a4. a8 g4. g8 |
			f4. f8 e4 e8 e |
			d2 c |
			r4 g' a f |
			g2 d |
			e4 c d2 |
			R1 |
			r2 r4 g |
			a f g2 |
			R1 |
			r2 e4 d8 c |
			g'1 |
			c, |
			h4 a8 g d'2 |
			g,1 |
		}

	\bar "|."
	}

}

\score {
	<<
		\staffCanto
		\context Lyrics = "lmelodyCan" \lyricmode  { \lyricsto "melodyCan" \verseCan }
		
		\staffAlto
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \verseAlt }
		
		\staffTenore
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verseTen }
		
		\staffQuinto
		\context Lyrics = "lmelodyQui" \lyricmode  { \lyricsto "melodyQui" \verseQui }
		
	
		\staffBasso
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \verseBas }
		
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}
