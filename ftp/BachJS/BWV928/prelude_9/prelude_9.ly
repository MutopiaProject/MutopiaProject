\version "2.16.1"

\header {
	title = "Petite Prélude No. 9"
	composer = "Johann Sebastian Bach"
	opus = "BWV 928"
	enteredby = "Andreas Scherer"

	mutopiatitle = "Petite Prélude No. 9"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 928"
	mutopiainstrument = "Harpsichord, Piano"
	source = "Edition Peters Nr. 200a"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Andreas Scherer"
	maintainerEmail = "andreas_mutopia@freenet.de"

 footer = "Mutopia-2013/03/22-493"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\paper {
  % Bring output down to two pages
  page-count = #2
  top-margin = #8
}

upper = \relative c' <<
	\context Voice = voiceI {

	r16 f16-1_\f a-2 c bes-3 g-1 c g a8^\mordent\noBeam
		<a-1 c-2 f-5>\noBeam <g-1 d'-3 f-5> <g-1 c-2 e-4> |
	<f c' f>\noBeam c'\noBeam f <a, d f> <b-1 d-3 f-5>16
		d-3 b g e'8 <g, c e> |
	<a c e>16 \breathe a-1 c e a-5 d,-1 c-2 d-3 b g-1 b d
		g c,-1 b-2 c-3 |
	a f a c \stemUp\tieUp\slurUp f4~f16 f-5 e8-4~e16 e-5 d8-4~ |
	\barNumberCheck #5
	d16-5 g,-2 c8-5~c16 c8 b16-4 <e,-1 c'-5>8\noBeam
		<e' g c>\noBeam <d a' c> <d g b> |
	<c g' c>16 \breathe c-1 e-2 g f d-1 g d e c-1 f-2 a
		d, bes'-5 a bes |
	c,-2 a d f bes,-2 g' f g a, f bes d g,-1 e' d e |
	f,8\noBeam <f a d>\noBeam <e bes' d> <e a cis>
		<d a' d>16 \breathe d-1 f-2 a g e a e |
	f d-1 f-2 a d a-2 bes g-1 fis-2 d fis a d bes-3 c-4 a |
	\barNumberCheck #10
	bes \breathe d,-1 g-2 bes d bes-3 c-4 a-1 gis-2 e gis b
		e c-3 d b |
	c8 c-4[ b-3 b-3] e-5 a,-4 g-3 g-3 |
	c-5 f,-4 e e-3 a16-5 d,-2 e f r f-4 e d |
	r f-3 g a r a-4 g f r a-3 b c r c-5 b a |
	gis \breathe e-1 gis b e a,-2 g-1 a-3 f d f a
		d g,-2 f-1 g-3 |
	\barNumberCheck #15
	e-2 c e g c4~c16 c-5 b8-4~b16 b-5 a8-4~ |
	a16-4 a gis a b8-5[c-4] d c16 d b8.^\prall a16 |
	a-2 \breathe e-1 a-3 b c4 \skip 2 |
	bes16 \breathe g-1 bes-2 d c a-1 d a bes8\noBeam
		<bes d g>\noBeam <a ees' g> <a d fis> |
	<g d' g>\noBeam bes'16-4 a g f! e!-3 d c-1 e-5 g,-2 c-4
		e,-1 d'-5 c bes |
	\barNumberCheck #20
	a8\noBeam <a c f>\noBeam <g d' f> <g c e>
		<f c' f>16 \breathe f-1 a-2 c bes g c g |
	a f-1 a-2 c d8 <f, a d> <g bes d>16 bes-4 g e c'8 <e, a c> |
	<f a c>16 \breathe d-1 f a d g,-2 f-1 g-3 e c e g c f,-2 e-1 f-3 |
	d-2 bes-1 d f bes4~bes16 bes-5 a8-5~a16 a-5 g8^"4--5"~ |
	g16 c,-2 f8-5~f16 f8 e16-4 <a, c f>2 \bar "|."
	}

	\context Voice = voiceIII \relative c'' {
	\stemDown
	\skip 1*3
	\skip 4 r16 b-2 c d g,8. g16-1 f8. f16-1 |
	e8.-1 e16-2 d8-1 f-2
	\skip 4*22
	r8 a a gis g fis f e |
	ees d d cis c r b r c r d r e r f r |
	\skip 1
	\skip 4 r16 a-4 f-1 e-2 d8. d16-1 c8.-1 c16 |
	b4-1 gis'!16 e a e b' e, a8 gis4 |
	\skip 4 r16 a bes g! fis a d, fis a c bes a |
	\skip 1*5
	\skip 4 r16 e-2 f g c,8. c16-2 bes8.-1 bes16-2 |
	a8. a16-2 g8-1 <bes-1 c-2>
	}
>>

lower = \relative c <<
	\context Voice = voiceII {
	\stemDown

	r2 r16 f-5 a-3 c bes g c g |
	a-3 \breathe c a-2 f d d' c d g,-4 b-1 g-2 e c c' b c |
	f,4 r8 <f a d> <f g d'>4 r8 <e g c> |
	<e f c'> e'-1 d c b-4 c-1 a-3 b |
	\barNumberCheck #5
	c e,-4 f g r16 c,-5 e g f d g d |
	\tieDown \slurDown e8\noBeam c'-3~ c[bes!-4]~ bes[a-3]~ a[g-4~] |
	g[f-3]~ f[e-4]~ e[d-3]~ d[cis-4] |
	r16 d-5 f a g e a e f8\noBeam <d-4 f-2 a-1>\noBeam
		<d-4 e-3 bes'-1> <cis e a> |
	<d a'> r r d'-2 c-1 a fis d |
	\barNumberCheck #10
	g r f! r e16-2 f e d c-4 a' b, gis'-2 |
	a \breathe a,-5 c-3 e-1 d b e b cis-3 e-2 d-1 c b g c-2 g |
	a-4 c b a-1 gis e a e fis8-3 r gis r |
	a r b-3 r c r d r |
	e-2 d cis a' d,-3 c b g' |
	\barNumberCheck #15
	c,-3 b-1 a g fis gis a c-1 |
	d4-2 r16 c-1 b a gis8 a e' e, |
	a4 r8 a' d,-4 e fis d |
	\tieUp g-1 g'-1~g fis g16 \breathe g,-5 bes d c a-4 d-1 a-3 |
	bes-2 d,-5 g-3 a-1 bes-2 g a-1 f-2 e g c, e g-1 bes-2 a g |
	\barNumberCheck #20
	f-1 \breathe f,-5 a c bes g c g a8\noBeam <f'-5 a-3 c-1>\noBeam
		<f-5 g-4 d'-1> <e-5 g-3 c-1> |
	<f-5 c'-2>16 a-1 f d bes bes'-1 a bes e,-4 g-1 e c a a' g a |
	d,8-5 c' bes g-1 c,-5 bes'-2 a-1 f |
	bes, a'-1 g f e-4 f-1 d e |
	f a, bes c f,2
	}

	\context Voice = voiceIII \relative c' {
	\stemUp
	\skip 1*5 \skip 8 e8 d4-2 c-1 bes-2 | a-1 g-2 f-1 e-2
	}
>>

global = {
	\time 4/4
	\key f \major
}

\score {
  % Moderato
  \new PianoStaff <<
    \new Staff <<
      \global
      \upper
    >>

    \new Staff <<
      \global
      \clef "bass"
      \lower
    >>
  >>

  \midi {
    \tempo 4 = 69
  }

  \layout { %{ Use LilyPond defaults %} }
}
