% Created on Thu Apr 05 07:55:01 CEST 2007
\version "2.10.20"

\header {
	title = "Se del fiume"
	composer = "J. A. Hasse (1699-1783)"
	mutopiatitle = "Se del fiume , Aria from Artaserse"
	mutopiacomposer = "HasseJA"
	mutopiainstrument = "Voice (Soprano), String Ensemble, Basso Continuo"
	date = "1730"
	source = "Copy, 1760-1790"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/04/16-960"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Se del fiu -- me al -- te -- ra l'on -- da al -- te -- ra l'on -- da sen -- za_u -- scir dal let -- to_u -- sa -- to cor -- re à que -- sta à quel -- la spon -- da l'af -- fan -- na -- to a -- gri -- col -- tor l'af -- fan -- na -- to_a gri -- col -- tor. Se del fiu -- me al -- ter -- ra l'on -- da al -- te -- ra l'on -- da ten -- ta_u -- scir dal let -- to_u -- sa -- to cor -- re_à que -- sta à quel -- la spon -- da l'af -- fan -- na -- to a -- gri -- col -- tor cor -- re à que -- sta à quel -- la spon -- da l'af -- fan -- na -- to a -- gri -- col -- tor l'af -- fan -- na -- to a -- gri -- col -- tor l'af -- fan -- na -- to_a -- gri -- col -- tor ma di -- sper -- de_in sui l'a -- re -- ne il su -- dor le car -- te e l'ar -- ti che se_in u -- na_ei so trat -- tie -- ne si fà stra -- da in cen -- to par -- ti il tor -- ren -- te vin -- ci -- tor vin -- ci -- tor.
}
 

staffViolin = \new Staff  {
	\time 2/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key g \major
	\clef treble
	\relative c'' {
		g4 g |
		h16 a g8 d' g, |
		fis e d c' |
		h16 a g8 d' g, |
		fis e d c' |
		h16 g a h c d e fis |
		g a h a g fis e d |
		e fis g fis e d c h |
		a h c h a g fis e |
		d c' h c fis c h c |
		a' d, c h a g fis e |
		d c' h c fis c h c |
		a' d, c h a g fis e |
		d c' h c fis c h c |
		a' fis e fis g8 h, |
		c8.\trill h32 c d8 d, |
		g4 r |
		g g h16 a g8 d' g, |
		fis e d c' |
		h16 a g8 d' g, |
		fis e d c |
		h16 g a h c d e fis |
		g g h' h h, h h' h |
		a, a a' a a, a a' a |
		g, g g' g e e g g |
		fis d' cis h a g fis e |
		fis8. e32 fis g8 e |
		fis16 d' cis h a g fis e |
		fis8. e32 fis g8 e |
		fis16 d' cis h a g fis e |
		d8 d4 f8 |
		e e4 g8 |
		fis fis4 a8 |
		g16 d e fis g fis g a |
		b2 |
		a8 h16 cis d8 g, |
		fis16 e d8 e4\trill |
		d,16 e fis g a h cis d |
		e fis g a h g fis e |
		fis d cis d h d cis d |
		h d cis h a g fis e |
		d4 r |
		d' d |
		fis16 e d8 a' d, |
		cis h a g' |
		fis16 e d8 a' d, |
		cis h a g' |
		fis16 d e fis g a h cis |
		d d d, d fis fis a a |
		g g h h h, h h' h |
		fis fis a a a, a a' a |
		g8 fis a,16 g fis e |
		d c' h c fis c h c |
		a' c, h c a c h c |
		d, c' h c fis c h c |
		a' c, h c a c h c |
		d, c' h c fis c h c |
		a' fis e fis g8 h, |
		c a d d, |
		g16 g' fis e d c h a |
		h8.\trill a32 h c8 a |
		h16 g' fis e d c h a |
		h8.\trill a32 h c8 a |
		h16 g' fis e d c h a |
		g8 g4 b8 |
		a a4 c8 |
		h h4 d8 |
		c16 g a h c d e fis |
		e d c h a g fis e |
		d8 d' h g |
		c, a d d |
		e16 fis g a h c d e |
		c, d e fis g a h c |
		d d e fis g8 g |
		<g h, d,>4 <fis a, d,> |
		g,16 a h c d e f d |
		e d c h a g fis e |
		d c' h c fis c h c |
		a' d, c h a g fis e |
		d c' h c fis c h c |
		a' d, c h a g fis e |
		d c' h c fis c h c |
		a' fis e fis g8 h, |
		c8. h32 c d8 d, |
		e4 g |
		c, d |
		<g, d' h' g'> r \bar "||" |
		e'' e |
		g16 fis e8 h' e, |
		dis cis h a' |
		g16 g fis e d c h a |
		g4 g |
		h8 a16 g d'8 g, |
		fis e d c |
		h16 g a h c d e fis |
		g g h h d d g g |
		a, a d d fis fis a a |
		g fis e d cis a h g |
		fis d' cis h a g fis e |
		d c' h c fis c h c |
		a' c, h c a c h c |
		d, c' h c fis c h c |
		a' c, h c a c h c |
		dis,2 |
		e16 e' d c h8 a |
		g16 fis e8 h' h, |
		c r e'16 d c h |
		a8 r h16 a g fis |
		e4 r |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key g \major
	\clef treble
	\relative c'' {
		g4 g |
		h16 a g8 d' g, |
		fis e d c' |
		h16 a g8 d' g, |
		fis e d c' |
		h16 g a h c d e fis |
		g a h a g fis e d |
		e fis g fis e d c h |
		a h c h a g fis e |
		d c' h c fis c h c |
		a' d, c h a g fis e |
		d c' h c fis c h c |
		a' d, c h a g fis e |
		d c' h c fis c h c |
		a' fis e fis g8 h, |
		c8.\trill h32 c d8 d, |
		g4 r |
		g g h16 a g8 d' g, |
		fis e d c' |
		h16 a g8 d' g, |
		fis e d c |
		h16 g a h c d e fis |
		g g d' d d, d d' d |
		d, d d' d d, d d' d |
		d, d d' d cis cis e e |
		a, d' cis h a g fis e |
		d8. cis32 d e8 cis |
		d16 d' cis h a g fis e |
		d8. cis32 d e8 cis |
		d16 d' cis h a g fis e |
		d8 d4 f8 |
		e e4 g8 |
		fis fis4 a8 |
		g16 d e fis g fis g a |
		b2 |
		a8 h16 cis d8 d, |
		d4 cis\trill |
		d,16 e fis g a h cis d |
		e fis g a h g fis e |
		fis d cis d h d cis d |
		h d cis h a g fis e |
		d4 r |
		d' d |
		fis16 e d8 a' d, |
		cis h a g' |
		fis16 e d8 a' d, |
		cis h a g' |
		fis16 d e fis g a h cis |
		d d a, a c c c c  |
		h h g' g g, g g' g |
		a, a fis' fis fis, fis c' c |
		h8 a a16 g fis e |
		d c' h c fis c h c |
		a' c, h c a c h c |
		d, c' h c fis c h c |
		a' c, h c a c h c |
		d, c' h c fis c h c |
		a'8 a, h g |
		a4 fis\prall |
		g16 g' fis e d c h a |
		g8.\trill fis32 g a8 fis |
		g g' d16 c h a |
		g8.\trill fis32 g a8 fis |
		g16 g' fis e d c h a |
		g8 g4 b8 |
		a a4 c8 |
		h h4 d8 |
		c16 g a h c d e fis |
		e d c h a g fis e |
		d8 d' h g |
		c, a d d |
		e16 fis g a h c d e |
		c, d e fis g a h c |
		d d e fis g8 c, |
		<g' h, d,>4 <fis a, d,> |
		<g h, d, g,> d16 e f d |
		e d c h a g fis e |
		d c' h c fis c h c |
		a' d, c h a g fis e |
		d c' h c fis c h c |
		a' d, c h a g fis e |
		d c' h c fis c h c |
		a' fis e fis g8 h, |
		c8. h32 c d8 d, |
		e4 g |
		c, d |
		<g, d' h' g'> r |
		e'' e |
		g16 fis e8 h' e, |
		dis cis h a' |
		g16 g fis e d c h a |
		g4 g |
		h8 a16 g d'8 g, |
		fis e d c |
		h16 g a h c d e fis |
		g g h h d d g g |
		a, a d d fis fis a a |
		g fis e d cis a h g |
		fis d' cis h a g fis e |
		d c' h c fis c h c |
		a' c, h c a c h c |
		d, c' h c fis c h c |
		a' c, h c a c h c |
		dis,2 |
		e16 e' d c h8 a |
		g16 fis e8 h' h, |
		c r e'16 d c h |
		a8 r h16 a g fis |
		e4 r |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key g \major
	\clef alto
	\relative c'' {
		g4 g |
		h16 a g8 d' g, |
		fis e d c' |
		h16 a g8 d' g, |
		fis e d fis |
		g e d c |
		d d d d |
		c e e e |
		e e e e |
		fis fis fis fis |
		fis16 d' c h a g fis e |
		d8 fis a g |
		fis16 e' c h a g fis e |
		d8 fis a g |
		fis a d, g |
		e c d d |
		<d h>4 r |
		g g |
		h16 a g8 d' g, |
		fis e d c' |
		h16 a g8 d' g, |
		fis e d c |
		h16 g a h c d e fis |
		g8 g g g |
		fis fis fis fis |
		e e a, a |
		d16 d' cis h a g fis e |
		d8 d a a |
		d16 d' cis h a g fis e |
		d8 d a a |
		d16 d' cis h a g fis e |
		d8 d' d d |
		cis cis cis cis |
		c c c c |
		b b b b |
		g g g g |
		g g fis h |
		a a g g |
		fis fis fis fis |
		e e e  cis |
		d e fis4 |
		g a8 a, |
		d4 r |
		d d |
		fis16 e d8 a' d |
		cis h a g |
		fis16 e d8 a' d, |
		cis h a cis |
		d e16 fis g a h cis |
		d8 fis, a fis |
		g d d d |
		d d d d |
		d d d d |
		d fis a fis |
		c' a fis a |
		d, fis a fis |
		c' a fis a |
		d, fis a fis |
		d fis g h, |
		c a d d, |
		g16 g' fis e d c h a |
		g8 g d' d |
		g,16 g' fis e d c h a |
		g8 g d' d |
		g,16 g' fis e d c h a |
		g8 g' g g |
		fis fis fis fis |
		f f f f |
		e e e e |
		c c c c |
		c h h h |
		c a d d |
		e4 r |
		c2 |
		c8 c h e |
		d4 d |
		g8 g g, g |
		c c cis cis |
		d fis a g |
		fis16 d' c h a g fis e |
		d8 fis a g |
		fis16 d' c h a g fis e |
		d2 |
		d8 c h4 |
		c d |
		e g |
		c, d |
		<g, d' h'> r |
		e' e |
		g16 fis e8 h' e, |
		dis cis h dis |
		e e fis fis |
		g4 g |
		h16 a g8 d' g, |
		fis e d c |
		h16 g a h c d e fis |
		g8 d h g |
		fis' fis fis fis |
		e e e e |
		d16 d' cis h a g fis e |
		d8 d d d |
		d d d d |
		d d d d |
		d d d d |
		dis2 |
		e8 fis g a |
		h4 h, |
		c r |
		a h |
		e d16 c h a |
		

	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Semira"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R2*17 |
			g4 g |
			h16[ a] g8 r g |
			fis[ e] d[ c'] |
			h16[ a] g8 r g |
			fis[ e] d[ c'] |
			h16[ a] g8 r4 |
			g h |
			a d |
			g,8\melisma e'4\melismaEnd g,8 |
			g4 fis8 r |
			fis8.\trill[ e32 fis] g8 e |
			fis16[ e] d8 r d |
			fis8.\trill[ e32 fis g8] e |
			fis16[ e] d8 r4 |
			d8 d4\melisma f8\melismaEnd |
			e e4 g8 |
			fis fis4\melisma a8\melismaEnd |
			\appoggiatura a4 g2 |
			b8 b[ a g] |
			cis16[ h a8 d] g, |
			fis16[e d8] e4\trill |
			d r |
			R2*4 |
			d4 d |
			fis16[e] d8 r d' |
			cis[h] a[g] |
			fis16[ g] a8 r d |
			cis[h] a[ g] |
			fis16[e] d8 r4 |
			d c' |
			h d |
			d, c' |
			h8 a r4 |
			c4 c |
			c8[ a] fis d |
			c'4 c |
			c8[ a] fis[ d] |
			c'4 c |
			c8[ a] h g |
			a4 fis |
			g r |
			\appoggiatura c8 h8.[\trill a32 h] c8 a8 |
			h16[ a] g8 r d |
			h'8.[ a32 h c8] a |
			h16[ a] g8 r4 |
			g8 g4\melisma b8\melismaEnd |
			a a4 c8 |
			h h4\melisma d8\melismaEnd |
			\appoggiatura c4 c2 |
			e4 e, |
			d8[ d'] h g |
			a4 \appoggiatura g8 fis4 |
			g r |
			e' a, |
			fis'16[ e d8 g] c, |
			h16[ a g8] a4\trill |
			g r |
			R2*11 |
			e4 e |
			g16[fis e8 h'] e, |
			dis[ cis] h[ a'] |
			g16[fis] e8 r4 |
			g g |
			h16[ a g8 d'] g, |
			fis[ e] d c' |
			h16[a] g8 r4 |
			g h |
			a d |
			\appoggiatura a8 g16[fis g8 e'] g, |
			g4 fis8 r |
			c'4 c |
			c8[ a] fis d |
			c'4 c |
			c8[\prall a] fis[d] |
			c' c[ h a] |
			e'[ d16 c h8] a |
			g16[fis e8 h'] h |
			e4 r |
			a, h |
			e, r |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key g \major
	\clef bass
	\relative c' {
		g4 g |
		h16 a g8 d' g, |
		fis e d c' |
		h16 a g8 d' g, |
		fis e d fis |
		g e d c |
		h h h h |
		c c c c |
		c c cis cis |
		d d d d |
		d16 d' c h a g fis e |
		d8 d d d |
		d16 d' c h a g fis e |
		d8 d d d |
		d c h4 |
		c d8 d, |
		g4 r |
		g' g |
		h16 a g8 d' g, |
		fis e d c' |
		h16 a g8 d' g, |
		fis e d c |
		h16 g a h c d e fis |
		g8 g g g |
		fis fis fis fis |
		e e a, a |
		d16 d' cis h a g fis e |
		d8 d a a |
		d16 d' cis h a g fis e |
		d8 d a a |
		d16 d' cis h a g fis e |
		d8 d' d d |
		cis cis cis cis |
		c c c c |
		b b b b |
		g g g g |
		g g f g |
		a a a, a |
		d d d d |
		cis cis cis cis |
		d e fis4 |
		g a8 a, |
		d4 r |
		d d |
		fis16 e d8 a' d |
		cis h a g |
		fis16 e d8 a' d, |
		cis h a cis |
		d e16 fis g a h cis |
		d8 d, d d |
		d d d d |
		d d d d |
		d d d d |
		d d d d |
		d d d d |
		d d d d |
		d d d d |
		d d d d |
		d fis g h, |
		c a d d, |
		g16 g' fis e d c h a |
		g8 g d' d |
		g,16 g' fis e d c h a |
		g8 g d' d |
		g,16 g' fis e d c h a |
		g8 g' g g |
		fis fis fis fis |
		f f f f |
		e e e e |
		c c c c |
		c h h h |
		c a d d |
		e4 r |
		c2 |
		c'8 c h e |
		d4 d, |
		g8 g h, h |
		c c cis cis |
		d d d d |
		d16 d' c h a g fis e |
		d8 d d d  |
		d16 d' c h a g fis e |
		d8 d d d |
		d c h4 |
		c d |
		e g |
		c, d |
		g, r |
		e' e |
		g16 fis e8 h' e, |
		dis cis h dis |
		e e fis fis |
		g4 g |
		h16 a g8 d' g, |
		fis e d c |
		h16 g a h c d e fis |
		g8 g g g |
		fis fis fis fis |
		e e a, a |
		d d d d |
		d d d d |
		d d d d |
		d d d d |
		d d d d |
		dis2 |
		e8 fis g a |
		h4 h, |
		c r |
		a' h |
		e, d16 c h a |

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

