% Created on Sat Sep 05 20:46:08 CEST 2009
\version "2.12.2"

\header {
	title = \markup \center-column {"Musiche de alcuni eccellentissimi Musici" "composte per la Maddalena"}
	subtitle = "Sacra Rappresentazione di Gio: Battista Andreini"
	mutopiatitle = "Musiche per la Maddalena"
	mutopiacomposer = "MonteverdiC"
	mutopiainstrument = "Voices (SSATTB), Strings, Basso Continuo"
	source = "Musiche de alcuni eccellentissimi Musici composte per la Maddalena, Sacra Rappresentazione di Gio. Battista Andreini Fiorentino. - Stampa del Gardano. Venetia 1617. Appresso Bartholomeo Magni."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
	moreInfo = "The score contains works by C. Monteverdi, M. Effrem, A. Guivizzani and S. Rossi"

 footer = "Mutopia-2009/09/08-1712"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

staffViolinoIA = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		d2 e4 f |
		g2 f |
		e1 |
		d4 a' g f |
		e a, a'2~ |
		a gis |
		a2. g4 |
		f e d c |
		d1 |
		c4 g' f e |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d2 e a,1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		h\fermata \bar ":|:"
		\set Score.measureLength = #(ly:make-moment 4 1)
		h\longa |
	\bar "|."
	}

}

staffViolinoIIA = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		h2 c4 d |
		e2 d~ |
		d2. cis4 |
		d f e d |
		c2 d |
		h1 |
		c4. d8 e2 |
		d4 c c2~ |
		c h |
		c4 e d c |
		\set Score.measureLength = #(ly:make-moment 4 2)
		h a g1 fis2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		g1\fermata \bar ":|:"
		\set Score.measureLength = #(ly:make-moment 4 1)
		g\longa |
	\bar "|."
	}

}

staffViolaIA = \new Staff  {
	\set Staff.instrumentName="Viola I"
	\set Staff.midiInstrument="viola"
	\key c \major
	\clef alto
	\relative c'' {
		g2. f4 |
		e2 f4 g |
		a1 |
		f2 r4 d |
		a' e f d |
		e1 |
		e |
		f2. e4 |
		g1 |
		g2 r4 a |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d,2. cis4 d1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d\fermata \bar ":|:"
		\set Score.measureLength = #(ly:make-moment 4 1)
		d\longa |
	\bar "|."
	}

}

staffViolaIIA = \new Staff  {
	\set Staff.instrumentName="Viola II"
	\set Staff.midiInstrument="viola"
	\key c \major
	\clef alto
	\relative c' {
		d1 |
		c2 a |
		a1 |
		a2 r4 h |
		c2 a |
		h1 |
		a2 e |
		a a |
		d1 |
		e2 r4 a, |
		\set Score.measureLength = #(ly:make-moment 4 2)
		h2. g4 a1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		g\fermata \bar ":|:"
		\set Score.measureLength = #(ly:make-moment 4 1)
		g\longa |
	\bar "|."
	}

}

staffBassoA = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c' {
		g1 |
		c,2 d |
		a1 |
		d4 e f g |
		a2 f |
		e1 |
		a,4. h8 c2 |
		f, a |
		g1 |
		c4 d e f |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g2 e d1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		g,\fermata \bar ":|:"
		\set Score.measureLength = #(ly:make-moment 4 1)
		g\longa |
	\bar "|."
	}

}


verseB= \lyricmode {
Su le pen -- ne de ven -- ti il ciel var -- can -- do Fa -- re -- tra -- to Fan -- ciu -- lo a voi ne ve -- gno Son tut -- ta lu -- ce son di glo -- ria_il se -- gno Ad ec -- cel -- sa_Ar -- mo -- ni -- a vo -- ce_ac -- cor -- dan -- do.
}

staffTenorB = \new Staff {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName = "Favor Divino"
	\set Staff.midiInstrument = "oboe"
	\key c \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			g2. g4 g g8 fis g2 |
			g r4 g g2. a4 |
			h1 a\fermata |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r4 fis8 fis fis4 fis8 g |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a2 a r4 a g2~ |
			g f e1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d\fermata |
			\set Score.measureLength = #(ly:make-moment 4 2)
			fis4 fis8 g a2. a4 a4. h8 |
			c2. h4 h1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a\fermata |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a4. h8 cis4 cis8 h d2 d4 g,~ |
			\set Score.measureLength = #(ly:make-moment 6 1)
			g g2 a4 a1 g\longa |
		}
	\bar "|."
	}

}

staffBassoB = \new Staff {
	\set Staff.instrumentName = "Basso"
	\set Staff.midiInstrument = "harpsichord"
	\key c \major
	\clef bass
	\relative c { 	
		\set Score.measureLength = #(ly:make-moment 4 2)
		g1 g |
		g c2 a |
		g1 d'\fermata |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d2~ d |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d1 d2 g, |
		a\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d1\fermata |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d2 a1 a2 |
		a1 e' |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a,\fermata |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a d2 h |
		\set Score.measureLength = #(ly:make-moment 6 1)
		c e d1 g,\longa |
	\bar "|."
	}

}


BCB = \new FiguredBass {
	\figuremode {
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		s\breve |
		s1 <_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		<_+>2 s2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		<_+>1 s1 |
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		<_+>2 s2 s1 |
		s1 <_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		<_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		<_+>1 s1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\breve s\longa |
	\bar "|."
	}
}


verseC= \lyricmode {
Frà le ru -- gia -- de_e -- ter -- ne Frà que -- gli_em -- pi -- rei so -- li Hog -- gi nac -- que -- ro_i so -- li fio -- ri Fio -- ri_in trec -- cia_an -- no -- da -- ri Fior di stel -- le smal -- ta -- ti Il Giar -- di -- nier su -- pre -- mo che li col -- ti -- va_e Di -- o que -- sti fur ch'ab e -- ter -- no il Ciel pio -- ver al mon -- do heb -- bi de -- sio Per dar co -- ro -- na_a quel bel crin va -- gan -- te che de -- vra di Gie -- sù ter -- ger -- le pian -- te.
}

staffCantoIC = \new Staff {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName = "Canto I"
	\set Staff.midiInstrument = "oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyCanI" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			a2. gis8 c d4 e d2~ |
			d d r4 g, a e |
			f4 g a2.\melisma g8 f g2\melismaEnd |
			a1 r4 c2 h4 |
			e2. d8 d d1 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			c1 gis gis2 r |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a8 a h2 a8 g a2 a |
			r4 d8 d g,2. fis8 e fis2 |
			g1 r2 r4 e |
			\set Score.measureLength = #(ly:make-moment 6 2)
			fis g a h c1. h2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			h2 h4 h c2 c |
			\set Score.measureLength = #(ly:make-moment 6 2)
			cis1 d a8 h c2 c8 d |
			\set Score.measureLength = #(ly:make-moment 4 2)
			h2 h4 h e2 r4 h~ |
			h8 a g4 a2 f2. e8 d |
			e2 f r4 a g a |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c a b b |
			a4.\melisma h8 c4\melismaEnd d |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b4.\melisma a8 g2\melismaEnd fis1 |
			r2 e4 e a1 |
			gis4 fis gis2 h c4 c |
			\set Score.measureLength = #(ly:make-moment 14 2)
			d\melisma c h a gis2 a1 gis2\melismaEnd a\longa |
		}
	\bar "|."
	}
}

staffCantoIIC = \new Staff {
	\set Staff.instrumentName = "Canto II"
	\set Staff.midiInstrument = "oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyCanII" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			c2. h8 a h4 c h2~ |
			h c4 d e h c2~ |
			c4 c c2\melisma d1\melismaEnd |
			cis2 r4 a2 e4 r d'~ |
			d c8 c c2.\melisma h8 a h2\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 6 2)
			c1 h h2 r |
			\set Score.measureLength = #(ly:make-moment 4 2)
			fis8 fis g2 fis8 e fis2 fis |
			r2 r4 e'8 e h4 a8 g a2 |
			g r4 g a h c2~ |
			\set Score.measureLength = #(ly:make-moment 6 2)
			c c e1 d |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g,2 g4 g g2 f |
			\set Score.measureLength = #(ly:make-moment 6 2)
			e1 fis r4 f8 g a4 gis8 fis |
			\set Score.measureLength = #(ly:make-moment 4 2)
			gis2 gis r4 cis d2 |
			r4 e4. d8 c4 d a2 g8 f |
			g2 f r r4 f |
			\set Score.measureLength = #(ly:make-moment 4 4)
			e fis g d |
			f f e4.\melisma f8 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g4\melismaEnd d' b2 a1 |
			h4 h c1 h4 a |
			h1 r2 a |
			\set Score.measureLength = #(ly:make-moment 14 2)
			h4 h d2.\melisma c4 h a h1\melismaEnd a\longa |
			\bar "|."
		}
	\bar "|."
	}
}

staffBassoC = \new Staff {
	\set Staff.instrumentName = "Basso"
	\set Staff.midiInstrument = "harpsichord"
	\key c \major
	\clef bass
	\relative c {
		\set Score.measureLength = #(ly:make-moment 4 2)
		a2. e'8 a g4 e g2~ |
		g~ g4 f e8 f g e a2~ |
		a4 a a2 b1 |
		a1 f4 c g2 |
		e1 g |
		\set Score.measureLength = #(ly:make-moment 6 2)
		c e e2 r |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d1 d |
		h2 c d1 |
		g,2 g' f4 f a2~ |
		\set Score.measureLength = #(ly:make-moment 6 2)
		a4 g f e8 d c4 d e c g'1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e2~ e a,1~ |
		\set Score.measureLength = #(ly:make-moment 6 2)
		a d f2~ f4 e8 d |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e2~ e a,4 a' fis g |
		e2 f d1 |
		c2 f, r4 f' c d |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a d g, g' |
		f d a'2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g2 g, d'1 |
		g4 g a1 g4 f |
		e1 gis2 a |
		\set Score.measureLength = #(ly:make-moment 14 2)
		d,1 e\breve a,\longa |
	\bar "|."
	}
}


verseAD= \lyricmode {
Da la fon -- te del co -- re for -- se per gli_oc -- chi_il pian -- to che le piant' al fat -- to -- re di la -- var heb -- b'il grid' el pri -- mo van -- to di la -- var heb -- b'il gri -- do e'l pri -- mo van -- to Beb -- be Sa -- ul pei lu -- mi le la -- gri -- me fe -- li -- ci_è la -- uò l'al -- ma Beb -- be Sa -- ul pei  lu -- mi le la -- gri -- me fe -- li -- ci è la -- uò l'al -- ma O Glo -- ri -- o -- sa l'al -- ma Tu se -- mi -- nan -- do stil -- le ac -- cen -- d'in noi fa -- vil -- le Tu se -- mi -- nan -- do stil -- le ac -- cen -- d'in noi fa -- vil -- le gri -- da pur for -- tu -- na -- to quest' a -- qu'è fo -- co_el pec -- ca -- tor be -- a -- to quest' a -- qu'è fo -- co_el pec -- ca -- tor be -- a -- to el pec -- ca -- tor be -- a -- to.
}
verseTD= \lyricmode {
Da la fon -- te del co -- re for -- se per gli_oc -- chi_il pian -- to che le piant' al fat -- to -- re di la -- var heb -- b'il grid' el pri -- mo van -- to di la -- var heb -- b'il gri -- do e'l pri -- mo van -- to Beb -- be Sa -- ul pei lu -- mi le la -- gri -- me fe -- li -- ci_è la -- uò l'al -- ma Beb -- be Sa -- ul per lu -- mi le la -- gri -- me fe -- li -- ci_è la -- uò l'al -- ma O Glo -- ri -- o -- sa l'al -- ma Tu se -- mi -- nan -- do stil -- le ac -- cen -- d'in noi fa -- vil -- le Tu se -- mi -- nan -- do stil -- le ac -- cen -- d'in noi fa -- vil -- le gri -- da pur for -- tu -- na -- to quest' a -- qu'è fo -- co el pec -- ca -- tor be -- a -- to quest' a -- qu'è fo -- co el pec -- ca -- tor be -- a -- to.
}
verseBD= \lyricmode {
Da la fon -- te del co -- re for -- se per gli_oc -- chi_il pian -- to che le piant' al fat -- to -- re di la -- var heb -- b'il grid' el pri -- mo van -- to e'l pri -- mo van -- to Beb -- be Sa -- ul pei lu -- mi le la -- gri -- me fe -- li -- ci_è la -- uò l'al -- ma E la -- uò l'al -- ma O Glo -- ri -- o -- sa l'al -- ma Tu se -- mi -- nan -- do stil -- le ac -- cen -- d'in noi fa -- vil -- le Tu se -- mi -- nan -- do stil -- le ac -- cen -- d'in noi fa -- vil -- le gri -- da pur for -- tu -- na -- to quest' a -- qu'è fo -- co_el pec -- ca -- tor be -- a -- to quest' a -- qu'è fo -- co quest' a -- qu'è fo -- co_el pec -- ca -- tor be -- a -- to.
}

staffAltoD = \new Staff {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName = "Alto"
	\set Staff.midiInstrument = "oboe"
	\key c \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			e2. e4 |
			e4 g8 f d2 |
			d d |
			f~ f8 f e d |
			e2 d |
			r4 fis8 g a4 a8 d, |
			d2 d4 d8 d |
			g4 g8 f a2 |
			g g4 f |
			e1 |
			fis2. a,8 a |
			a4 h8 c d2 |
			d r |
			e4 d8 c h2 |
			cis1 |
			c2 c8 c c c |
			c2 c4 d |
			d4. d8 d4. d8 |
			d2 d |
			e fis4 g~\melisma |
			g fis\melismaEnd g2 |
			e e8 e e d |
			e2 e4 e |
			e4. e8 a4 g |
			fis2 d |
			a'4 g8 f e2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			fis1 d |
			\set Score.measureLength = #(ly:make-moment 4 4)
			e4. e8 e4 g |
			fis2 fis4 a, |
			h8 c d h e2 |
			d r8 g f e |
			e4. d8 d2 |
			e1 |
			r4 e f8 g a f |
			g2 f8 f e d |
			e f g2\melisma fis4\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g2 d e e |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d4 c h2 |
			h8 gis' gis gis a2~ |
			a8 f f e e2~ |
			e4 d d\melisma e16[ f g f] |
			e1\melismaEnd |
			d2 r8 d d d |
			e g f e e4. d8 |
			d4 d r8 e d c |
			c4. h8 h2 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			cis\longa |
			}
	\bar "|."
	}
}

staffTenoreD = \new Staff { 
	\set Staff.instrumentName = "Tenore"
	\set Staff.midiInstrument = "oboe"
	\key c \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			c2. c4 |
			c4 c8 a h2 |
			h h |
			a r |
			r8 a fis e fis2 |
			fis4 a8 g d'4 d8 h |
			h2 h4 h8 a |
			c4 c8 d c2 |
			e d4 d |
			d2\melisma cis\melismaEnd |
			d2. fis,8 fis |
			fis4 g8 a h2 |
			h2 h4 a8 h |
			gis4\melisma a2 gis4\melismaEnd |
			a1 |
			a2 a8 a a g |
			a2 a4 a |
			a4. a8 a4. a8 |
			h2 h |
			a4. a8 a2~ |
			a h |
			c c8 c c h |
			c2 c4 c |
			cis4. cis8 cis4. cis8 |
			d2 d4 c8 h |
			cis4\melisma d2 cis4\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d1 h |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g4. g8 g4 d' |
			a2 a4 fis |
			g8 a h g c2 |
			h r8 e d c |
			c4. c8 c4\melisma h\melismaEnd |
			c1 |
			r4 c d8 e f d |
			c2 d8 d c h |
			c4 h a2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			h h g g |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g4 a gis2 |
			gis r8 e' e e |
			f4 d r8 c c c |
			c4 c c\melisma h |
			cis d2 cis4\melismaEnd |
			d8 fis, fis fis g2 |
			g r |
			r8 a a h gis4 a |
			a2.\melisma gis4\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 1)
			a\longa |
			}
	\bar "|."
	}
}

staffBassD = \new Staff {
	\set Staff.instrumentName = "Basso"
	\set Staff.midiInstrument = "oboe"
	\key c \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			a2. a4 |
			a4 e8 f g2 |
			g g |
			d~ d8 d c h |
			cis2 d |
			r4 d8 e fis4 fis8 g |
			g2 g4 g8 f |
			e4 e8 d f2 |
			c h4 g |
			a1 |
			d |
			R1 |
			r4 g2 cis,8 d |
			e1 |
			a, |
			f'2 f8 f f e |
			f2 f4 f |
			fis4. fis8 fis4. fis8 |
			g2 g |
			cis,4. cis8 d2~ |
			d g, |
			R1*3 |
			d'2 fis,4 g |
			a1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d g |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c,4. c8 c4 h |
			d2 d |
			r a |
			h8 c d h e4 e8 e |
			f g a f g2 |
			c,4 c e8 f g e |
			a2 g4 f |
			e2 d |
			c4 g d'2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g, g' c, c |
			\set Score.measureLength = #(ly:make-moment 4 4)
			h4 a e'2 |
			e r8 cis cis cis |
			d2 e |
			f4. f8 g4. g8 |
			a1 |
			d,2 r8 h h h |
			c4 c r8 cis cis cis |
			d d d d e4 e |
			e1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			a,\longa |
			}
	\bar "|."
	}
}

staffBassoD = \new Staff {
	\set Staff.instrumentName = "Basso"
	\set Staff.midiInstrument = "harpsichord"
	\key c \major
	\clef bass
	\relative c' {
		a1 |
		a4 e8 f g2 |
		g1 |
		d |
		cis2 d |
		d1 |
		g |
		e4. d8 f2 |
		c h4 g |
		a1 |
		d |
		d2 g, |
		g2. cis8 d |
		e1 |
		a, |
		f |
		f |
		fis' |
		g |
		cis,2 d~ |
		d g, |
		c1 |
		c |
		a |
		d2 fis,4 g |
		a1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d g |
		\set Score.measureLength = #(ly:make-moment 4 4)
		c,2. h4 |
		d1 |
		g,2 a |
		h e |
		f g |
		c,1 |
		a'2 g4 f |
		e2 d |
		c4 g d'2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g,1 c |
		\set Score.measureLength = #(ly:make-moment 4 4)
		h4 a e'2 |
		e cis |
		d e |
		f g |
		a1 |
		d,2 h |
		c cis |
		d e |
		e1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		a,\longa |
	\bar "|."
	}
}

BCD = \new FiguredBass {
	\figuremode {
		s1*14 |
		<_+>1 |
		s1*11 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s1*9 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s2 <_+>2 |
		<_+>2 s |
		s1*2 |
		<_+>1 |
		s1*4 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		s\longa |
	\bar "|."
	}
}


verseCE= \lyricmode {
A -- ni -- me for -- tu -- na -- te L'or -- me_al -- tro -- ve_im -- pren -- de -- te E se tal -- hor pec -- ca -- te tal -- hor an -- cor pian -- ge -- te Ma nel tem -- po c'ha l'a -- le non cred' al -- cun pec -- can -- do Va -- go_e sol d'in -- gan -- na -- re va -- go_e sol va -- go_e sol d'in -- gan -- na -- re col di col di che va pas -- san -- do co -- me suol d'ar -- co stra -- le van' hor tu can -- gia vi -- ta can -- gia vi -- ta la pec -- ca -- tri -- ce pec -- ca -- tri -- ce_im -- mi -- ta la pec -- ca -- tri -- ce_i -- mi -- ta la pec -- ca -- tri -- ce la pec -- ca -- tri -- ce_i -- mi -- ta.
}
verseAE= \lyricmode {
A -- ni -- me for -- tu -- na -- te L'or -- me_al -- tro -- ve_im -- pren -- de -- te E se tal -- hor pec -- ca -- te tal -- hor an -- cor pian -- ge -- te Ma nel tem -- po c'ha l'a -- le non cred' al -- cun pec -- can -- do Va -- go_e sol d'in -- gan -- na -- re va -- go_e sol d'in -- gan -- na -- re col di che va pas -- san -- do co -- me suol d'ar -- co stra -- le van' hor tu can -- gia vi -- ta can -- gia vi -- ta la pec -- ca -- tri -- ce pec -- ca -- tri -- ce_im -- mi -- ta la pec -- ca -- tri -- ce la pec -- ca -- tri -- ce la pec -- ca -- tri -- ce_i -- mi -- ta.
}
verseTIE= \lyricmode {
A -- ni -- me for -- tu -- na -- te L'or -- me_al -- tro -- ve_im -- pren -- de -- te e se tal -- hor pec -- ca -- te tal -- hor tal -- hor an -- cor pian -- ge -- te Ma nel tem -- po c'ha l'a -- le non cred' al -- cun pec -- can -- do va -- go_e sol d'in -- gan -- na -- re col di che va pas -- san -- do co -- me suol d'ar -- co stra -- le van' hor tu can -- gia vi -- ta can -- gia vi -- ta la pec -- ca -- tri -- ce pec -- ca -- tri -- ce_im -- mi -- ta la pec -- ca -- tri -- ce_i -- mi -- ta la pec -- ca -- tri -- ce_im -- mi -- ta la pec -- ca -- tri -- ce_i -- mi -- ta.
}
verseTIIE= \lyricmode {
A -- ni -- me for -- tu -- na -- te L'or -- me_al -- tro -- ve_im -- pren -- de -- te E se tal -- hor pec -- ca -- te tal -- hor tal -- hor an -- cor an -- cor pian -- ge -- te Ma nel tem -- po c'ha l'a -- le non cred' al -- cun pec -- can -- do va -- go_e sol d'in -- gan -- na -- re va -- go_e sol d'in -- gan -- na -- re col di che va pas -- san -- do co -- me suol d'ar -- co stra -- le van' hor tu can -- gia vi -- ta can -- gia vi -- ta la pec -- ca -- tri -- ce pec -- ca -- tri -- ce_im -- mi -- ta la pec -- ca -- tri -- ce_i -- mi -- ta la pec -- ca -- tri -- ce_im -- mi -- ta la pec -- ca -- tri -- ce_i -- mi -- ta.
}
verseBE= \lyricmode {
A -- ni -- me for -- tu -- na -- te L'or -- me_al -- tro -- ve_im -- pren -- de -- te E se tal -- hor pec -- ca -- te tal -- hor tal -- hor an -- cor pian -- ge -- te Ma nel tem -- po c'ha l'a -- le non cred' al -- cun pec -- can -- do va -- go_e sol d'in -- gan -- na -- re col di che va pas -- san -- do co -- me suol d'ar -- co stra -- le van' hor tu can -- gia vi -- ta can -- gia vi -- ta la pec -- ca -- tri -- ce pec -- ca -- tri -- ce_im -- mi -- ta la pec -- ca -- tri -- ce_i -- mi -- ta.
}

staffCantoE = \new Staff {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName = "Canto"
	\set Staff.midiInstrument = "oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyCan" {
			\dynamicUp
			\autoBeamOff
			d2. d4 |
			d2 c4 c |
			a2 a |
			r4 a2 b4 |
			c2 c4 c |
			c2 c |
			r8 d a a a4 b |
			a2 a |
			r4 a b2 |
			r b |
			a g |
			a1~ |
			a |
			fis |
			r2 d'4 c |
			c2 c4 d |
			g,2 g |
			r2 r8 d' es d |
			c b b2\melisma a4\melismaEnd |
			b1 |
			d8 g, b2 a8 g |
			a2 g |
			c8 a a4 d8 b b4~ |
			b c8 d a4 a |
			r g f c' |
			a8 b a b c2 |
			b4 d8 d d2 |
			c1~ |
			c2 h |
			c c |
			r4 c8 d c2 |
			cis4 d h2 |
			h b4 c |
			a2 a4 d~ |
			d b8 b b2 |
			d4 b8 b b2~ |
			b d |
			c1 |
			a2 r8 a a a |
			c4 b a2 |
			a8 b b b d2 |
			c8 c c c d2~ |
			\set Score.measureLength = #(ly:make-moment 6 1)
			d d a1 h\longa |
			}
	\bar "|."
	}
}

staffAltoE = \new Staff {
	\set Staff.instrumentName = "Alto"
	\set Staff.midiInstrument = "oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			g2. g4 |
			g2 g4 g |
			fis2 fis |
			r4 fis2 g4 |
			a2 a4 g |
			f2 f |
			r8 fis fis fis fis4 g |
			fis2 fis |
			r4 fis g2 |
			r4 g f2 |
			d1 |
			cis4\melisma h d2~ |
			d cis\melismaEnd |
			d1 |
			r2 g4 g |
			f2 f4 f |
			e2 e |
			r8 g f f g2 |
			g f |
			f1 |
			r4 g8 d f2~ |
			f4 e8 d e4 e |
			a8 e f2 e8 d |
			f2 f4 d |
			e2 r8 f f e |
			f1 |
			f4 g8 g g2 |
			g fis |
			g1 |
			g |
			r4 f8 f f4 a~ |
			a a gis2 |
			gis g4 g |
			fis2 fis4 d~ |
			d g8 g g2 |
			d4 g8 g g2 |
			g f~\melisma |
			f4 e8 d e2\melismaEnd |
			f r |
			e2. e8 e |
			f2 d4 f |
			f8 f a4 f8 g g g |
			\set Score.measureLength = #(ly:make-moment 6 1)
			a4 d, g2~\melisma g4 fis8 e fis2\melismaEnd g\longa |
			}
	\bar "|."
	}
}

staffTenoreIE = \new Staff {
	\set Staff.instrumentName = "Tenore I"
	\set Staff.midiInstrument = "oboe"
	\key f \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTenI" {
			\dynamicUp
			\autoBeamOff
			d2. d4 |
			d2 g,4 g |
			a2 a |
			r4 d2 d4 |
			f2 c4 es |
			c2 c4. a8 |
			d d d2 d4 |
			d2 d |
			r2 d4 b |
			r b d2 |
			d,1 |
			f2 f |
			e1 |
			d |
			r2 d'4 es |
			c2 c4 f, |
			g2 g |
			r8 b b c d4 g, |
			es'4.\melisma d8 c[ d16 e] f4\melismaEnd |
			d1 |
			R1*2 |
			r4 d8 a b2~ |
			b4 a8 g a4 a |
			r c c2 |
			r8 b c d es2 |
			d4 h8 h h2 |
			c c |
			d1 |
			e |
			r4 c8 b c2 |
			a4 a h2 |
			h g4 g |
			a2 a4 b~ |
			b b8 b b2 |
			b4 b8 b b2 |
			g1 |
			c |
			c8 a a a c4 f, |
			a1 |
			d,2 r8 b' b b |
			c4 f, b2 |
			\set Score.measureLength = #(ly:make-moment 6 1)
			a8 a a a d4 g, a1 g\longa |
		}
	\bar "|."
	}
}

staffTenoreIIE = \new Staff {
	\set Staff.instrumentName = "Tenore II"
	\set Staff.midiInstrument = "oboe"
	\key f \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTenII" {
			\dynamicUp
			\autoBeamOff
			b2. b4 |
			b2 c4 c |
			d2 d |
			r4 a2 g4 |
			c2 a4 b |
			a2 a |
			r8 a a a a4 g |
			a2 a4 a |
			d2 r4 d |
			es2 r |
			f d4 d, |
			a'2 b |
			a1 |
			a |
			r2 h4 c |
			a2 a4 h |
			c2 c |
			r8 d d c b4 b |
			c1 |
			b |
			r4 es8 b d2 |
			c8 b c4 c2 |
			r4 a8 f d'2~ |
			d4 c8 b d2 |
			c4 g a8 b a g |
			f1 |
			f4 d'8 d d2 |
			g, a |
			d,4\melisma e8 f g2\melismaEnd |
			g1 |
			r4 a8 f a2 |
			e'4 d e2 |
			e d4 c |
			d2 d4 f~ |
			f es8 es es2 |
			f4 es8 es es2~ |
			es d |
			g,1 |
			f8 c' c c e4 d |
			c8\melisma b16 c d2 cis4\melismaEnd |
			d8 d d d f4 d |
			a2 d8 d d d |
			\set Score.measureLength = #(ly:make-moment 6 1)
			f2 b, d1 d\longa |
		}
	\bar "|."
	}
}

staffBassoE = \new Staff {
	\set Staff.instrumentName = "Basso"
	\set Staff.midiInstrument = "oboe"
	\key f \major
	\clef bass
	\relative c { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			g2. g4 |
			g2 es'4 es |
			d2 d |
			r4 d2 g4 |
			f2 f4 es |
			f2 f |
			r8 d d d d4 g, |
			d'2 d |
			r4 d g2 |
			r4 es b'2 |
			r b, |
			a g |
			a1 |
			d |
			r2 g,4 c |
			f,2 f'4 d |
			c2 c |
			r8 g' b a g2 |
			es2 f |
			b,1 |
			R1*2 |
			f'8 c d2 c8 b |
			d2 d |
			r4 c f2 |
			r8 d c b a2 |
			b4 g8 g g2 |
			c a |
			g1 |
			c |
			r4 f8 d f2 |
			a4 f e2 |
			e g4 es |
			d2 d4 b~ |
			b es8 es es2 |
			b4 es8 es es2~ |
			es b |
			c1 |
			f,2 r |
			R1 |
			r2 r8 d' d d |
			f2 b, |
			\set Score.measureLength = #(ly:make-moment 6 1)
			d1~ d g,\longa |
			}
	\bar "|."
	}
}


verseF= \lyricmode {
Spaz -- zia pront' ò vec -- chia -- rel -- la que -- sto suo -- lo va -- gh'è so -- lo far d'au -- gei pre -- de piu bel -- le far d'au -- gei pre -- de piu bel -- le.
}

staffCantoIF = \new Staff {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 200 
	\set Staff.instrumentName = "Canto I"
	\set Staff.midiInstrument = "oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyCanI" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			h4 c d2. g,4 c a |
			h2 a h4 cis d2 |
			d4 d2 cis4 d2 d |
			a4 a d2 c h4 h |
			a2 d c4 c h2 |
			e a,4. g8 g2 g |
		}
	\bar "|."
	}
}

staffCantoIIF = \new Staff {
	\set Staff.instrumentName = "Canto II"
	\set Staff.midiInstrument = "oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyCanII" {
			\dynamicUp
			\autoBeamOff
			g4 e g2. e4 e fis |
			g2 fis g4 e a2 |
			h4 e,2 e4 fis2 fis |
			fis4 e fis8[\melisma e fis g] a4\melismaEnd a4. a8 gis4 |
			a2 g e4 fis g2 |
			g g4 fis g2 g |
		}
	\bar "|."
	}
}

staffTenoreF = \new Staff {
	\set Staff.instrumentName = "Tenore"
	\set Staff.midiInstrument = "oboe"
	\key c \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			g4 a h2. c4 a d |
			g,2 d' g,4 a fis2 |
			g4 a2 a4 d,2 d |
			d'4 c h2 a e'4 e |
			a,2 h c4 d e2 |
			c d4 d g,2 g |
		}
	\bar "|."
	}
}


staffViolinoIG = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 160 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		\set Score.measureLength = #(ly:make-moment 4 2)
		d4 e8 f g f e d c4 f4. e8 d4 |
		e8 d e f g4 a e8 fis g4 fis g |
		a g2 fis4 g1 |
	\bar "|."
	}
}

staffViolinoIIG = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		\set Score.measureLength = #(ly:make-moment 4 2)
		h4 c8 d e d c h a4 d4. c8 h4 |
		c4 g d' c2 h4 a h |
		c g a2 h1 |
	\bar "|."
	}
}

staffBassoG = \new Staff {
	\set Staff.instrumentName = "Basso"
	\set Staff.midiInstrument = "harpsichord"
	\key c \major
	\clef bass
	\relative c' {
		\set Score.measureLength = #(ly:make-moment 4 2)
		g4 f e2 f4 d g2 |
		c,4 c' h a2 g4 d' g, |
		f e d2 g1 |
	\bar "|."
	}
}





\score {
	<<
		\staffViolinoIA
		
		\staffViolinoIIA
		
		\staffViolaIA
		
		\staffViolaIIA
		
		\staffBassoA
	>>
	
	\header {
		piece = \markup {"A Cinque Voci" \smallCaps "Del Signor Claudio Monteverde."}
	}
	
	\midi {
	}

  \layout {
  }
}

\score {
	<<
		\staffTenorB
		\context Lyrics = "lmelodyTen" \lyricmode { \lyricsto "melodyTen" \verseB }
		
		\staffBassoB
		\BCB
	>>
	
	\header {
		piece= \markup {\smallCaps "Prologo Favor Divino Canta."}
	}
	
	\midi {
	}

  \layout {
  }
}

\markup {
	\fill-line{
		\hspace #0.1
		\column{
			\line{
				\column{
					"Su le penne de' Venti il Ciel Carcando"
					"   Faretratto fanciull a voi ne vegno,"
					"   Son tutto luce, son di gloria il segno,"
					"   Ad eccelsa Armonia voce accordando."
					" "
					"Ben a l'ali depinte, à l'arco aurato"
					"   Già'l vulgo sciocco mi dichiara Amore;"
					"   Son Amor; ma non cieco: un'alma, un core"
					"   Saetto sì; ma colpo io fò beato."
					" "
					"Non per c'habbia d'Allor monili, e fregi,"
					"   Non ghiarlanda di fiori ai braccio, al crine,"
					"   Narro c'hò vincitor palme divine,"
					"   Poi ch'al vinto den'lo le frondi, e i pregi."
				}
			}
		}
		\hspace #0.1
		\column{
			\line{
				\column{
					"Quegli son io, che per valor sovrano"
					"   Tanti rubelli ai Ciel cinse, atterrai;"
					"   Poscia di raggi il perditore ornai,"
					"   C'hò di favor Divin zelante mano."
					" "
					"Hora d'Olimpo Regnator bramoso"
					"   Di sublimar bellissima abbattuta,"
					"   Dammai ghirlanda sù nel Ciel tessuta."
					"   Ond'aureo crin n'adorni à l'aure ondoso."
					" "
					\line {
						"Sù" \smallCaps "Peccatrice" "da la piuma indegna"
					}
					\line {
						"   Sorgi veloce, ti converti à" \smallCaps "Christo;"
					}
					"   Che ben qui fai nel Mar del pianto acquisto"
					"   Del Nocchier ch'à le stelle andar s'insegna."
				}
			}
		}
		\hspace #0.1
	}
}
\markup {
	\fill-line{
		\hspace #0.1
		\column{
			\line{
				\column {
					"Voi spettatori di sant'opra intanto"
					\line {
						"Con" \smallCaps "Maddalena" "in questo Egeo solcate;"
					}
					"Co'l pianto novo antico error laudate,"
					"C'hoggi l'ira di Dio vinta è dal pianto."
				}
			}
		}
		\hspace #0.1
	}
}

\score {
	<<
		\staffCantoIC
		\context Lyrics = "lmelodyCanI" \lyricmode { \lyricsto "melodyCanI" \verseC }
		
		\staffCantoIIC
		\context Lyrics = "lmelodyCanII" \lyricmode { \lyricsto "melodyCanII" \verseC }
		
		\staffBassoC
	>>
	
	\header {
		piece = "Del Signor Muzio Effrem."
	}
	
	\midi {
	}

  \layout {
  }
}

\score {
	<<
		\staffAltoD
		\context Lyrics = "lmelodyAlt" \lyricmode { \lyricsto "melodyAlt" \verseAD }
		
		\staffTenoreD
		\context Lyrics = "lmelodyTen" \lyricmode { \lyricsto "melodyTen" \verseTD }
		
		\staffBassD
		\context Lyrics = "lmelodyBas" \lyricmode { \lyricsto "melodyBas" \verseBD }
		
		\staffBassoD
		\BCD
	>>
	
	\header {
		piece = "A Tre Voci. Del Sig. Alessandro Giuiuzzani Lucchese."
	}
	
	\midi {
	}

  \layout {
  }
}

\score {
	<<
		\staffCantoE
		\context Lyrics = "lmelodyCan" \lyricmode { \lyricsto "melodyCan" \verseCE }
		
		\staffAltoE
		\context Lyrics = "lmelodyAlt" \lyricmode { \lyricsto "melodyAlt" \verseAE }
		
		\staffTenoreIE
		\context Lyrics = "lmelodyTenI" \lyricmode { \lyricsto "melodyTenI" \verseTIE }
		
		\staffTenoreIIE
		\context Lyrics = "lmelodyTenII" \lyricmode { \lyricsto "melodyTenII" \verseTIIE }
		
		\staffBassoE
		\context Lyrics = "lmelodyBas" \lyricmode { \lyricsto "melodyBas" \verseBE }
	>>
	
	\header {
		piece = "A quattro Voci. Del Sig. Muzio Effrem Napoletano. A battuta Larga."
	}
	
	\midi {
	}

  \layout {
  }
}

\score {
	<<
		\staffCantoIF
		\context Lyrics = "lmelodyCanI" \lyricmode { \lyricsto "melodyCanI" \verseF }
		
		\staffCantoIIF
		\context Lyrics = "lmelodyCanII" \lyricmode { \lyricsto "melodyCanII" \verseF }
		
		\staffTenoreF
		\context Lyrics = "lmelodyTen" \lyricmode { \lyricsto "melodyTen" \verseF }
	>>
	
	\header {
		piece = "Di Salamon Rossi Hebreo Mantouano Balletto, và cantato & Sonata con 3. Viole da Braccio."
	}
	
	\midi {
	}

  \layout {
  }
}

\score {
	<<
		\staffViolinoIG
		
		\staffViolinoIIG
		
		\staffBassoG
	>>
	
	\header {
		piece = "Ritornello"
	}
	
	\midi {
	}

  \layout {
  }
}

\paper {
}


