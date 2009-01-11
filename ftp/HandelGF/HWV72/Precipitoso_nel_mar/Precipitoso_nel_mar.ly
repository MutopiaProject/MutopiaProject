% Created on Sun Dec 30 15:01:14 CET 2007
\version "2.10.33"

\header {
	title = "Precipitoso nel mar"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Precipitoso nel mar , Aria from Aci, Galatea e Polifemo"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Nicola Giuvo  (1680-1748)"
	mutopiaopus = "HWV 72"
	mutopiainstrument = "Voice (Bass), String Ensemble, Basso Continuo"
	date = "1708"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 53, 1892"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/01/04-1207"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Pre -- ci -- pi -- to -- so nel mar che fre -- me più cor -- re_il fiu -- me che stret -- to fù, pre -- ci -- pi -- to -- so nel mar che fre -- me più cor -- re_il fiu -- me che stret -- to fù, pre -- ci -- pi -- to -- so nel mar che fre -- me, più cor -- re_il fiu -- me, più cor -- re, più cor -- re il fiu -- me che stret -- to fù, più cor -- re il fiu -- me, più cor -- re il fiu -- me che stret -- to fù.
Ho per co -- stu -- me pri -- vo di spe -- me an -- ch'io sde -- gno -- so ren -- der -- mi più, an -- ch'io sde -- gno -- so ren -- der -- mi più, ho per co -- stu -- me pri -- vo di spe -- me an -- ch'io sde -- gno -- so ren -- der -- mi più.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Violini"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c''' {
		r8 a g f e4 a, |
		r8 e' d c h4 e, |
		r r16 e' d e f8 d, e' c, |
		d' h, r d' e c, d' h, |
		c' a, r c' d h, c' a, |
		h' gis, r h'' c a, h' g, |
		a' f, g' e, f' d, e' c, |
		d' h, d' h, d' h, d' h, |
		h'' gis a h c,4 h8. a16 |
		a8 g16 f e d c h a4 r |
		r16 a' g f e d c h a4 r |
		R1 |
		r2 r4 r8 e'' |
		d h, e' c, f' d, e' c, |
		d' g,, a h c g a h |
		c4. h8 c g a h |
		c4. h8 c4 r |
		r r8 d' e c, d' h, |
		c'' a, h' g, a' f, g' e, |
		f' d, e c' g, c'' d, h' |
		c, h16 a g f e d c4 r |
		r16 g' fis e d c h a g4 r |
		r16 a' g f e d c h a4 r |
		r r16 e'' d e f8 d, e' c, |
		d' h, r d' e c, d' h, |
		c' a, r a' d h, c' a, |
		h'4 r r2 |
		r r4 r8 h' |
		c a, h' g, a' f, g' e, |
		f' d, e' c, d' h, c' a, |
		d' gis a d, c a' h, gis' |
		a4 r8 e f d, e' c, |
		d' h, r d' e c, d' h, |
		c' a, r c' d h, c' a, |
		h'' gis a h c, a' h, gis' |
		a4 r r2 |
		R1 |
		r4 r8 h c a, h' g, |
		a' fis, r a' h g, a' fis, |
		g' e, r g' a fis, g' e, |
		a' fis g e h4 r8 fis' |
		g e, g' d, g' cis,, r f'16 e |
		f8 d, f' c, f' h,, r e'16 d |
		e8 c, f' d, g' e, c' e |
		r f e d e c' g h |
		c1 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
staffBass = \new Staff  {
	\set Staff.instrumentName="Polifemo"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef bass
	\relative c' {
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R1*9 |
			r2 r8 a g f |
			e4 a, r8 e'' d c |
			h4 e, r8 c' h a |
			g[ h] c e, f[ e] d[ c] |
			g'2 r |
			r8 g a h c[ g] a h |
			c4. h8 c[ g] a h |
			c4. h8 c[ e,] f c |
			g'4 g, c2 |
			R1*2 |
			r2 r8 c' h a |
			g4 g, r8 d'' c h |
			a4 a, r8 e'' d c |
			h4 e,8 c' d[\melisma e16 d] c[ h c d] |
			h4~ h16[ c a h] c8[ d16 c] h[ d c h] |
			a4~ a16[ h gis a] h8[ c16 h] a[ c h a] |
			gis8[ e]\melismaEnd fis gis a[ e] fis gis |
			a[ a,] d f e4. e8 |
			a,4 r8 e' f[d] e c' |
			d[ h] c a h[ gis] a fis |
			gis[ e]f d e4 e, |
			a2 r2 |
			R1*3 |
			r2 r8 dis e fis |
			g[ a] h4 r8 c h a |
			g[ fis] e4 r8 a h c |
			d[ d,] e[ fis] g16[ a g8] a h |
			c4. h8 a[ g] fis[ e] |
			h'[ dis,] e[ a,] h4 h8 h |
			e4 r r8 a h cis |
			d[ d,] e[ f] g[ a16 g] a8 h |
			c4 c,8 c b'4. a16[ g] |
			a8[h] c[ f,] g4 g,8 g |
			c1 |
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
		a4 r r16 a' g f e d c h |
		a4 r r16 e' d c h a gis fis |
		e e' d e c8 a d4 r |
		r8 g16 a g f e d c8 c, r4 |
		r8 f'16 g f e d c h8 h' r4 |
		r8 e,16 f e d c h a8 f' g, e' |
		f d' e, c' d, h' c, a' |
		h, gis' a, fis' gis, e' fis, e' |
		e, d' c a e'4 e, |
		a16 a' g f e d c h a4 r |
		r16 a' g f e d c h a4 r |
		r16 e' d c h a gis fis e4 r |
		r8 g' c e, f e d c |
		g'4 r8 e d h' c, c' |
		g4 r8 f e4 r8 d |
		e c f d e4 r8 d |
		e c f d e c f c |
		r g'16 a g f e d c8 c'16 d c h a g |
		a8 f' g, e' f, d' e, c' |
		d, h' c f, g4 g, |
		c'8 h16 a g f e d c4 r |
		r16 g' fis e d c h a g4 r |
		r16 a'16 g f e d c h a4 r |
		r16 e' d e c8 a' d,4 r |
		r8 g16 a g f e d c8 c, r4 |
		r8 f'16 g f e d c d8 d, r4 |
		r8 e' d e c4. h8 |
		a4 d r8 e16 f e d c h |
		a8 a' g e f r e r |
		d r c r h r a r |
		e'4 f8 d e4 r8 e |
		a, a'16 h a g f e d8 d, r4 |
		r8 g'16 a g f e d c8 c, r4 |
		r8 f'16 g f e d c h8 h'16 c h a gis fis |
		e4 f8 d e4 e, |
		a8 a' g fis e4 r |
		r8 e16 fis e d c h a8 a' dis, h |
		r8 e16 fis e d c h a8 a' r4 |
		r8 d,16 e d c h a g8 g' r4 |
		r8 c16 d c h a g fis8 fis, r g' |
		h dis, e a, h4 r8 h |
		e e16 f e d c h a4 r |
		r8 d16 e d c h a g4 r |
		r16 c' h a g f e d c4 r8 c |
		f d e f g4 g, |
		c1 |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
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

