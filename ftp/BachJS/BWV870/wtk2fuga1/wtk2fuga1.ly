\version "2.16.1"

\header {
title = "Fuga I"
subtitle = "a 3 voci"
composer = "J. S. Bach (1685-1750)"
opus = "BWV 870 -- Fuga"

mutopiatitle = "Das Wohltemperierte Clavier II, Fuga I"
mutopiacomposer = "BachJS"
mutopiainstrument = "Harpsichord, Piano"
mutopiaopus = "BWV 870"
style = "Baroque"
source = "Unknown"
copyright = "Public Domain"
maintainer = "Jarle Fagerheim"
maintainerEmail = "jarle_fagerheim@yahoo.co.uk"

 footer = "Mutopia-2013/01/08-209"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

dux =  \relative g' \context Voice = "dux" {
	\stemUp
	r8 g16 f g8 c, |
	a'4\mordent g |
	r8 f16 e f g e f |
	d f e f g a f g |
	e d e f e f d e |
	c b c d c d b c |
	a b c d e fis g8~|
	g fis16 e fis4 |
	\change Staff = treble
	\stemDown \tieDown
	g2~ |
	g16 e f8~ f16 d e8~ |
	e d g4 |
	f16 a g a d,4 |
	c8 r8 r4 |
	r8 c'16 b c8 g |
	d'4 c |
	b8 d16 c d8 a |
	e'4 d |
	c8 e16 d e8 a |
	d,2~ |
	d8 c16 b a8 b~ |
	b \change Staff = bass
	\stemUp \tieNeutral
	a16 g a8 d, |
	\change Staff = treble
	\stemDown \tieDown
	b'4 a |
	\change Staff = bass
	\stemUp \tieNeutral
	r8 g16 f g a f g |
	e \change Staff = treble \stemDown g f g a bes g a |
	f \change Staff = bass \stemUp e f g f g e f |
	d c d e d e c d |
	\clef violin
	b16 c d e fis gis a8~|
	a gis16 fis gis4\trill |
	a16 gis a b a b g a |
	fis e fis g fis g e fis |
	g fis g a g a f g |
	e d e f e f d e |
	f e f g f g e f |
	d8 g16 f g a f g |
	e d e f e f d e |
	c8 f16 e f g e f |
	d c d e d e c d |
	b a b c b c a b |
	\change Staff = treble \stemDown \tieDown
	c4. b8~ |
	b16 b a8~ a16 a g8~ |
	g g fis g~ |
	g16 fis g e fis4~ |
	fis8 b g4~ |
	g8 c a4~ |
	a8 d b4~ |
	b8 b c d |
	e g16 f g8 c, |
	a'4 g |
	r8 f16 e f g e f |
	d f e f g a f g |
	e \change Staff = bass \stemUp
	d e f e f d e |
	c b c d c d b c |
	a b c d e fis g8~ |
	g \change Staff = treble \stemDown
	g4 fis8 |
	g4 r4 |
	r8 g16 f g8 d |
	a'4 g |
	f8 a16 g a8 e |
	b'4 a |
	g8 b16 a b8 g |
	c4 bes |
	a2 |
	g |
	f~ |
	f4 e |
	d~ d16 f e d |
	g a f g e8 d |
	c2~ |
	c~ |
	c~ |
	c8 c4 b8 |
	\clef bass
	c g16 f g8 c, |
	a'4 g |
	r8 f16 e f8 d |
	g4 a8 b |
	\clef violin
	c bes16 a bes8 e |
	f4 e |
	\once \override Rest #'direction = #LEFT
	e2\rest |
	r8 d16 c d8 g, |
	r8 b c d |
	e b e e |
	d r d r |
	s2 \bar "|."
												 
	}
comes =  \relative c'' \context Voice = "comes" {
	\stemDown
	\tieUp
	R2 |
	R2 |
	R2 |
	R2 |
	r8 c16 b c8 g |
	e'4\mordent d |
	r8 c16 b c d b c |
	\stemUp
	a c b c d e c d |
	b a b c b c a b |
	c8. a16 bes8. g16 |
	a4 b8 c~ |
	c c4 b8 |
	c8 g'16 f g8 c, |
	a'4 g |
	fis8 a16 g a8 d, |
	b'4 a |
	gis8 b16 a b8 e, |
	c'2~ |
	c8 c b g |
	e4 fis8 g~ |
	g8 fis16 e fis8. g16 |
	g8 e cis d ~ |
	d16 g bes a g f e d |
	cis8 d4 cis8 |
	r8 d16 cis16 d8 a8 |
	f'4 e |
	r8 d16 c d e c d |
	b d c d e f d e |
	c8 e16 d e8 c |
	a' c, a d |
	b d16 c d8 b |
	g' bes, g c |
	a d16 c d e c d |
	b a b c b c a b |
	g8 c16 b c d bes c |
	a16 g a bes a bes g a |
	f2\trill~ |
	f8 d'16 c d8 f, |
	e16 d e f e f d e |
	c8. c16 b8. b16 |
	a4. b8 |
	c4. a8 |
	d4. b8 |
	e4. c8 |
	f4. d8 |
	g4 a8 b c2~ |
	c2~ |
	c2~ |
	c4 b |
	r8 c16 b c8 g |
	e'4 d |
	r8 c16 b c d b c |
	a c b c d e c d |
	b8 d16 c d8 g, |
	e'4 d |
	c8 e16 d e8 a, |
	f'4 e |
	d8 f16 e f8 b, |
	g'4 f |
	e8 f g4~ |
	g f ~ |
	f e ~ |
	e d8 c |
	b g c4~ |
	c b |
	c8 d g,16 c8 b16 |
	c16 f, e d e f d e |
	f e f g f g e f |
	d c d e d e c d |
	e d e f e f d e |
	\clef bass
	c2~ |
	c2~ |
	c2~ |
	c8 b c d |
	\clef violin
	e g16 f g8 c, |
	a'4 g |
	\once \override Rest #'direction = #RIGHT
	f'8\rest f,16 e f8 d |
	g4 f |
	<c e>8 <f aes> <e g> <aes b> |
	<g c> <d f> c c' |
	d, c' f, b |
	<c, e g c>2 \bar "|."
	}

bassdux =  \relative g \context Voice = "bassdux" {
	\stemDown
	s2 |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	\clef bass
	r8 g16 f g8 c, |
	a'4\mordent g |
	r8 f16 e f g e f |
	d f e f g a f g |
	e d e f e f d e | 
	f e f g f g e f |
	d cis d e fis g e fis |
	g fis g a g a f g |
	e d e fis gis a fis gis |
	a gis a b a b g a |
	fis g e fis g a b g |
	c b c d c d b c |
	\clef violin
	d2 |
	g,8 g'16 f g a f g |
	e2 |
	r8 \clef bass d8 f, a |
	d, r8 r4 |
	s2*13 |
	\clef bass
	r8 c16 b c8 g |
	e'4 d |
	r8 c16 b c d b c |
	a c b c d e c d |
	b d c d e f d e |
	c e d e f g e f |
	d f e f g a f g |
	e d e f e f d e |
	c d e d c bes a g |
	f e f g f g e f |
	d a' b c d e f d |
	\tieDown
	g2~ |
	g2~ |
	g2 |
	\tieNeutral
	r4 r8 b8 |
	c a d d, |
	g,16 fis g a b c a b |
	c b c d c d b c |
	a gis a b c d b c |
	d c d e d e c d |
	b a b c d e c d |
	e d e f e f d e |
	c b c d e f d e |
	f g f e d c b a |
	b g a b c d b c |
	a c b c d e f d |
	g a f g a b g a |
	f g e f g a f g |
	e8 f g gis |
	a, g'16 f g8 c, |
	a'4 g |
	r8 f16 e f8 d |
	g4 f |
	e16 d e f e f d e |
	f e f g f g e f |
	d c d e d c b a |
	g f g a g f e d |
	c c' e c c, c' g' c, |
	c, d e f g a b c |
	c, c' d c c, c' f c |
	b c b a g f e d |
	c c' d c e c f c |
	g' c, aes' c, g' c, b c |
	<f, a'>8 r8 <g g'> r8 |
	c,2 \bar "|."
	}

\score {
	\context PianoStaff  <<
		\context Staff = "treble" << \time 2/4 \clef violin
			\comes
		>>
		\context Staff = "bass" << \time 2/4 \clef violin
			\dux
			\bassdux
		>>
	>>
	\midi { }
	\layout {}
}
