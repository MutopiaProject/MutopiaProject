\version "2.18.2"

\header {
	title = \markup \normal-text "Oboe Sonata No. 2 in F"
	opus = "Opus 70"
	composer = "François Devienne"

	mutopiatitle = "Oboe Sonata No. 2 in F (Rondeau)"
	mutopiacomposer = "DevienneF"
	mutopiaopus = "from Opus 70"
	mutopiainstrument = "Oboe and Bassoon (or other unfigured basso continuo)"
	source = "Sieber, 1798"
	% Source: http://imslp.org/wiki/3_Oboe_Sonatas,_Op.70_(Devienne,_Fran%C3%A7ois)
	style = "Baroque"
	license = "Public Domain"
	maintainer = "Jeremy Visser"
	maintainerWeb = "https://jeremy.visser.name/"

 footer = "Mutopia-2014/08/11-1991"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

primo = \relative c'' {
	\key f \major
	\time 2/4

	\partial 8

		c8
	% 1
	|	a'4( g8) f
	|	f4(\segno e8) c
	|	bes'4( a8) g
	|	g4( f8) c

	% 5
	|	c'8 c c c
	|	d, e16( fis) \acciaccatura a g( fis g) a
	|	c( bes) a( g) bes( a) g( f)
	|	e c( b c d e f g)

	% 9
	|	a4( g8) f
	|	f4( e8) c
	|	bes'4( a8) g
	|	g4( f8) c(

	% 13
	|	c') c c c(
	|	c) bes16 a bes8 g16( a
	|	bes8) bes bes bes(
	|	bes8) a16( g a8) f16( a

	% 17
	|	g8) g16( e f8) c'16( a
	|	bes8) bes16( g a8) f16( a
	|	g8) g16( e f8) c'16( a
	|	bes8) bes16( g a8) f16( g)

	% 21
	|	a16( bes c bes a g f e
	|	d16 e f fis g a bes g
	|	f8) f16 a( g\trill f g) e
	|	f8 f,16( g a bes c d)

	% 25
	|	e16( f g a bes c d c)
	|	b8 bes4 a8
	|	g8 g c c
	|	a8 f,16( g a bes c d)

	% 29
	|	e16( f g a bes c d c)
	|	bes16( a g f e d c bes)
	|	a16( c) f( a) g( bes) e,( g)
	|	f4 r

	% 33
	|	fis16( g a g f e d c)
	|	f4 r
	|	fis16( g a g f e d c)
	|	f8 a f a

	% 37
	|	f4 a
	|	f \mark \markup { \italic { Fine. } } r8\fermata
	\bar "|."

		c8

	% 39
	\noBreak
	|	a'4 f
	|	c4. f16 a
	|	a16( g fis g) f( e f d)
	|	c4. e16( g)

	% 43
	|	f8 g,4 b'8
	|	c8 g4 e16( g)
	|	f8 g,4 b'8
	|	c8 g4 e16( g)

	% 47
	|	g16( f) f( e) e( d) d( e)
	|	e16( f) f( e) e( d) d( e)
	|	e16( f) f( e) e( d) d( c)
	|	b4 r8 g

	% 51
	|	c4. d16( c
	|	b8) c d e
	|	f8 \acciaccatura g f16\trill( e f8) g
	|	e4 r8 c

	% 55
	|	c'4.( a8)
	|	g4.( e8)
	|	g8( f e f)
	|	d4 r8 g,

	% 59
	|	c4. d16( c
	|	b8) c d e
	|	f8 \acciaccatura g f16( e f8) g
	|	e4 r8 g

	% 63
	|	bes4( a8) g
	|	g4( f8) a
	|	a4( g8) f
	|	f4( e8) g

	% 67
	|	\acciaccatura g8 f\trill e \acciaccatura e d\trill c
	|	b4 r8 g'
	|	\acciaccatura g8 f\trill e \acciaccatura e d\trill c
	|	b4 r8 g'

	% 71
	|	f16( g a g f e d c)
	% Correction from urtext: 'bes' to 'b'
	|	b16( c d c b a g f)
	|	e16( g c e g e c g)
	|	e16( g c e g e c g)

	% 75
	|	f'16( d cis d) b( g fis g)
	|	f'16( d cis d) b( g fis g)
	|	c16\trill( b c) d e\trill( d e) f
	|	g16\trill( f g) a bes8 bes,

	% 79
	|	a16( c f c) a( c f c)
	|	bes16( d f d) b( d f d)
	|	c16( e g e) cis( e a e)
	|	d16( f a f) d( f b f)

	% 83
	|	e16 g( e g) c16( g fis g)
	|	a16( g f e d c b a)
	|	g2
	|	d'2\trill

	% 87
	|	e8 r8 r4
	|	\acciaccatura b8 c r r4
	|	\acciaccatura dis8 e r r4
	|	\acciaccatura fis8 g r r4

	% 91
	|	bes8 c,16 e d( c) e g
	|	f16( e) g bes a( g) bes d
	|	c16( bes a g f e d c
	|	bes16 a g f e f g a)

	% 95
	|	bes16( b c cis d e f g)
	|	a4( g8) f

	\bar "||"
	\mark \markup { \italic { Da Capo. } }
	s4\segno
	s8
	\bar "||"

		a8

	% 98
	|	a4( f8 d)
	|	d4( cis8) bes'
	|	bes4( a8) g
	|	g4( f8) a

	% 102
	|	d4. c8
	|	bes8 a g f
	|	e8 e \acciaccatura e d\trill( cis16 d)
	|	cis4 r8 a'

	% 106
	|	a4( f8) d
	|	d4( cis8) bes'
	|	bes4( a8) g
	|	g4( f8) a

	% 110
	|	d4. c8
	|	bes8 a g( a16 bes
	|	c4.) bes8
	|	a8 g f es

	% 114
	|	d16 fis( g fis g a bes a)
	|	c16( bes a g) bes( a g f)
	|	f16( e) a( g) f( e f) d
	|	c4 r8 c

	% 118
	|	f,16( a c a) f( a c a)
	|	f16( a c f) a( gis a f)
	|	e16( g bes g) e( c b c)
	|	bes16( c d c) bes( a g f)

	% 122
	|	e16( g c g) e( g c g)
	|	e16( g c e) g( e g bes)
	|	a16 f( e f) c( b c a)
	|	f16 a d c c( bes a g)

	% 126
	|	f16( a c a) f( a c a)
	|	f16 a c f a( gis a) f
	|	es16 c( b c d c b c)
	|	es16( d c bes a g fis e)

	% 130
	|	d16 d'( cis d) fis( d cis d)
	|	d,16 d'( cis d) fis( d cis d)
	|	g4 r
	|	r16 bes( a bes) g( a) f( g)

	% 134
	|	e4 r
	|	r16 a( gis a) f( g) e( f)
	|	d4 r
	|	r16 g( f g) e( f) d( e)

	% 138
	|	c16 e g( f) e( f) d( e)
	|	c16 e g( f) e( f) d( e)
	|	c16 e g( f) e( f) d( e)
	|	c16 e g( f e d c bes)

	% 142
	|	a16 f( g a bes c d e
	|	f16 g a bes c8) c,
	|	cis16 d( e d cis d e f
	|	g16 a bes c d8) d,

	% 146
	|	c2
	|	\acciaccatura a'8 g2\trill
	|	f4 r
	|	r2

	% 150
	|	r2
	|	r4 r8 a
	|	a4( f8) d
	|	d4( cis8) bes'

	% 154
	|	bes4( a8) g
	|	g4( f8) a
	|	d4. c8
	|	bes8 a g f

	% 158
	|	e8 e \acciaccatura e d16( cis d e)
	|	cis4 r8 a'
	|	a4( f8) d
	|	d4( cis8) bes'

	% 162
	|	bes4( a8) g
	|	g4( f8) a
	|	d4. c8
	|	bes8 bes4 a8

	% 166
	|	gis2:8
	|	a4 r8 a
	|	gis2:8
	|	a4 r8 a

	% 170
	|	gis2:8
	|	a2:8
	|	a8 a a a
	|	bes16( a bes c bes a g f)

	% 174
	|	f16( e d c bes a g f)
	|	e16( d c d e f g a)
	|	bes16( c d e f fis g gis)
	|	a4( g8) f

	\bar "||"
	\mark \markup { \italic { Da Capo. } }
	s2\segno
	\bar "|."
}

secondo = \relative c {
	\key f \major
	\time 2/4

	\partial 8

		r8
	% 1
	|	f2
	|	g4\segno r
	|	g2(
	|	a4) r

	% 5
	|	a,2
	|	bes4 bes
	|	bes4 b
	|	c4 r

	% 9
	|	r8 f g a
	|	g8 bes16 a g8 f
	|	e8 g c bes
	|	a8 c16 bes a8 g

	% 13
	|	fis8 a d, fis
	|	g8 g, g' f
	|	e8 g c, e
	|	f f, f' a

	% 17
	|	bes4( a8) r
	|	e4( f8) a
	|	bes4( a8) r
	|	e4( f8) r

	% 21
	|	f,2:8
	|	bes2:8
	|	c2:8
	|	f8 r r4

	% 25
	|	r2
	|	d8 e4 f8
	|	bes,8 bes c c
	|	f,8 r r4

	% 29
	|	r2
	|	d'4 e
	|	f8 a c c,
	|	f16( g f e f g a bes)

	% 33
	|	c2
	|	f,16( g f e f g a bes)
	|	c8 c bes bes
	|	a8 f f f

	% 37
	|	f4 f
	|	f,4 \mark \markup { \italic { Fine. } } r8\fermata
	\bar "|."

		r8

	% 39
	\noBreak
	|	r8 f a c
	|	f8 f, f' r
	|	r8 e, g c
	|	e8 g c r

	% 43
	|	d,2
	|	e2
	|	d2
	|	e2

	% 47
	|	a8 g f g
	|	a8 g f g
	|	a8 g f fis
	% Correction from urtext: 'f' to 'g'
	|	g8 a g f

	% 51
	|	e8 g e g
	|	f8 e d c	
	|	b4 g
	|	c8 e g c

	% 55
	|	a8 c a f
	|	e8 g e c	
	|	a4 f
	|	g8 g'4 f8

	% 59
	|	e8 g e g
	|	f8 e d c
	|	b4 g
	|	c8 c, c' r

	% 63
	|	cis'2
	|	d2
	|	b2
	|	c2

	% 67
	|	f,4( fis
	|	g4) e(
	|	f4 fis
	|	g4) e(

	% 71
	|	f4 fis
	|	g4) g,
	|	c4 e
	|	c4 e

	% 75
	% Correction from urtext: 'bes' to 'b'
	|	d8 b d b
	% Correction from urtext: 'bes' to 'b'
	|	d8 b d b
	|	c4 c
	|	e4 e

	% 79
	|	f4 a,
	|	bes4 b
	|	c4 cis
	|	d4 g,

	% 83
	|	c4 e
	|	f4 f
	|	g2:8
	|	g,2:8

	% 87
	|	c16 c' b a g f e d
	|	c16 g' f e d c b a
	|	g16 e' d c b a g f
	|	e16 c' b a g f e d

	% 91
	|	c8 r r4
	|	r2
	|	r2
	|	r2

	% 95
	|	r2
	|	f'2

	\bar "||"
	\mark \markup { \italic { Da Capo. } }
	s4\segno
	s8
	\bar "||"

		r8

	% 98
	|	d2
	|	e2
	|	cis2
	|	d2

	% 102
	|	r8 d e fis
	|	g8 a bes a
	|	g4 gis
	|	a8 a, a' r

	% 106
	|	d,2
	|	e2
	|	cis2
	|	d2

	% 110
	|	r8 d e fis
	|	g8 a bes r
	|	r8 c, d e
	|	f8 g a a,

	% 114
	|	bes4 bes
	|	bes4 bes8 b
	|	c4 g
	|	c8 c, c' r

	% 118
	|	a'4. c8
	|	a4 f
	|	g4 r
	|	g4 r

	% 122
	|	c,4. e8
	|	g4. e8
	|	f8 r a, c
	|	f8 g a bes

	% 126
	|	a4. c8
	|	a4 f
	|	fis4 r
	|	fis4 r

	% 130
	|	fis4. a8
	% Correction from urtext: 'f' to 'fis' and 'c' to 'd'
	|	fis4 a8 d
	% Correction from urtext: 'b' to 'bes'
	|	bes16( d cis d) bes c a bes
	|	g4 r

	% 134
	|	r16 c b c a bes g a
	|	f4 r
	|	r16 bes a bes g a f g
	|	e4 g8 f

	% 138
	|	e4 g8 f
	|	e4 g8 f
	|	e4 g8 f
	|	e2:8

	% 142
	|	f4 g
	|	a4 a,
	|	bes4 bes
	|	bes2:8

	% 146
	|	c2:8
	|	c2:8
	|	f8 a a a
	|	a2:8

	% 150
	|	a16 g a bes a g a bes
	|	a16 g a bes a g f e
	|	d2
	|	e2

	% 154
	|	cis2
	|	d2
	|	r8 d e fis
	|	g8 a bes a

	% 158
	|	g8 g gis gis
	|	a8 a, a' r
	|	d,2
	|	e2

	% 162
	|	cis2
	|	d2
	|	r8 d e fis
	|	g4 a

	% 166
	|	bes2:8
	|	a8 e cis a
	|	d8 f e d
	|	cis8 e cis a

	% 170
	|	d8 f e d
	|	cis4 r
	|	r2
	|	r2

	% 174
	|	r2
	|	r2
	|	r2
	|	f2

	\bar "||"
	\mark \markup { \italic { Da Capo. } }
	s2\segno
	\bar "|."
}

\paper {
	page-count = #3
}

\score {
	\new StaffGroup <<
		\new Staff {
			\clef "treble"
			\primo
		}
		\new Staff {
			\clef "bass"
			\secondo
		}
	>>

	\header {
		piece = "Rondeau"
	}

	\layout {
		indent = 0
		\context {
			\Score
			\override SpacingSpanner.common-shortest-duration =
				#(ly:make-moment 1/2)
		}
	}

	\midi {
		\tempo 4 = 120
	}
}
