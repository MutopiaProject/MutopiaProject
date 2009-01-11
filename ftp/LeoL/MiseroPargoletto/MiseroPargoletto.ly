% Created on Wed Apr 11 21:53:17 CEST 2007
\version "2.10.20"

\header {
	title = "Misero pargoletto"
	composer = "L. Leo (1694-1744)"
	mutopiatitle = "Misero pargoletto, Aria from Demofoonte"
	mutopiacomposer = "LeoL"
	mutopiainstrument = "Voice (Soprano), String Ensemble, Basso Continuo"
	date = "1735"
	source = "Copy, 1740-1760"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/04/16-959"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Mi -- se -- ro par -- go -- let -- to il tuo de -- stin non sa -- i il tuo de -- stin non sa -- i Ah non gli di -- te ma -- i ah non gli di -- te ma -- i qual e -- ra_il ge -- ni -- tor qual e -- ra_il ge -- ni -- tor ah non gli di -- te mai ah non gli di -- te ma -- i qual e -- ra_il ge -- ni -- tor mi -- se -- ro par -- go -- let -- to il tuo de -- stin non sa -- i ah non gli di -- te ma -- i ah non gli di -- te ma -- i no no qual e -- ra_il ge -- ni -- tor qual e -- ra_il ge -- ni -- tor il tuo de -- stin non sa -- i mi -- se -- ro par -- go -- let -- to ah non gli di -- te ma -- i no no qual e -- ra_il ge -- ni -- tor qual e -- ra_il ge -- ni -- tor qual e -- ra_il ge -- ni -- tor. Co -- me_in un pun -- to_oh Di -- o tut -- to cam -- bio d'a -- spet -- to voi fo -- ste_il mio di -- let -- to voi sie -- te_il mio ter -- ror voi sie -- te_il mio ter -- ror il mio ter -- ror.
}
 

staffViolin = \new Staff  {
	\time 2/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key es \major
	\clef treble
	\relative c'' {
		\partial 2 c2~ |
		c8 g' f e \appoggiatura g f e f c des4 c f2 |
		e4 des b8 b' as g as16 g f4. f2 |
		e4 des b8 b' as g as8 g f e f e f g |
		as g f e f e f g |
		as g f e f e f h, |
		\appoggiatura h c2 r4 c des8 b f'2. |
		c8 as f'2. b,4 des c8 as' b g |
		f e f g g2 f4 des c8 as b g |
		f e f g g2 f c'~ |
		c4 des8 c f4 c des c f2 |
		e4 des \appoggiatura c8 b4 as8 g as g f4 f'2 |
		e4 des \appoggiatura c8 b4 as8 g as g f4 f'8 g as g |
		as2 es~ es4 des8 es f4 as, |
		as g es'8 f ges b, \appoggiatura b a2 f'~ |
		f4 es8 f ges4 b, b a r b' |
		ges8 b b2. f8 b b2. |
		es,4 ges, f8 des' es c des2 c |
		b es~ es4 des8c b4 a |
		b2 ges'~ ges4 f8 es des4 c |
		des c r2 r4 ges' f8 des es c |
		b2 c b4 f' f2~ |
		f8 b, b' as g b b, des |
		c ges' f es des as' g f |
		e g e c f h, c h c2 c~ |
		c4 des8 c f4 c des c f2 |
		e4 des \appoggiatura c8 b4 as8 g \appoggiatura b16 as8 g f4 f'2~ |
		f4 a,8 a f'4 a, b8 a b4 f'2~ |
		f4 h,8 h as'4 h, c8 h c4 c8 e g h |
		as g f e f e f g as g f e f e f g |
		as4 c, f, c' des8 b f'2. |
		c8 as f'2. |
		b,4 des c8 as' b g |
		f2 e |
		f8 as f e f e f c des4 c f2~ |
		f4 f,8 g as4 h c8 h c2. |
		as4 b8 as f'4 as, |
		as g e'8 f g c, |
		as'2 f~ |
		f4 f,8 g as4 h |
		c8 h c4 c8 e g h |
		as g f e f e f g |
		as g f e f e f g as4 c, f, c' |
		des8 b f'2. c8 as f'2. |
		b,4 des c8 as' b g f2 g |
		f8 e f e f e f e f2 \appoggiatura es8 des4 \appoggiatura c8 b4 |
		as16 g f4. c2 f'8 as f e f e f c |
		des4 c f2 e4 des b8 b' as g |
		as g f e f e f g as g f e f e f g |
		as4 des, c8 as' b as \appoggiatura g16 f8 e f g g2\prall |
		f r4 c |
		c2 r4 as' es d es h' |
		c2 g2~ g g4 fis |
		g2 h4 h c2 r4 g |
		b, des des b as f'8 e f e f g |
		as2 r4 as es c c es |
		es d h' h c2 r4 es,, |
		f4. f8 g4. g8 as2 r4\fermata f |
		g1 c,2 c' |

	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key es \major
	\clef treble
	\relative c'' {
		\partial 2 c2~ |
		c8 g' f e \appoggiatura g f e f as, b4 a f'2 |
		e4 des b8 b' as g as16 g f4. f2 |
		e4 des b8 b' as g as8 g f e f e f g |
		as g f e f e f g |
		as g f e f e f h, |
		\appoggiatura h c2 r4 c des8 b f'2. |
		c8 as f'2. b,4 des c8 as' b g |
		f e f g g2 f4 des c8 as b g |
		f e f g g2 f r4 as |
		as2 r4 as b as as2 |
		g4 e g f8 e f2 as |
		g4 e g f8 e f2 as4 f' |
		es2 r4 b c c des c |
		c b es8 f ges b, a2 f'~ |
		f4 es8 f ges4 des des c r b' |
		ges8 b b2. f8 b b2. |
		es,4 es, des b' b2 a |
		b r4 b a f des c |
		b2 es'~ es4 des8 c b4 a |
		b a r2 r4 es' des b |
		des f, a2 b4 f' f2~ |
		f8 b, b' as g b b, des |
		c ges' f es des as' g f |
		e g e c f h, c h c2 r4 g |
		as as as as b as as2 |
		g4 e g f8 e f2 as |
		a4 f r ges' f2 r4 b, |
		h d r as' g2 c,8 e g h |
		as g f e f e f g as g f e f e f g |
		as4 c, f, c' des8 b f'2. |
		c8 as f'2. |
		b,4 b as f |
		c2 g' |
		f'8 as f e f e f c des4 c r c |
		c2 r4 f, e e e e |
		f f as f |
		f e r e' |
		f2 r4 c c2 r4 f, |
		e2 c'8 e g h |
		as g f e f e f g |
		as g f e f e f g as4 c, f, c' |
		des8 b f'2. c8 as f'2. |
		b,4 b as f as c e,2 |
		f'8 e f e f e f e f2 \appoggiatura es8 des4 \appoggiatura c8 b4 |
		as16 g f4. c2 |
		f'8 as f e f e f c |
		des4 c f2 e4 des b8 b' as g |
		as g f e f e f g as g f e f e f g |
		as4 des, c8 as' b as \appoggiatura g16 f8 e f g g2\prall |
		f r4 as, |
		f2 r4 c' c h h d |
		es2 r4 es, c'1 |
		h2 d4 d g,2 r4 b |
		g b b des, c2 r4 des' |
		c2 r4 c c es, es c' |
		c h d d g,2 r4 es |
		f4. f8 g4. g8 as2 r4\fermata f |
		g1 c,2 c' |

	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key es \major
	\clef alto
	\relative c' {
		\partial 2 r4 e |
		f as as as f f r as |
		g e e e f2 r4 as |
		g e e e c2 c |
		c c |
		c r4 f |
		e g as f f des des des |
		f c c as' g b as f |
		c f f e f b as f |
		as f f e f2 r4 f |
		f f f f f f r h, |
		c c c c f2 r4 h, |
		c c c c f f r des |
		c2 r4 g' as as des, des |
		es es, r es' f2 r4 a, |
		b b es es f2 r |
		r4 ges ges ges r f f f |
		r c' b ges f2 f |
		b, r4 b f'1 |
		r2 b,4 b' a2 f |
		e4 f r2 a, b4 es, |
		f2 f r4 des' c a' |
		b2 r4 g |
		es c' f, des' |
		g, g f f e2 r4 e |
		f f f f f f r h, |
		c c c c f2 r4 f |
		es1 des |
		f e2 r4 e |
		f2 c f c |
		f r r4 des des des |
		f c c c |
		g' e f b, |
		c2 c |
		c r4 as' b as r as |
		f2 r g4 g g g |
		c,2 r4 d |
		c2 r4 c |
		c2 r4 c f2 r |
		g r4 e |
		f2 c |
		f c f r |
		r4 des des f f c c f |
		g e f b, c2 c |
		r4 des c b as as' f2~ |
		f e f r4 as |
		b as r as g e e e |
		f2 c f c |
		r4 b' as f c c e2 |
		f r4 f, |
		as'2 r4 f g g, g' f |
		es2 r4 c as'1 |
		g2 g4 f es1 |
		e f2 r4 b |
		f1 fis |
		g2 g4 f es2 r4 es |
		f4. f8 g4. g8 as2 r4\fermata f |
		g2 g, c r4 c |

	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Timante"
	\set Staff.midiInstrument="oboe"
	\key es \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 2 r2 |
			R1*15 |
			r2 c~ |
			c4 des8 c f4 c des c f2 |
			e4 des \appoggiatura c8 b4 as8[ g] as[ g] f4 f'2 |
			e4 des \appoggiatura c8 b4 as8[ g] as[ g] f4 r2 |
			r2 es'~ es4 des8 es f4 as, |
			as g r2 r f'~ |
			f4 es8 f ges4 b, b a r b |
			ges8[ b] b2. f8[ b] b2. |
			es,4 ges f8[ des'] es[ c] b2 c |
			b es~ es4 des8 c b4 a |
			b2 ges'~ ges4 f8 es des4 c |
			des c r2 r4 ges' f8[ des] es[ c] |
			b2 c b r |
			R1*3 |
			r2 c~ |
			c4 des8 c f4 c des c f2 |
			e4 des \appoggiatura c8 b4 as8[ g] \appoggiatura b16 as8[ g] f4 f'2~ |
			f4 a,8 a f'4 a, b8[ a] b4 f'2~ |
			f4 h,8 h as'4 h, c8[ h] c2. |
			c2 r c r |
			r r4 c des8[ b] f'2. |
			c8[ as] f'2. |
			b,4 des c8[ as] b[ g] |
			f4.\melisma g8\melismaEnd g2 |
			f r r4 c' f2~ |
			f4 f,8[ g] as4 h c8[ h] c2. |
			as4 b8 as f'4 as, |
			as g2. |
			r2 f'~ f4 f,8 g as4 h |
			c8[ h] c2. |
			c2 r |
			c r r r4 c |
			des8[ b] f'2. c8[ as] f'2. |
			b,4 des c8[ as] b[ g] f4.\melisma g8\melismaEnd g2 |
			f r f' \appoggiatura es8 des4 b |
			as16[\melisma g] f4.\melismaEnd \appoggiatura as8 g2 f r |
			R1*6 |
			r2 c'~ |
			c4 f,8 f f'4 c c h2 r4 |
			r2 es~ es4 d8 c es4 fis |
			g g, r2 r4 g' b,2~ |
			b4 des des b as8[ g] f4 r2 |
			r4 as' c,2~ c4 es es c |
			\appoggiatura c8 h2 r r4 g' es c |
			f,2 g as r4\fermata c |
			g2. g4 c,2 r |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Cello"
	\set Staff.midiInstrument="harpsichord"
	\key es \major
	\clef bass
	\relative c {
		\partial 2 r4 c |
		f f f f f f, r h |
		c c c c f2 r4 h, |
		c c c c f g as g |
		f g as g |
		f g as des, |
		c e f as, b b' b b, |
		as as' as f g e f b, |
		c c c c des e f b, |
		c2 c f, r4 f' |
		f f f f f f r h, |
		c c c c f2 r4 h, |
		c c c c f f r des |
		c2 r4 g' as as des, des |
		es es, r es' f2 r4 a, |
		b b es es f f, r des' |
		es es, es es' des des des b |
		c a b es, f2 f |
		ges r4 ges' f1 |
		ges4 ges es es f1 |
		e4 f r2 a, b4 es, |
		f2 f b4 b' a f |
		b2 es, |
		as4 a b h |
		c c, des des c2 r4 c |
		f f f f f f r h, |
		c c c c f2 r4 f |
		e1 des |
		f e2 r4 c |
		f g as g f g as g |
		f2 r4 f b b, b b' |
		as as, as as' |
		g e f b, |
		c2 c |
		f r4 f f f, r f |
		des'1 c4 c c c |
		c2 r4 h |
		c2 r4 c |
		f2 r4 es des1 |
		c2 r4 c |
		f g as g |
		f g as g f2 r4 f |
		b b, b b' as as, as as' |
		g e f b, c2 c |
		r4 des c b as2 as |
		c c f r4 f |
		f f, r h c c c c |
		f g as g f g as g |
		f e f b, c2 c |
		f r4 f |
		as2 r4 f g g, g' f |
		es2 r4 c as'1 |
		g2 g4 f es1 |
		e f2 r4 b |
		f1 fis |
		g2 g4 f es2 r4 es |
		f4. f8 g4. g8 as2 r4\fermata f |
		g2 g, c r4 c |

	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

