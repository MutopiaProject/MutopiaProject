% Created on Tue Jan 22 20:24:39 CET 2008
\version "2.10.33"

\header {
	title = "La gloria sola"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "La gloria sola , Aria from Admeto"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Nicola Haym (1678-1729)"
	mutopiaopus = "HWV 22"
	mutopiainstrument = "Voice (Bass), Oboes, String Ensemble, Basso Continuo"
	date = "1727"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 73, 1877"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1313"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
La glo -- ria so -- la, che_ogn' or bra -- ma -- i, de -- stò_il va -- lor, non la bel -- tà; la glo -- ria so -- la, che_ogn' or bra -- ma -- i, de -- stò_il va -- lor, non la bel -- tà. La glo -- ria so -- la, che_ogn' or bra -- ma -- i, la glo -- ria so -- la, so -- la, la glo -- ria so -- la, che_ogn' or bra -- ma -- i, de -- stò_il va -- lor, non la bel -- tà, nò, non la bel -- tà, non la bel -- tà, de -- stò_il va -- lor, non la bel -- tà, de -- stò_il va -- lor, non la bel -- tà.
Frà mo -- stri_e_or -- ro -- ri se_il piè por -- ta -- i, ciò non fù_a -- mor, non fù pie -- tà, nò, ciò non fù_a -- mor, non fù pie -- tà; frà mo -- stri_e_or -- ro -- ri se_il piè por -- ta -- i, ciò non fù_a -- mor, nò, non fù pie -- tà, nò, ciò non fù_a -- mor, non fù pie -- tà, nò, nò, nò, nò, ciò non fù_a -- mor, non fù pie -- tà, non fù pie -- tà.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120
	\set Staff.instrumentName=\markup{\column{"Violino I, II" \line{"Oboe I, II"}}}
	\set Staff.midiInstrument="violin"
	\key c \minor
	\clef treble
	\relative c'' {
		r8 c16 d es8 c g4 c~ |
		c8 h16 c d8 f, es d c4 |
		r8 g'' as b e,4 f |
		r8 as b c fis,4 g |
		as, f' g,8 c16 d es8 g, |
		as a b h c d es e |
		f g as c, h g c es, |
		d c' g, h' c4 c, |
		r8 c16^\markup {Viol. unis. (s. Ob.)} d16 es8 c g4 c'~ |
		c8 h16 c d8 f, es8 d c d |
		es f g as b g' as b |
		e,4 f r8 as b c |
		fis,4 g r8 c, d es |
		fis,4 g d8 a' fis' d |
		g c, d a b fis g d' |
		es e f fis g a b h |
		c d es g, fis g16 fis g8 g, |
		a g' d, fis' g, g, b d |
		g, g''16^\markup {Tutti} a b8 g d4 g~ |
		g8 fis16 g a8 c, h h'16 c d8 f, |
		f8.\trill e32 f g8 b, a a'16 b c8 es,~ |
		es d16 es f8 as, g f es4 |
		r8 es16\trill^\markup {Viol. (s. Ob.)} f g8 es b es'16 f g8 es~ |
		es d16 c b8 as as4 g |
		c'4. c,8 d b16\trill a b8 d, |
		b''4. b,8 c g as f |
		as'4. g8 f h, c es |
		d g, c f, h g r g |
		as a b h c d es e |
		f b, b g' as, f' h,4 |
		c8 f, d' f, es d c4 |
		r2 r8 g'' as b |
		e,4 f a,4. es'8 |
		d8 f g as h, h' c d |
		g, c, h f' es a, d g, |
		f es d c h4 r |
		r8 f'' es d es h c4 |
		R1 |
		r8 c16^\markup {Tutti} d es8 c g4 c~ |
		c8 h16 c d8 f, es c' es g |
		c4. c,8 d b16\trill a16 b8 d, |
		b''4. b,8 c g as f |
		a4. es'8 d f g as |
		h, h' c d g, d es b |
		c f, d' g, es' f g g, |
		as a b h c d es e |
		f g as c, h g c es, |
		d c' g, h' c4\fermata c, \bar "||" |
		<<{
			r8^\markup {Violini} b' g as b es g, as |
			b es g, as b es d c |
			b4. as8 g f es f |
			g as b c des4. c8 |
			b as g f e e' f g |
			c,4 r8 b as g f4 |
			r8 des' c b a f' a, b |
			c f a, b c f a, b |
			c f c d es4 d~ |
			d8 d c b a g f es |
			d4 d' r8 b c d |
			es4 d r8 c d es |
			f4 es r8 d es f |
			g4 r r8 es as4 |
			r8 f b4 r8 es, f g |
			as g as f g f g f |
			g f g d es4 r8 g, |
			f4.\trill r16 d' es4 r \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
		}\\
		{
			r8 g, es f g b es, f |
			g b es, f g4 f |
			g8 b, c d es4. f8 |
			g as b c des4. c8 |
			b as g f c4 e |
			r8 e f g c,4 r8 g' |
			c,4 e r8 c' f, g |
			a c f, g a c f, g |
			a c a b c a b g |
			f4 es8 d c es d c |
			b4 b' r8 g a b |
			c4 b r8 a b c |
			d4 c r8 b c d |
			es4 r r8 c f4 |
			r8 d g4 r8 g, as b |
			es,4 r8 b' b4 r |
			r8 as g f es4 r8 es |
			\appoggiatura es d4. r16 as' g4 r |
		}>>
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName=\markup{\column{"Violino III," \line{"e Viola"}}}
	\set Staff.midiInstrument="viola"
	\key c \minor
	\clef alto
	\relative c' { 	
		es4 g r8 es16 f g8 es |
		d4 h' g, c |
		d r g c, |
		es r d r |
		es b' r8 es, g4 |
		r8 c, f d g4 r8 b, |
		c4 r8 f f4 es8 c |
		g4 r8 f' es4 r |
		R1*10 |
		r2 r8 b'16 c d8 b |
		a4 d, r8 g16 a h8 d |
		g,4 c,8 e c f16 g a8 c |
		f,4 b b, r |
		R1*15 |
		r2 r8 es16 f g8 d |
		es4 es r8 es16 f g8 es |
		d4 h' g, g'8 es |
		c4 r8 g' a d, d g |
		g4 r8 f g c, c c' |
		f,4. a8 b4 f |
		g h, c g'~ |
		g8 f f es16 d g8 h, g' c, |
		c4 f8 d g4 r8 b, |
		c4 r8 f f4 es8 c |
		g4 d' es\fermata r \bar "||" |
		r8 es b as g g' b, as |
		g g' g f es4 as |
		g8 d es f b, as g f |
		g as b c des4. c8 |
		b8 as g f g4 g' |
		r8 as g f g4 r8 des |
		c4 g r8 a' c, b |
		a a' c, b a a' c, b |
		a a' f b a c f,4 |
		r8 b a b f4 a, |
		r8 d es f g4 f |
		r8 es f g a4 g |
		r8 f g a b4 r |
		r8 g as b c4 r8 c, |
		d4 r8 b es4 r8 d |
		c d es f es4 r8 b' |
		b4. as8 g4 r8 b, |
		b4. r16 b b4 r |
	\bar "|."
	}

}
staffBass = \new Staff  {
	\set Staff.instrumentName="Ercole"
	\set Staff.midiInstrument="oboe"
	\key c \minor
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R1*8 |
			r8 c es c g4 c |
			r8 h16[c] d8 f, es[ d] c d |
			es[ f]g[ as] b4 r |
			r8 g as f c'4 r |
			r8 a b g es'4 d8 c |
			d[ a] b[ g] fis[\melisma d] d'4~ |
			d8[ c d a]\melismaEnd b4 r8 d |
			g,4 c b8[\melisma a g f] |
			es[ d c es] d[ a'16 b]\melismaEnd g4 |
			d' d, g2 |
			R1*4 |
			r8 es' d es b4 es |
			r8 d16[ c] b8 as as4 g |
			r8 c d es fis,4 g |
			r2 e4 f |
			r8 c' f es d4 es8 c |
			b4 as g\melisma es'~ |
			es d c4. b8 |
			as[ g f e]\melismaEnd f4 r8 h |
			c4 d g,8[ h c] f, |
			g4. g8 c,4 b' |
			r8 b as g f es' d c |
			b4\melisma as g\melismaEnd r8 f' |
			es4 d c b |
			as4. as8 g2 |
			r8 d' c h c[ g as] f |
			g4. g8 c,2 |
			R1*10 \bar "||" |
			r2 r4 es |
			es' es, es' d8 c |
			b4. as8 g[ f] es f |
			g[ as] b[ c] des4. c8 |
			b[ as] g[ f] e4 b' |
			r8 b as g f[g] as[ b] |
			c4 c, f2 |
			r r4 f |
			f' f, es' d |
			r8 d c b a[ g] f4 |
			r8 b, c d es4 d |
			r8 c d es f4 es |
			r8 d es f g4 r |
			r8 es f g as4 r8 f |
			b4 r8 g c4 r8 b |
			c[ b] c[ d] es[ d] es[ d] |
			es[ d] es[ b] c[ g as] es |
			b'4. b8 es,2 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key c \minor
	\clef bass
	\relative c' { 	
		c4 c, r8 c'16 d es8 c |
		g4 g, r8 c es g |
		b4 b, r8 as'16 g as8 f |
		c'4 c, r8 h'16 a h8 g |
		c d16 c d8 b es4 r8 es, |
		f es d g es h c g' |
		as e f as, g4 r8 f' |
		g4 g, c8 c, es g |
		c,4 r r8 c'16 d es8 c |
		g4 g' c,4. d8 |
		es f g as b4 r |
		r8 g as f c'4 r |
		r8 a b g es'4 d8 c |
		d a b g fis d r d |
		es e f fis g a b b, |
		c b a d g,4 g'8 f |
		es d c es d a' b g |
		d'4 d, g8 g, b d |
		g4 g, r8 g'16 a b8 g |
		d4 fis g r8 h |
		c c, e c f4 r8 a |
		b b, d b es as g f |
		es4 es, g b' |
		as b, es es, |
		r8 c'' d es fis,4 g |
		r8 b c des e,4 f |
		r8 c' f es d4 es8 c |
		b4 as g es'~ |
		es d c4. b8 |
		as g f e f4 r8 g, 
		as a b h c d es f |
		g4 g, c b' |
		r8 b as g f es' d c |
		b4 as g r8 f' |
		es4 d c b |
		as4. as8 g2 |
		r8 d' c h c g as f |
		g4 g, c,8 c' es g |
		c4 c, r8 c'16 d es8 c |
		g4 g, c c, |
		r8 c'' d es fis,4 g |
		r8 b c des e,4 f |
		r8 es' d c b4 as |
		g f es r8 g, |
		as a b h c d es e |
		f es d g es h c g' |
		as e f as, g4 r8 f' |
		g4 g, c\fermata r \bar "||" |
		es4 es, es' es, |
		es' es, es' es, |
		es' es, es'4. f8 |
		g as b c des4. c8 |
		b as g f e4 b' |
		r8 b as g f g as b |
		c4 c, f f, |
		f' f, f' f, |
		f' f, f' f, |
		f' f, f' f, |
		r8 b c d es4 d |
		r8 c d es f4 es |
		r8 d es f g4 r |
		r8 es f g as4 r8 f |
		b4 r8 g c4 r8 b |
		c b c d es d es d |
		es d es b c g as es |
		b'4 b, es2 |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
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

