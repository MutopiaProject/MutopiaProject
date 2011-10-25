\version "2.14.2"

\header {
	title = \markup {
		\normal-text {
			"Schafe Können Sicher Weiden"
		}
	}
	composer = "J. S. Bach"
	opus = "BWV 208"

	mutopiatitle = "Schafe Können Sicher Weiden (Sheep Will Safely Graze)"
	mutopiacomposer = "BachJS"
	mutopiaopus = "from BWV 208"
	mutopiainstrument = "Two flutes, soprano, and basso continuo"
	source = "Breitkopf & Härtel, 1881"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Jeremy Visser"
	maintainerWeb = "http://jeremy.visser.name/"

 footer = "Mutopia-2011/10/25-1794"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

fluteOne = \relative c'' {
	\clef "treble"
	\time 4/4
	\key bes \major

		f8 f16( d) f8 f16( d) f8( g) g( bes)
	|	es,8 es16( c) es8 es16( c) es8( a) a( c)
	|	bes8~ bes32( c d16) bes( d) c( f,) bes8~ bes32\p( c d16) bes( d) c( f,)
	|	bes8 d32\f( es f16) d( bes) c( a) bes8 d32\p( es f16) d( bes) c( a)
	|	bes4 r r2
	|	r1
	|	r1
	|	r1
	|	f8 f16( d) f8 f16( d) f8( g) g( bes)
	|	g g16( es) g8 g16( es) g8( a) a( c)
	|	r8 bes32( c d16) bes( d) c( f,) bes8 r8 r4
	|	r8 bes32( c d16) bes( d) c( f,) bes8 r8 r4
	|	r1
	|	r2 f8 f16( d) f8 f16( d)
	|	f8( g) g( bes) es,8 es16( c) es8 es16( c)
	|	a'8( bes) bes( c) r8 d32( es f16) d( bes) f( a)
	|	bes8 f16( d) f8 f16( d) f8( g) g( bes)
	|	es,8 es16( c) es8 es16( c) es8( a) a( c)
	|	bes8~ bes32( c d16) bes( d) c( f,) bes8~ bes32\p( c d16) bes( d) c( f,)
	|	bes8 d32\f( es f16) d( bes) c( a) bes8 d32\p( es f16) d( bes) c( a)
		\once \override Script #'padding = #1
	|	bes4\fermata r4 r2
	|	r1
	|	r1
	|	r1
	|	r1

	|	r2 g8 g16( es) g8 g16( es)
	|	g8( as) as( c) f,8 f16( d) f8 f16( d)
	|	f8( b) b( d) c~ c32( d es16) c( es) d( g,)
	|	c8~ c32\p( d es16) c( es) d( g,) c8 es32\f( f g16) es( c) d( b)
	|	c8 es32\p( f g16) es( c) d( b) c4 r4
	|	r1

	|	r2 a8 a16( f) a8 a16( f)
	|	a8( bes) bes( d) g,8 g16( e) g8 g16( e)
	|	g8( cis) cis( e) a,8 a16( fis) a8 a16( fis)
	|	a8( bes) bes( d) g,8 g16( e) g8 g16( e)
	|	g8( a) a( c) c,8 c16( a) c8 c16( a)
	|	c8( d) d( bes) d8 d16( b) d8 d16( b)
	|	d8( e) e( g) g8 g16( e) a8 a16( f)
	|	bes8( c) bes( e) r2
	|	r1
	\bar "|."
	\once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\mark \markup { \italic { Da Capo. } }
}

fluteTwo = \relative c'' {
	\clef "treble"
	\time 4/4
	\key bes \major

		d8 d16( bes) d8 d16( bes) d8( es) es( g)
	|	c,8 c16( a) c8 c16( a) c8( es) c( es)
	|	d8~ d32( es f16) d( f) es( c) d8~ d32\p( es f16) d( f) es( c)
	|	d8 bes'32\f( c d16) bes( d,) es( f) d8 bes'32\p( c d16) bes( d,) es( c)
	|	d4 r r2
	|	r1
	|	r1
	|	r1
	|	d8 d16( bes) d8 d16( bes) d8( es) es( g)
	|	es es16( c) es8 es16( c) es8( f) f( a)
	|	r8 d,32( es f16) d( f) es( c) d8 r8 r4
	|	r8 d32( es f16) d( f) es( c) d8 r8 r4
	|	r1
	|	r2 d8 d16( bes) d8 d16( bes)
	|	d8( es) es( g) c,8 c16( a) c8 c16( a)
	|	c8( d) d( es) r8 bes'32( c d16) bes( d,) es( c)
	|	d8 d16( bes) d8 d16( bes) d8( es) es( g)
	|	c,8 c16( a) c8 c16( a) c8( es) c( es)
	|	d8~ d32( es f16) d( f) es( c) d8~ d32\p( es f16) d( f) es( c)
	|	d8 bes'32\f( c d16) bes( d,) es( f) d8 bes'32\p( c d16) bes( d,) es( c)
	|	d4 r4 r2
	|	r1
	|	r1
	|	r1
	|	r1

	|	r2 es8 es16( c) es8 es16( c)
	|	es8( f) f( as) d,8 d16( b) d8 d16( b)
	|	d8( f) d( f) es~ es32( f g16) es( g) f( d)
	|	es8~ es32\p( f g16) es( g) f( d) es8 c'32\f( d es16) c( es,) f( g)
	|	es8 c'32\p( d es16) c( es,) f( g) es4 r4
	|	r1

	|	r2 f8 f16( d) f8 f16( d)
	|	f8( g) g( bes) bes,8 bes16( g) bes8 bes16( g)
	|	e'8( g) e( g) es8 es16( c) fis8 fis16( d)
	|	fis8( g) g( bes) c8 c16( g) e8 e16( c)
	|	e8( f) f( a) a,8 a16( f) a8 a16( f)
	|	a8( bes) bes( d) b8 b16( g) b8 b16( g)
	|	b8( c) c( e) e8 e16( c) f8 f16( d)
	|	e8( g) e( g) r2
	|	r1
	\bar "|."
}

pales = \new Voice = "pales" \relative c'' {
	\clef "treble"
	\time 4/4
	\key bes \major

		r1
	|	r1
	|	r1
	|	r1
	|	bes4 d8( c) c4. d8
	|	es4 g8( f) d4\trill c8( bes)
	|	d( bes) a( g) c4. d8
	|	a4 g8( f) f2

	|	f4 aes8( g) g4. a8
	|	bes4 d8( c) a4 g8( f)
	|	f'4 g8( f) f( d) c( bes)
	|	f'4 g8( f) f( d) c( bes)
	|	es4. f8 d( c) bes( c)
	|	a4. bes8 bes2
	|	r2 g'8( es) d( c)
	|	f4. g8 d4.\trill c16 bes
	|	bes4 r4 r2
	|	r1
	|	r1
	|	r1

	|	d4 g fis4. g8
	|	es4 d bes\trill a8 g
	|	c4 d8( b) c4. d8
	|	es4 f8( d) es4 g8( f)
	|	g4 as b, c8( d)
	|	es4 d8( c) c2
	|	r1
	|	r1
	|	r1

	|	r2 g4 bes8( a)
	|	bes4. d8 c4 bes8( a16 bes)
	|	a4 g8 f f'4 e8 d
	|	d4. f8 e f16 g e8 d
	|	cis4 b8( a) c2~
	|	c4 bes8( c16 a) bes2~
	|	bes8( a) a4 es'2~
	|	es4 d8( f16 e) f2~
	|	f8( e) d( e) e4 d8( c)
	|	bes4 a8( bes16 g) c([ bes a bes c bes)] c d
	|	a4 g8 f f2
	\bar "|."
}

palesWords = \new Lyrics \lyricsto "pales" {
	% worth mentioning that barcheck resets for some reason if
	% lyric doesn't align to first beat of bar, so you need to
	% omit the bar symbol.

		Scha -- fe kön -- nen
	|	si -- cher wei -- den,
	|	wo ein gu -- ter
	|	Hir -- te wacht,

		Scha -- fe kön -- nen
	|	si -- cher wei -- den,

		Scha -- fe kön -- nen
	|	si -- cher wei -- den,
	|	wo ein gu -- ter
	|	Hir -- te wacht,

		wo ein
	|	gu -- ter Hir -- te _
	|	wacht.

		Wo Re -- gen -- ten
	|	wohl re -- gie -- ren, _
	|	kann man Ruh' und
	|	Frie -- den spü -- ren,
	|	und was Län -- der
	|	glück -- lich macht,

		wo Re --
	|	gen -- ten wohl re --
	|	gie -- ren, _ kann man _
	|	Ruh' und Frie -- _ _ den _
	|	spü -- ren, Ruh'

		und Frie -- 
		den, Ruh'
		und Frie --
		den spü -- ren,
	|	und was -- Län -- _ der
	|	glück -- lich _ macht.
}

continuo = \relative c {
	\clef "bass"
	\time 4/4
	\key bes \major

		bes8( bes bes bes)
		bes( bes bes bes)
	|	bes( bes bes bes)
		bes( bes bes bes)
	|	bes'( bes a a)
		g( g f f)
	|	es( es f f) g f16 es f8 f,

	|	bes( bes bes' bes)
		bes( bes bes bes)
	|	a( a a a)
		bes( bes bes bes)
	|	bes,( bes bes bes)
		bes( bes a bes)
	|	c( c c c)
		f( f es es)

	|	d( d bes bes)
		es( es d d)
	|	c( c c c)
		f( f es es)

	|	d( d es es)
		bes( bes c c)
	|	d( d es es)
		bes( bes d d)
	|	c( c f f)
		bes, c d es
	|	f( f f, f)
		bes( bes bes bes)

	|	bes( bes bes bes)
		bes( bes a a)
	|	bes( bes es es)
		f( f f, f)
	|	bes( bes bes bes)
		bes( bes bes bes)
	|	bes( bes bes bes)
		bes( bes bes bes)
	|	bes'( bes a a)
		g( g f f)
	|	es( es f f) g f16 es f8 f,

		\once \override Script #'padding = #1
	|	bes8_\fermata( bes bes' bes) a( a bes bes)
	|	c( c d d) g,( g f f)
	|	es( es d d) es( es b b)
	|	c( c b b) c( c d d)
	|	es( es f f) f( f es f)
	|	g( g g, g) c( c c c)

	|	c( c c c) c( c c c)
	|	c( c c c) c'( c bes bes)
	|	as( as g g) f( f g g)
	|	as g16 f g8 g, c( c c c)
	|	d( d d d) e( e e e)
	|	f( f e e) d( d c c)
	|	bes( bes a a) g( g g g)
	|	a( a g g) fis( fis d d)
	|	g( g f f) e( e c c)
	|	f( f f f) f( f f f)
	|	bes( bes bes bes) g( g g g)
	|	c( c c c) bes( bes a a)
	|	g( g g g) a( a bes bes)
	|	c c c, c f2
}

\book {
	\bookOutputName "Score"
	\score {
		\new StaffGroup <<
		%{
		% commented out -- not particularly readable
		% uncomment if you prefer both flutes as separate voices on a single stave
		\new Staff <<
			\set Staff.instrumentName = #"Flutes"
			\set Staff.shortInstrumentName = #"Fl."
			\new Voice { \voiceOne \fluteOne }
			\new Voice { \voiceTwo \fluteTwo }
		>>
		%}

		% using this instead
		\new GrandStaff <<
		\new Staff {
			\set Staff.instrumentName = #"Flute 1"
			\set Staff.shortInstrumentName = #"Fl. 1"
			\fluteOne
		}
		\new Staff {
			\set Staff.instrumentName = #"Flute 2"
			\set Staff.shortInstrumentName = #"Fl. 2"
			\fluteTwo
		}
		>>

		\new Staff {
			\set Staff.instrumentName = \markup \center-column {
				\bold "Pales"
				\line { \italic "Vocal" }
			}
			\set Staff.shortInstrumentName = #"P."
			\pales
		}
		\palesWords

		\new Staff {
			\set Staff.instrumentName = "Continuo"			\set Staff.shortInstrumentName = #"C."
			\continuo
		}
		>>

		\header {
			piece = "Arie"
		}
		\layout {
			indent = 2\cm
			short-indent = 1\cm
			\context {
				\Score
				\override SpacingSpanner
					#'common-shortest-duration = #(ly:make-moment 1 8)
			}
		}
		\midi { }
	}
}

% The following can be used to produce individual parts if desired.
% Not 100% happy with their formatting, so left commented out to be
% possibly fixed up later.

%{
\book {
	\bookOutputName "Flute"
	\score {
		\new GrandStaff <<
		\new Staff {
			\set Staff.instrumentName = #"Flute 1"
			\fluteOne
		}
		\new Staff {
			\set Staff.instrumentName = #"Flute 2"
			\fluteTwo
		}
		>>

		\layout {
			\context {
				\Score
				\override SpacingSpanner
					#'common-shortest-duration = #(ly:make-moment 1 8)
			}
		}

	}
	\header {
		piece = "Arie"
		instrument = "Flutes"
	}
}

\book {
	\bookOutputName "Pales"
	\score {
		<<
			\pales
			\palesWords
		>>
		\layout {
			\context {
				\Score
				\override SpacingSpanner
					#'common-shortest-duration = #(ly:make-moment 1 16)
			}
		}

	}
	\header {
		piece = "Arie"
		instrument = "Pales"
	}
}

\book {
	\bookOutputName "Continuo"
	\score {
		\continuo
	}
	\header {
		piece = "Arie"
		instrument = "Continuo"
	}
}
%}
