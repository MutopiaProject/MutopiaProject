\version "2.11.56"

\header {
	title = "Mentre dormi amor"
	composer = "A. Vivaldi (1678-1741)"
	mutopiatitle = "Mentre dormi amor, Aria from L'Olimpiade"
	mutopiacomposer = "VivaldiA"
	mutopiainstrument = "Voice (Soprano), Horn, String Ensemble, Basso Continuo"
	mutopiapoet = "P. Metastasio (1698-1782)"
	mutopiaopus = "RV 725" 
	date = "1734"
	source = "Autograph, 1734"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/09/28-1181"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Men -- tre dor -- mi a -- mor fo -- men -- ti a -- mor fo -- men -- ti il pia -- cer de' son -- ni tuo -- i con l'i -- de -- a del mio pia -- cer del mio pia -- cer Men -- tre dor -- mi a -- mor fo -- men -- ti a -- mor fo -- men -- ti il pia -- cer de' son -- ni tuoi con l'i -- de -- a del mio pia -- cer con l'i -- de -- a del mio pia -- cer. Ab -- bia_il ri -- o pas -- si più len -- ti e so -- spen -- da_i mo -- ti suo -- i o -- gni zef -- fi -- ro leg -- gier e so -- spen -- da_i mo -- ti suo -- i o -- gni zef -- fi -- ro leg -- gier.
}
 

staffCorno = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 40
	\set Staff.instrumentName="Corno da Caccia"
	\set Staff.midiInstrument="french horn"
	\key f \major
	\clef treble
	\relative c'' {
		f1~ |
		f~ |
		f |
		c~ |
		c~ |
		c~ |
		\cadenzaOn
		c2~ \bar "|"
		\cadenzaOff
		c1 |
		f,4 c' f,2~ |
		f1~ |
		f |
		c' |
		R1*3 |
		r2 c~ |
		c1~ |
		c1~ |
		c4 g' c,2~ |
		c1 |
		R1 |
		r2 c~ |
		c1~ |
		c1~ |
		c1~ |
		c1~ |
		c1 |
		\cadenzaOn
		c2~ \bar "|"
		\cadenzaOff
		c2 f,~ |
		f1~ |
		f2 c'~ |
		c1~ |
		c1 |
		f,4 c' f, c' |
		f, r r2 |
		R1*7 |
	\bar "|."
	}

}
staffViolin = \new Staff  {
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c' {
		f2 c' |
		a'32 g f8. c32 b a8. a32 g f8. c'32 b a8. |
		d8~ d32 e f g64 a b8 d, c~ c32 d e f64 g a8 c, |
		b8~ b32 c d e64 f g8 b, a f r4 |
		g'2 a |
		b c16 c \appoggiatura d8 c32 b c16 r16 b \appoggiatura c8 b32 a b16 |
		r16 as \appoggiatura b8 as32 g as16 r16 g \appoggiatura as8 g32 f g16 |
		a16 c, c c c c c c f8 c16. f,32 g4 |
		f8 c'16. f,32 g4\trill f2 |
		c' a'32 g f8. c32 b a8. |
		d8~ d32 e f g64 a b8 d, c~ c32 d e f64 g a8 c, |
		b~ b32 c d e64 f g8 b, a c c c |
		d d d h g g r4 |
		a2 h |
		c d |
		e8 e, d d c2 |
		g' e'32 d c8. g32 f e8. |
		e'32 d c8. g'32 f e8. c'16 g g g g g g g |
		c8 e,16. f32 d4\trill c,2 |
		g' e'32 d c8. g'32 f e8. |
		fis32 e d8. a'32 g fis8. b32 a g8. d32 c b8. |
		e32 d c8. g'32 f e8. a32 g f8. r4 |
		g2 a |
		b c16 c \appoggiatura d c32 b c16 r b \appoggiatura c b32 as b16 |
		r as \appoggiatura b as32 g as16 r g \appoggiatura a g32 f g16 a c, c c c c c c |
		a' c, c c c c c c d8 d d d |
		e e e e f f f f |
		g g g g |
		a a, g g f4 c' |
		a'32 g f8. c32 b a8. d8~ d32 e f g64 a b8 d, |
		c~ c32 d e f64 g a8 c, b~ b32 c d e64 f g8 b, |
		a f r4 g'2 |
		a b16 a g f e d c b |
		a8 c16. f,32 g4\trill f8 c'16. f,32 g4\trill |
		f\fermata r a16 a a a a a a a |
		cis1 |
		a1 |
		d4 e d cis |
		a1 |
		a8 gis e4 f2 |
		gis4. h8 c4 h |
		c1 |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c' {
		c2 a' |
		f'16 c8. a32 g f8. f16 c8. a'32 g f8. |
		b8~ b32 c d e64f g8 b, a~ a32 b c d64 e f8 a, |
		g8 g32 a b c64 d e8 g, f f f' f |
		f e16 f g8 g g f16 g a8 a |
		a g16 a b8 b  as16 as \appoggiatura b8 as32 g as16 r16 g \appoggiatura as8 g32 f g16 |
		r f \appoggiatura g8 f32 e f16 r e \appoggiatura f8 e32 d e16 |
		f a, a a a a a a c8 c16. f,32 e4\trill |
		f8 c'16.f,32 e4\trill c2 |
		a' c32 b a8. a32 g f8. |
		b8~ b32 c d e64 f g8 b, a~ a32 b c d64 e f8 a, |
		g~ g32 a b c64 d e8 g, f a a a |
		h g g f f e g g |
		g f16 g a8 a a g16 a h8 h |
		h a16 h c8 c h2 |
		c8 c, c h\trill g2 |
		e' c'16 g8. e32 d c8. |
		c'16 g8. e'32 d c8. g'16 e e e e e e e |
		g8 c,16. d32 h4 g,2 |
		e' g32 f e8. e'32 d c8. |
		a'32 g fis8. fis32 e d8. d32 c b8. b32 a g8. |
		g'32 f e8. e32 d c8. c32 b a8. f'8 f |
		f e16 f g8 g g f16 g a8 a |
		a g16 a b8 b as16 as \appoggiatura b as32 g as16 r g \appoggiatura as g32 f g16 |
		r f \appoggiatura g f32 e f16 r e \appoggiatura f e32 d e16 f a, a a a a a a |
		f' a, a a a a a a f8 f f b |
		g g g c a a a d |
		e e e e |
		f f, f e c4 a' |
		c32 b a8. a32 g f8. b8~ b32 c d e64 f g8 b, |
		a8~ a32 b c d64 e f8 a, g~ g32 a b c64 d e8 g, |
		f c f' f f e16 f g8 g |
		g f16 g a8 a g16 f e d c b a g |
		f8 c'16. f,32 e4\trill f8 c'16. f,32 e4\trill |
		f\fermata r f16 f f f f f f f |
		e1 |
		f4 a g f8 e |
		d b' a4 f e |
		f e f fis |
		h c a4. h8 |
		h4. gis8 e4 gis |
		e1 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key f \major
	\clef alto
	\relative c' {
		a8 a a a f' f f f |
		c' a f c c a f' c |
		f f f f f f c c |
		e e e e c c a a |
		c c c c c c c c |
		c c c c c c c c |
		c c c c |
		c c c c a a c c |
		a a c c a2 |
		f' f8 c f c |
		f f f f f f c c |
		e e e e c f f f |
		f f d d c c c c |
		c c c c g g g g |
		g g g g g g g g |
		g g g g e'8 e e e |
		c c c c g' e c g |
		g' e c g e' c c c |
		c g g g e' e e e |
		c c c c c c c c |
		d d d d d d d d |
		c c c c c c c c |
		c c c c c c c c |
		c c c c c c c c |
		c c c c c c c c |
		c c c c b b b d |
		c c c e d d d f |
		c c c c |
		c c c c a4 f' |
		f8 c f c f f f f |
		f f c c e e e e |
		c c c c c c c c |
		c c c c c c c c |
		c c c c c c c c |
		a4\fermata r d16 d d d d d d d |
		a1 |
		d4 f e d8 c |
		b g cis a d4 a |
		d c d dis |
		e a, d2 |
		e a,4 e' |
		a,1 |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c' {
		\context Voice = "melodySop" {
		\dynamicUp
		\autoBeamOff
		R1*6 |
		R2 |
		R1 |
		r2 f2 |
		a c16[ a] \appoggiatura g8 f4 f8 |
		d'\melisma \appoggiatura c b4\trill\melismaEnd d8 c \appoggiatura b a4\trill c8 |
		b8\melisma \appoggiatura a8 g4\trill\melismaEnd b8 a16[ g] f8 r f16 f |
		d'8 \appoggiatura c h \appoggiatura a g f f e g b |
		a\melisma \appoggiatura b a32[ g a16] \times 2/3 {r f[ g]} \times 2/3 {a[ h c]} h8 \appoggiatura c h32[ a h16] \times 2/3 {r g[ a]} \times 2/3 {h[ c d]} |
		c2\melismaEnd d8 \appoggiatura c h \appoggiatura a g f |
		e c' e,8[ d16\trill] c c4 r |
		R1*2 |
		r2 c |
		g' c8.[ h32 c] c,8 c' |
		d,[ fis] a[ c] b32[ a] g16 r8 r b |
		c,[ e] g[ b] a32[ g] f16 r8 f f |
		f e16[ f] g8 g g f16[ g] a8 a |
		a g16[ a] b8 b \times 2/3 {as16[\melisma c b]} \times 2/3 {as[ g f]} \times 2/3 {g[ b as]} \times 2/3 {g[ f e]} |
		\times 2/3 {as[ c b]} \times 2/3 {as[ g f]} \times 2/3 {g[ b as]} \times 2/3 {g[ f e]} f8~ f32[ g a b] c8\melismaEnd r |
		c4 c, d~ d16[\melisma b' g f] |
		e4~ e16[ c' a g] f4~ f16[ d' b g] |
		e4~ e16[ c e g]\melismaEnd |
		a8 g16[ f] g8. f16 f4 r |
		R1*5 |
		r2 a4 d |
		cis8 a g4~ g8[ b] a16[ g] f[ e] |
		f8 d a' a a a a a |
		d c16[ b] a[ g] f[ e] f8 e16[ d] e8. d16 |
		d4 a'8 a a a c a |
		a gis e e f4~ f16[\melisma d' h a] |
		gis4~ gis16[ e gis h] c8\melismaEnd h16[ a] gis8. a16 |
		a1 |
		}
	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c {
		f8 f f f f f f f |
		f f f f f f f f |
		f f f f f f f f |
		c c c c f f f f |
		c c c c c c c c |
		c c c c c c c c |
		c c c c |
		f f f f f f c c |
		f f c c f f f f |
		f f f f f f f f |
		f f f f f f f f |
		c c c c f f f f |
		h, h h h c c c c |
		f f f f g, g g g |
		g g g g g g g g |
		g g g g c c c c |
		c c c c c c c c |
		c c c c c c c c |
		c c g' g, c c c c |
		c c c c c c c e |
		d d d d g g g g |
		c, c c c f f f f |
		c c c c c c c c |
		c c c c c c c c |
		c c c c f f f f |
		f f f f b, b b b |
		c c c c d d d d |
		c c c c |
		f f c c f f f f |
		f f f f f f f f |
		f f f f c c c c |
		f f f f c c c c |
		c c c c c c c c |
		f f c c f f c c |
		f,4\fermata r r2 |
		R1*7 |
	\bar "|."
	}

}


\score {
	<<
		\staffCorno
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
		indent=20
	}
}

\paper {
}


