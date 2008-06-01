\version "2.10.33"

giga = \relative c'' {
	\clef treble
	\key d \minor
	\time 12/8

	\partial 8 a8
	d,8( f) a d( e) f e g16( f e d) cis8( a) e
	cis8( e) a e'( f) g f a16( g f e) d8( a) f
	d8 f'16 e d f bes a g f e d c d e d c e a g f e d c
	bes16 c d c bes d g f e d cis b a b cis b a cis e d cis b a g
	f16 a( g f e d) a8 d' cis d,8.[ e16 f g] a bes c d e f
	g16 e c g e g c g e c e g a g f g a bes c d e f g a
	bes16( a bes) d e, g a( g a) c d, f g( f g) bes c, e f( e f) a g f
	e16 d e f e d c bes c d c bes a( bes c) f c a f( g a) c a f
	d16( ees f) bes f d bes( c d) f d bes g bes d g bes d g bes g d bes g
	e16( g c) e g bes c,( bes c) bes' c, bes' f,( a c) e f a c,( bes c) a' c, a'
	e,16-\p( g c) e g bes c,( bes c) bes' c, bes' f,( a c) e f a c,( bes c) a' c, a'
	bes,16-\f( d f) a bes d e,( d e) d' e, d' a,( c e) g a c d,( c d) c' d, c'
	g,16( bes d) f g bes c,( bes c) bes' c, bes' f,( a c) e f a c,( bes c) a' f d
	bes16 a bes c d bes g f g a bes g e d e f g e c e g c e8 ~
	e16 bes( a g f e d cis b a) g' e f d f a d cis d a d f b a
	b16 f( e d c b a gis fis e) d' b c a c e a gis a( b c) gis a c
	f,16( g a) e f a d,( e f) cis d f gis,8.[ a16 b c] d e f d b' d,
	c16( d e) c a' c, b( c d) b gis' b, c( d e) c a' c, d( e f) d b' d,
	c16( d e) b c a b( c d) a b gis a a, cis e g8 ~ g16 e cis a cis e
	f16 d f a d cis d a d f a gis a e cis a e cis a4.*2/3

	\bar ":|:"

	\partial 8 e''8
	a,8( cis) e g,( a) bes cis, e16( d cis b) a8 cis e
	g16 a bes a g bes e d cis b a g f e f g a f d8.[ d'16 cis b]
	a16 c( bes a g fis) ees' d c bes a g fis a( g f e d) a'' g fis e d c
	bes16 d( c bes a g) c' bes a g fis e d( e fis) a g f ees d c bes a g
	fis16( a d) fis a c d,( c d) c' d, c' g,( bes d) fis g bes d,( c d) bes' d, bes'
	fis,16-\p( a d) fis a c d,( c d) c' d, c' g,( bes d) fis g bes d,( c d) bes' d, bes'
	c,,16( ees g) bes c ees f,( ees f) ees' f, ees' bes,( d f) a bes d ees,( d ees) d' ees, d'
	a,16( c ees) g a c d,( c d) c' d, c' g,( bes d) fis g bes d,( fis g) bes d g
	ees16 d ees f g ees c bes c d ees c a g a bes c a fis a d fis a c
	bes16( a) c( bes a g) d g fis g a fis g ees( d c bes a) bes g a bes c d
	e16( f g) e bes e c,( e g) bes a g a( bes c) a f a bes,( d f) a f d
	cis'16( d e) cis g cis a,( cis e) g f e f d f a d cis d a d f a c,
	bes16 a'( g f e d) c d e f g bes, a g'( f e d c) bes c d e f a,
	g16 f'( e d cis b) a b cis d e g, f a d a f a d, f a f d f
	bes,16( f' d') f e cis a,( f' d') f e cis g,( f' d') f e d bes' a( g f e d)
	cis16 e f g a e d( cis b a) e'( g,) f( g a) f d' f, e( f g) e c' e,
	d16( e f) d bes' d, c( d e) c a' c, bes( c d) bes g' d g( a bes) g ees' g,
	a,16( b cis) a g' a, g'( a bes) g cis g f( g a) f d' a d e f d b' d,
	gis,16 a b cis d e f( e d cis d) gis, a cis d e f g a bes e,( f g) cis,
	d16 d, f a d e f d f a d cis d a f d a f d4

	\bar ":|"
}

#(set-global-staff-size 19)
%#(set-default-paper-size "letter")

\header {
	title = "Partita II BWV 1004"
	subtitle = "“Sechs Sonaten für Violine”"
	piece = "IV. Giga"
	mutopiatitle = "BWV 1004 Giga"
	composer = "Johann Sebastian Bach (1685–1750)"
	mutopiacomposer = "BachJS"
	opus = "BWV 1004"
	date = "1720"
	mutopiainstrument = "Violine"
	style = "Baroque"
	source = "Bach-Gesellschaft Edition 1879 Band 27.1"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Benjamin D. Esham"
	maintainerEmail = "bdesham@gmail.com"
	
 footer = "Mutopia-2008/05/28-1428"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\score {
	\giga
	\layout {
		\context { \Score \override SpacingSpanner #'spacing-increment = #0.8 }
	}
	\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
