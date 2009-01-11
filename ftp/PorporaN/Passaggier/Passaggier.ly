\version "2.10.7"

\header {
	title = "Passaggier che su la sponda"
	composer = "N. Porpora (1686-1768)"
	mutopiatitle = "Passaggier che su la sponda, Aria from Semiramide riconosciuta"
	mutopiacomposer = "PorporaN"
	mutopiainstrument = "Voice (Soprano), String Ensemble, Basso Continuo"
	date = "1729"
	source = "Copy of various copyists, 1710-1740"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/04/16-947"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Pas -- sag -- gier che su la spon -- da stà del nau -- fra -- go na -- vi -- glio or al le -- gno ed or all' on -- da fis -- sa_il guar -- do e gi -- ra il ci -- glio te -- me_il mar te -- me l'a -- re -- ne vuol git -- tar -- si_e si trat -- tie -- ne e ri -- sol -- ver -- si non sà ri -- sol -- ver -- si non sà ri -- sol -- ver -- si non sà Pas -- sag -- gier che su la spon -- da su la spon -- da stà del nau -- fra -- go na -- vi -- glio or al le -- gno or all' on -- da fis -- sa_il guar -- do e gi -- ra il ci -- glio te -- me il mar te -- me l'a -- re -- ne vuol git -- tar -- si si trat -- tie -- ne si trat -- tie -- ne e ri -- sol -- ver -- si non sà ri -- sol -- ver -- si non sà vuol git -- tar -- si ri -- sol -- ver -- si non sà. Pur la vi -- ta e lo spa -- ven -- to lo spa -- ven -- to per -- de al fin nel mar tur -- ba -- to quel mo -- ment -- to for -- tu -- na -- to for -- tu -- na -- to quan -- do mai per me ver -- rà per me per me per me ver -- rà quan -- do ma  -- i quan -- do ma -- i per me ver -- rà.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key es \major
	\clef treble
	\relative c'' {
		\tempo 4 = 100
		b2 es\prall |
		d16 c b8 b4 b4 es |
		d16 c b8 b4 g es |
		d16 c b8 r4 b''16 g es4 b8 |
		c8.\prall b32 c b4 b'16 g es4 b8 |
		c8.\prall b32 c b4 f'16 d c b f' d c b |
		\appoggiatura as8 g2 f'16 d c b f' d c b |
		\appoggiatura as8 g2 <g, es' b'> |
		<as es' c'> <g es' b'> |
		<as es' c'> <a f' c'> |
		<b f' d'> <a f' c'> |
		<b f' d'> <d b' f'> |
		<es b' g'> <d b' f'> |
		g'16 es b g es'32 d c b as g f es b''4 b, |
		es, r4 b'2 |
		es d16 c b8 b4 |
		b es d16 c b8 r4\fermata |
		b,2 es |
		d16 c b8 b4 b es |
		d16 c b8 r4\fermata g''8 g g g |
		as as g g g g g g |
		as as g g g g g g |
		g g g g g g g g |
		c c c c b b b b |
		es, es es es d d d d |
		b16 f' b4.~ b16 g f es b' g f es |
		b4\prall b'~ b16 g f es b' g f es |
		<b, es b'>2 <as es' c'> |
		<as es' c'> <a f' c'> |
		<a f' c'> <b f' d'> |
		b'16 f' b4.~ b16 g f es b' g f es |
		b4 b'~ b16 g f es b' g f es |
		g2\prall c,16 es g8 h c |
		f,2\prall b,16 d f8 a b |
		es, es es es d d d d |
		es es es es d16 f f f f, f' f f |
		f, f' f f a a a a b b, b b g' g, g g |
		f8 c'4.\prall b'8 a16 g f8 b, |
		b4 a <d, b' f'>2 |
		<es b' g'> <d b' f'> |
		b''16 g f es b' g f es c' a g f c' es, d c |
		b'32 a g f es d c b es d c b a g f es f'4 f, |
		b r f2 |
		b,4 b' b c16 d es8 |
		d16 c b8 b4 b es |
		d16 c b8 b4 g es |
		d16 c b8 b4 b es |
		d16 c b8 r4\fermata g'' r |
		f r g r |
		g, r f r |
		g r b'8 b b b |
		c c c c g g g g |
		g g g g b b b b |
		b16 g f es b' g f es b g f es b' g f es |
		b' f es d f' d c b es c b a es' c b a |
		<b, f' d'>2 <b f' d'> |
		<b f' d'> <b g' es'> |
		<b f' d'>1 |
		<b g' es'> |
		<b f' d'>2 <f' d' f> |
		<es b' g'> b''16 g es4.~ |
		es8 e f4~ f8 fis g4~ |
		g as~ as8 a b4~ |
		b8 g g4\prall r8 g g4\prall |
		r8 f f4\prall r8 b b4\prall |
		r8 as as4\prall r8 g g4\prall |
		r8 f f4\prall es8 b as as |
		g16 es' d c b as g f es8 f g as |
		b4 b'2 a4~ |
		a16 g f es d c b a b4 b, |
		R1*2 |
		b''16 g f es es es es es c' es, es es es es es es |
		b' es, es es es es es es c' es, es es es es es es |
		c' f, f f f f f f d' f, f f f f f f |
		c' f, f f f f f f d' f, f f f f f f |
		b, b' b, b' b, b' b, b' b, b' b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' b g es b es32 d c b as g f es |
		b'4 b, es r \bar"||" |
		r4 as'2 g4 |
		r g2 f4 |
		r fis g8 g, r8 r32 g, as h |
		c8 d es f g g, r8 r32 g as h |
		c8 d es f g g, r4 |
		r2 \cadenzaOn \cadenzaOff |
		\time 3/8
		\tempo 4=60
		es''16.\prall d32 es8 fis |
		\appoggiatura fis g4 d8 |
		d16. c32 d8 e |
		f4 c8 |
		c16. h32 c8 d |
		es d es |
		\appoggiatura f es8 d es |
		\appoggiatura f es8 d es |
		\appoggiatura f es8 d c |
		\appoggiatura c8 h4 d8 |
		\appoggiatura d8 c4 es8 |
		\appoggiatura es8 d4 g8 |
		es d fis, |
		\appoggiatura fis g4. |
		es'8 d c |
		g' g, r |
		es' d c |
		g' g, c, |
		as4. |
		g4 r8 |

	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key es \major
	\clef treble
	\relative c'' {
		b2 es\prall |
		d16 c b8 b4 b4 es |
		d16 c b8 b4 g es |
		d16 c b8 r4 b''16 g es4 b8 |
		c8.\prall b32 c b4 b'16 g es4 b8 |
		c8.\prall b32 c b4 f'16 d c b f' d c b |
		\appoggiatura as8 g2 f'16 d c b f' d c b |
		\appoggiatura as8 g2 b16 es, es es es es es es |
		c' es, es es es es es es b' es, es es es es es es |
		c' es, es es es es es es c' f, f f f f f f |
		d' f, f f f f f f c' f, f f f f f f |
		d' f, f f f f f f b b' b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' b, b' b, b' b, b' b, b' |
		b g es b es32 d c b as g f es b''4 b, |
		es, r b'2 |
		es d16 c b8 b4 |
		b es d16 c b8 r4\fermata |
		b,2 es |
		d16 c b8 b4 b es |
		d16 c b8 r4\fermata b'8 b b b |
		c c b b b b b b |
		c c b b b' b b b |
		b b b b es, es es es |
		es es es es es es es es |
		c c c c f, f f f |
		b16 f' b4.~ b16 g f es b' g f es |
		b4\prall b'~ b16 g f es b' g f es |
		<b, es b'>2 <as es' c'> |
		<as es' c'> <a f' c'> |
		<a f' c'> <b f' d'> |
		b'16 f' b4.~ b16 g f es b' g f es |
		b4 b'~ b16 g f es b' g f es |
		g2\prall c,16 es g8 h c |
		f,2\prall b,16 d f8 a b |
		a, a a a b f' f f |
		a, a a a b16 b b b c c c c |
		d d d d es es es es f f f f b, b b b |
		b b b b a a a a d8 es f b, |
		b4 a b16 b' b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' b, b' b, b' b, b' b, b' |
		<es,, b' g'>2 <f c' a'> |
		b'32 a g f es d c b es d c b a g f es f'4 f, |
		b r f2 |
		b,4 b' b c16 d es8 |
		d16 c b8 b4 b es |
		d16 c b8 b4 g es |
		d16 c b8 b4 b es |
		d16 c b8 r4\fermata es'4 r |
		d r es r |
		es, r d r |
		es r es'8 es es es |
		es es es es es es es es |
		es es es es f f f f |
		b16 g f es b' g f es b g f es b' g f es |
		b' f es d f' d c b es c b a es' c b a |
		<b, f' d'>2 <b f' d'> |
		<b f' d'> <b g' es'> |
		<b f' d'>1 |
		<b g' es'> |
		<b f' d'>2 <f' d' f> |
		<es b' g'> b''16 g es4.~ |
		es8 e f4~ f8 fis g4~ |
		g as~ as8 a b4~ |
		b8 g g4\prall r8 g g4\prall |
		r8 f f4\prall r8 b b4\prall |
		r8 as as4\prall r8 g g4\prall |
		r8 f f4\prall es8 b as as |
		g16 es' d c b as g f es8 f g as |
		b4 b'2 a4~ |
		a16 g f es d c b a b4 b, |
		R1*2 |
		<g es' b'>2 <as es' c'> |
		<g es' b'> <as es' c'> |
		<a f' c'> <b f' d'> |
		<a f' c'> <b f' d'> |
		<d b' f'> <es b' g'> |
		<d b' f'> g'16 es b g es'32 d c b as g f es |
		b'4 b, es r \bar"||" |
		r2 r4 d''~ |
		d d, r c'~ |
		c c, d8 g, r8 r32 g, as h |
		c8 d es f g g, r8 r32 g as h |
		c8 d es f g g, r4 |
		r2 |
		\time 3/8
		es''16.\prall d32 es8 fis |
		\appoggiatura fis g4 d8 |
		d16. c32 d8 e |
		f4 c8 |
		c16. h32 c8 d |
		es d es |
		\appoggiatura f es8 d es |
		\appoggiatura f es8 d es |
		\appoggiatura f es8 d c |
		\appoggiatura c8 h4 d8 |
		\appoggiatura d8 c4 es8 |
		\appoggiatura es8 d4 g8 |
		es d fis, |
		\appoggiatura fis g4. |
		es'8 d c |
		g' g, r |
		es' d c |
		g' g, c, |
		as4. |
		g4 r8 |

	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key es \major
	\clef alto
	\relative c'' {
		b2 es\prall |
		d16 c b8 b4 b4 es |
		d16 c b8 b4 g es |
		d16 c b8 r4 g'8 g g g |
		as as g g g g g g |
		as as g g f f f f |
		b, b b b b f' f f |
		b, b b b g g g g |
		as as as as g g g g |
		as as as as a a a a |
		b b b b a a a a |
		b b b b d d d d |
		es es es es d d d d |
		es8 es, es''32 d c b as g f es b'4 b, |
		es, r b'2 |
		es d16 c b8 b4 |
		b es d16 c b8 r4 |
		b2 es |
		d16 c b8 b4 b es |
		d16 c b8 r4\fermata es8 es es es |
		es es es es es es es es |
		es es es es es es es es |
		d d d d c c b b |
		as as as as g g g g |
		as as as a b b b b |
		f' f f f g g g g |
		f f f f g g g g |
		es es es es es es es es |
		es es es es c c c c |
		a a a a b f' f f |
		f f f f es es es es |
		f f f f es es es es |
		es es es es g g g g |
		d d d d f f f f |
		c c c c b b b b |
		c c c c d d a a |
		b b c c d d es es |
		f f f f f es d g |
		f4 es d8 d d d |
		es es es es d d d d |
		es es es es f f f f |
		b,4 es32 d c b a g f es f'4 f, |
		b  r f'2 |
		b,4 r r g' |
		f r r g |
		f b g es |
		d16 c b8 b4 b es |
		d16 c b8 r4\fermata b r |
		b r b r |
		b r b r |
		b r g8 g g g |
		as as as as b b b b |
		c c c c d d d d |
		es es es es g g g g |
		f f f f es es es es |
		f f f f f f f f |
		f f f f es es es es |
		b b b b b b b b |
		b b b b b b b b |
		b b b b b b b b |
		b b b b es g g b, |
		c c'16 b as g f es d8 d'16 c b as g f |
		es8 es'16 d c b as g f8 f'16 es d c b as |
		g4 r8 c, c4 r8 c' |
		b4 r8 b b4 r8 f |
		es4 r8 es d4 r8 d |
		c4 r8 c b8 es f f |
		b,16 es d c b as g f es8 f g as |
		b4 b c8 c c c |
		c c c c b4 r\fermata |
		R1*2 |
		g8 g g g as as as as |
		g g g g as as as as |
		a a a a b b b b |
		a a a a b b b b |
		d d d d es es es es |
		d d d d es es, es''32 d c b as g f es |
		b'4 b, <<{es8. f16 es8 d }\\{es,4 r}>> |
		es'16 es es es es es es es es es es es es es es es |
		es es es es es es es es d d d d d d d d |
		d d d d d d d d g,4 r8 r32 g a h |
		c8 d es f g g, r8 r32 g a h |
		c8 d es f g g, r4 |
		r2 |
		\time 3/8
		g'8 g a |
		d, d g |
		g g g |
		c, c f |
		f f fis |
		g h, c |
		r h c |
		r h c |
		r h fis' |
		g, d' as' |
		r g g, |
		r g' h, |
		c g c |
		h16 a g8 r |
		g' g, fis' |
		g r r |
		g g, fis' |
		g4 c,8 |
		as4. |
		g4 r8 |

	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Scitale"
	\set Staff.midiInstrument="oboe"
	\key es \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp		
			\autoBeamOff
			R1*14 |
			r2 b |
			es d16[ c b8] b4\prall |
			b es d16[ c] b8 r4\fermata |
			b,2 es |
			d16[ c b8] b4 b es |
			d16[ c] b8 r4\fermata b'8 b4\melisma es8\melismaEnd |
			c4\prall b b8 b4 es8 |
			c4\prall b es2 |
			es es~ |
			es8.[ d16] es8. d16 es2~ |
			es8[ c] as g f8.\prall[ es16] f4 |
			f' as, g r |
			f'8  b,4 as8 g16[ f] g8 r4 |
			b b, c c' |
			c c c16[\melisma d] es4.~ |
			es16[ d c b a g f es] d8.\prall[ c16]\melismaEnd b4 |
			f'' as, \appoggiatura as8 g4. g'8 |
			f16[ es d8] c16[ b as8] \appoggiatura as g2\melisma |
			g'16[ es d c] h[ c h c] g'[ f] es4. |
			f16[ d c b] a[ b a b] f'[ es] d4. |
			es16[ c b a] es'[ c b a] d[ b c b] c[ b c b] |
			es16[ c b a] es'[ c b a] b4\prall c\prall |
			d\prall es\prall f8.\prall\melismaEnd es32[ f] g8 b, |
			f8 c'4.\prall b'8 a16[ g] f[ es] d[ c] |
			b8 c4.\prall b4 r |
			R1*3 |
			r4 f'2 a,4 |
			b b b c16[ d es8] |
			d16[ c b8] b4 b es |
			d16[ c b8] b4 g es |
			d16[ c b8] b4 b es |
			d16[ c] b8 r4 es'2 |
			f g16[ f] es8 r4 |
			es,2 f\prall |
			g16[ f] es8 r4 es' es |
			es2~\melisma es8.[ d16] es8.[ d16] |
			es8.[ d16]\melismaEnd es8 g f b,4 as8 |
			g16[ f] es8 r4 es g8. a16 |
			b2 es4 es,8. es'16 |
			d16[ c] b8 r4 as\melisma as'~ |
			as16[ g f es d c]\melismaEnd b[ as] g4 es' |
			b,2 f'' |
			g16[\melisma f] es4.\melismaEnd es,2 |
			b d'\prall |
			es4 es, r8 b'[ c] des |
			c2 d\prall |
			es\prall f\prall |
			g16[\melisma es d c] h8[ c] g'16[ es d c] g'[ es d c] |
			f[ d c b] a8[ b] f'16[ d c b] f'[ d c b] |
			es[ c b as] es'[ c b as] d[ b as g] d'[ b as g] |
			c[ as g f] c'[ as g f] b[ es, f g as b c d] |
			es[ es, f g] as[ b c d]\melismaEnd es[ g f es] d[ c] b[ as] |
			g4 f\prall es es'~ |
			es a, b2\fermata |
			b, r8 es' es4~ |
			es es,8.[ f16] f4.\prall es8 |
			es4 r r2 |
			R1*6 \bar"||"
			c'4 es d g,8. fis16 |
			g4 d' c f,8.[ e16] |
			f4 c' h8.[\prall as16] g4 |
			c,8[ d] es f g4.\prall g8 |
			c,8[ d] es[ f] g4.\prall\melisma f8\melismaEnd |
			g4 r\fermata
			\time 3/8
			es'16.\prall[ d32 es8] fis |
			\appoggiatura fis g4 d8 |
			d16.[ c32 d8] e |
			f4 c8 |
			c16.[ h32 c8] d |
			es[ d] es |
			\appoggiatura f es8[ d] es |
			\appoggiatura f es8[ d] es |
			\appoggiatura f es8[ d] c |
			\appoggiatura c8 h4 d8 |
			\appoggiatura d8 c4 es8 |
			\appoggiatura es8 d4 g8 |
			es[ d] fis, |
			\appoggiatura fis g4. |
			es'8[ d] c |
			g' g, r |
			es'[ d] c |
			g' g, es' |
			c4\fermata h16[ c] |
			d4 r8 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key es \major
	\clef bass
	\relative c' { 	
		b2 es\prall |
		d16 c b8 b4 b4 es |
		d16 c b8 b4 g es |
		d16 c b8 r4 es8 es es es |
		es es es es es es es es |
		es es es es d d d d |
		es es es es d d d d |
		es es es es g, g g g |
		as as as as g g g g |
		as as as as a a a a |
		b b b b a a a a |
		b b b b d d d d |
		es es es es d d d d |
		es8 es, es''32 d c b as g f es b'4 b, |
		es, r r2 |
		R1*2 |
		b'2 es |
		d16 c b8 b4 b es |
		d16 c b8 r4\fermata es8 es es es |
		es es es es es es es es |
		es es es es es es es es |
		d d d d c c b b |
		as as as as g g g g |
		as as as a b b b b |
		d d d d es es es es |
		d d d d es es es es |
		g, g g g as as as as |
		as as as as a a a a |
		f f f f b b b b |
		d d d d es es es es |
		d d d d es es es es |
		es es es es es es es es |
		d d d d d d d d |
		c c c c b b b b |
		c c c c d d a a |
		b b c c d d es es |
		f f f, f b c d es |
		f4 f, b8 d d d |
		es es es es d d d d |
		es es es es f f f f |
		b,4 es32 d c b a g f es f'4 f, |
		b r f'2 |
		b,4 r r es |
		b r r es |
		b b' g es |
		d16 c b8 b4 b es |
		d16 c b8 r4 es r |
		b r es, r |
		es' r b r |
		es, r g8 g g g |
		as as as as b b b b |
		c c c c d d d d |
		es es es es es es es es |
		d d d d c c c c |
		b b b b b b b b |
		b b b b b b b b |
		b b b b b b b b |
		b b b b b b b b |
		b b b b b b b b |
		es, es es es g g g g |
		as as as as b b b b |
		c c c c d d d d |
		es es es es es es es es |
		d d d d d d d d |
		c c c c b b b b |
		as as as as g g f f |
		es16 es' d c b as g f es8 f g as |
		b4 b c8 c c c |
		f, f f f b4 r\fermata |
		r r8 as g4. a8 |
		b1 |
		es,8 es g g as as as as |
		g g g g as as as as |
		a a a a b b b b |
		a a a a b b b b |
		d d d d es es es es |
		d d d d es es, es''32 d c b as g f es |
		b'4 b, <<{es8. f16 es8 d }\\{es,4 r}>> |
		c'16 c c c c c c c h h h h h h h h |
		b b b b b b b b a a a a a a a a |
		as8 as as as g4 r8 r32 g a h |
		c8 d es f g g, r8 r32 g a h |
		c8 d es f g g, r4 |
		r2 |
		\time 3/8
		c'8 c c |
		h h h |
		b b b |
		a a a |
		as as as |
		g g fis |
		r g fis |
		r g fis |
		r g as |
		r g f |
		r es c |
		r h g |
		c b as |
		r g'16 f es d |
		c8 b as |
		r g'16 f es d |
		c8 b as |
		g4 c8 |
		as4. |
		g4 r8 |

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

