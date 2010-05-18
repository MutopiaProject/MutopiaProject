\version "2.12.3"

\header {
	title = "T'amo mia vita"
	composer = "Claudio Monteverdi (1567-1643)"
	mutopiatitle = "T'amo mia vita"
	mutopiacomposer = "MonteverdiC"
	mutopiaopus = "SV 105"
	mutopiainstrument = "Voices (SSATB), Basso Continuo"
	date = "1605"
	source = "Il Quinto Libro de Madrigali a cinque voci. Di Claudio Monteverde Maestro della Musica del Serenissimo Sig. Duca di Mantoa. Col Basso continuo per il Clavicembalo Chittarone od altro simile istromento, fatto particolarmente per li sei vltimi, & per li altri a beneplacito. Di nouo ristampato. - In Venetia, Appresso Ricciardo Amadino. 1608."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2010/05/17-1772"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseS= \lyricmode {
T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta la mia vi -- ta si -- a la mia vi -- ta si -- a.
}
verseQ= \lyricmode {
T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta la mia vi -- ta si -- a la mia vi -- ta si -- a.
}
verseA= \lyricmode {
La mia ca -- ra vi -- ta la mia ca -- ra vi -- ta la mia ca -- ra vi -- ta Dol -- ce -- men -- te mi di -- ce E_in ques -- ta so -- la Si so -- a -- ve pa -- ro -- la E_in ques -- ta so -- la si so -- a -- ve pa -- ro -- la Par che tras -- for -- mi lie -- ta -- men -- te_il co -- re Per far -- me -- ne si -- gno -- re O vo -- ce vo -- ce di dol -- cez -- z'e di di -- let -- to Pren -- di -- la tos -- to_a -- mo -- re Stam -- pa -- la nel mio pet -- to Spi -- ri so -- lo per lei Spi -- ri so -- lo per lei l'a -- ni -- ma mi -- a la mia vi -- ta si -- a la mia vi -- ta si -- a la mia vi -- ta si -- a T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta la mia vi -- ta si -- a.
}
verseT= \lyricmode {
La mia ca -- ra vi -- ta la mia ca -- ra vi -- ta la mia ca -- ra vi -- ta Dol -- ce -- men -- te mi di -- ce E_in ques -- ta so -- la Si so -- a -- ve pa -- ro -- la E_in ques -- ta so -- la Si so -- a -- ve pa -- ro -- la Par che tras -- for -- mi lie -- ta -- men -- te_il co -- re Per far -- me -- ne si -- gno -- re O vo -- ce vo -- ce di dol -- cez -- za_e di di -- let -- to vo -- ce di dol -- cez -- za_e di di -- let -- to Pren -- di -- la tos -- to_a -- mo -- re Stam -- pa -- la nel mio pet -- to Spi -- ri so -- lo per lei Spi -- ri so -- lo per lei l'a -- ni -- ma mi -- a T'a -- mo mia vi -- ta la mia vi -- ta si -- a la mia vi -- ta si -- a la mia vi -- ta si -- a T'a -- mo mia vi -- ta T'a -- mo mia vi -- ta la mia vi -- ta si -- a.
}
verseB= \lyricmode {
La mia ca -- ra vi -- ta la mia ca -- ra vi -- ta la mia ca -- ra vi -- ta Dol -- ce -- men -- te mi di -- ce E_in ques -- ta so -- la Si so -- a -- ve pa -- ro -- la E_in ques -- ta so -- la Si so -- a -- ve pa -- ro -- la Par che tras -- for -- mi lie -- ta -- men -- te_il co -- re Per far -- me -- ne si -- gno -- re O vo -- ce vo -- ce di dol -- cez -- za_e di di -- let -- to vo -- ce di dol -- cez -- za_e di di -- let -- to Pren -- di -- la tos -- to_a -- mo -- re Stam -- pa -- la nel mio pet -- to Spi -- ri so -- lo per lei Spi -- ri so -- lo per lei l'a -- ni -- ma mi -- a T'a -- mo mia vi -- ta la mia vi -- ta si -- a la mia vi -- ta si -- a la mia vi -- ta si -- a la mia vi -- ta si -- a la mia vi -- ta si -- a.
}
 

staffSoprano = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName=\markup{\smallCaps Canto}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			r2 a~ |
			a~ a4 g8 f |
			e1 |
			d |
			R1*4 |
			r2 a'~ |
			a4 g8 f e2 |
			d1 |
			R1*10 |
			r8 a' h c d d d4~ |
			d1~ |
			d2. h8 a |
			a2 g |
			r r4 e'~ |
			e2. d8 c |
			h2 a |
			R1*12 |
			r2 a~ |
			a4 g8 f e2 |
			fis r |
			h2. a8 g |
			fis4\melisma g2 fis4\melismaEnd |
			g1 |
			r8 h c d e e e4~ |
			e2. d8 c |
			h2 a |
			R1*3 |
			a4 g f e |
			d d d' c |
			b a g2~ |
			g1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			fis\longa |

		}

	\bar "|."
	}

}
staffQuinto = \new Staff  {
	\set Staff.instrumentName=\markup{\smallCaps Quinto}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyQui" {
			\dynamicUp
			\autoBeamOff
			R1*40 |
			f2. e8 d |
			cis4\melisma d2 cis4\melismaEnd |
			d2 r |
			r d'~ |
			d4 c8 h a2 |
			h1 |
			r8 g a h c c c4~ |
			c2. h8 a |
			gis2 a |
			r8 e f g a a a4~ |
			a g8 f a2 |
			a a4 g |
			f e d d |
			d' c b a |
			g2.\melisma a4 |
			b1\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 1)
			a\longa |
		}

	\bar "|."
	}

}
staffAlto = \new Staff  {
	\set Staff.instrumentName=\markup{\smallCaps Alto}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R1*4 |
			a8 a a a b4 b |
			h8 h h h c4 c |
			e8 e e e f e d c |
			h4 c8 c h2 |
			a r |
			R1 |
			r4 a a a |
			h h h8 c d4 |
			d4. e8 c2 |
			c4 h h h |
			c c c8 d e4 |
			e fis d2 |
			d4 a a a |
			h4. c8 d4 d |
			c d e2 |
			e4 e c4. c8 |
			f4 f e2 |
			d1 |
			R1*2 |
			r2 r4 h |
			h2 h |
			R1*3 |
			e8 e e e e e d d |
			c4 c c h8 a |
			a4. gis8 a4 a |
			e' d8 c h4. h8 |
			a4 a r g |
			g g4. g8 g4 |
			c2 r4 b |
			b b4. b8 c4 |
			d2 g, |
			g4 a b2 |
			a1 |
			R1*2 |
			r2 d4 c |
			h a g2 |
			d' d4 c |
			h a g g |
			g' f e d |
			c8[\melisma h c d] e2~ |
			e\melismaEnd c2 |
			r r8 c d e |
			f f f4~ f2~ |
			f4 e8 d e2 |
			d r |
			g,4 a b c |
			d1~ |
			d |
			\set Score.measureLength = #(ly:make-moment 4 1)
			d\longa |
		}

	\bar "|."
	}

}
staffTenore = \new Staff  {
	\set Staff.instrumentName=\markup{\smallCaps Tenore}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef "G_8"
	\relative c { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			R1*4 |
			fis8 fis fis fis g4 g |
			gis8 gis gis gis a4 a |
			cis8 cis cis cis d c h a |
			gis4 a8 a gis2 |
			a r |
			R1 |
			r4 fis fis fis |
			g g g8 g h4 | %g8 g instead of gis8 gis
			h h c2 |
			g4 gis gis gis |%g4 instead of gis4
			a a a8 h c4 |
			c cis d2 |
			a4 fis fis fis |
			g4. a8 h4. h8 |
			c4 h c2 |
			c4 c a4. a8 |
			d4 d cis2 |
			d1 |
			R1*2 |
			r2 r4 g, |
			gis2 gis |
			R1 |
			r2 c8 c c c |
			h h h h a4 a |
			a8 a a a gis gis gis gis |
			a4 a e'4 d8 c |
			h4. h8 a4 a |
			c4 h8 a a4. gis8 |
			a4 a r e |
			e e4. e8 e4 |
			a2 r4 d |
			d d4. d8 c4 |
			b2 b |
			b4 fis4 g2 |
			fis d'~ |
			d4 c8 h a2~ |
			a a |
			a4 g fis e |
			d2 d |
			R1 |
			d'4 c h a |
			g2 g |
			R1 |
			r2 e'4 d |
			c h a2 |
			a8 a h cis d d d4~ |
			d cis8 h cis2 |
			d r |
			r g,4 a |
			b2. a4 |
			g1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			a\longa |
		}

	\bar "|."
	}

}
staffBasso = \new Staff  {
	\set Staff.instrumentName=\markup{\smallCaps Basso}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef bass
	\relative c { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R1*4 |
			d8 d d d g,4 g |
			e'8 e e e a,4 a |
			a'8 a a a d, d d d |
			e4 a,8 a e'2 |
			a, r |
			R1 |
			r4 d d d |
			g g g,8 g g4 |
			g g c2 |
			c4 e e e |
			a a a,8 a a4 |
			a a d2 |
			d4 d d d |
			g4. g8 g4 f |
			e d c2 |
			c4 c f4. f8 |
			d4 d a2 |
			d1 |
			R1*2 |
			r2 r4 g |
			e2 e |
			R1 |
			r2 a8 a a a |
			gis gis gis gis a4 a |
			c8 c c c h h h h |
			a4 a a, a8 a |
			e'4 e a a |
			a, a8 a e'4 e |
			a, a r c |
			c c4. c8 c4 |
			f,2 r4 b |
			b b4. b8 a4 |
			g2 g |
			g4 d' g,2 |
			d'1 |
			d2. c8 h |
			a1 |
			d |
			g,4 a h c |
			d1 |
			g,2 g'4 f |
			e d c h |
			a h c d |
			e2 a, |
			a'4 g f e |
			d1 |
			a' |
			r2 d,4 c |
			b a g2~ |
			g1~ |
			g |
			\set Score.measureLength = #(ly:make-moment 4 1)
			d'\longa |
		}

	\bar "|."
	}

}

staffBC = \new Staff {
	\set Staff.instrumentName =\markup{\smallCaps {Basso continuo}}
	\set Staff.midiInstrument = "harpsichord"
	\key c \major
	\clef bass
	\relative c { 	
		d2. c8 h |
		a2 d, |
		a'1 |
		d |
		d8 d d d g,4 g |
		e'8 e e e a,4 a |
		a'8 a a a d, d d d |
		e4 a,8 a e'2 |
		a,4 g f e8 d |
		a'1 |
		d,4 d' d d |
		g g g,8 g g4 |
		g g c2 |
		c4 e e e |
		a a a,8 a a4 |
		a a d2 |
		d4 d d d |
		g4. g8 g4 f |
		e d c2 |
		c4 c f4. f8 |
		d4 d a2 |
		d1 |
		d4 c h a8 g |
		fis2 g |
		d' g,4 g' |
		e2 e |
		a,4 h c d |
		e2 a |
		gis8 gis gis gis a4 a |
		a8 a a a gis gis gis gis |
		a4 a a, a8 a |
		e'4 e a a |
		a, a8 a e'4 e |
		a, a r c |
		c c4. c8 c4 |
		f,2 r4 b |
		b4 b4. b8 a4 |
		g2 g |
		g4 d' g,2 |
		d'1 |
		d2. c8 h |
		a1 |
		d |
		g,4 a h c |
		d1 |
		g,2 g'4 f |
		e d c h |
		a h c d |
		e2 a, |
		a'4 g f e |
		d1 |
		a' |
		d,2 d4 c |
		b a g2~ |
		g1~ |
		g |
		\set Score.measureLength = #(ly:make-moment 4 1)
		d'\longa |
	\bar "|."
	}
}
staffBCFig = \new FiguredBass {
	\figuremode {
		s1*4 |
		s2 <_->4 s |
		s1*32 |
		<_->2 s |
		s1*15 |
		s2 <_-> |
		s1*2 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		s1*4 |
	}
}


\score {
	<<
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verseS }
		
		\staffQuinto
		\context Lyrics = "lmelodyQui" \lyricmode  { \lyricsto "melodyQui" \verseQ }
		
		\staffAlto
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \verseA }
		
		\staffTenore
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verseT }
		
		\staffBasso
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \verseB }
		
		\staffBC
		\staffBCFig
	>>
	
	\midi {
	}

	\layout  {
		indent=40
	}
}

\paper {
}

