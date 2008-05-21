\version "2.10.33"

\header {
	title = "Novellette"
	composer = "N. Rimsky-Korsakov (1844-1908)"
	opus = "Op. 11  N° 2"
	instrument = ""
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	source = "M. P. Belaïeff, Leipzig, 1890"
	style = "Romantic"
	maintainer = "Thomas Amthor"
	maintainerEmail = "thomas.amthor@gmail.com"
        mutopiatitle = "Novellette"
	mutopiaopus = "Op. 11, Nr. 2"
	mutopiacomposer = "Rimsky-KorsakovN"
        mutopiainstrument = "Piano"
	date = "1878"
 footer = "Mutopia-2008/05/21-1425"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%
%  NOTES:
%  There were some mistakes and ambiguities in the source edition
%  (Belaieff, 1890) which are commented on in the following:
%
%  a) Bar 3, right hand, third chord: the lower "fis" was omitted in the
%     source (obviously by mistake, compare to bars 7,27,31,67,71,91,95).
%     I included the note in this version.
%
%  b) Bar 100, left hand, first note should be "eis" (e in source).
%     I added a sharp within parentheses.
%
%  c) Bar 103, left hand, first note should be "bis" (b in source).
%     I added a sharp within parentheses.
%
%  d) Bar 106, right hand: There is no accent on the "gis", maybe it
%     was left out by mistake in the source. I left this unchanged.
%
%  e) For the last note of the left hand (bar 108), the bass clef was omitted
%     in the source edition which is obviously wrong. I added a bass clef.
%


%%
%%   Right Hand 
%%

upper = {

	% Part A:

	\clef bass
	\key b \minor
	\time 2/4 

	\partial 8

	\once \override TextScript #'extra-offset = #'(-3.0 . 2.0)
	\stemUp fis16^\markup { \bold "Allegro risoluto." } fis

	<<
	\relative {

		% #1-8

		b8 b16 b cis8 cis16 cis |
		d8 cis16 b e8 d16 cis |
		fis8 fis16 fis b,8 b16 b |
		cis8 cis16 cis fis,8 fis16 fis |

		b8 b16 b cis8 cis16 cis |
		d8 cis16 b e8 d16 cis |
		fis8 fis16 fis b,8 b16 b |
		cis8 fis,16 fis \newSpacingSection
			\once \override Score.SpacingSpanner #'spacing-increment = #0
			b8 \newSpacingSection
			\clef treble d16 e |

		% #9-16

		fis8 gis16 gis a8 gis16 gis |
		cis,8 dis16 eis \newSpacingSection
			\once \override Score.SpacingSpanner #'spacing-increment = #0
			fis8 \newSpacingSection
			gis16 gis |
		a8 b16 b cis8 b16 b |
		e,8 fis16 gis a8 a16 b |

		cis8 cis16 cis dis8 dis16 dis |
		cis8 cis16 cis gis'8 gis16 gis |
		cis,8 cis16 cis dis8 dis16 dis |
		cis8 cis16 cis gis'8 gis16 gis |

		% #17-24

		gis8 gis16 gis cis8 cis16 cis |
		gis8 gis16 gis cis8 a,16 b |
		cis8 cis16 cis fis8 fis16 fis |
		cis8 cis16 cis fis8 fis16 fis |

		b,8 b16 b e8 e16 e |
		a,8 a16 a d8 d16 d |
		g,8 g16 g cis8 cis16 cis |
		fis,8 fis16 fis \newSpacingSection
			\once \override Score.SpacingSpanner #'spacing-increment = #0
			fis8 \newSpacingSection
			\clef bass fis,16 fis |

		% 25-31

		b8 b16 b cis8 cis16 cis |
		d8 cis16 b e8 d16 cis |
		fis8 fis16 fis b,8 b16 b |
		cis8 cis16 cis fis,8 fis16 fis |

		b8 b16 b cis8 cis16 cis |
		d8 cis16 b e8 d16 cis |
		fis8 fis16 fis b,8 b16 b |
		cis8 fis,16 fis b4 |

	}
	\\
	\relative {

		%1-8

		<d, fis>8 <d fis>16 <d fis> fis8 fis16 fis |
		fis8 fis16 fis <e b'>8 <e b'>16 <e b'> |
		<fis b>8 <fis b>16 <fis b> g8 g16 g |
		g8 g16 g e8 e16 e |

		<d fis>8 <d fis>16 <d fis> fis8 fis16 fis |
		fis8 fis16 fis <e b'>8 <e b'>16 <e b'> |
		<fis b>8 <fis b>16 <fis b> g8 g16 g |
		<e g>8 e16 e <d fis>8 \clef treble a'16 a |

		% #9-16

		a8 <cis eis>16 <cis eis> <cis fis>8 d16 d |
		cis8 cis16 cis cis8 <d f>16 <d f> |
		<cis e>8 <e gis>16 <d gis> <cis a'>8 fis16 fis |
		e8 d16 d <cis e>4 |

		e8 e16 e <fis bis>8 <fis bis>16 <fis bis> |
		e8 e16 e <gis cis>8 <gis cis>16 <gis cis> |
		e8 e16 e <fis bis>8 <fis bis>16 <fis bis> |
		e8 e16 e <gis cis>8 <gis cis>16 <gis cis> |

		% #17-24

		<d'! fis>8 <d fis>16 <d fis> <cis e gis>8 <cis e gis>16 <cis e gis> |
		<d fis>8 <d fis>16 <d fis> <cis e a>8 a16 a |
		<g! b>8 <g b>16 <g b> <fis a cis>8 <fis a cis>16 <fis a cis> |
		<g b>8 <g b>16 <g b> <fis a cis>8 <fis a cis>16 <fis a cis> |

		<fis g>8 <fis g>16 <fis g> <e g b>8 <e g b>16 <e g b> |
		<e fis>8 <e fis>16 <e fis> <d fis a>8 <d fis a>16 <d fis a> |
		<d e>8 <d e>16 <d e> <cis e g>8 <cis e g>16 <cis e g> |
		d8 b16 b <ais cis>4 |

		% 25-32

		<d, fis>8 <d fis>16 <d fis> fis8 fis16 fis |
		fis8 fis16 fis <e b'>8 <e b'>16 <e b'> |
		<fis b>8 <fis b>16 <fis b> g8 g16 g |
		g8 g16 g e8 e16 e |

		<d fis>8 <d fis>16 <d fis> fis8 fis16 fis |
		fis8 fis16 fis <e b'>8 <e b'>16 <e b'> |
		<fis b>8 <fis b>16 <fis b> g8 g16 g |
		<e g>8 e16 e <d fis>4 |
	}
	>>

	\clef treble

	\bar "||"

	\key b \major

	% Part B:
	<<
	\relative {

		% 33-40
		fis4-> gis-> |
		ais8( b) cis4-> |
		dis-> gis,-> |
		ais-> b-> |
		cis-> dis-> |
		eis-> fis-> |
		gis-> dis-> |
		eis-> fis-> |

		% 41-48
		fis,-> gis-> |
		ais8-.( b-.) cis4-> |
		dis-> gis,-> |
		ais-> b-> |
		cis-> dis-> |
		eis-> fis-> |
		gis-> fis-> |
		eis-> dis-> |

		% 49-56
		\clef bass
		cis,-> dis-> |
		eis-> fis-> |
		\clef treble
		\stemDown
		gis_> ais_> |
		bis_> cis_> |
		\stemUp
		cis-> dis-> |
		eis-> fis-> |
		fisis-> gis-> |
		ais-> b-> |

		% 57-64
		fis,-> gis-> |
		ais8-.( b-.) cis4-> |
		dis-> gis,-> |
		ais-> b-> |
		cis-> dis-> |
		gis8( fis) fis4-> |
		e8( dis) cis4-> |
		dis( b8) \clef bass fis,16[ fis] |

	}
	\\
	\relative {
		\override Beam #'concaveness = #'1
		\override Beam #'damping = #'0.5

		% 33-40
		fis8 b,16( dis) gis8 b,16( e) |
		ais8 b,16( fis') cis'8 e,16( ais) |
		dis8 dis,16( fis) gis8 b,16( e) |
		ais8 cis,16( fisis) b8 b,16( dis) |
		cis'8 e,16 b' dis8 dis,16 b' |
		eis8 gis,16 cisis fis8 ais,16 dis |
		gis8 gis,16 dis' dis8 gis,16 dis' |
		eis8 gis,16 b! fis'8 fis,16 ais |

		% 41-48
		fis8 fis,16 b gis'8 b,16 e |
		ais8 b,16 fis' cis'8 e,16 ais |
		dis8 dis,16 fis gis8 b,16 e |
		ais8 cis,16 fisis b8 dis,16 gis |
		cis8 e,16 ais dis8 dis,16 fis |
		eis'8 dis,16 b' fis'8 dis,16 ais' |
		gis'8 gis,16 dis' fis8 ais,16 dis |
		eis8 gis,16 cisis! dis8 fis,16 ais |

		% 49-56
		\clef bass
		cis,8 ais16 fis dis'8 b16 ais |
		eis'8 gis,16 b fis'8 ais,16 cis |
		\clef treble
		\stemUp
		gis'8 eis16 cis ais'8 fis16 eis |
		bis'8 dis,16 fis cis'8 cis,16 eis |
		\stemDown
		cis'8 ais16 fis dis'8 b16 ais |
		eis'8 gis,16 b fis'8 ais,16 cis |
		fisis8 cis16 e gis8 b,16 dis |
		ais'8 fisis16 dis b'8 b,16 dis |

		% 57-64
		fis,8 fis,16 b gis'8 b,16 e |
		ais8 b,16 fis' cis'8 e,16 ais |
		dis8 dis,16 fis gis8 b,16 e |
		ais8 cis,16 fisis b8 b,16 dis |
		cis'8 e,16 b' dis8 fis,16 b |
		gis'8 ais,16 cis fis8 b,16 dis |
		e8 g,16 b cis8 e,16 b' |
		dis8 e,16 ais dis,8 s8 |

	}
	>>

	\bar "||"

	\key b \minor

	% Part C:

	<<
	\relative {

		% #65-72

		b8 b16 b cis8 cis16 cis |
		d8 cis16 b e8 d16 cis |
		fis8 fis16 fis b,8 b16 b |
		cis8 cis16 cis fis,8 fis16 fis |

		b8 b16 b cis8 cis16 cis |
		d8 cis16 b e8 d16 cis |
		fis8 fis16 fis b,8 b16 b |
		cis8 fis,16 fis \newSpacingSection
			\once \override Score.SpacingSpanner #'spacing-increment = #0
			b8 \newSpacingSection
			\clef treble d16 e |

		% #73-80

		fis8 gis16 gis a8 gis16 gis |
		cis,8 dis16 eis \newSpacingSection
			\once \override Score.SpacingSpanner #'spacing-increment = #0
			fis8 \newSpacingSection
			gis16 gis |
		a8 b16 b cis8 b16 b |
		e,8 fis16 gis a8 a16 b |

		cis8 cis16 cis dis8 dis16 dis |
		cis8 cis16 cis gis'8 gis16 gis |
		cis,8 cis16 cis dis8 dis16 dis |
		cis8 cis16 cis gis'8 gis16 gis |

		% #81-88

		gis8 gis16 gis cis8 cis16 cis |
		gis8 gis16 gis cis8 a,16 b |
		cis8 cis16 cis fis8 fis16 fis |
		cis8 cis16 cis fis8 fis16 fis |

		b,8 b16 b e8 e16 e |
		a,8 a16 a d8 d16 d |
		g,8 g16 g cis8 cis16 cis |
		fis,8 fis16 fis \newSpacingSection
			\once \override Score.SpacingSpanner #'spacing-increment = #0
			fis8 \newSpacingSection
			\clef bass fis,16 fis |

		% 89-96

		b8 b16 b cis8 cis16 cis |
		d8 cis16 b e8 d16 cis |
		fis8 fis16 fis b,8 b16 b |
		cis8 cis16 cis fis,8 fis16 fis |

		b8 b16 b cis8 cis16 cis |
		d8 cis16 b e8 d16 cis |
		fis8 fis16 fis b,8 b16 b |
		cis8 b16 b ais4 |

	}
	\\
	\relative {

		% 65-72

		<d, fis>8 <d fis>16 <d fis> fis8 fis16 fis |
		fis8 fis16 fis <e b'>8 <e b'>16 <e b'> |
		<fis b>8 <fis b>16 <fis b> g8 g16 g |
		g8 g16 g e8 e16 e |

		<d fis>8 <d fis>16 <d fis> fis8 fis16 fis |
		fis8 fis16 fis <e b'>8 <e b'>16 <e b'> |
		<fis b>8 <fis b>16 <fis b> g8 g16 g |
		<e g>8 e16 e <d fis>8 \clef treble a'16 a |

		% 73-80

		a8 <cis eis>16 <cis eis> <cis fis>8 d16 d |
		cis8 cis16 cis cis8 <d f>16 <d f> |
		<cis e>8 <e gis>16 <d gis> <cis a'>8 fis16 fis |
		e8 d16 d <cis e>4 |

		e8 e16 e <fis bis>8 <fis bis>16 <fis bis> |
		e8 e16 e <gis cis>8 <gis cis>16 <gis cis> |
		e8 e16 e <fis bis>8 <fis bis>16 <fis bis> |
		e8 e16 e <gis cis>8 <gis cis>16 <gis cis> |

		% 81-88

		<d'! fis>8 <d fis>16 <d fis> <cis e gis>8 <cis e gis>16 <cis e gis> |
		<d fis>8 <d fis>16 <d fis> <cis e a>8 a16 a |
		<g! b>8 <g b>16 <g b> <fis a cis>8 <fis a cis>16 <fis a cis> |
		<g b>8 <g b>16 <g b> <fis a cis>8 <fis a cis>16 <fis a cis> |

		<fis g>8 <fis g>16 <fis g> <e g b>8 <e g b>16 <e g b> |
		<e fis>8 <e fis>16 <e fis> <d fis a>8 <d fis a>16 <d fis a> |
		<d e>8 <d e>16 <d e> <cis e g>8 <cis e g>16 <cis e g> |
		d8 b16 b <ais cis>4 |

		% 89-96

		<d, fis>8 <d fis>16 <d fis> fis8 fis16 fis |
		fis8 fis16 fis <e b'>8 <e b'>16 <e b'> |
		<fis b>8 <fis b>16 <fis b> g8 g16 g |
		g8 g16 g e8 e16 e |

		<d fis>8 <d fis>16 <d fis> fis8 fis16 fis |
		fis8 fis16 fis <e b'>8 <e b'>16 <e b'> |
		<fis b>8 <fis b>16 <fis b> g8 g16 g |
		<e g>8 <d g>16 <d g> <cis fis>4 |
	}
	>>


	\bar "||"

	\key b \major

	% Part D: Vivace
	<<
	\relative{

		% 97-106

		\once \override TextScript #'extra-offset = #'(-10.0 . 0.0)
	 	fis,4->^\markup { \bold "Vivace." } gis-> |
		ais-> b-> |
		cis-> dis-> |
		eis-> fis-> |
		\clef treble
		\stemDown fis_> gis_> |
		ais_> b_> |
		bis_> cis_> |
		\stemUp fis-> dis-> |
		\clef bass
		fis,-> dis-> |
		fis,-> b, |
	}
	\\
	\relative{
		\override Beam #'concaveness = #'1
		\override Beam #'damping = #'0.5

		% 97-106

		fis,8 dis16 b gis'8 e16 dis |
		ais'8 cis,16 e b'8 dis,16 fis |
		cis'8 ais16 fis dis'8 b16 ais |
		eis'8 gis,16 b fis'8 fis,16 ais |
		\clef treble
		\stemUp fis'8 dis16 b gis'8 e16 dis |
		ais'8 cis,16 e b'8 dis,16 fis |
		bis8 a16 fis cis'8 e,16 gis |
		\stemDown fis'8 e,16 ais dis8 dis,16 fis |
		\clef bass
		fis8 e,16 ais dis8 dis,16 fis |
		fis8 e,16 ais fis4 |
	}
	>>

	\clef treble
	\relative {

		% 107-108

		\stemDown
		<dis' fis b dis>8->\arpeggio r8 <dis fis b dis>8->\arpeggio r8 |
		\clef bass
		\stemUp
		\once \override Script #'extra-offset = #'(0 . -0.4)
	 	b,,2-> \fermata |
		\bar "|."
	}


}



%%
%%   Left Hand
%%

lower = {

	\override Beam #'concaveness = #'1
	\override Beam #'damping = #'0.5

	% Part A:

	\clef bass
	\key b \minor
	\time 2/4

	\partial 8

	r8

	\relative {

		% #1-8

		<b,, b'>8 <b b'>16 <b b'> <ais ais'>8 <ais ais'>16 <ais ais'> |
		<b b'>8 <b b'>16 <b b'> g'8 g16 g |
		<d d'>8 <d d'>16 <d d'> <g d'>8 <g d'>16 <g d'> |
		<e e'>8 <e e'>16 <e e'> fis8 fis16 fis |

		<b, b'>8 <b b'>16 <b b'> <ais ais'>8 <ais ais'>16 <ais ais'> |
		<b b'>8 <b b'>16 <b b'> g'8 g16 g |
		<d d'>8 <d d'>16 <d d'> <g d'>8 <g d'>16 <g d'> |
		e8 fis16 fis <b, b'>8 fis''16 e |

		% #9-16

		d8 cis16 b a8 b16 b |
		cis8 b16 b a4~ |
		a8 gis16 fis e8 d16 d |
		e8 <e e'>16 <e e'> <a, a'>4 |

		a''8 a16 a gis8 gis16 gis |
		a8 a16 a e8 e16 e |
		a8 a16 a gis8 gis16 gis |
		a8 a16 a e8 e16 e |

		% #17-24

		e'8 e16 e a,8 a16 a |
		e'8 e16 e a,8 a16 a |
		a8 a16 a d8 d16 d |
		a8 a16 a d8 d16 d |

		g,8 g16 g cis,8 cis16 cis |
		fis8 fis16 fis b,8 b16 b |
		e8 e16 e ais,8 ais16 ais |
		b8 g16 g fis4 |

		% 25-31

		<b, b'>8 <b b'>16 <b b'> <ais ais'>8 <ais ais'>16 <ais ais'> |
		<b b'>8 <b b'>16 <b b'> g'8 g16 g |
		<d d'>8 <d d'>16 <d d'> <g d'>8 <g d'>16 <g d'> |
		<e e'>8 <e e'>16 <e e'> fis8 fis16 fis |

		<b, b'>8 <b b'>16 <b b'> <ais ais'>8 <ais ais'>16 <ais ais'> |
		<b b'>8 <b b'>16 <b b'> g'8 g16 g |
		<d d'>8 <d d'>16 <d d'> <g d'>8 <g d'>16 <g d'> |
		e8 fis16 fis <b, b'>4 |

		\bar "||"
	}

	\key b \major

	% Part B:

	\relative {

		% 33-40
		r8 <b,, b'>-. r <e e'>-. |
		r <dis dis'>-. r <cis cis'>-. |
		r <b b'>-. r <e e'>-. |
		r <dis dis'>-. r <gis gis'>-. |
		r <g g'> r <fis fis'> |
		r <eis eis'> r <dis dis'> |
		r <b b'> r <bis bis'> |
		r <cis cis'> r <fis fis'> |

		% 41-48
		r <dis dis'> r <e e'> |
		r <dis dis'> r <cis cis'> |
		r <b b'> r <e e'> |
		r <dis dis'> r <gis gis'> |
		r <fis fis'> r <b b'> |
		r <gis gis'> r <fis fis'> |
		r <eis eis'> r <fis fis'> |
		r <ais ais'> r <dis, dis'> |
	}

		% 49-56
	<<
	\relative {
		cis,4-> dis-> |
		eis-> fis-> |
		gis-> ais-> |
		bis-> cis-> |
		cis-> dis-> |
		eis-> fis-> |
		\clef treble
		\stemDown
		fisis_> gis_> |
		ais_> b_> |
		\stemUp
	}\\
	\relative {
		\override Beam #'concaveness = #'1
		\override Beam #'damping = #'0.5

		cis,8 ais16 fis dis'8 b16 ais |
		eis'8 gis,16 b fis'8 ais,16 cis |
		gis'8 eis16 cis ais'8 fis16 eis |
		bis'8 dis,16 fis cis'8 ais,16 eis' |
		cis'8 ais16 fis dis'8 b16 ais |
		eis'8 gis,16 b fis'8 ais,16 cis |
		\clef treble
		\stemUp
		fisis8 cis16 e gis8 b,16 dis |
		ais'8 fisis16 dis b'8 gis,16 dis' |
		\stemDown
	}
	>>

	\relative {

		% 57-64
		\newSpacingSection
			\once \override Score.SpacingSpanner #'spacing-increment = #0
			r8 \newSpacingSection
			\clef bass <dis,, dis'>-. r <e e'>-. |
		r <dis dis'>-. r <cis cis'>-. |
		r <b b'>-. r <e e'>-. |
		r <dis dis'>-. r <gis gis'>-. |
		r <g g'>-. r <fis fis'>-. |
		r <e e'>-. r <dis dis'>-. |
		r <cis cis'>-. r <g' g'>-. |
		r <fis fis'>-. <b, b'>4 |
	}

	\bar "||"

	\key b \minor

	% Part C:

	\relative {

		% 65-72

		<b,, b'>8 <b b'>16 <b b'> <ais ais'>8 <ais ais'>16 <ais ais'> |
		<b b'>8 <b b'>16 <b b'> g'8 g16 g |
		<d d'>8 <d d'>16 <d d'> <g d'>8 <g d'>16 <g d'> |
		<e e'>8 <e e'>16 <e e'> fis8 fis16 fis |

		<b, b'>8 <b b'>16 <b b'> <ais ais'>8 <ais ais'>16 <ais ais'> |
		<b b'>8 <b b'>16 <b b'> g'8 g16 g |
		<d d'>8 <d d'>16 <d d'> <g d'>8 <g d'>16 <g d'> |
		e8 fis16 fis <b, b'>8 fis''16 e |

		% 73-80

		d8 cis16 b a8 b16 b |
		cis8 b16 b a4~ |
		a8 gis16 fis e8 d16 d |
		e8 <e e'>16 <e e'> <a, a'>4 |

		a''8 a16 a gis8 gis16 gis |
		a8 a16 a e8 e16 e |
		a8 a16 a gis8 gis16 gis |
		a8 a16 a e8 e16 e |

		% 81-88

		e'8 e16 e a,8 a16 a |
		e'8 e16 e a,8 a16 a |
		a8 a16 a d8 d16 d |
		a8 a16 a d8 d16 d |

		g,8 g16 g cis,8 cis16 cis |
		fis8 fis16 fis b,8 b16 b |
		e8 e16 e ais,8 ais16 ais |
		b8 g16 g fis4 |

		% 89-96

		<b, b'>8 <b b'>16 <b b'> <ais ais'>8 <ais ais'>16 <ais ais'> |
		<b b'>8 <b b'>16 <b b'> g'8 g16 g |
		<d d'>8 <d d'>16 <d d'> <g d'>8 <g d'>16 <g d'> |
		<e e'>8 <e e'>16 <e e'> fis8 fis16 fis |

		<b, b'>8 <b b'>16 <b b'> <ais ais'>8 <ais ais'>16 <ais ais'> |
		<b b'>8 <b b'>16 <b b'> g'8 g16 g |
		<d d'>8 <d d'>16 <d d'> <g d'>8 <g d'>16 <g d'> |
		e8 e16 e fis8 fis16 fis |

		\bar "||"
	}

	\key b \major

	% Part D: Vivace

	<<
	\relative{

		% 97-106

		\stemDown fis,,4_> gis_> |
		ais_> b_> |
		cis_> dis_> |
		eis_> fis_> |

		\stemUp fis-> gis-> |
		ais-> b-> |
		bis-> cis-> |
		%\stemDown
		 fis-> b,-> |
		fis-> b,-> |
		\once \override Script #'extra-offset = #'(0 . 0.5)
		fis->
		\once \override Script #'extra-offset = #'(0 . 1.5)
		dis-> |
	}
	\\
	\relative{
		\override Beam #'concaveness = #'1
		\override Beam #'damping = #'0.5

		% 97-106

		\stemUp
		fis,,8 dis16 b gis'8 e16 dis |
		ais'8 cis,16 e b'8 dis,16 fis |
		cis'8 ais16 fis dis'8 b16 ais |
		eis'?8 gis,16 b fis'8 dis,16 ais' |

		\stemDown fis'8 dis16 b gis'8 e16 dis |
		ais'8 cis,16 e b'8 dis,16 fis |
		bis?8 a16 fis cis'8 e,16 gis |
		%\stemUp 
		fis'8 fis,16 cis' b8 b,16 fis' |
		fis8 fis,16 cis' b8 b,16 fis' |
		fis8 fis,16 cis' b4 |
	}
	>>

	\clef treble
	\relative {

		% 107-108

		<b fis' b>8->\arpeggio r8 <b fis' b>8->\arpeggio r8 |
		\clef bass
		\once \override Script #'extra-offset = #'(0 . -0.2)
		b,,2-> \fermata |
		\bar "|."
	}
}



dynamics = {

	\time 2/4

	\partial 8

	\override DynamicText #'self-alignment-X = #-1
	\override DynamicTextSpanner #'dash-period = #7
	\override DynamicTextSpanner #'dash-fraction = #0.05


	% Part A: Allegro risoluto

	\override TextScript #'extra-offset = #'(0 . 1.0)
	s8\f
	s2*32 |

	% #33

	\once \override DynamicText #'extra-offset = #'(0 . 1.0)
	s2\p |
	s2*15 |

	% #49

	s2\p |
	s4 s4_\markup{\italic cresc.}  |
	s2*6 |

	% #57

	\once \override DynamicText #'extra-offset = #'(0 . -1.0)
	s2\p |
	s2*6 |
	s4 s8 s8\f |

	% #65

	s2*32 |

	% #97

	s16\p 
	\setTextCresc
	\set crescendoText = \markup { \italic \smaller "cres" }
		s16 s8\< s4 |
	\setTextCresc
	\set crescendoText = \markup { \italic \smaller "cen" }
	s16 s16\! s8\< s4 |
	\setTextCresc
	\set crescendoText = \markup { \italic \smaller "do" }
	s16 s16\! s8\< s4 |

	% #100

	\override TextScript #'extra-offset = #'(0 . 0.8)
	s16\!_\markup{\italic poco} s16 s8 s4 |
	s8 s16 s32 s32_\markup{\italic a} s4 |
	s8 s16_\markup{\italic poco} s16 s4 |
	s2
	\override TextScript #'extra-offset = #'(-1 . 1.0)
	s8 s16_\markup{\italic molto} s16 s4 |

	s2*2

	% #107

	s2\ff
	s2
}


%%
%%   PDF, PS
%%

\score {
	\new PianoStaff <<
		\set PianoStaff.instrumentName = \markup{"Piano"\hspace #1 }
		\set PianoStaff.connectArpeggios = ##t
		\new Staff = "upper" \upper
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "lower" \lower
	>>
	\layout {
		\context {
			\type "Engraver_group"
			\name Dynamics
			\alias Voice
			\consists "Output_property_engraver"

			\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)

			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"
     
			\override DynamicText #'extra-offset = #'(0 . 2.0)
			\override Hairpin #'extra-offset = #'(0 . 2.0)
			\override DynamicTextSpanner #'extra-offset = #'(0 . 2.0) 

			\consists "Skip_event_swallow_translator"
     
			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
			\override VerticalAlignment #'forced-distance = #6.5
			\override SeparationItem #'padding = #1.
		}
	}
}


%%
%%   MIDI
%%

\score {
	\new PianoStaff <<
		\new Staff = "upper" << \upper \dynamics >>
		\new Staff = "lower" << \lower \dynamics >>
	>>
	\midi {
		\context {
			\type "Performer_group"
			\name Dynamics
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

