% Created on Sat Jan 19 09:17:15 CET 2008
\version "2.10.33"

\header {
	title = "Nelle nubi intorno al Fato"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Nelle nubi intorno al Fato , Aria from Deidamia"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Paolo Antonio Rolli (1687-1765)"
	mutopiaopus = "HWV 42"
	mutopiainstrument = "Voice (Bass), String Ensemble, Basso Continuo"
	date = "1740"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 94, 1885"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1316"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Nel -- le nu -- bi in -- tor -- no_al Fa -- to a' mor -- ta -- li non è da -- to con lo sguar -- do_a pe -- ne -- trar, con lo sguar -- do_a pe -- ne -- trar, nel -- le nu -- bi_in tor -- no_al Fa -- to, nel -- le nu -- bi_in tor -- no_al Fa -- to a' mor -- ta -- li non è da -- to con lo sguar -- do_a pe -- ne -- trar, a' mor -- ta -- li non è da -- to con lo sguar -- do_ pe -- ne -- trar, con lo sguar -- do_a pe -- ne -- trar.
Del -- lo scam -- po_e del -- le mor -- te chi pre -- dir sen -- ti la sor -- te al -- lo scam -- po ha da pen -- sar, al -- lo scam -- po, al -- lo scam -- po ha da pen -- sar, al -- lo scam -- po_ha da pen -- sar.
}
 

staffViolin = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName=\markup{\column{"Violino I" \line{"Oboe I,II"}}}
	\set Staff.midiInstrument="violin"
	\key g \minor
	\clef treble
	\relative c'' {
		r4 g a |
		b c d es,2 es4 |
		d2 d4 |
		r g c~|
		c h f' |
		es f d |
		c g a |
		b c d |
		g a b |
		fis d b~ |
		b8 a a4. g8 |
		g2 r4 |
		R2. |
		r4 g'^\markup {Viol (s. Ob.)} a |
		b c d |
		es,2 es4 |
		d2 h4 |
		g es' d |
		c f es |
		as d, c |
		h c g |
		es' f d |
		r es, es' |
		r es, es' |
		r es, es' |
		r es, es' |
		r c' b |
		a ,a c |
		f c d |
		d es c |
		b b' a |
		g c, d~ |
		d8 es c4. b8 |
		b4 b, b' |
		a2 a4 |
		r d e |
		fis g a |
		b,2 a4 |
		g2 r4 |
		r g' a |
		b c d |
		d,2 d4 |
		es2 e4 |
		f2 fis4 |
		g a b |
		d,2 c4 |
		c b a |
		b c a |
		r g' g, |
		r fis' fis, |
		r g' g, |
		r a' a, |
		r d c |
		b b' a |
		g c, b |
		a d' c |
		b a g |
		fis d c |
		b a g |
		fis d c |
		b a g |
		r g' fis |
		g8 a b4 a |
		g f es |
		d2. |
		c |
		b^\markup {Adagio} |
		a |
		g4 g''^\markup {Tutti} a |
		b c d |
		es,2 es4 |
		d2 d4 |
		r g, c~ |
		c h f' |
		es f d |
		c g a |
		b c d |
		g a b |
		fis d b~ |
		b8 a a4. g8 |
		g2.\fermata \bar "||" |
		r4 d'^\markup {Viol. (s. Ob.)} cis |
		d e f |
		e f g |
		cis, e a |
		d, e f |
		e b' a |
		cis, d f |
		e gis a |
		a,2 r4 |
		R2. |
		r4 a h |
		cis d e |
		f,2 f4 |
		e2 e4 |
		d' d e |
		f c f |
		f e e |
		f d, e |
		f g a |
		b,2.\fermata |
		r4 b b |
		a2 r4 |
		R2.*2 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key g \minor
	\clef treble
	\relative c' { 	
		R2.*2 |
		r4 b c |
		d a b |
		g g'2 |
		f h4 |
		c d h |
		c c, es |
		d fis d' |
		c es d |
		d a g |
		g2 fis4 |
		g2 r4 |
		R2. |
		r4 b c |
		d g, fis |
		g2 g4 |
		g2 d'4 |
		c2 h4 |
		c2 g4 |
		f as g |
		f g c |
		c d h |
		r c, c' |
		r c, c' |
		r c, c' |
		r c, c' |
		r a' g |
		f es, a |
		b c b |
		b c a |
		d, f' d |
		b a b |
		b2 a4 |
		b f g |
		d g fis |
		g2 g4 |
		a b c |
		d, g fis |
		g a b |
		b2 c4 |
		d2 a4 |
		r d c |
		b g2 |
		c4 a2 |
		d4 c d |
		a b c |
		a g g |
		g a fis |
		r d' d, |
		r c' c, |
		r d' d, |
		r es' a, |
		r fis a |
		g fis fis |
		g g g |
		f a' a |
		d, c b |
		a fis a |
		d, c b |
		a d c |
		b a g |
		r b' a |
		g8 a b4 a |
		g f es |
		d2. |
		c |
		b |
		a |
		g4 g'' a |
		b c d |
		r b, c |
		d a b |
		g2 g4 |
		f d d' |
		c d h |
		c c, es |
		d a' g |
		c es d |
		d a g |
		g2 fis4 |
		g2.\fermata \bar "||" |
		r4 f g |
		a cis d |
		b a g |
		a2 a4 |
		r g a |
		b g d' |
		g, a d |
		cis h cis |
		cis,2 r4 |
		R2. |
		r4 d f |
		g2 cis4 |
		d,2 d4 |
		e2 a4 |
		a g g |
		a a a |
		d, g b |
		c, d e |
		f g a |
		b,2.\fermata |
		r4 b b |
		a2 r4 |
		R2.*2 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key g \minor
	\clef alto
	\relative c' {
		R2.*2 |
		r4 g f |
		f a f |
		c'2 c4 |
		d as' g |
		g as g |
		es g c, |
		b a' g |
		g c b |
		a fis d |
		es d c |
		b2 r4 |
		R2. |
		r4 g' c, |
		b a a' |
		c,2 c4 |
		d2 f4 |
		es2 g4~ |
		g f c'~ |
		c f, c |
		d c es |
		g as g |
		r g g |
		r g g |
		r f f |
		r g, g |
		r f' g |
		a a f |
		f f f |
		f g a |
		f b f |
		g a f |
		g c, f |
		d d c |
		c2 c4 |
		d2 b4 |
		c b a |
		f d' c |
		d c b |
		g'2 g4 |
		g2 fis4 |
		r4 g a, |
		b c2 |
		c4 d2 |
		d4 fis g |
		a g g |
		fis d es |
		d a d |
		r b' b, |
		r a' a, |
		r g' b, |
		r es c |
		r a' fis |
		g d d |
		d c c |
		c d d |
		g fis d' |
		d, a' fis, |
		g2 g4 |
		d d' c |
		b a g |
		r d' d |
		g8 a b4 a |
		g f es |
		d2. |
		c |
		b |
		a |
		g2 r4 |
		R2. |
		r4 g' f |
		f es d |
		d2 c4 |
		d2 h'4 |
		g as g |
		es c2 |
		d4 fis d |
		c c' b |
		a fis d |
		es d c |
		b2.\fermata \bar "||" |
		r4 a' g |
		f g a |
		g a b |
		e,2 f4 |
		r4 g f |
		g2 a4 |
		g f a |
		a2 e4 |
		e2 r4 |
		R2. |
		r4 f d |
		e2 g4 |
		a, b2 |
		b4 a2 |
		b4 b b |
		c f c |
		b b b |
		c d e |
		f g a |
		b,2.\fermata |
		r4 b b |
		a2 r4 |
		R2.*2 |
	\bar "|."
	}

}
staffBass = \new Staff  {
	\set Staff.instrumentName="Lycomede"
	\set Staff.midiInstrument="oboe"
	\key g \minor
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R2.*12 |
			r4 g a |
			b c d |
			es,2 es4 |
			d2 d4 |
			r c c' |
			h\melisma c\melismaEnd d |
			es g,2 |
			as g4 |
			r4 f es |
			d\melisma es\melismaEnd c |
			g'\melisma f\melismaEnd g |
			c,\melisma c'8.[ b16]c4 |
			b, b'8.[ a16] b4 |
			a, a'8.[ g16] a4 |
			g, g'8.[ f16] g4 |
			f2.\melismaEnd |
			r4 c' es |
			d\melisma a\melismaEnd b |
			f\melisma es\melismaEnd f |
			b,2 r4 |
			R2.*2 |
			r4 d e fis\melisma g\melismaEnd a |
			b,2 b4 |
			a2 a4 |
			r4 g' a |
			b\melisma c\melismaEnd d |
			es,2 es4 |
			d2 d4 |
			r4 b' a |
			g\melisma c\melismaEnd b |
			a\melisma d\melismaEnd c |
			b\melisma a\melismaEnd g |
			fis\melisma g\melismaEnd a |
			d,\melisma g\melismaEnd c, |
			d\melisma c\melismaEnd d |
			g,\melisma g'8.[ fis16] g4 |
			a, a'8.[ g16] a4 |
			b, b'8.[ a16] b4 |
			c, c'8.[ b16] c4 |
			d,2.\melismaEnd |
			r4 d d |
			es2 e4 |
			f2 fis4 |
			g\melisma a b |
			d,2\melismaEnd d4 |
			R2. |
			r4 d' c |
			b\melisma a\melismaEnd g |
			d'2 d,4 |
			g8[\melisma a] b4 a\melismaEnd |
			g\melisma f\melismaEnd es |
			d2. |
			c |
			d^\markup {Adagio} |
			d |
			g,2 r4 |
			R2.*12 \bar "||" |
			r4 d' e |
			f\melisma e\melismaEnd d |
			g\melisma f\melismaEnd e |
			a\melisma g\melismaEnd f |
			r b a |
			g2 f4 |
			e\melisma f\melismaEnd d |
			a'2 a,4\melismaEnd |
			r4 a' h |
			cis d e |
			f,2 f4 |
			e2. |
			d4 b'8.[\melisma a16] b4\melismaEnd |
			c,4 a'2 |
			d4 g,2 |
			c8[\melisma b c f, g a] |
			b[ a b e, f g] |
			a4\melismaEnd d, e |
			f\melisma g\melismaEnd a |
			b,2.\fermata |
			r4 d g |
			cis4.\melisma h16[ cis] d4\melismaEnd |
			g, a4. a8 |
			d,2. |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key g \minor
	\clef bass
	\relative c {
		g2 r4 |
		R2. |
		r4 g a |
		b c d |
		es,2 es'4 |
		d2 g,4 |
		c f, g |
		c es c |
		g' a b |
		es, c g |
		d' fis g |
		c, d d, |
		g g' a |
		b c d |
		es,2 es4 |
		d2 d4 |
		r c c' |
		h c d |
		es g,2 |
		as g4 |
		r f es |
		d es c |
		g' f g |
		c, c'8. b16 c4 |
		b, b'8. a16 b4 |
		a, a'8. g16 a4 |
		g, g'8. f16 g4 |
		f2. |
		r4 c' es |
		d a b |
		f es f |
		b, d b |
		es f b |
		es, f f, |
		b d e |
		fis g a |
		b,2 b4 |
		a2 a4 |
		r4 g' a |
		b c d |
		es,2 es4 |
		d2 d4 |
		r4 b' a |
		g c b |
		a d c |
		b a g |
		fis g a |
		d, g c, |
		d c d |
		g, g'8. fis16 g4 |
		a, a'8. g16 a4 |
		b,4 b'8. a16 b4 |
		c, c'8. b16 c4 |
		d,2. |
		r4 d d |
		es2 e4 |
		f2 fis4 |
		g a b |
		d,2 d4 |
		R2. |
		r4 d' c |
		b a g |
		d'2 d,4 |
		g8 a b4 a |
		g f es |
		d2. |
		c |
		d |
		d, |
		g2 r4 |
		R2. |
		r4 g' a |
		b c d |
		es,2 es4 |
		d2 g4 |
		c f, g |
		c, es c |
		g' a b |
		es, c g |
		d' fis g |
		c, d d, |
		g2.\fermata \bar "||" |
		d'2 e4 |
		f e d |
		g f e |
		a g f |
		r b a |
		g2 f4 |
		e f d |
		a'2 a,4 |
		r4 a' h |
		cis d e |
		f,2 f4 |
		e2. |
		d4 b'8. a16 b4 |
		c, a'2 |
		b,4 g' b, |
		a f' a, |
		g e' g, |
		f d' e |
		f g a |
		b,2.\fermata |
		r4 b b |
		a2 g4 |
		g a2 |
		d,4 d'8 c b a |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffBass
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

