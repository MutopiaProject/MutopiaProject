\version "2.10.33"

\header {
	title = "Siam navi all'onde algenti"
	composer = "A. Vivaldi (1678-1741)"
	mutopiatitle = "Siam navi all'onde algenti, Aria from L'Olimpiade"
	mutopiacomposer = "VivaldiA"
	mutopiainstrument = "Voice (Soprano), String Ensemble, Basso Continuo"
	mutopiapoet = "P. Metastasio (1698-1782)"
	mutopiaopus = "RV 725" 
	date = "1734"
	source = "Autograph, 1734"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/12/02-1178"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Siam na -- vi_all' on -- de_al -- gen -- ti la -- scia -- te_in ab -- ban -- do -- no im -- pe -- tu -- o -- si ven -- ti i no -- stri_af -- fet -- ti so -- no o -- gni di -- let -- to_è sco -- glio o -- gni di -- let -- to_è sco -- glio tut -- ta la vi -- ta_è_un mar tut -- ta la vi -- ta_è_un mar siam na -- vi_all' on -- de_al -- gen -- ti la -- scia -- te_in ab -- ban -- do -- no im -- pe -- tu -- o -- si ven -- ti i no -- stri_af -- fet -- ti so -- no o -- gni di -- let -- to_è sco -- glio o -- gni di -- let -- to_è sco -- glio tut -- ta la vi -- ta_è_un mar tut -- ta la vi -- ta_è_un mar tut -- ta la vi -- ta_è_un mar.
Ben qual noc -- chie -- ro_in noi ve -- glia ra -- gion Mà po -- i pur dall' on -- do -- so_or -- go -- glio pur dall' on -- do -- so_or -- go -- glio si la -- scia tras -- por -- tar pur dall' on -- do -- so_or -- go -- glio dall 'on -- do -- so_or -- go -- glio si la -- scia tras -- por -- tar.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		c8 c, r4 r r16 c' d c |
		g'8 g, r4 r r16 g' a g |
		c8 c, r4 r r16 c' d c |
		h4 r c,16 c32 d e16 e32 f g16 a32 h c16 e, |
		d h32 c d16 d32 e f16 g32 a h16 d, c a32 h c16 c32 d e16 fis32 g a16 c, |
		h32 g fis g g, g' fis g g,8 r g32 g' fis g g, g' fis g g,8 r |
		c'1 |
		g'2 b, |
		a32 c b c f, c' b c f, c' b c f,16 r d'2~ |
		d a' |
		\cadenzaOn
		c, \bar "|"
		\cadenzaOff
		h32 d c d g, d' c d g, d' c d g,16 r \appoggiatura a'8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g |
		\appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis |
		g g fis g h g fis g g, g' fis g h g fis g g, g' fis g h g fis g c,8 d |
		g,4 r r2 |
		r2 r16 c' d c g'8 g, |
		r4 r16 g a g c'8 c, r4 |
		r4 r16 c' d c h4 r |
		c,16 c32 d e16 e32 f g16 a32 h c16 e, d h32 c d16 d32 e f16 g32 a h16 d, |
		c16 a32 h c16 c32 d e16 fis32 g a16 c, h32 g fis g g, g' fis g g,8 r |
		c'1 |
		g'2 b, |
		a32 c b c f, c' b c f, c' b c f,16 r d'2~ |
		d a' |
		c, h32 d c d g, d' c d g, d' c d g,16 r |
		\appoggiatura a'8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c |
		\appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \times 2/3 {g16 d' c} \times 2/3 {h d c} \times 2/3 {h d c} \times 2/3 {h a g} |
		\times 2/3 {a c h} \times 2/3 {a c h} \times 2/3 {a c h} \times 2/3 {a g fis} \times 2/3 {h d c} \times 2/3 {h d c} \times 2/3 {h d e} \times 2/3 {f e d} |
		\times 2/3 {e g f} \times 2/3 {e g f} \times 2/3 {e cis d} \times 2/3 {e fis g} \times 2/3 {fis a g} \times 2/3 {fis a g} \times 2/3 {fis d e} \times 2/3 {fis g a} |
		\times 2/3 {g fis e} \times 2/3 {d c h} \times 2/3 {e d c} \times 2/3 {h a g}  \times 2/3 {d fis a} \times 2/3 {d, fis a} \times 2/3 {d, fis a} \times 2/3 {d, fis a} |
		h8 a16 g d'8 d, g32 g fis g h g fis g g, g' fis g h g fis g |
		g, g' fis g h g fis g c,8 d g,4 r |
		r2 r4 r16 g'' a g |
		d'8 d, r4 r r16 d e d |
		g8 g, r4 r r16 g' a g |
		d'4 r gis,,16 gis32 a h16 h32 c d16 gis32 a h16 d, |
		c16 a32 h c16 c32 d e16 fis32 g a16 a, fis16 fis32 g a16 a32 h c16 fis32 g a16 c, |
		h32 g fis g g, g' fis g g, g' fis g g,16 r c'2 |
		g' b, |
		a32 c b c f, c' b c f, c' b c f,16 r d'2 |
		a' c, |
		h32 d c d g, d' c d g, d' c d g,16 r \appoggiatura a'8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g |
		\appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f |
		\times 2/3 {e16 c' h} \times 2/3 {c e d} c8 b  \times 2/3 {a16 c h} \times 2/3 {a f' e} d8 c |
		\times 2/3 {h16 d c} \times 2/3 {h g' f} e8 d  \times 2/3 {c16 a' g} \times 2/3 {f g a} a8 a |
		\times 2/3 {d,16 g f} \times 2/3 {e f g} g8 g \times 2/3 {c,16 f e} \times 2/3 {d e f} f8 f |
		\times 2/3 {g,16 h c} \times 2/3 {g c d} \times 2/3 {g, d' e} \times 2/3 {g, e' f} g,,32 g' f g g, g' f g g, g' f g g,16 r |
		\appoggiatura g''8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \times 2/3 {h,16 g a} \times 2/3 {h c d} \times 2/3 {c a h} \times 2/3 {c d e} |
		\times 2/3 {d h c} \times 2/3 {d e f} \times 2/3 {e c d} \times 2/3 {e f g} \times 2/3 {f d e} \times 2/3 {f g a} \times 2/3 {g e f} \times 2/3 {g a h} |
		\times 2/3 {c h a} \times 2/3 {g f e} \times 2/3 {a g f} \times 2/3 {e d c} g'2 |
		e8 d16 c f,8 g c,16 c'32 d e16 e32 f g16 a32 h c16 e, |
		d h32 c d16 d32 e f16 g32 a h16 d, c a32 h c16 c32 d e16 fis32 g a16 c, |
		h g' \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c |
		\appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f e32 c' h c e, c' h c f, c' h c g c h c |
		a c h c e, c' h c f, c' h c g h a h c4\fermata r |
		R1*2 |
		c16 a e' c a'8 a d,16 a d f a8 a |
		h,16 g d' h g'8 g c,16 g c e g8 g |
		a,16 f c' a f'8 f gis,16 e h' gis h8 h |
		a16 e c' a e' c a' e \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g |
		a8 g16 f e d c h e,8 d' c16 h a gis |
		a e a c a e a c h e, h' d h e, h' d |
		c a c e c a c e d a d f d a d f |
		gis,4 r8 e a a c c |
		e e a a a g16 f e d c h |
		a8 a, r e'' c h16 a h8.\trill a16 |
		a1\fermata |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		c8 c, r4 r r16 c' d c |
		g'8 g, r4 r r16 g' a g |
		c8 c, r4 r r16 c' d c |
		h4 r g16 f32 e d c h a g8 r|
		g'16 f32 e d c h a g8 r a'16 g32 fis e d c h a8 r |
		g32 g fis g g, g' fis g g,8 r g32 g' fis g g, g' fis g g,8 r |
		g'1 |
		e'2 g, |
		f32 c' b c f, c' b c f, c' b c f,16 r a2~ |
		a fis' |
		a, |
		g \appoggiatura a'8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g |
		\appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis |
		g g fis g h g fis g g, g' fis g h g fis g g, g' fis g h g fis g c,8 d |
		g,4 r r2 |
		r2 r16 c' d c g'8 g, |
		r4 r16 g a g c'8 c, r4 |
		r4 r16 c' d c h4 r |
		g16 f32 e d c h a g8 r g'16 f32 e d c h a g8 r |
		a'16 g32 fis e d c h a8 r g32 g fis g g, g' fis g g,8 r |
		g'1 |
		e'2 g, |
		f32 c' b c f, c' b c f, c' b c f,16 r a2~ |
		a fis' |
		a, g32 d' c d g, d' c d g, d' c d g,16 r |
		\appoggiatura a'8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c |
		\appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \appoggiatura g8 fis16 e32 fis \times 2/3 {g16 h a} \times 2/3 {g h a} g8 r |
		\times 2/3 {fis16 a g} \times 2/3 {fis a g} fis8 r \times 2/3 {g16 h a} \times 2/3 {g h a} g8 r |
		\times 2/3 {c16 e d} \times 2/3 {c e d} cis8 r \times 2/3 {d16 fis e} \times 2/3 {d fis e} d8 r |
		\times 2/3 {g16 fis e} \times 2/3 {d c h} \times 2/3 {e d c} \times 2/3 {h a g}  \times 2/3 {d fis a} \times 2/3 {d, fis a} \times 2/3 {d, fis a} \times 2/3 {d, fis a} |
		h8 a16 g d'8 d, g32 g fis g h g fis g g, g' fis g h g fis g |
		g, g' fis g h g fis g c,8 d g,4 r |
		r2 r4 r16 g'' a g |
		d'8 d, r4 r r16 d e d |
		g8 g, r4 r r16 g' a g |
		d'4 r e,16 d32 c h a gis fis e8 r |
		e'16 d32 c h a gis fis e8 r d'16 c32 h a g fis e d8 r |
		g,32 g' fis g g, g' fis g g, g' fis g g,16 r g'2 |
		e' g, |
		f32 c' b c f, c' b c f, c' b c f,16 r a2 |
		fis' a, |
		g32 d' c d g, d' c d g, d' c d g,16 r \appoggiatura a'8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g |
		\appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f |
		\times 2/3 {e16 e' d} \times 2/3 {e g f} e8 g, \times 2/3 {f16 a g} \times 2/3 {f a' g} fis8 fis, |
		\times 2/3 {g16 h a} \times 2/3 {g h' a} gis8 gis, a c \times 2/3 {d16 f e} \times 2/3 {d e f} |
		h,8 h \times 2/3 {c16 e d} \times 2/3 {c d e} a,8 a \times 2/3 {h16 d c} \times 2/3 {h c d} |
		\times 2/3 {g,16 h c} \times 2/3 {g c d} \times 2/3 {g, d' e} \times 2/3 {g, e' f} g,,32 g' f g g, g' f g g, g' f g g,16 r |
		\appoggiatura e''8 d16 c32 d \appoggiatura e8 d16 c32 d\appoggiatura e8 d16 c32 d \appoggiatura e8 d16 c32 d d8. h16 e8. c16 |
		f8. d16 g8. e16 a8. f16 e8. c16 |
		\times 2/3 {e d c} \times 2/3 {e d c} \times 2/3 {c h a} \times 2/3 {c h a} h2\fermata |
		e8 d16 c f,8 g g'16 f32 e d c h a g8 r |
		g'16 f32 e d c h a g8 r a'16 g32 fis e d c h a8 r |
		h16 g' \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c \appoggiatura d8 c16 h32 c |
		\appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f \appoggiatura g8 f16 e32 f e32 c' h c e, c' h c f, c' h c g c h c |
		a c h c e, c' h c f, c' h c g h a h c4\fermata r |
		R1*2 |
		a16 e c' a e'8 e f16 d f a d,8 d |
		g,16 d h' g d'8 d e16 c e g c,8 c |
		f,16 c a' f d'8 d h16 gis e' h gis'8 gis |
		e,16 c a' e c' a e' c \appoggiatura a'8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g \appoggiatura a8 g16 fis32 g |
		a8 g16 f e d c h e,8 d' c16 h a gis |
		a e a c a e a c h e, h' d h e, h' d |
		c a c e c a c e d a d f d a d f |
		gis,4 r8 e a a c c |
		e e a a a g16 f e d c h |
		a8 a, r e'' c h16 a h8.\trill a16 |
		a1\fermata |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key c \major
	\clef alto
	\relative c' {
		e16 e e g e e e g e e e g e e e g |
		d d d f d d d f d d d f d d d f |
		c c c e c c c e c c c e c c c e |
		d4 r e8 e e e |
		g d d d e c c c |
		d32 g fis g g, g' fis g g,8 r g32 g' fis g g, g' fis g g,8 r |
		<e' g>16 <e g> <e g> <g b> <e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b><e g> <e g> <e g> <g b> |
		<e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> |
		f32 c' b c f, c' b c f, c' b c f,16 r <fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> |
		<fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> |
		<fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> |
		g32 d' c d g, d' c d g, d' c d g,16 r d'8 c h a |
		g fis e d c h a fis |
		d4 r r2 |
		g4 r e'16 e e g e e e g |
		e e e g e e e g d d d f d d d f |
		d d d f d d d f c c c f c c c f |
		c c c f c c c c d4 r |
		e8 e e e g d d d |
		e c c c g'32 g fis g g, g' fis g g,8 r |
		<e' g>16 <e g> <e g> <g b> <e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> |
		<e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> |
		f32 c' b c f, c' b c f, c' b c f,16 r <fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> |
		<fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> |
		<fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> g32 d' c d g, d' c d g, d' c d g,16 r |
		d'8 c h a g fis e d |
		c h a fis d' d d d |
		d d d d d d d d |
		g, e' e cis a a a fis' |
		d g, g e' a, a a a |
		h' a16 g d'8 d, g, g g g |
		g g c d g,4 r |
		h'16 h h d h h h d h h h d h h h d |
		a a a c a a a c a a a c a a a c |
		g g g h g g g h g g g h g g g h |
		fis4 r h,8 h h h |
		e e e c a a a fis' |
		d32 g fis g g, g' fis g g, g' fis g g,16 r <e' g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> |
		<e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> <e g> <e g> <e g> <g b> |
		f32 c' b c f, c' b c f, c' b c f,16 r <fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> |
		<fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> <fis a> <fis a> <fis a> <a c> |
		g32 d' c d g, d' c d g, d' c d g,16 r e'8 d c h |
		a g f e d c h d |
		g, g' g e c c a' a |
		d, d h' h e, f f f |
		f f g g a a f d |
		g, g g g g32 g' f g g, g' f g g, g' f g g,16 r |
		h'8 h h h h8. g16 c8. a16 |
		d8. h16 e8. c16 f,8. d16 g8. e16 |
		g8 g a a d,2\fermata |
		e8 d16 c f,8 g g e' e e |
		h' d, d d e c c fis |
		d4 e'8 d c h a g |
		f e d h g e' f g |
		a e f g c,4\fermata  r |
		R1*2 |
		e8 e c' c a a f f |
		d d h' h g g e e |
		c c d d d d d d |
		c c c c c c c c |
		c d e f h, f' e e |
		e4 e gis gis |
		e e f f |
		e r8 e c c e e |
		a a c c c a h gis |
		a a, r e' e4 e |
		c1\fermata |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Aminta"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*10 |
			r2 |
			R1*3 |
			r4 r8 g c4 e, |
			c e' d g, |
			r g c f |
			a, f' h,16[ a] g8 r4 |
			c8 c16 d e8 c d g, r d' |
			c c c h16[ a] h[ a] g8 r4 |
			c4 g8 e c4\melisma e8[ g] |
			c~[ c32 d e f] g8~[ g32 f e d64 c] b4.\melismaEnd b8 |
			a16[ g] f8 r4 d'4 a8 fis |
			d4\melisma fis8[ a] d~[ d32 e fis g] a8~[ a32 g fis e64 d] c4.\melismaEnd c8 h16[ a] g8 r4 |
			g' g8. g16 c,4 c |
			fis,2\melisma \times 2/3 {g16[ d' c]} \times 2/3 {h[ d c]} \times 2/3 {h[ d c]} \times 2/3 {h[ a g]} |
			\times 2/3 {a[ c h]} \times 2/3 {a[ c h]} \times 2/3 {a[ c h]} \times 2/3 {a[ g fis]} \times 2/3 {h[ d c]} \times 2/3 {h[ d c]} \times 2/3 {h[ d e]} \times 2/3 {f[ e d]} |
			\times 2/3 {e[ g f]} \times 2/3 {e[ g f]} \times 2/3 {e[ cis d]} \times 2/3 {e[ fis g]} \times 2/3 {fis[ a g]} \times 2/3 {fis[ a g]} \times 2/3 {fis[ d e]} \times 2/3 {fis[ g a]} |
			\times 2/3 {g[ fis e]} \times 2/3 {d[ c h]} \times 2/3 {e[ d c]} \times 2/3 {h[ a g]} d4\melismaEnd r |
			h'8 a16 g d'8 d, g4 r |
			r2 r4 d |
			g h d g, |
			a d, r a' |
			c e c g |
			fis16[ e] d8 r4 h'8 h16 c d8 h |
			c a r c d, fis a c |
			h16[ a] g8 r4 c,4 e8 g |
			c8~[\melisma c32 d e f] g8~[ g32 f e d64 c] b4.\melismaEnd b8 |
			a16[ g] f8 r4 d fis8 a |
			d~[\melisma d32 e fis g] a8~[ a32 g fis e64 d] c4.\melismaEnd c8 |
			h16[ a] g8 r4 g'4 g8. g16 |
			c,4 c f,2\melisma |
			\times 2/3 {e16[ c' h]} \times 2/3 {c[ e d]} \times 2/3 {c[ b a]} \times 2/3 {g[ a b]} \times 2/3 {a[ c h]} \times 2/3 {a[ f' e]} \times 2/3 {d[ c h]} \times 2/3 {a[ h c]} |
			\times 2/3 {h[ d c]} \times 2/3 {h[ g' f]} \times 2/3 {e[ d c]} \times 2/3 {h[ c d]} \times 2/3 {c[ a' g]} \times 2/3 {f[ g a]} \times 2/3 {d,[ f e]} \times 2/3 {d[ e f]} |
			\times 2/3 {h,[ g' f]} \times 2/3 {e[ f g]} \times 2/3 {c,[ e d]} \times 2/3 {c[ d e]} \times 2/3 {a,[ f' e]} \times 2/3 {d[ e f]} \times 2/3 {h,[ d c]} \times 2/3 {h[ c d]} |
			\times 2/3 {g,[ h c]} \times 2/3 {g[ c d]} \times 2/3 {g,[ d' e]} \times 2/3 {g,[ e' f]} g,4\melismaEnd r |
			f'8 f16 f f8 f \times 2/3 {h,16[\melisma g a]} \times 2/3 {h[ c d]} \times 2/3 {c[ a h]} \times 2/3 {c[ d e]} |
			\times 2/3 {d[ h c]} \times 2/3 {d[ e f]} \times 2/3 {e[ c d]} \times 2/3 {e[ f g]} \times 2/3 {f[ d e]} \times 2/3 {f[ g a]} \times 2/3 {g[ e f]} \times 2/3 {g[ a h]} |
			\times 2/3 {c[ h a]} \times 2/3 {g[ f e]} \times 2/3 {a[ g f]} \times 2/3 {e[ d c]} <g g'>2\melismaEnd |
			e'8 d16 c f,8 g c,4 r |
			R1*3 |
			r2 r4 r8 a' |
			e' d16[ c] h8 a h d c16[ h] a[ gis] |
			a4 r8 c h e, r a |
			c16[ a] e'[ c] a'[ e] c[ a] d[\melisma a d f] a[ f d a] |
			h[ g d' h] g'[ d h g] c[ g c e] g[ e c b] |
			a[ f c' a] f'[ d c h] gis[ e h' gis] e'[ d c h] |
			c8\melismaEnd a r e' a a a a |
			a[ g16 f] e[ d] c[ h] e,8 d' c16[ h] a[ gis] |
			a[\melisma e a c] a[ e a c] h[ e, h' d] h[ e, h' d] |
			c[ a c e] c[ a c e] d[ a d f] d[ a d f] |
			gis,4\melismaEnd r8 e a a c c |
			e e a a a[ g16 f e d] c[ h] |
			a8 a, r e'' c h16[ a] h8.\trill a16 |
			a1\fermata |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c {
		c16 c c e c c c e c c c e c c c e |
		h h h d h h h d h h h d h h h d |
		a a a c a a a c a a a c a a a c |
		g4 r c'8 c c c |
		h h h h a a a a |
		g32 g fis g g, g' fis g g,8 r g32 g' fis g g, g' fis g g,8 r |
		r1 |
		r1 |
		f'32 c' b c f, c' b c f, c' b c f,16 r r2 |
		r1 |
		r2 |
		g32 d' c d g, d' c d g, d' c d g,16 r h8 a g fis |
		e d c h a g fis d |
		g g g g g g c d |
		g4 r c,16 c c e c c c e |
		c c c e c c c e h h h d h h h d |
		h h h d h h h d a a a c a a a c |
		a a a c a a a c g4 r |
		c'8 c c c h h h h |
		a a a a g32 g fis g g, g' fis g g,8 r |
		R1*2 |
		f'32 c' b c f, c' b c f, c' b c f,16 r r2 |
		R1 |
		r2 g32 d' c d g, d' c d g, d' c d g,16 r |
		h8 a g fis e d c h |
		a g fis d g g g g |
		d' d d d g, g g h |
		c c a a d d d d |
		g, g c c d d d d |
		h' a16 g d'8 d, g, g g g |
		g g c d g,4 r |
		g'16 g g h g g g h g g g h g g g h |
		fis fis fis a fis fis fis a fis fis fis a fis fis fis a |
		e e e g e e e g e e e g e e e g |
		d4 r e8 e e gis |
		a a, a a d d d d |
		g,32 g' fis g g, g' fis g g, g' fis g g, g' fis g g,8 r r4 |
		R1 |
		f'32 c' b c f, c' b c f, c' b c f,16 r r2 |
		R1 |
		g32 d' c d g, d' c d g, d' c d g,16 r c8 h a g |
		f e d c h a g h |
		c c c f f f fis fis |
		g g gis gis a a f f |
		g g e e f f d g, |
		g g g g g32 g' f g g, g' f g g, g' f g g,16 r |
		g'8 g g g g r a r |
		h r c r d r c r |
		c, c c fis, g2\fermata |
		e''8 d16 c f,8 g c, c' c c |
		h h h h a a fis fis |
		g4 c8 h a g f e |
		d c h g c e f g |
		a e f g c,4\fermata r8 a' |
		gis a f4 e8 d e e, |
		a h c a e' fis16 gis a8 a, |
		a' a a a f f f f |
		g g g g e e e e |
		f f d d e e e e |
		a, a a a a a a a |
		a h c d e d e e, |
		a4 a e' e |
		a, a d d |
		e16 d e f e d c h a a' gis a a, a' gis a |
		a, a' gis a a, a' gis a a,8 d' gis, e |
		a a, r gis' a4 e |
		a,1\fermata |
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

