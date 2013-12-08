\version "2.17.29"
\language "deutsch"

\header {
	title = "Ночь на Лысой горе"
	subtitle = "(Night on Bald Mountain)"
	composer = "Модест Петрович Мусоргский"
	arranger = "Константин Чернов"

	mutopiatitle = "Night on Bald Mountain"
	mutopiacomposer = "MussorgskyM"
	mutopiainstrument = "Piano"
	source = "IMSLP #19990"
	copyright = "Creative Commons Attribution 3.0"
	maintainer = "Robert Clausecker"
	maintainerEmail = "fuz@fuz.su"
	moreInfo = "Piano arrangement by Konstantin Chernov"
	mutopiastyle = "Romantic"

 footer = "Mutopia-2013/12/08-1892"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

upper = \relative a'' {
	\set Score.tempoHideNote = ##t
	\tempo "Allegro feroce" 4 = 180
	\clef treble
	\key f \major

	% meter is 2/2, but we want beams as in 4/4
	\numericTimeSignature
	\overrideTimeSignatureSettings
        2/2        % timeSignatureFraction
        1/4        % baseMomentFraction
        #'(1 1 1 1)    % beatStructure
        #'((end . (((1 . 8) . (4 4)) ((1 . 12) . (3 3 3 3)))))
	\time 2/2

	\tupletSpan 4
	\repeat unfold 2 {
		\tuplet 3/2 { a8 \( gis a b a gis a gis a b a gis \) | }
	}

	\repeat unfold 2 {
		\tuplet 3/2 { a8 gis a b a gis a gis a b a gis | }
	}

	a16 \( gis a gis a8 ~ a32 b c d
	<< { \voiceOne es4~ } \new Voice { \voiceTwo a,16 gis a gis } >>
	\oneVoice <es'~ a,>8 es32 d c b |

	a16 gis a gis a8 ~ a32 h c d
	<< { \voiceOne e!4~ } \new Voice { \voiceTwo a,16 gis a gis } >>
	\oneVoice <e'~ a,>8 e32 d c h \) |

	\repeat unfold 2 {
		\tuplet 3/2 { a8 \( gis a b a gis \) a \( gis a b a gis \) | }
	}

	a16 \( gis a gis a8 b32 c d e
	<< { \voiceOne f4~ } \new Voice { \voiceTwo a,16 gis a gis } >>
	\oneVoice <f' a,>8 e32 d c b |

	a16 gis a gis a8 h32 c d e
	<< { \voiceOne fis4~ } \new Voice { \voiceTwo a,16 gis a gis } >>
	\oneVoice <fis' a,>8 e32 d c h \) |

	\tuplet 3/2 { a8 \( gis a b! a gis \) a \( gis a b a gis \) | }

	\repeat unfold 4 { <a f>8-. <f gis>-. q-. <a f>-. } |

	\repeat unfold 6 { <a f a,>-. <f gis gis,>-. q-. <a f a,>-. } |

	\repeat unfold 2 { <a c c,>-. <a h h,>-. q-. <a c c,>-. } |

	\repeat unfold 3 { <f h h,>-. <f ais ais,>-. q-. <f h h,>-. }
	<f c c'>-. <f h h,>-. q-. <f c c'>-.

	\repeat unfold 4 { <e a a,> <e gis gis,> q <e a a,> } |
	\repeat unfold 4 { <f a a,> <f gis gis,> q <f a a,> } |

	<d g d'>8 r r4 r2 |
	<e g d' e>8 r r4 r2 |

	\times 2/3 {
		<fis d>8-. q-. q-. <e c! a>-. <e c a>-. q-.
		<fis d>-. q-. q-. <d b b'>-. q-. q-. |

		<fis d>-. q-. q-. <a c, a>-. q-. q-.
		<d, h>-. q-. q-. <fis! a, fis!>-. <fis a, fis>-. q-. |
	}

	<fis d>[ q] <e c a>[ q] <fis d>[ q] <b d, b> q |
	<fis d>[ q] <b d, b>[ q] <d, h>[ q] <fis! a, fis!>[ <fis a, fis>] |

	q8 r r4 r2 | R1 |
	r2 \appoggiatura { d'16 es f } <g es g,>8-. r r4 |
	r2 \appoggiatura { cis,16 d e! } <f d f,>8-. r r4 |

	\ottava #1
	<< { \appoggiatura { e16 f g } \stemUp <a e>8 r r4 r2 s8 }
	\\ {
		\repeat tremolo 4 { a,16( b }
		\repeat tremolo 4 { a16 b } |
		\oneVoice <a a'>8)
	} >>
	\ottava #0
	r r4 r2\fermata

	\mark \default
	\times 2/3 {
		b8\( a b ces b a b a b ces b a\) |
		b\( a b ces b a b a b ces b a\) |
		b\( a b ces b a\) b\( a b ces b a\) |
		b\( a b ces b a\) b\( a b ces b a\) |
	}

	b16\( a b a b8 b32 ces des es
	<< { \voiceOne fes4~ } \new Voice { \voiceTwo b,16 a b a } >>
	\oneVoice  <b fes'~>8 fes'32 es des ces |

	b16 a b a b8 b32 c! des es
	<< { \voiceOne f!4~ } \new Voice { \voiceTwo b,16 a b a } >>
	\oneVoice  <b f'~>8 f'32 es des c\) |

	\times 2/3 {
		b8\( a b ces b a\) b\( a b ces b a\) |
		b\( a b ces b a\) b\( a b ces b a\) |
	}

	b16\( a b a b8 ces32 des es f
	<< { \voiceOne ges4~ } \new Voice { \voiceTwo b,16 a b a } >>
	\oneVoice  <b ges'>8 f'32 es des ces |

	b16 a b a b8 c!32 des es f
	<< { \voiceOne g!4~ } \new Voice { \voiceTwo b,16 a b a } >>
	\oneVoice  <b g'>8 f'32 es des c\) |

	\times 2/3 { b8\( a b ces b a\) b\( a b ces b a\) | }

	<ges b>-. <ges a>-._\markup{\left-align\italic{sempre staccato}} q-. <ges b>-.
	q <ges a>-. q-. <ges b>-. |
	<ges b>-. <ges a>-. q-. <ges b>-. q <ges a>-. q-. <ges b>-. |

	\repeat unfold 6 { <ges b b,>-. <ges a a,>-. q-. <ges b b,>-. } |

	\repeat unfold 2 { <b des des,>-. <b c c,>-. q-. <b des des,>-. } |

	\repeat unfold 3 { <ges c c,> <ges h h,> q <ges c c,> }
	<ges des des'> <ges c c,> q <ges des des'> |

	<f b! b,!> <f a a,> q <f b b,>
	\repeat unfold 3 { <f b b,> <f a a,> q <f b b,> } |

	\repeat unfold 2 { <ges b b,> <ges a a,> q <ges b b,> } |

	\repeat unfold 2 { <ges heses heses,> <ges as as,> q <ges heses heses,> } |

	<ges b! b,!> r r4 r2 |
	<ges c c,>8 r r4 r2 |

	\ottava #1
	\repeat unfold 2 { <fis' d c'>16 q8. q16 q8. q16 q8. <f d b'>16 q8. | }
	<es c a'>16 q8. <g es b>16 q8. <es c a'>16 q8. <g es b>16 q8. |
	\ottava #0
	\repeat unfold 2 { <c, fis, d>16 q8. q16 q8. q16 q8. <b f d>16 q8.-> | }
	<a es c>16 q8. <g es b>16 q8. <a es c>16 q8. <g es b>16 q8. | \mark \default

	<a e! a,>8 <e a,>4-> <f a,>8 <e a,>-. <d a>-. <e a,>-. <f a,>-. |
	<g a,>4 <a a,> <e a,>8-> \times 2/3 { e,16( f g } a8) a32( g f e |
	d8->) <d' a'>4-> <d b'>8 <d a'>-. <d g>-. <d a'>-. <d b'>-. |
	<d c'>4 <d d'> <d a'>8 d'32( e f g a8) \times 2/3 { a16( g f } |

	e8) <e, a,>4-> <f a,>8 <e a,>-. <d a>-. <e a,>-. <f a,>-. |
	<g a,>4 <a a,> <e a,>8 \times 2/3 { e,16( f g } a8) a32( g f e |
	d8->) <d' a'>4-> <d b'>8 <d a'>-. <d g>-. <d a'>-. <d b'>-. |
	<d c'>4 <d d'> <d a'>8-> d'32( e f g a8) \times 2/3 { a16( g f } |
	<e a,>8)

		a,,,4-> b8 a-. g-. a-. b-. |
	c4 d4. r8 r4 \clef bass |
	\repeat unfold 13 a8
	\repeat unfold 19 <a e> <a d,> q q q r2 \clef treble \mark \default |

	\tempo "Poco più sostenuto"
	\repeat unfold 2 {
		e''4. f8 e-. d-. e-. f-. |
		g4-. a-. e->~ e8 r |
	}

	\repeat unfold 2 {
		e4. f8 e-. d-. c-. e-. |
		<< { b4->( e8) r a,4->( a'8) r } \\ { d,,2( cis8) r r4 } >> |
	}

	<a' a'>4.(\mf <b b'>8) <a a'>-. <g g'>-. <f f'>-. <g g'>-. |
	<a a'>4 <b b'> <b g' b>8( <d d'>) \acciaccatura d' <c c,>( <b b,>) |
	<a, a'>4.( <b b'>8) <a a'>-. <g g'>-. <f f'>-. <g g'>-. |
	<a a'>4 <h h'> <h g' h>8( <d d'>) \acciaccatura d' <c c,>( <h h,>) |

	<a g e a,>4-. <h g e h> << { d8( c) h4-. } \\ { <g e>4 q } >> |
	<a g e>-. <h g e>-. << { d8( c) h4-. } \\ { <g e>4 q } >> |

	<a c, a>8 r <h a h,>2->( <c a c,>8) r |
	<< { cis2.(\startTrillSpan \oneVoice <a a'>8\stopTrillSpan) }
	\\ { <a cis,>2. s8 } >> r \mark \default |

	\tempo "Allegro feroce"
	\repeat unfold 2 {
		r <e a,>4-> <f a,>8 <e a,>-. <d a>-. <e a,>-. <f d>-. |
		<g e>4 <b d,> <e, cis e,>->( \ottava #1 
		\appoggiatura { e'16 f gis } <a, a'>8) \ottava #0 r |
	}

	<e a,>4.-> <f a,>8 <e a,>-. <d a>-. <c a>-. <e a,>-. |
	<b g>4( e8) r a,4 \ottava #1 
	\appoggiatura { e''16 f g! } <a e a,>8 \ottava #0 r |

	<e, a,>4.-> <f a,>8 <e a,>-. <d a>-. <c a>-. <e a,>-. |
	<b g>4(-> e8) r a,4 \ottava #1 
	\appoggiatura { e''16 f g! } <a e a,>8 \ottava #0 r |

	<< {
		a,4.( b8 a g fis g) |
		a4( b) b8( d) \acciaccatura d c( b) |
		a4.( b8 a g fis g) |
		<g a>4( <g b>) b8( d) \acciaccatura d c!( b) |
	} \\ {
		f4( e! es d | d d d d) |
		d( d d d) | cis2( d4) d |
	} >>

	\repeat unfold 2 { <es g a> <es g b> <es g d'>8 <es g c> <es g b>4 | }

	<es g a>8 r <b es g b>2->( <a es' g a>8) r |
	<a d fis a> r <b d fis b>2->( <a d fis a>8) r \mark \default |

	\appoggiatura { a'16 b c } <d g, d>8 <e, g,>4-> <f g,>8
	<e g,>-. <d g,>-. <e g,>-. <f g,>-. |
	<g g,>4 <a a,> <e g,>8 g32( a b c d8) d32( c b a |
	<g e d>8) <e g,>4-> <f g,>8 <e g,> <d g,> <e g,> <f g,> |
	<g g,>4 <a a,> <e g,>8 g32( a b c d8->) d32( c b a |
	<g e d>8->) g32( a b c d8->) r
	\repeat unfold 3 { <e,, d g,>->\noBeam g'32( a b c d8->) r } |

	\ottava #1
	\appoggiatura { e16 f g } <a e a,>8 gis,( a e \ottava #0 f e f gis) |
	\repeat unfold 5 { a( gis a e f e f gis) | }

	\set subdivideBeams = ##t
	a16[\( a' as, as' g, g' ges, ges'] f,[ f' e,! e'! es, es' d, d'] |
	des,[ des' c, c' ces, ces' b, b'] a,[ a' as, as' g, g' ges, ges']\) |
	f,[\( f' ges, ges' g, g' as, as'] a,[ a' b, b' ces, ces' c, c'] |
	des,[ des' d, d' es, es' e, e'] f,[  f' g, g' as, as' a, a']\) |

	\set subdivideBeams = ##f \mark \default
	<b b,>8^\markup{\italic {8va ad lib.}}\( a, b a as g as g |
	ges f e! des c es ges a!\) |
	b\( a b a as g as g |
	ges f e! des c es ges a!\) |

	\once \override Score.RehearsalMark.break-visibility = ##(#t #t #f)
	\mark \markup { \override #'(baseline-skip . 3) \center-column { \fermata \rest #"4" } }

	\tempo "Poco più sostenuto"
	s1

	d,8 c c a c b s4 |
	<< {
		\voiceThree d,8 e! fis g gis a b a | d c c a c b b16( a g8) |
	} \\ {
		\voiceOne d1 | \voiceTwo fis2( g8) r r4 |
	} >>

	<d d'>8-. <e! e'!>-. <fis fis'>-. <g g'>-. <gis gis'>-. <a a'>-. <b b'>-. <a a'>-. |
	<< { <d d'> <c c'> q <a a'> <c c'> <b b'> q16( <a a'> <g g'>8) } \\ { fis'2( g4) e\rest } >> |

	d8( e!_\markup\italic{poco a poco più animato} fis g gis a b a) |
	\repeat unfold 3 { d,( e! fis g gis a b a) } |

	<d d,> r <c c,>-. <a a,>-. \acciaccatura c <b b,>( <a a,>) <g g,>4( |
	<d' d,>8)_\markup\italic{poco a poco} r <c c,>-. <a a,>-. \acciaccatura c <b b,>( <a a,>) <g g,>4( |
	<d' d,>8) r <c c,>-. <a a,>-. \acciaccatura c <b b,>( <a a,>) <g g,>4( |
	<d' d,>8) r <c c,>-. <a a,>-. \acciaccatura c <b b,>( <a a,>) <g g,>4 |		

	% TODO place natural under triller
	\repeat unfold 2 {
		d'2\(^\markup\natural^\startTrillSpan c\startTrillSpan |
		b\startTrillSpan a4(\startTrillSpan g8)\)\stopTrillSpan r |
	}

	\mark \default
	\tempo "Animato assai"
	a2( <b b,>8-.) r <a a,>-. r |

	<d d,>( <e e,>) q( <f f,>) q( <e e,>) q( <d d,>) |
	<< { a2(\startTrillSpan s2\stopTrillSpan) }
	\\ { <cis cis,>8 \oneVoice r r4 <b b,>8-. r <a a,>-. r } >> |
	<d d,>( <e e,>) q( <f f,>) q( <e e,>) q( <d d,>) |

	<cis a cis,> r <cis,! gis!>-. <cis gis>-. <cis a~>4( <h a>8) r |
	<a cis>4 q << { e'4.( dis8) } \\ fis,2 >> |	
	<a cis>4 \times 2/3 { <gis cis>8-. q-. q-. } <a~ cis>4( <a h>8) r |
	<a cis>4 <gis cis> << { cis8 h a h } \\ fis2 >> |

	<cis e a cis>4 <cis e gis cis>8 q << { cis'4( h) } \\ <a f d>2 >> |
	<cis a e>4 q << { e4.( d8) } \\ <a fis>2 >> |
	<cis a e>4 \times 2/3 { <cis gis e>8 q q } << { cis4( h) } \\ <a f d>2 >> |
	<cis a e>4 <cis gis e> << { \voiceOne cis8( h a h } \new Voice { \voiceTwo <fis d>2 } >> |

	\bar "||" \key a \major \oneVoice
	<cis eis gis cis>8) r

	\repeat unfold 2 {
		\repeat unfold 3 { cis16( d cis8) } |
		e16->( fis e8) \repeat unfold 3 { cis16( d cis8) } |

		<fis fis'>1( | <gis gis'>2 <h h'> | <cis cis'>8) r
	}

	cis,16( d cis8) r2 |
	fis16->( gis fis8) r4 r2 |
	\tempo "Poco rit."
	e16->(_\markup\italic{poco a poco} fis e8) r4 r2 |
	d16( e d8) r4 r2 | \mark \default

	\tempo "Più sostenuto"
	cis'16( d_\markup\italic{una corda} cis8) \repeat unfold 3 { cis16( d cis8) } |
	e16( fis e8) cis16( d cis8) cis2-> |

	cis8( <cis dis>) q( <cis eis>) q( <cis fis>) q( <cis gis'>) |
	q( <cis ais'>) q( <cis gis'>) q( <cis fis>) q( <cis eis>) |
	q16( d cis8) \repeat unfold 3 { cis16( d cis8) } |
	e16( fis e8) cis16( d cis8) cis2-> |

	<cis d>8( <cis dis>) q( <cis eis>) q( <cis fis>) q( <cis gis'>) |
	q( <cis ais'>) q( <cis gis'>) q( <cis fis>) q( <cis eis>) |
	q16( d cis8) \repeat unfold 3 { cis16( d cis8) } |
	e16( fis e8) cis16( d cis8) << { cis4->~ cis8 r } \\ { a16( b a8) a16( b a8) } >> |

	<a d>( <a e'>) q( <a d fis>) <a d g>( <a d fis>) <a cis e>( <a cis fis>) |
	<a d>( <a e'>) q( <a d fis>) <a d g>( <a d fis>) <h dis eis>( <h dis fis>) |
	<h e!> <h fis'> q <h e gis!> <h e a> <h e gis> <h dis fis> <h dis gis> |
	<h e!> <h fis'> q <h e gis!> <h e a> <h e gis> <cis eis fisis> <cis eis gis> |

	<cis fis>_\markup\italic{poco a poco crescendo} <cis gis'> q <cis fis ais>
	<cis fis h> <cis fis ais> <cis eis gis> <cis eis ais> |
	<cis fis>( <cis gis'>) q( <cis fis ais>) <cis fis h>( <cis fis ais>) <e fis gisis> <e fis ais> |
	<d fis h> <d fis cis'> <fis h cis> <fis h d> <fis h e> <fis h d> <fis h cis> <fis h d> |
	<d h'> <d h' cis> q <d h' d> <d h' e> <d h' d> <d h' cis> <d h' d> |

	\mark \default
	<cis eis gis h>8 r \repeat unfold 3 { cis16( d cis8) } |
	\grace { cis16( dis) } <e e,>8 r cis16( dis cis8)
	<< { cis16( dis cis8) cis16( dis cis8) } \\ cis,2-> >> |
	<cis' cis'>8-. <dis dis'>-. q-. <eis eis'>-. q-. <fis fis'>-. q-. <gis gis'>-. |
	q-. <ais ais'>-. q-. <gis gis'>-. q <fis fis'>-. q-. <eis eis'>-. |

	<eis h' eis> r \repeat unfold 3 { cis16( d cis8) } |
	\grace { cis16( dis) } <e e,>8 r cis16( dis cis8)
	<< { cis16( dis cis8) cis16( dis cis8) } \\ cis,2-> >> |
	<cis' cis'>8-. <dis dis'>-. q-. <eis eis'>-. q-. <fis fis'>-. q-. <gis gis'>-. |
	q-. <ais ais'>-. q-. <gis gis'>-. q <fis fis'>-. q-. <eis eis'>-. |

	<< {
		<eis cis' eis> r r4 cis16 d cis8 r4 |
		d16( e d8) r4 cis16( d cis8) cis r |
		<cis cis,>( <dis dis,>) q( <eis eis,>) q( <fis fis,>) q( <gis gis,>) |
		q(_\( <a a,>) <h h,>( <a a,>) q( <gis gis,>) q( <fis fis,>) |

		gis,\) r r4 cis16( d cis8) r4 |
		d16 e d8 r4 cis16 d cis8 cis r |
		<cis cis,>( <dis dis,>) q( <eis eis,>) q( <fis fis,>) q( <gis gis,>) |
		q(_\( <a a,>) <h h,>( <a a,>) q( <gis gis,>) q( <fis fis,>) |

		\mark \default
		<cis gis>\) r \ottava #1 \repeat unfold 3 { cis''16( d cis8) } |
		d16( e d8) \repeat unfold 3 { cis16( d cis8) } |
	} \\ {
		r4 <cis,, cis'>2-> <h h'>4~ |
		q <a a'>2( <gis gis'>8) r |
		\tweak X-offset #-1 e2\rest cis'2 |
		eis4 fis2 e8 d |

		<eis eis,> r <cis cis'>2-> <h h'>4~ |
		q <a a'>2( <gis gis'>8) r |
		\tweak X-offset #-1 e2\rest cis'2 |
		eis4 fis2 e8 d |

		<eis eis,> r cis'4 cis cis |
		d cis cis cis |
	} >>

	<cis' cis,>8( <d d,>) q( <cis cis,>) q( <h h,>) q( <cis cis,>) |
	<h h,>( <a a,>) q( <h h,>) <a a,>( <gis gis,>) q( <a a,>) |
	<gis gis,> \ottava #0 r

	<< {
		\repeat unfold 3 { cis,16( d cis8) } |
		d16( e d8) \repeat unfold 3 { cis16( d cis8) } |
	} \\ {
		cis,4 cis cis |
		d cis cis cis |
	} >>

	<cis' cis,>8( <d d,>) q( <cis cis,>) q( <h h,>) q( <cis cis,>) |
	<h h,>( <a a,>) q( <h h,>) <a a,>( <gis gis,>) q( <a a,>) |

	\bar "||" \mark \default \tempo "Tempo Iº (Allegro féroce)"
	<gis eis cis gis> r r4 r2 | R1 |

	<e a, e>4.-> <f a, f>8 <e a, e> <d a d,> <e a, e> <f a, f> |
	<g e g,>4 <a e a,> <e a, e>4->~ q8 r |

	<fis a, fis>4 <gis cis, gis> << { <h h,>8( <a a,> <gis gis,>4) } \\ { fis4 s } >> |
	<fis cis fis,> <gis cis, gis>
	<< { \slashedGrace h8 <a a,>^[( <gis gis,>] <fis h, fis>4) } \\ { fis4 s } >> |
	<eis cis gis eis>8 r r4 r2 | R1 |

	<e a, e>4.-> <f a, f>8 <e a, e> <d a d,> <e a, e> <f a, f> |
	<g e g,>4 <a e a,> <e a, e>->~ q8 r |
	<fis a, fis>4 <gis cis, gis> << { <h h,>8( <a a,> <gis gis,>4) } \\ { fis4 s } >> |
	<fis cis fis,> <gis gis,>
	<< { \slashedGrace h8 <a a,>^[^( <gis gis,>] \stemUp <fis fis,>4) } \\ { fis4 h, } >> |

	\mark \default \bar "||" \key des \major \ottava #1
	<f' des' f>4\( <es ces' es> <f des' f> <heses des e heses'> |
	<f des' f> <as ces es! as> <des, b'! des> <f as c f>\) |
	\ottava #0
	<f, des' f>4\( <es ces' es> <f des' f> <heses des e heses'> |
	<f des' f> <as ces es! as> <des, b'! des> <f as c f>\) |

	<f as des f>8 r <c f> q <des~ f>4^( <des es>8) r |
	<des f>4 q << { as'4.->( ges8) } \\ b,2 >> |
	<des f>4 \times 2/3 { <ces f>8 q q } <des~ f>4^( <des es>8) r |
	<des f>4 <c f> << { f8 es des es s8 } \\ { b2->( \oneVoice

	\mark \default
	<a f'>8) } >> r r4 r2 |
	R1 |

	<as' des as'>4.-> <heses des heses'>8 <as des as'> <ges des' ges> <as des as'> <heses des heses'> |
	<ces as' ces>4 <des as' des> <as ces as'>4->~ q8 r |
	<b des b'>4 <c f c'> << b'4 \\ { <es, es'>8^( <des des'> <c f c'>4) } >> |
	<b f' b> << { s4 \stemUp \acciaccatura c'8 b4 } \\ { <c f, c> <des des,>8^( <c c,> <b es, b>4) } >> |

	<a f a,>8 r r4 r2 |
	R1 |
	<as des, as>4. <heses des, heses>8 <as des, as> <ges des ges,> <as des, as> <heses des, heses> |
	<ces as ces,>4 <des as des,> <as des, as>->~ q8 r |
	<b des, b>4 <c f, c> << b \\ { <es es,>8^( <des des,> <c f, c>4) } >> |
	<b f b,> <c f, c> << b \\ { <des des,>8^( <c c,> <b es, b>4) } >> | \mark \default

	\repeat unfold 2 { <es c a f> <es a, f> q <des as f> | }
	<ces ges es> <b ges des> <ces ges es> <b ges des> |
	\repeat unfold 2 { <e, a, f> q q <des as f> | }
	<ces ges es> <b ges des> <ces ges es> <b ges des> |

	\bar "||" \key f \major \tempo "a Tempo"
	<a f c>8 r <a es> q <a f~>4^( <g f>8) r |
	<a f>4 q << { c4.->( b8) } \\ d,2-> >> |
	<f a>4 \times 2/3 { <e a>8 q q } <f~ a>4^( <f g>8) r |
	<f a>4 <e a> << { a8 g f g } \\ d2-> >> | \mark \default

	\times 2/3 {
		<cis' e a>8( gis' a b a gis a gis a b a gis |
		a gis a b a gis a gis a b a gis) |
	}

	\repeat unfold 2 { \repeat tremolo 4 { a16( gis } \repeat tremolo 4 { a gis) } } |

	\times 2/3 {
		a8( gis a b a gis a gis a b a gis |
		a gis a b a gis a gis a b a gis) |
	}

	\repeat tremolo 4 { a16( gis } \repeat tremolo 4 { a gis } |
	\repeat tremolo 4 { a gis } \repeat tremolo 4 { a gis) } |

	\times 2/3 { a8( gis a b a gis a gis a b a gis) } |

	<f a>-. <f gis>-._\markup\italic{sempre staccato} q-. <f a>-.
	\repeat unfold 3 { q-. <f gis>-. q-. <f a>-. } |
	\repeat unfold 6 { <a f a,> <gis f gis,> q <a f a,> } |
	\repeat unfold 2 { <c a c,> <h a h,> q <c a c,> } |
	\repeat unfold 3 { <h f h,> <a f a,> q <h f h,> }
	<c f, c> <h f h,> q <c f, c> |
	\repeat unfold 4 { <a e a,> <gis e gis,> q <a e a,> } |
	\repeat unfold 4 { <a f a,> <gis f gis,> q <a f a,> } |

	\appoggiatura { a16 b c } <d gis, d>8-> r r4 <e d gis, e>8-> r r4 |
	q8-> r r4 \ottava #1 \appoggiatura { e16 f g } <a e cis a>8->
	\ottava #0 r r4 | \mark \default

	\repeat unfold 2 {
		<e e,>4. <f f,>8 <e e,> <d d,> <e e,> <f f,> |
		<g g,>4 <a a,> <e e,>->~ q8 r |
	}

	\repeat unfold 2 {
		<e e,>4. <f f,>8 <e e,> <d d,> <c c,> <e e,> |
		<b, d b'>4( <e e'>8) r <a, cis a'>4( <a' a'>8) r |
	}

	\repeat unfold 2 {
		<a a,>4. <b b,>8 <a a,> <g g,> <f f,> <g g,> |
		<a a,>4 <h h,> q8( <d d,>) \acciaccatura d <c c,>( <h h,>) |
	}

	\repeat unfold 2 { <a g e a,>4 <h g e h,> <d g, d>8 <c g e a> <h g e h>4 | }

	<a f a,>8 r <h a h,>2->( <c a c,>8) r |
	<< { cis2.( \startTrillSpan \oneVoice <g a a'>8) \stopTrillSpan } \\ <a cis,>2. >> r8 |
	\mark \default

	<e a,>4. <f a,>8 <e a,> <d a> <e a,> <f a,> |
	<g e a,>4 <a d, a> <e cis a>2 |
	\ottava #1 \appoggiatura { e'16 f gis a h c dis } <e cis e,>8
	\ottava #0 r <e, cis e,> r <e, a, e>4.-> <f a,>8 |

	<e a,> <d a> <e a,> <f a,> <g e a,>4 <a d, a> |
	<e cis a>2 \ottava #1 \appoggiatura { e'16 f gis a h c dis } <e cis e,>8
	\ottava #0 r <e, cis e,> r |
	<e, a, e>4.-> <f a,>8 <e a,> <d a> <c! a> <e a,> |

	<b! g>4( e8) r <e cis a>2 |
	\ottava #1 \appoggiatura { e'16 f gis a h c dis } <e cis e,>8
	\ottava #0 r <e, cis e,> r <e, a, e>4.-> <f a,>8 |

	<e a,> <d a> <c! a> <e a,> <b! g>4( e8) r |
	<e cis a>2 \ottava #1 \appoggiatura { e'16 f gis a h c dis } <e cis e,>8
	\ottava #0 r <e, cis e,> r |

	<< \repeat unfold 2 {
		e,4.( f8 e d cis d) |
		e4( f) f8( a) \acciaccatura a g( f) |
	} \\ {
		cis4 h b a |
		a a a a |
		a a a a |
		d d d d |
	} >>

	\ottava #1
	\repeat unfold 2 { <e b' d e> <f b d f> <b d a'>8 <b d g> <f b d f>4 | }
	<e g b e>8 r <f b d f>2( <e e'>8) r |
	<e a cis e> r <f a cis f>2->( <e e'>8) r | \mark \default

	\appoggiatura { e'16 f g } <a d, a>8-> \ottava #0
	<h,, d,>4-> <c d,>8 <h d,>-. <g d>-. <h d,>-. <c d,>-. |
	<d d,>4 <e e,> h8 d'32( e f g a8) a32( g f e) |
	<d h a>8 <h, d,>4-> <c d,>8 <h d,>-. <g d>-. <h d,>-. <c d,>-. |
	<d d,>4 <e e,> h8 d'32( e f g a8) a32( g f e) |

	<d h a>8->\noBeam d32( e f g a8->) r \repeat unfold 2{ <h,, a d,>->\noBeam d'32( e f g a8->) r }
	<h,, gis e>->\noBeam \times 2/3 { h'16\(( c d) } <e e,>8\noBeam\)-> r |

	<a a,> gis,(^\markup\italic{8va ad lib.} a e f e f gis) |
	\repeat unfold 5 { a( gis a e f e f gis) } |

	\set subdivideBeams = ##t
	a16[( a' gis, gis' g, g' fis, fis'] f,[ f' e, e' es, es' d, d'] |
	cis,[ cis' c, c' h, h' b, b'] a,[ a' gis, gis' g, g' gis, gis']) |
	a,[ a'( b, b' h, h' c,! c'!] cis,[ cis' d, d' dis, dis' e, e'] |
	\ottava #1
	f,[ f' fis, fis' g, g' gis, gis'] a,[ a' h, h' c, c' cis, cis']) |

	\ottava #0 \bar "||" \mark \default \key d \major
	\set subdivideBeams = ##f

	\repeat unfold 2 { d,8 cis d cis c h c h | b a as f e g b cis! | }
	\once \override Score.RehearsalMark.break-visibility = ##(#t #t #f)
	\mark \markup { \override #'(baseline-skip . 3) \center-column { \fermata \rest #"4" } }

	\tempo "Poco più sostenuto"
	s1 |
	fis,,8 e e cis e d d16( cis h8) |
	<< {
		fis'-. gis-._\markup\italic{poco cresc.} ais-. h-. his-. cis-. d-. cis-. |
		fis e e cis e d d16( cis h8) |
		<fis fis'>-. <gis gis'>-. <ais ais'>-. <h h'>-.
		<his his'>-. <cis cis'>-. <d d'>-. <cis cis'>-. |
		ais'2 h8 r r4 |
	} \\ {
		fis,1 |
		ais2( h8) r r4 |
		<fis fis'>1 |
		<fis' fis'>8( <e e'> q <cis cis'> <e e'> <d d'>) q16( <cis cis'> <h h'>8) |
	} >>

	fis'(^\markup\italic{poco a poco più animato} gis ais h his c dis c) |
	\repeat unfold 3 { fis,( gis ais h his c dis c) | }
	<fis fis,> r <e e,>-. <cis cis,>-. \acciaccatura e <d d,>-. <cis cis,> <h h,>4 |
	<fis' fis,>8 r <e e,>-. <cis cis,>-. \acciaccatura e <d d,>-. <cis cis,> <h h,>4( |
	<fis' fis,>8)_\markup\italic{poco a poco} r <e e,>-. <cis cis,>-.
	\acciaccatura e <d d,>-. <cis cis,> <h h,>4( |
	<fis' fis,>8-.) r <e e,>-. <cis cis,>-. \acciaccatura e <d d,>-. <cis cis,> <h h,>4 |

	fis'2\(^\markup\sharp\startTrillSpan e\startTrillSpan |
	d\startTrillSpan cis4(\startTrillSpan h8)\)\stopTrillSpan r |
	fis'2\(^\markup\sharp\startTrillSpan e\startTrillSpan |
	d\startTrillSpan cis4(\startTrillSpan h8)\)\stopTrillSpan r |

	d2\(^\markup\natural\startTrillSpan c\startTrillSpan |
	b^\markup\natural\startTrillSpan a4(^\markup\flat\startTrillSpan g8)\)\stopTrillSpan r |
	d2\(^\markup\natural\startTrillSpan c\startTrillSpan |
	b'^\markup\natural\startTrillSpan a4(^\markup\flat\startTrillSpan g8)\)\stopTrillSpan r |

	\mark \default \tempo "Animato assai"
	<< { <d d'> r <d d,>4 q q | } \\ { \teeny e,:8 \normalsize d: d: d: | } >>
	\appoggiatura { d'16 e } <f f,>8 r <d d,>4-. q2-> |

	\ottava #1
	d'8( e) e( fis) fis( g) g( a) |
	a( b) b( a) a( g) g( fis) |

	fis \ottava #0 r <d, d,>4 q q |
	\appoggiatura { d16 e } <f f,>8 r <d d,>4-. q2-> |

	\ottava #1
	d'8( e) e( fis) fis( g) g( a) |
	a( b) b( a) a( g) g( fis) |

	\ottava #0
	<fis fis,> r r4 <d f, d>8 r r4 |
	<d fis, d>8 r r4 <fis fis,>8( <e e,> <d d,>4) |
	\repeat unfold 3 { <d fis, d>8 r r4 }
	<f d f,>8( <e e,> <d d,>4) | \mark \default

	<d a fis! d>8:16->( cis: d: a: b a b cis) |
	\repeat unfold 5 { d( cis d a b a b cis) } |

	\ottava #1 \set subdivideBeams = ##t
	d16[\( d' cis, cis' c, c' h, h'] b,[ b' a, a' gis, gis' g, g'] | \ottava #0
	fis,[ fis' f, f' e, e' es, es'] d,[ d' cis, cis' c, c' h, h'] |
	b,[ b' a, a' gis, gis' g, g'] fis,[ fis' f, f' e, e' es, es'] |
	d,[ d' cis, cis' c, c' h, h'] b,[ b' h, h' c, c' cis, cis']\) |

	\set subdivideBeams = ##f \mark \default \tempo "Poco meno mosso"
	<< \new Voice { \voiceOne d8 r r4 r2 } { \voiceTwo d,1~ } >>
	\oneVoice d2 r |
	d1~ d2 r |
	\repeat unfold 4 { d2. r4 | }
	d1\arpeggio~ d2 r |
	d1~ d2 r |

	<b' b'>4( <es es,>) q-. q-. |
	<a a,>( <es es,>) q-. q-. |

	q8(\( <e e,>) q( <f f,>) q( <fis fis,>) q( <g g,>) |
	q( <gis gis,>) q( <a a,>) q( <b b,>) q( <a a,>)\) |

	<a a,>4( <d, d,>) q-. q-. |
	<g g,>( <d d,>) q-. q-. |

	q8(\( <cis cis,>) q( <d d,>) q( <es es,>) q( <e e,>) |
	q( <f f,>) q( <fis fis,>) q( <g g,>) q( <gis gis,>)\) |

	<a a,>4->( <d, d,>) q q |
	<< {
		<es es,>->( <d d,>) q q | \voiceThree

		q8(\( <cis cis,>) q( <d d,>) q( <e e,>) q( <fis fis,>) | \oneVoice
		q( <g g,>) q( <a a,>) q( <b b,>) q( <a a,>)\) |
	} \\ {
		\voiceThree \tieDown fis,1~ |
		\voiceOne fis |
	} >>

	<a a'>4->( <d d,>) q-. q-. |
	<g g,>->( <d d,>) q-. q-. |

	<< {
		q8(\( <cis cis,>) q( <d d,>) q( <e e,>) q( <fis fis,>) |
		<gis gis,>( <a a,>) q( <b b,>) q( <c c,>) q( <cis cis,>)\) |
	} \\ { d,1 | d } >>

	<d' a fis d>8 r \clef bass s2. \clef treble |
	s1*3 | \mark \default

	b4( es,) es-. es-. |
	a( es) es-. es-. |

	es8->(\( e) e( f) f( fis) fis( g) |
	g( gis) gis( a) a( b) b( a)\) |

	a4( d,) d-. d-. |
	g( d) d-. d-. |

	d8(\( cis) cis( d) d( es) es( e) |
	e( f) f( fis) fis( g) g( gis)\) |

	a4->( d,) d-. d-. |
	<< {
		es->( d) d d |
		d8(\( cis) cis( d) d( e) e( fis) |
		\oneVoice
		fis( g) g( a) a( b) b( a)\) |
	} \\ { fis,1~ fis | } >>

	a'4->( d,) d-. d-. |
	g->( d) d-. d-. |

	<< {
		\once \override Tie.staff-position = #4
		d1 ~
		\once \override NoteColumn.force-hshift = #-1.7 d
	} \\ {
		\phrasingSlurUp
		\override PhrasingSlur.positions = #'(2.5 . 4)
		d8(\( cis) cis( d) d( e) e( fis) |
		g( a) a( b) \stemNeutral b( c) c( cis)\) |
	} >>

	<d a d,> r \clef bass s2. \clef treble | s1*3 |

	\mark \default \tempo "Meno mosso. Tranquillo"

	\set tieWaitForNote = ##t \tupletSpan \default
	b2~ b8~_\markup\italic{dolce.} g d b' |
	\times 2/3 { \appoggiatura { a16 b } a4( f d) } d'2 |
	\tupletSpan 4
	g,2~ \times 2/3 { g8( f es) es( f g) } |
	f2( d4)~ d8 r |
	es( f g g) f4( es) |
	\tupletSpan 2
	\times 2/3 { d( b d) b'-.( b-. b-.) } |
	<< { <a a,>2( <g g,>) | } \\ { <es, c> <d b> } >>
	<d fis a d>1 s | \mark \default

	h''!2~ h8~_\markup\italic{dolce} g d h' |
	\times 2/3 { \appoggiatura { a16 h } a4 fis d } a'2-> |
	g a16\( g fis e dis e fis g |
	fis2->( h,)\) |
	e8( fis g g) fis4( e) |
	\times 2/3 { d( h d) h'-.( h-. h-.) } |
	a2( g) |
	<d a fis d>1 s |

	<g h>2( <g h d>) |
	<< { e'( d4) e } \\ { <h g>2 <b g> } >> |
	<fis a fis'>1 |
	r2 \ottava #1 d'8 fis a d |
	<fis a, fis>1~ |
	q2 q |
	q1 q\fermata \ottava #0 \bar "|."
}


dyn = {
	\override DynamicTextSpanner.style = #'none

	s1*2\pp |
	s1*2\cresc |
	s2\f\< s\f\> | s2\f\< s\f\> |
	s1*2\pp\cresc |
	s2\p\< s\f\> |
	s\< s\f\> |
	\times 2/3 { s8*5\> s8\! } s2 |
	s1*2\ff |
	s1*6\f |
	s1*4\ff |
	s1\sf |
	s\sf |
	s1*2\ff |
	s\f |
	s1\< |
	s\> |
	s2\! s\sf |
	s s\sf |
	s1\ff |
	s\sf |

	s1*2\pp |
	s\cresc |
	s2\p\< s\f\> |
	s\< s\f\> |
	s1*2\pp\cresc |
	s2\p\< s\f\> |
	s\< s\f\> |
	\times 2/3 { s8*5\> s8\! } s2 |
	s1*2\ff |
	s1*6\f |
	s1*4\ff |
	s1\sf |
	s1\sf |
	s1*6\f |

	s1.\f s4\< s\f\> |
	s1.\! s4\< s\f\> |
	s1.\! s4\< s\f\> |
	s1.\! s4\< s\f\> |
	s1\f |
	s4 s2.\mp |
	s1*2 |
	s1\dim |
	s1*2\p |

	s1*5\mf |
	s2\p\> s1.\! |
	s2\> s\! |
	s1*4 |
	s1*3\p |
	s2.\< s4\f |

	s1\f |
	s2 s\f |
	s1. s2*7\f |
	s2. s4\f |
	s1*2\pp |
	s1\p\cresc |
	s\<
	s1*2\f |
	s4 s2.\cresc |
	s4\! s2.\< |

	s1.\f s4\< s4\f\> |
	s1.\f s4\< s4\> |
	s1*2\! |
	s\ff |
	s\ff |
	s2 s1\< s2\! |
	s1*2\ff |
	s\cresc |

	s1*4\ff |
	s1\mp |
	s2\p\> s\! |
	s1\mf\< |
	s2.\mf\cresc s4\> |
	s1\f\< |
	s2\f s\>
	s1*2\p |
	s\cresc |
	s1*8\mf |

	s1\ff |
	s1*4\fff |
	s\ff |
	s\f |
	s1\mf |
	s1\mf |
	s1*6\mf |
	s2 s\dim |
	s1*2 |

	s2\p s\< |
	s\> s\f |
	s8*3\p s8*5\< |
	s1\> |
	s2\! s\< |
	s\! s\> |
	s1\< |
	s\> |
	s1*2\p |
	s1*8\pp |

	s1*2\ff |
	s1\mf\< |
	s\> |
	s1*2\f |
	s1\< |
	s1\> |
	s1*2\! |
	s1\< |
	s1*3\f |
	s1\< |
	s1\> |

	s4\! s2.\ff |
	s1 |
	s\f\< |
	s\> |
	s4\! s2.\ff |
	s1 |
	s\f\< |
	s\> |

	s4\! s2.\f |
	s1 |
	s1*2\f |
	s2\mf s\< |
	s4.\> s2..\!
	s1..\f |
	s1*2\f |
	s2\mf s\< |
	s4.\> s8*5\! |

	s1*4\ff |
	s1*7-"marc." |

	s2. s4\f |
	s2\mf s2\< |
	s1\> |
	s4\! s1..\f |
	s\f s2\f s2.\mf\< |
	s1\> |

	s1*6\ff |
	s1*4\f |

	\repeat unfold 2 { s1*2\f | s2\< s\f\> | s\< s\f\> | }
	s\! s\> |
	s1*2\ff |
	s1*9\ff |
	s2 s\< |
	s1*2\ff |

	s1*5\f |
	s4\f s\> s2\! |
	s1*8 |
	s2.\f\< s4\f |
	s2.\< s4\f |

	s1*4\ff |
	s2\< s\! |
	s1. s2\< |
	s1*3\! |
	s2\p s\cresc |
	s2*5 s2\< |
	s\< s\> |
	s\< s\> |
	s1*2\! |

	s8\f s8*7\f |
	s8*5 s8\< s4\f\> |
	s1.\! s8 s\< s4\f\> |
	s8\! s\< s4.\! s8\< s4\! |
	s8\! s\< s4.\! s8\< s4\! |
	s1*2\ff |
	s1*4\ff |
	s\ff |

	s\ff |
	s1\f |
	s2\p\> s\! |
	s1*2\mf |
	s1\f |
	s2\f\> s\! |
	s1*2\p |
	s2 s\cresc |
	s1*5 |
	s1*8\ff |

	s1*2\ff |
	s1\ff\< |
	s1\fff\> |
	s1*2\ff |
	s1\< |
	s1\fff\> |
	s1*4\! |

	s1*2\ff |
	s1*4\ff |
	s1*2\fff |
	s2. s4\dim |
	s2 s\> |

	s1*4\mf |
	s1\> |
	s\> |
	s\> |
	s\> |
	s1.\> s2\! |
	s1.\> s2\! |
	s1*3\pp |
	s2 s\> |
	s1*11\! |
	s2 s\> |
	s1*3\pp |
	s4 s2.-"smorz." |

	s1*15\p |
	s1\> |
	s1*3\p |
	\override TextScript.whiteout = ##t
	s1*6-\markup{\pad-markup #0.5 \italic{smorz.}} |

	\times 2/3 { s4 s2\< s4\! s2\> } |
	s1\! |
	s1*2\pp |

	s1*5\pp |
	\times 2/3 { s4 s2\< s4\! s2\> } |
	s1\! |
	s1\pp |
	s4 s2.-"smorz." |
	s2\pp s\< |
	s\! s\> |
	s1*2\p\dim |
	s1*2\pp\< |
	s1\! |
	s2\> s\! |
}

lower = \relative a' {
	\numericTimeSignature
	\clef treble
	\key f \major

	\tupletSpan 4
	\repeat unfold 2 {
		\tuplet 3/2 { a8 \( gis a b a gis a gis a b a gis \) | }
	}

	\clef bass
	\repeat unfold 2 { <a, a,>4-. <gis gis,>-. <b b,>-. <gis gis,>-. | }

	<a~ a,> \( a8~ a32 b c d <es a,>4~ <es~ a,>8 es32 d c b |
	a4~ a8~ a32 h c d <e! a,>4~ <e~ a,>8 e32 d c h \) |

	\repeat unfold 2 { <a a,>4-. <gis gis,>-. <b b,>-. <gis gis,>-. | }

	<a~ a,> \( a8 b32 c d e <f a,>4~ q8 e32 d c b |
	a4~ a8 h32 c d e <fis a,>4~ q8 e32 d c h \) |

	\clef treble
	<< {
		\tupletSpan 4
		\tuplet 3/2 { a'8 \( gis a b! a gis \) a \( gis a b a gis \) }
	} \\ {
		\voiceTwo a,2~a8 r8 r4
	} >> |

	\repeat unfold 4 { <a' f>8-. <f gis>-. q-. <a f>-. } |

	\clef bass \tupletSpan \default
	<f, f,>1-> | <e e,>->~ | q2 <d d,>-- | <e e,>-- <f f,>-- |
	<gis gis,>1->~ q2 <a a,> | <c, c,>1->~ q2 \tuplet 3/2 { q4 q q } |
	\repeat tremolo 16 { c,32-> d'-> } |
	\repeat tremolo 8 { c,32 d' } \tuplet 3/2 { <d c c,>4 q q } |

	\repeat unfold 2 { <b d, b>8 r r4 r2 | }

	\repeat unfold 2 { << {
		\repeat unfold 2 {
			\repeat tremolo 4 { d16\( cis }
			\repeat tremolo 4 { d cis\) }
		}
	} \\ { d,1~ d } >> }

	<fis' d>8-. q-. q-. q-. <g es d>-. q-. <a fis d>-. q-. |
	<b g d>-. q-. q-. q-. <a fis d> q-. q-. q-. |

	<< { <g es>2-> } \\ { r4 <g, g,>8 r } >>
	\clef treble <es'' g> r r4 \clef bass |

	<< { <f, d>2-> } \\ { r4 <gis, gis,>8 r } >>
	\clef treble <d'' f> r r4 \clef bass |

	<a e a,>1~ | q8 r r4 r2\fermata \clef treble |

	\tupletSpan 4
	\times 2/3 {
		b'8\( a b ces b a b a b ces b a\) |
		b8\( a b ces b a b a b ces b a\) |
	} \clef bass

	<b, b,>4-. <a a,>-. <ces ces,>-. <a a,>-. |
	<b b,>4-. <a a,>-. <ces ces,>-. <a a,>-. |

	<b~ b,>\( b8 b32 ces des es <fes b,>4~ <fes~ b,>8 fes32 es des ces |
	b4~ b8 b32 c! des es <f! b,>4~ <f b,>8 f32 es des c |

	<b b,>4\) <a a,> <ces ces,> <a a,> |
	<b b,> <a a,> <ces ces,> <a a,> |

	<b~ b,>\( b8 ces32 des es f <ges b,>4~ q8 f32 es des ces |
	b4~ b8 c!32 des es f <g! b,>4~ <g b,>8 f32 es des c\) | \clef treble

	<< { \tupletSpan 4 \times 2/3 {
		b'8( a b ces b a) b( a b ces b a)
	} } \\ { b,2~ b8 r r4 } >> |

	\repeat unfold 4 { <ges' b>8-. <ges a>-. q-. <ges b-.> } | \clef bass

	\tupletSpan \default
	<ges, ges,>1-> |
	<f f,>->~ |
	q2 <es es,>-- |
	<f f,>-- <ges ges,>-- |
	<a! a,!>1->~ |
	<a a,>2 <b b,> |
	<des, des,>1->~ |
	q2 \times 2/3 { q4 q q } |
	<es des des,>1~ |
	q2 \times 2/3 { <c es, c>4 q q } |

	<b es, b>8 r r4 r2 |
	<a es a,>8 r r4 r2 |

	<< { \repeat unfold 6 {
		\repeat tremolo 4 { a16\( gis }
		\repeat tremolo 4 { a gis\) } |
	} } \\ {
		a,1~ | a~ | a | a~ | a~ | a |
	} >>

	<a a'>8 <a'' e'>4-> q8 q-. q-. q-. q-. |
	q4 q q8-> \times 2/3 { e16( f g } <a a,>8) a32( g f e |
	<d d,>8->) \clef treble <a' d a'>4-> q8 q-. q-. q-. q-. |
	q4 q q-> <a' d a'>8 r \clef bass |
	<a,, e a,>8 <a' e'>4-> q8 q-. q-. q-. q-. |

	q4 q q8-> \times 2/3 { e16( f g } <a a,>8) a32( g f e |
	<d d,>8->) \clef treble <a' d a'>4-> q8 q-. q-. q-. q-. |
	q4 q q-> <a' d a'>8 r \clef bass |
	<a,, e a,>8 r r4 r2 |

	r2 << { a'8 a a a } \\ { a8 r r4 } >> |
	r8 e4-> f8 e-. d-. e-. f-. |
	g4 a e8 r r4 |
	<a, d,>1~_\mf | q~ | q8 r r4 <d a'>8 q q q |

	\repeat unfold 4 { <d a d,> \repeat unfold 15 <d a'> | }
	<d a'>^\p q <a' d> q \repeat unfold 2 { <d, a'> q <a' d> q } <g d> q <g d'> q |
	\repeat unfold 3 { <d a'> q <a' d> q } <g d> q <g d'> q |
	\repeat unfold 3 { <c c,>4-. <g g,>-. } <c c,>-. <e, e,>-. |
	<f f,>8 r \repeat tremolo 8 { f,32 f' } <f f,>8 r |
	\repeat tremolo 8 { f,32( f') } <e e,>8 r r4 |

	<d a d,>8 <a' e'>4-> <a f'>8 <a e'>-. <a d>-. <a e'>-. <d f>-. |
	<e g>4 <d a'> \repeat tremolo 2 { gis,,,16( gis' } <a a,>8) r |
	<d a d,>8 <a' e'>4-> <a f'>8 <a e'>-. <a d>-. <a e'>-. <d f>-. |
	<e g>4 <d a'> \repeat tremolo 2 { gis,,,16->( gis' } <a a,>8) r |

	<a' e'>4.-> <a f'>8 <a e'>-. <a d>-. <a c>-. <a e'>-. |
	<g b>4( e'8) r a,4->~ <a e a,>8 r |
	<a e'>4.-> <a f'>8 <a e'>-. <a d>-. <a c>-. <a e'>-. |
	<g b>4->( e'8) r a,4->~ <a e a,>8 r |

	<d d,>4( <cis cis,> <c c,> <b b,> |
	<a a,> <gis gis,> <g g,>2) |
	<fis fis,>4( <f f,> <e e,>2 |
	<es es,> <d d,>) |

	c,8 c'( b,) b'( a,) a'( b,) b'( |
	c,) c'( b,) b'( a,) a'( b,) b'( |

	<c c,>) r \repeat tremolo 12 { c,32( c') } |
	\repeat tremolo 16 { c,( d') } |

	<b d, b>8 <b' d>4-> q8 q-. q-. q-. q-. |
	<b d e>4 <b d f> <b d>8 r \clef treble <d' e>-> r |
	\clef bass \appoggiatura { fis,,,16 g a } <b b,>8 <b' d>4-> q8 q q q q |
	<b d e>4 <b d f> <b d>8 r \clef treble <e' f>-> r |

	\repeat unfold 4 {
		\clef bass \appoggiatura { fis,,,16 g a } <b b,>8 r
		\clef treble <e'' f>-> r
	} \clef bass |

	<a,,, a,>8 r r4 r2 | R1 |
	<f' a f'>~ | q~ | q2 \times 2/3 { q4 q q } | q2 q |
	<ces a f es ces>1->~ | q~ | q8 r r4 r2 | R1 |

	\repeat unfold 2 {
		<b b,>8 r <f' b d f>4 <b, b,>8 r <f' b d f>4 |
		<b, b,>8 r <ges' b des ges>4 <b, b,>8 r <ges' a! c es ges>4 |
	}

	<< {
		d1 fis2( g8) r \tweak X-offset #-1 e4\rest |
	} \\ \repeat unfold 4 { b,4-. b'-. } \\ {
		d8-. e!-. fis-. g-. gis-. a-. b-. a-. |
		s2. b16( a g8) |
	} >>

	\repeat unfold 4 { <b, b,>4 b } |
	\repeat unfold 4 { <b b,> <b b'> } |

	<< {
		r4 <d d,>2-> <e! e,!>4->~ |
		<e e,> q2-> <fis fis,>4->~ |
		q <g g,>2 <a a,>4~ |
		q <b b,>2-> <c c,>4->~ |
		q <d, d,>2-> <e! e,!>4->~ |
		q <f f,>2-> <g g,>4->~ |
		q <a a,>2-> <b b,>4->~ |
		q <c c,>2-> <d d,>4-> |

		\repeat unfold 2 { r <e d g,>2-> q4~ | q q2-> q4 | }
	} \\ {
		\repeat unfold 16 { <b, b,>2 } |
		\repeat unfold 4 { <b e g b>4 r <b b'> r | }
	} >>

	\repeat unfold 2 { \times 2/3 { <a e' a>8 q q } q r } |
	\repeat unfold 2 { \times 2/3 { <d a' d>8 q q } q r } |
	\repeat unfold 2 { \times 2/3 { <a e' a>8 q q } q r } |
	\repeat unfold 2 { \times 2/3 { <d, a' d>8 q q } q r } |

	<a' e' a> r <a' e'> q-. <d fis>4~ q8 r |
	<a e'>4 q <a d,>2 |
	<a e'>4 \times 2/3 { q8 q q } <d fis>4~ q8 r |
	<a e'>4 q <a d,>2 |

	a,8-. gis-. a-. cis-. d-. cis-. d-. d-. |
	a' gis a e d cis d fis |
	a,8 gis a cis d cis d d |
	a' gis a e d cis d d |

	\key a \major
	<cis cis,> r r4 r2 | e4 r r2 |
	fis16( gis fis8) \repeat unfold 3 { cis'16( d cis8) } |
	\repeat unfold 2 { e,16( fis e8) } \repeat unfold 2 { d16( e d8) } |
	cis16( d cis8) r4 r2 | e4 r r2 |

	fis16->( gis fis8) \repeat unfold 3 { cis'16( d cis8) } |
	\repeat unfold 2 { e,16( fis e8) } \repeat unfold 2 { d16( e d8) } |

	cis16( d cis8) r4 \repeat unfold 2 { cis'16 d cis8 } |
	\repeat unfold 3 { r4 \repeat unfold 3 { cis16 d cis8 } } |

	\repeat unfold 2 {
		<cis cis,>2 <h h,> |
		<a a,> <cis cis,> |
		<gis cis, gis>1 |
		<< { <fis fis,>2 <a a,> } \\ cis,1 >> |
	}

	<cis cis'>4 q <h h'> q |
	<a a'> q <g g'> q |
	<fis fis'> q q <g g'> |
	<fis fis'> q q <a a'> |
	<gis! gis'!> <gis gis'> q <a a'> |
	<gis gis'> q q <h h'> |
	<ais ais'> q q <h h'> |
	<ais ais'> q q <cis cis'> |
	<h h'> <ais ais'> <a a'> q |
	<gis gis'> <g g'> <fis fis'> q |

	<< {
		r4 <cis' cis'>2-> q4->~ |
		\repeat unfold 6 { q q2-> q4->~ | }
		q q2-> q4-> |
	} \\ {
		<cis cis,>2 <his his,> |
		<h! h,!> <ais ais,> |
		<a! a,!> <gis gis,> |
		<fis fis,> <dis dis'> |
		<cis cis'> <his his'> |
		<h h'> <ais ais'> |
		<a! a'!> <gis gis'> |
		<fis fis'> <dis'' dis,> |
	} >>

	<c c,>8 r cis16( d cis8) << {
		\repeat unfold 2 { r4 cis16 d cis8 } r4 cis16-> d cis8 |
		r4 cis2 <cis cis'>4 |
		r4 <fis fis'>2 gis 4 |
	} \\ {
		<cis, cis,>2 |
		<f f,>  <h, h,> |
		<ais ais,> <a a,> |
		<d d,> h |
	} >>

	<c c'>8 r cis16( d cis8) << {
		\repeat unfold 2 { r4 cis16 d cis8 } r4 cis16-> d cis8 |
		r4 cis2 <cis cis'>4 |
		r4 <fis fis'>2 gis 4 |

		r2 h2->~ | h4 h h2-> |
		r2 <cis a e cis> | <cis g e cis> <c a ges es c> |
		r2 h2~ | h4 h h2-> |
		r2 <cis a e cis> | <cis g e cis> <c a ges es c> |
	} \\ {
		<cis, cis,>2 |
		<f f,>  <h, h,> |
		<ais ais,> <a a,> |
		<d d,> h |

		<cis cis,>1->~ | q | q~ | q |
		<cis gis cis,>->~ | q | <cis a cis,>~ | q |
	} >>

	<cis gis' cis>8 r << {
		\tupletSpan 4
		\repeat unfold 3 { cis16( d cis8) } |
		d16( e d8 cis) s s2 |
		\times 2/3 { a'8( gis! a b a gis) a( gis a b a gis) |
		a( gis a b a gis) } a r
		cis,16( d cis8)
	} \\ {
		\repeat unfold 3 { cis,16( d cis8) } |
		d16( e d8 cis) r <cis' cis,>2~ |
		q1~ |
		q8 r r4 r2 |
	} >>

	d16( e d8) cis r <fis fis,>( <gis gis,>) q( <a a,>) |
	q( <gis gis,>) q( <fis fis,>) q( <e e,>) q( <d d,>) |

	<cis cis,> r << {
		\tupletSpan 4
		\repeat unfold 3 { cis16( d cis8) } |
		d16( e d8 cis) s s2 |
		\times 2/3 { a'8( gis! a b a gis) a( gis a b a gis) |
		a( gis a b a gis) } a r
		cis,16( d cis8)
	} \\ {
		\repeat unfold 3 { cis,16( d cis8) } |
		d16( e d8 cis) r <cis' cis,>2~ |
		q1~ |
		q8 r r4 r2 |
	} >>

	d16( e d8) cis r <fis fis,>( <gis gis,>) q( <a a,>) |
	q( <gis gis,>) q( <fis fis,>) q( <e e,>) q( <d d,>) |

	\key des \major
	\repeat unfold 2 {
		<des des,>4\( <as as'> <des des,> <heses heses,> |
		<des des,> <as as,> <b! b,!> <f f'>\) |
	}

	<des des'>8 r <des' as'>8 q <ges b>4~ q8 r |
	<des as'>4 q <des ges,>2 |
	<des as'>4 \times 2/3 { q8 q q } <ges b>4~ q8 r |
	<des as'>4 q <des ges,>2-> |

	<f c f,>8 r << {
		\repeat unfold 3 { f16( ges f8) } |
		ges16( es ges8 f) r s2 |
		\tupletSpan 4
		\times 2/3 \repeat unfold 3 { des'8 c des d des c }
		<f, des'> r
	} \\ {
		\repeat unfold 3 { f,16( ges f8) } |
		ges16( es ges8 f) s <f f'>2~ |
		q1~ |
		q8 r r4 r
	} >> f'16( ges f8) |

	ges16( b ges8) f r <b b,>( <c c,>) q( <des des,>) |
	q( <c c,>) q( <b b,>) q( <as as,>) q( <ges ges,>) |

	<f f,> r << {
		\repeat unfold 3 { f16( ges f8) } |
		ges16( as ges8) f r s2 |
		\tupletSpan 4
		\times 2/3 \repeat unfold 3 { des'8 c des d des c }
	} \\ {
		\repeat unfold 3 { f,,16( ges f8) } |
		ges16( as ges8) f r <f f'>2~ |
		q1~ |
		q8 r r4
	} >> <f' des'>8 r f16( ges f8) |

	ges16( as ges8 f) r <b b,>( <c c,>) q( <des des,>) |
	q( <c c,>) q( <b b,>) q( <as as,>) q( <ges ges,>) |

	\repeat unfold 2 {
		\repeat unfold 2 {
			\repeat unfold 3 { \acciaccatura e, <f f'>4 }
			\acciaccatura c'8 <des des'>4 |
		}

		\repeat unfold 2 { <c c,>4 <ges ges'> } |
	}

	\bar "||" \key f \major
	<f f'>8 r <f' c'> q <b d>4~ q8 r |
	<f c'>4 q <f b,>2-> |
	<f c'>4 \times 2/3 { q8 q q } <b d>4->~ q8 r |
	<f c'>4 q <f b,>2-> |

	<a a,>4-.( <gis gis,>-. <b b,> <gis gis,> |
	<a a,> <gis gis,> <b b,> <gis gis,>) |

	<a a,>4.~ q32 b, c d es4.~ es32 d c b |
	<a a'>4.~ q32 h c d e!4.~ e32 d c h |
	<a a'>8 r <gis gis,>4( <b b,> <gis gis,> |
	<a a,> <gis gis,> <b b,> <gis gis,>) |

	<a a,>4.( b32 c d e) <f f,>4.( e32 d c b) |
	<a a,>4.( h32 c d e) <fis fis,>4.( e32 d c h) |
	<a a,>8 r r4 r2 | \clef treble

	\repeat unfold 4 { <f'' a>8-. <f gis>-. q-. <f a>-. } | \clef bass

	\tupletSpan \default
	<f, f,>1-> |
	<e e,>->~ |
	q2 <d d,>-- |
	<e e,>-- <f f,>-- |
	<gis gis,>1->~ |
	q2 <a a,> |
	<c, c,>1->~ |
	q2 \times 2/3 { q4 q q } |
	\repeat tremolo 16 { c,32->( d'->) } |
	\repeat tremolo 8 { c,->( d'->) } \times 2/3 { <d c c,>4 q q } |

	<b b,>8-> r r4 <b b,>8-> r r4 |
	<a a,>8-> r r4 <a e a,>8-> r r4 |

	\repeat unfold 23 { d,16( a' d a' d a d, a) }
	 d,16( a' d a' d a d, g,) |
	\repeat unfold 4 { c,( g' c g') c( g c, g) } |

	<f f'>8 r \repeat tremolo 8 { f32( f') } q8 r |
	\repeat tremolo 12 { f,32( f') } <e e,>8 r |

	<a e'>4 <d, a d,>8-> <a' f'> <a e'> <a d> <a e'> <a f'> |
	<e' g>4 d <a, a,>-> <gis gis,>-> |
	<b b,>-> <gis gis,>-> <a a,>8-> r <d a d,>-> <a' f'> |

	<a e'> <a d> <a e'> <a f'> <e' g>4 d |
	<a, a,>4-> <gis gis,>-> <b b,>-> <gis gis,>-> |
	<a a,>8-> r <a e' a> <a' f'> <a e'> <a d> <a c!> <a e'> |

	<gis b!>4( e'8) r <a,, a,>4 <gis gis,> |
	<b b,> <gis gis,> <a a,>8 r <a e' a>-> <a' f'> |
	<a e'> <a d> <a c!> <a e'> <gis b>4( e'8) r |
	<a,, a,>4-> <gis gis,>-> <b b,>-> <gis gis,>-> |

	<a' a'>( <gis gis'> <g g'> <f f'> |
	<e e'> <dis dis'> <d d'>2) |
	<cis cis'>4( <c c'> <h h'>2) |
	<b! b'!>( <a a'>) |

	\repeat unfold 2 { gis8 gis' f, f' e, e' f, f' | }

	<g d g,> r \repeat tremolo 6 { <d g,>16( g) } |
	<g g,>8 r \repeat tremolo 6 { g,16( a') } |

	\repeat unfold 2 {
		<f d f,>8-> <a f>4-> q8 q-. q-. q-. q-. |
		<h a f>4-. <c a f>-. <d a f>8-. r \clef treble <a' h>-> r | \clef bass
	}

	\repeat unfold 3 { <f, d f,>-> r \clef treble <a' h>-> r \clef bass }
	<f, f,>-> r \clef treble <gis' h>-> r | \clef bass
	<a,, e a,>-. r r4 r2 | R1 |

	<f a f'>1~ | q~ |
	q2 \times 2/3 { q4 q q } |
	q2 q2 |

	<es g a cis es>1~ | q~ |
	q8 r r4 r2 | R1 | \key d \major

	\repeat unfold 2 {
		<d d'>8 r <d' fis a d>4 <d d,>8 r <d fis a d>4 |
		<d d,>8 r <d f b d>4 <d d,>8 r <cis e g cis>4 |
	}

	<< {
		fis8-. gis-. ais-. h-. his-. cis-. d-. cis-. |
		ais2( h8) r r4 |
	} \\ \repeat unfold 4 { d,,4 d' } >>

	\repeat unfold 4 { <d d,> d } |
	\repeat unfold 4 { <d d,> <d d'> } |

	<< {
		r <fis fis,>2-> <gis gis,>4~ |
		q q2-> <ais ais,>4~ |
		q <h h,>2-> <cis cis,>4~ |
		q <d d,>2-> <e e,>4->~ |
		q <fis, fis,>2-> <gis gis,>4->~ |
		q <ais ais,>2-> <h h,>4->~ |
		q <cis cis,>2-> <d d,>4->~ |
		q <e e,>2-> <fis fis,>8-> r |

		\repeat unfold 2 { r4 <d h f d>2 q4~ | q q2 q8 r | }
		\repeat unfold 2 { r4 <d b g d>2 q4~ | q q2 q8 r | }
	} \\ {
		\repeat unfold 16 { <d, d,>4 r } |
		\repeat unfold 2 { <d h! fis d>1 | <d d,> | }
		\repeat unfold 2 { <d b g d> | <d d,> | }
	} >>

	<d a d,>8 r <d d'>4:8( <cis cis'>: <c c'>: |
	<h h'>: <b b'>: <a a'>: <gis gis'>:) |
	<g g'>( <d' d'> <d d,>2) |
	\repeat tremolo 8 { <g, cis,!>16( es') } |

	<d a fis d>8 r <d d'>4:8( <cis cis'>: <c c'>: |
	<h h'>: <b b'>: <a a'>: <gis gis'>:) |
	<g g'>( <d' d'> <d d,>2) |
	\repeat tremolo 8 { <g, cis,!>16( es') } |

	<d d,>8 r <a a'>4 <b b'> <f f'> |
	<d' d'> <ais ais'> <h! h'!> <fis! fis'!> |
	<d' d'> <ais ais'> <h h'> <fis fis'> |
	<d' d'> <a! a'!>4 <b b'> <f f'> |

	<d a' d>8 r r4 r2 |
	R1 |
	<b'' d>1->~ q~ |
	q2 \times 2/3 { q4 q q } |
	q2 q |
	<d, b as e>1~ q~ |
	q8 r r4 r2 |
	R1 |

	\repeat unfold 2 { <e g b>~ q~ q~ q | }

	<< {
		<fis a>\arpeggio~ q~ q~ q |
		<fis c' es>~ q |
		<c' es>~ q |
		<b d>~ q |
		<g b d>~ q |
		c1~ c |
		c~ c |
		<h d~ fis>( |
		<b d g>) |
		<b d>~ |
		q2 <g g'>4~ q8 r |

		\oneVoice
		\set subdivideBeams = ##t
		d,16[( fis a d \change Staff = "RH" fis a d fis])
		\change Staff = "LH" fis,,[( a d fis \change Staff = "RH" a d fis a]) |
		\set subdivideBeams = ##f

		\change Staff = "LH" a,,( d fis a \change Staff = "RH" d fis a d)
		\change Staff = "LH" d,,( fis a d \change Staff = "RH" fis a d fis) |
		\change Staff = "LH" fis,,,( a d fis \change Staff = "RH" a d fis a)
		\change Staff = "LH" a,,( d fis a \change Staff = "RH" d fis a d)   |
		\change Staff = "LH" d,,( fis a d \change Staff = "RH" fis a d fis)
		\change Staff = "LH" fis,,( a d fis \change Staff = "RH" a d fis a) |

		\change Staff = "LH" \voiceOne
		<es, c fis,>1~ q |
		<es c>~ q |
		<d b>~ q |
		<d b g>~ q |
		c~ c |
		c~ c |
		<d b>~ q |
		q~ q2 <g g,>4~ q8 r |

		\oneVoice
		\set subdivideBeams = ##t
		d,,16[( fis a d \change Staff = "RH" fis a d fis])
		\change Staff = "LH" fis,,[( a d fis \change Staff = "RH" a d fis a]) |
		\set subdivideBeams = ##f

		\oneVoice
		\change Staff = "LH" a,,( d fis a \change Staff = "RH" d fis a d)
		\change Staff = "LH" d,,( fis a d \change Staff = "RH" fis a d fis) |
		\change Staff = "LH" fis,,,( a d fis \change Staff = "RH" a d fis a)
		\change Staff = "LH" a,,( d fis a \change Staff = "RH" d fis a d)   |
		\change Staff = "LH" d,,( fis a d \change Staff = "RH" fis a d fis)
		\change Staff = "LH" fis,,( a d fis \change Staff = "RH" a d fis a) |

		\change Staff = "LH" \voiceOne
		g,1 |
		<f d a> |
		<g es> |
		r1 |
		<g es c> | \clef treble
		<b f d> |
		s |

		\oneVoice
		d,,,16( fis a d fis a \change Staff = "RH" d fis)
		\change Staff = "LH" fis,,( a d fis a \change Staff = "RH" d fis a) |
		\change Staff = "LH" a,,( d fis a \change Staff = "RH" d fis a d)
		\change Staff = "LH" d,,( fis a \change Staff = "RH" d fis a d fis) |

		\change Staff = "LH" \voiceOne
		\clef treble <h,! g d>1 |
		\clef treble <a fis d> |
		<g e h> |
		<fis d h> |
		<g e c> |
		<g d h> |
		<fis d a>2( <e h g>) |

		\oneVoice
		d,,16( fis a d fis a \change Staff = "RH" d fis)
		\change Staff = "LH" fis,,( a d fis a \change Staff = "RH" d fis a) |
		\change Staff = "LH" a,,( d fis a \change Staff = "RH" d fis a d)
		\change Staff = "LH" d,,( fis a \change Staff = "RH" d fis a d fis) |

		\change Staff = "LH" \voiceOne
		<g, d h>1 |
		<g d> |

		\oneVoice
		d,,8 e g d' fis a \change Staff = "RH" d fis |
		\change Staff = "LH" \clef treble a d fis a r2 |
	} \\ {
		\repeat unfold 10 { r1 | <d,,, d,>2 r | }
		\once \override NoteColumn.force-hshift = #-1.3 d,1 |
		s1*3 |
		\repeat unfold 8 { r1 | q2 r | }
		\once \override NoteColumn.force-hshift = #-1.3 d1 |
		s1*3
		r2 q_\pp |
		r q |
		r \acciaccatura q8 q2 |
		\repeat unfold 3 { r q | }
		s1
		\once \override NoteColumn.force-hshift = #-1.3 d1 | s
		r2 \clef bass q_\ppp |
		r2 \clef bass q |
		\repeat unfold 4 { r q | }
		r \acciaccatura q8 q2 |
		\once \override NoteColumn.force-hshift = #-1.3 d1 | s
		r2 q_\ppp |
		r \acciaccatura q8 q2 |
		s1*2 |
	} \\ {
		\voiceFour
		s1*6 |
		a''1( g2) fis! |
		f1~ f2 g |
		s1*2 |
		<fis a d>8 r8 r4 r2 % c'8\rest c4\rest c2\rest |
		s1*7 |
		s4 s2._\> |
		s1*5\! |
		a1 | g2 fis |
		fis1( | fis2) g |
		s1*2 |
		<fis a d>8 r8 r4 r2 % c'8\rest c4\rest c2\rest |
		s1*11 |
		<b d>2 s | s1 |
		b2 c |
		\clef treble <d f b> \clef bass s |
		s1 |
		s2 \clef bass s2 |
		s1*13 |
		h2 b |
	} >>

	<d a' d>1~ |
	q2 q |
	q1 | \clef bass
	<d, d,>8_\pp r r4 r2\fermata |
}

\score {
	\new PianoStaff <<
		\set PianoStaff.connectArpeggios = ##t
 		\override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
		\new Staff = "RH" \upper
		\new Dynamics \dyn
		\new Staff = "LH" \lower
	>>
	\layout {
		\override TupletBracket.bracket-visibility = #'if-no-beam
	}
}

\score {
	\new PianoStaff <<
		\new Staff = "RH" \unfoldRepeats \upper
		\new Staff = "LH" \unfoldRepeats \lower
	>>
	\midi {}
}
