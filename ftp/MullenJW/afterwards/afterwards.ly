\version "2.10.0"
#(set-global-staff-size 18)

\paper {
	top-margin = 0.25\in
	bottom-margin = 0.25\in
	print-page-number = ##t
	ragged-last-bottom = ##f
	head-separation = 0\in
	system-count = 19
}
\header {
	title = "Afterwards"
	composer = "John W. Mullen"
	poet = "Mary Mark Lemon"

	%mutopia-specific headers:
	mutopiatitle = "Afterwards"
	mutopiacomposer = "MullenJW"
	mutopiapoet = "Mary Mark Lemon"
	mutopiaopus = ""
	mutopiainstrument = "Voice and Piano"
	date = "1885"
	source = "The University Society, 1909"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2007/Jan/01"
 footer = "Mutopia-2007/01/02-903"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

voxNotes = \relative c'' {
	\time 4/4
	\key c \major
	\clef treble
	\autoBeamOff
	\dynamicUp
	% Page 1
	R1*4 \bar "||" \break
	c4\p b8. a16 g4. gis8 | a g! d g f4\> e\! | c'\> b8.\! a16 b4. b8 |
	d\< c\! b8. a16 d2 | c4\p b8. a16 g4. gis8 | a\< g!\! d g\> f4\! e | \pageBreak
	% Page 2
	r8 e e e b'4.^\markup{\italic "poco rit."} e,8 | g fis e dis e2 | r8 g^\markup{\italic "dolce."} g g c4. c8 |
	c b a gis a4 e | r8 e e e e'4.\sf a,8 | c b a gis a2 |
	r8 a g! fis b4. b8 | d\( a b8. c16\) c4\> b\! | r8 g g g d4. d8 |
	e e fis8. g16 g4 r4 | e'4^\markup{\italic "dolce."} d8 c b4. a8 | g gis b8. a16 a4 g |
	% Page 3
	c4 b8. a16 d4. c8 | b a e fis g2\< | e'4\! d8.\> c16\! b4. a8 |
	g gis b8. a16 a4 g | c4 cis8. cis16 d4. a8 | c!^\markup {\italic "rit."} b a b^\fermata c2 |
	R1*4 \bar "||" \break
	c4^\markup {\dynamic "p" \italic "espress." } b8. a16 g4. gis8 | a g d g f4 e | c' b8 a b4. b8 |
	% Page 4
	d c b a d2 | c4\p b8 a g4. gis8 | a g! d g f4 e |
	r8 e\< e e b'4. e,8\! | g\> fis e dis e2\! | r8 g g\< g\! c4. c8 |
	c8\> b a gis a4\! e | r8 e e e e'4. a,8 | c b a gis a2 |
	r8 a g! fis b4. b8 | d a b8. c16 c4. b8 | r8 g g g d4. d8 |
	% Page 5
	e e fis8. fis16 g4 r | e'\p d8. c16 b4. a8 | g gis b8. a16 a4 g |
	c b8. a16 d4. c8 | b a e fis g2\< | e'4\!\ff d8 c b4. a8 |
	g gis b8. a16 a4 g | c cis8. cis16 d4. a8 | c! b c8. d16 e2 |
	e4\< f8\! fis g4.\> g,8\! | a b d8.^\fermata c16 c2^\fermata | R1 | R1 \bar "|."
}

rhNotes = {
	\time 4/4
	\key c \major
	\clef treble
	% Page 1, line 1
	<e'' e'''>4 <d'' d'''>8. <c'' c'''>16 <b' b''>4. <a' a''>8 |
	<g' g''>8( <gis' gis''> <b' b''>8. <a' a''>16) <a' a''>4( <g'! g''!>4) |
	<c'' c'''>4( <cis'' cis'''>8. <cis'' cis'''>16) <d'' d'''>4.( <a' a''>8) |
	<c''! c'''!>( <b' b''> <a' a''> <b' b''>) <c'' c'''> <c' e'>[ <c' e'> <c' e'>] |
	% Page 1, line 2
	r8 <g c' e'>[ <g c' e'> <g c' e'>] r8 <g c' f'>[ <g c' f'> <g c' f'>] |
	r8 <g b f'>[ <g b f'> <g b f'>]    r8 <g c' e'>[ <g c' e'> <g c' e'>] |
	r8 <g c' g'>[ <g c' g'> <g c' g'>] r8 <b d' g'>[ <b d' g'> <b d' g'>] |
	% Page 1, line 3
	r8 <c' fis' a'>[ <c' fis' a'> <c' fis' a'>] r8 <b g'>[ <a c' fis'> <g d' f'>] |
	r8 <g c' e'>[ <g c' e'> <g c' e'>] r8 <g b f'>[ <g b f'> <g b f'>] |
	r8 <g b f'>[ <g b f'> <g b f'>]    r8 <g c' e'>[ <g c' e'> <g c' e'>] |
	% Page 2, line 1
	r8 <g ais e'>[ <g ais e'> <g ais e'>] r8 <b e' g'>[ <b e' g'> <b e' g'>] |
	r8 <a b fis'>[ <g b e'> <a b dis'>] r8 <g b e'>[ <g b e'> <g b e'>] |
	r8 <b f'! g'>[ <b f' g'> <b f' g'>] r8 <c' e' g'>[ <c' e' g'> <c' e' g'>] |
	% Page 2, line 2
	r8 <d' e' gis'>([ <c' e' a'> <d' e' b'>]) r8 <c' e' a'>[ <c' e' a'> <c' e' a'>] |
	r8 <d' e' gis'>[ <d' e' gis'> <d' e' gis'>] r8 <c' e' a'>[ <c' e' a'> <c' e' a'>] |
	r8 <d' f'>([ <c' e'> <b d'>]) r8 <a c'>([ <c' e'> <c' e' a'>]) |
	% Page 2, line 3
	r8 <c' d' a'>[ <c' d' g'!> <c' d' fis'>] r8 <b d' g'>[ <b d' g'> <b d' g'>] |
	r8 <c' fis'>[ <c' fis'> <c' fis'>] r8 <b g'>[ <b g'> <b g'>] |
	r8 <c' g' a'>[ r <cis' e' bes'>] r8 <d' g' b'>[ <d' g' b'> <d' g' b'>] |
	% Page 2, line 4
	r8 <cis' g' a'>8[ r <c' d' fis' a'>] r g''[ <fis'' a''> <f'' b''>] |
	<e'' c'''>4 <d'' b''>8. <c'' a''>16 <b' g''>4. <a' f''>8 |
	<g' e''>[ <gis' e''> <b' g''!>8. <a' f''>16] \set doubleSlurs = ##t <a' f''>4( <g' e''>) \set doubleSlurs = ##f
	% Page 3, line 1
	<e'' c'''>4 <d'' b''>8. <c'' a''>16 <b' d''>2 |
	r8 <cis' g' a'>[ r <c' d' fis' a'>] <b d' g'> <b' g'' b''>([ <c'' a'' c'''> <d'' b'' d'''>]) |
	<e'' c''' e'''>4 <d'' b'' d'''>8. <c'' a'' c'''>16 <b' g'' b''>4. <a' f'' a''>8 |
	% Page 3, line 2
	<g' e'' g''>[ <gis' e'' gis''> <b' g'' b''>8. <a' f'' a''>16] <a' f'' a''>4( <g' c'' e'' g''>) |
	r8 <g c' g'>[ r <g cis' g'>] r <a d' fis'>[ r <a cis' fis'>] |
	r8 <g b f'!> <g b f'> <g b f'>^\fermata <g c' e'>2 |
	% Page 3, line 3
	<e'' c''' e'''>4 <d'' b'' d'''>8. <c'' a'' c'''>16 <b' g'' b''>4. <a' f'' a''>8 |
	<g' e'' g''>([ <gis' e'' gis''> <b' gis'' b''>8. <a' f'' a''>16]) <a' f'' a''>4( <g' e'' g''>) |
	<c'' c'''>4( <cis'' cis'''>8. <cis'' cis'''>16) \set doubleSlurs = ##t <d'' d'''>4.( <a' a''>8) \set doubleSlurs = ##f |
	<c''! c'''!>8( <b' b''> <a' a''> <b' b''>) <c'' c'''> <g c' e'>[ <g c' e'> <g c' e'>] |
	% Page 3, line 4
	r8 <g c' e'>[ <g c' e'> <g c' e'>] r8 <g b f'>[ <g b f'> <g b f'>] |
	r8 <g b f'>[ <g b f'> <g b f'>] r8 <g c' e'>[ <g c' e'> <g c' e'>] |
	r8 <g c' g'>[ <g c' g'> <g c' g'>] r8 <b d' g'>[ <b d' g'> <b d' g'>] |
	% Page 4, line 1
	r8 <c' fis' a'>[ <c' fis' a'> <c' fis' a'>] r8 <b g'>[( <a c' fis'> <g d' f'>)] |
	r8 <g c' e'>[ <g c' e'> <g c' e'>] r8 <g b f'>[ <g b f'> <g b f'>] |
	r8 <g b f'>[ <g b f'> <g b f'>] r8 <g c' e'>[ <g c' e'> <g c' e'>] |
	% Page 4, line 2
	r8 <g ais e'>[ <g ais e'> <g ais e'>] r8 <b e' g'>[ <b e' g'> <b e' g'>] |
	r8 <a b fis'>[ <g b e'> <a b dis'>] r8 <g b e'>[ <g b e'> <g b e'>] |
	r8 <b f'! g'>[ <b f' g'> <b f' g'>] r8 <c' e' g'>[ <c' e' g'> <c' e' g'>] |
	% Page 4, line 3
	r8 <d' e' gis'>[ <c' e' a'> <d' e' b'>] r8 <c' e' a'>[ <c' e' a'> <c' e' a'>] |
	r8 <d' e' gis'>[ <d' e' gis'> <d' e' gis'>] r8 <c' e' a'>[ <c' e' a'> <c' e' a'>] |
	r8 <d' f'>([ <c' e'> <b d'>]) r8 <a c'>([ <c' e'> <c' e' a'>]) |
	% Page 4, line 4
	r8 <c' d' a'>[ <c' d' g'> <c' d' fis'>] r8 <b d' g'>[ <b d' g'> <b d' g'>] |
	r8 <c' fis'>[ <c' fis'> <c' fis'>] r8 <b g'>[ <b g'> <b g'>] |
	r8 <c' g' a'>8[ r <cis' g' bes'>] r8 <d' g' b'>[ <d' g' b'> <d' g' b'>] |
	% Page 5, line 1
	r8 <cis' g' a'>[ r <c' d' fis' a'>] r8 g''([ <fis'' a''> <f'' b''>]) |
	<e'' c'''>4 <d'' b''>8. <c'' a''>16 <b' g''>4. <a' f''>8 |
	<g' e''>[ <gis' e''> <b' g''!>8. <a' f''>16] \set doubleSlurs = ##t <a' f''>4( <g' e''>) \set doubleSlurs = ##f |
	% Page 5, line 2
	<e'' c'''>4 <d'' b''>8. <c'' a''>16 <b' d''>2 |
	r8 <cis' g' a'>[ r <c' d' fis' a'>] <b d' g'> <b' g'' b''>[( <c'' a'' c'''> <d'' b'' d'''>)] |
	<e'' c''' e'''>4 <d'' b'' d'''>8 <c'' a'' c'''> <b' g'' b''>4. <a' f'' a''>8 |
	% Page 5, line 3
	<g' e'' g''>[ <gis' e'' gis''> <b' g'' b''>8. <a' f'' a''>16] <a' f'' a''>4( <g' e'' g''>) |
	r8 <g c' g'>[ r <g cis' g'>]  r8 <a d' fis'>[ <a d' fis'> <a d' fis'>] |
	r8 <b d' g'>[ <b d' g'> <b d' g'>] r8 <b e' gis'>[ <b e' gis'> <b e' gis'>] |
	% Page 5, line 4
	r8 <c' e' a'>[ r <c' fis' c''>] r8 <c' e' g' c''>[ <c' e' g' c''> <c' e' g'>] |
	<a c' fis'>4 <g b f'>^\fermata <g c' e'>2^\fermata |
	<c' e'>2^\markup{ \hspace #-1 \bold "Lento."} <c' e' g'> |
	<c' e' g' c''>1 |
}

lhNotes = {
	\time 4/4
	\key c \major
	\clef bass
	% Page 1, line 1
	<c, c>8_\markup { \musicglyph #"pedal.Ped" } <g c' e'>[ <g c' e'> <g c' e'>] <d, d>8 <g b d'>[ <g b d'> <g b d'>] |
	<g, g>8 <g b f'>[ <g b f'> <g b f'>]    <c, c>8 <g c' e'>[ <g c' e'> <g c' e'>] |
	<a, a>8 <a c' e'> g <bes cis' e'> <d, d> <f a d'>[ <f a d'> <f a d'>] |
	<g, g> \clef treble <g d' f'>[ <g d' f'> <g d' f'>] <c' e'> r8 r4 \clef bass |
	% Page 1, line 2
	c4 r d r | g, r c r | e r d r |
	% Page 1, line 3
	d4 r g, a,8( b,) | c4 r d r | g, r c r |
	% Page 2, line 1
	c r b, r | b,2( e4) r | d2( c4) r |
	% Page 2, line 2
	e r a, r | b,2 c | d4 e a r |
	% Page 2, line 3
	fis4 d g d | a d g f! | e( ees d2) |
	% Page 2, line 4
	d,4( d) g,8 << { b8([ c' d']) } \\ { g4. } >> | c8( g c' g) g,( g b g) | g,( g b g) c( g c' g) |
	% Page 3, line 1
	a,( a c' a) d( g b d') | d4 d <g, g>8 <g d' g'>[ <g ees' fis'> <g d' f'>] |
	<c, c>_\markup { \musicglyph #"pedal.Ped" } <g c' e'>[ <g c' e'> <g c' e'>] <d, d> <g b f'>[ <g b f'> <g b f'>] |
	% Page 3, line 2
	<g, g> <g b f'>[ <g b f'> <g b f'>]  <c, c> g([ c' e']) | e4 e d d | g,2^\fermata c,8( c e g) |
	% Page 3, line 3
	<c, c>8 <g c' e'>[ <g c' e'> <g c' e'>] <d, d> <g b f'>[ <g b f'> <g b f'>] |
	<g, g> <g b f'>[ <g b f'> <g b f'>] <c, c> <g c' e'>[ <g c' e'> <g c' e'>] |
	<a, a> <a c' e'> <g, g> <bes cis' e'> <d, d> <f a d'>[ <f a d'> <f a d'>] |
	<g, g> <g d' f'>[ <g d' f'> <g d' f'>] <c' e'> r8 r4 |
	% Page 3, line 4
	c4 r d r | g, r c r | e r d r |
	% Page 4, line 1
	d r g, a,8( b,) | c4 r d r | g, r c r |
	% Page 4, line 2
	c r b, r | b,2( e4) r | d2( c4) r |
	% Page 4, line 3
	e r a, r | b,2 c | d4 e a r |
	% Page 4, line 4
	fis d g d | a d g f! | e( ees d2) |
	% Page 5, line 1
	d,4( d) g,8 << { b8([ c' d']) } \\ { g4. } >> | c8( g c' g) g,( g b g) | g,( g b g) c( g c' g) |
	% Page 5, line 2
	a,( a c' a) d( g b d') | d4 d <g, g>8 <g d' f'>[ <g c' ees' fis'> <g d' f'>] |
	<c, c> <g c' e'>[ <g c' e'> <g c' e'>] <d, d> <g b f'>[ <g b f'> <g b f'>] |
	% Page 5, line 3
	<g, g>8 <g b f'>[ <g b f'> <g b f'>]  <c, c> g([ c' e']) | e4 e d8 r c4 | g,( f, e,2) |
	% Page 5, line 4
	a,4( aes, g,2) | g,4 <g, g,,>4^\fermata <c, c>2^\fermata | <g, g>_\markup { \musicglyph #"pedal.Ped" } <e, e> | <c, c>1 |
}

pianoDyn = {
	% Page 1, line 1
	s4\mf\> s2 s8 s8\! | s4. s8\> s4. s8\! | s4.\< s8\! s4.\> s8\! | s4.\> s8\! s2 |
	% Page 1, line 2
	s1\p | s1 | s8 s4\> s8\! s2 |
	% Page 1, line 3
	s8 s4\< s8\! s8 s4\> s8\! | s1\p | s1 |
	% Page 2, line 1
	s2 s8 s4.-"colla voce." | s1 | s1 |
	% Page 2, line 2
	s1 | s8 s4.\< s8 s8\! s4 | s8 s8\> s8\! s8 s2 |
	% Page 2, line 3
	s1 | s1 | s8 s8\< s2 s8 s8\! |
	% Page 2, line 4
	s4\> s8 s8\! s2-"rit." | s1-"a tempo." | s1 |
	% Page 3, line 1
	s2\> s4. s8\! | s2 s8 s4\< s8\! | \once\override DynamicText #'extra-offset = #'(0.75 . 2.5) s1\ff |
	% Page 3, line 2
	s1 | s2.\p\< s4\! | s1-"rit." |
	% Page 3, line 3
	s1-\markup { \dynamic "mf" \italic "a tempo." } | s4 s8. s16\> s4 s4\! | s4\< s8. s16\! s4.\> s8\! s4.\> s8\! s8 \once\override DynamicText #'extra-offset = #'(0 . 1) s4.\p |
	% Page 3, line 4
	s1 | s1 | s8 s4\> s8\! s2 |
	% Page 4, line 1
	\once\override TextScript #'extra-offset = #'(-1.25 . 2) s8-"rall." s2\> s8\! s4 | s1\p s1 |
	% Page 4, line 2
	s1*3
	% Page 4, line 3
	s1 | s8 s2.\< s8\! | s8 s4\> s8\! s2 |
	% Page 4, line 4
	s1 | s1 | s8 s2.\< s8\! |
	% Page 5, line 1
	s4.\> s8\! s2-\markup{ \hspace #1 \italic "rit."} | s8\p s8\> s2 s4\! | s1 |
	% Page 5, line 2
	s8 s4\> s8\! s2 | s2 s8 s4\< s8\! | s1\ff |
	% Page 5, line 3
	s4 s8. s16\> s8 s8\! s4 | s1\p | s8 s4\< s8\! s4.\> s8\! |
	% Page 5, line 4
	s4\< s4\! s4.\> s8\! | s1-"rit." | s2\< s2\! | s2\> s2\! |
}

text = \lyricmode {
	Af -- ter the day has sung its song of sor -- row, And one by one the
	gold -- en stars ap -- pear, I lin -- ger yet, where once we met, be -- lov -- ed,
	And seem to feel thy spir -- it still is near. The flow’rs have fled that
	blos -- som’d in that Spring -- tide. The birds are mute, that sang their songs a -- bove,
	And tho’ the years have drift -- ed us a -- sun -- der, Time can -- not break the
	gold -- en chain of love; Still we can love, al -- tho’ the sha -- dows gath -- er,
	Still we can hope, un -- til the clouds be past, Come to my heart and
	whis -- per thro’ the si -- lence, “Hope on, dear heart, our lives shall meet at last.”
	Some -- times my heart grows wea -- ry of its sad -- ness, Some -- times my life grows
	wea -- ry of its pain, Then, love, I wait, and list -- en for your whis -- per,
	Till fears de -- part, and sun -- shine comes a -- gain; It can -- not be that
	we should part for -- ev -- er, That love’s sweet song is hush’d for us al -- way;
	I hear it yet, al -- tho’ its theme be al -- tered, ’Twill reach thy heart, and
	bring thee back some day, Love, we can love, al -- tho’ the sha -- dows gath -- er,
	Still we can hope, un -- til the clouds be past, Come to my heart! and
	whis -- per thro’ the si -- lence, “Hope on, dear heart, our lives shall meet at last;”
	“Hope on, dear heart, our lives shall meet at last.”
}

\score {
	<<
		\context Staff = melStaff {
			\set Staff.midiInstrument = "oboe"
			\set Staff.midiMinimumVolume = #0.5
			\set Staff.midiMaximumVolume = #0.9
			\context Voice = vox { \voxNotes }
		}
		\lyricsto vox \new Lyrics \text

		\context PianoStaff <<
			\context Staff = rightHand {
				\rhNotes
			}
			\context Dynamics \pianoDyn
			\context Staff = leftHand
			{
				\lhNotes
			}
		>>
	>>
	\layout {
		%\context { \RemoveEmptyStaffContext }
		\context {
			\type "Engraver_group"
			\name Dynamics
			\alias Voice % So that \cresc works, for example.
			\consists "Output_property_engraver"
     
			\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"
     
			\override TextScript #'font-size = #0
			\override TextScript #'font-shape = #'italic
			\override TextScript #'extra-offset = #'(0 . 2)
			\override DynamicText #'extra-offset = #'(0 . 2.5)
			\override Hairpin #'extra-offset = #'(0 . 2.5)
     
			\consists "Skip_event_swallow_translator"
     
			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
			\override VerticalAlignment #'forced-distance = #6.5
		}
		\context {
			\Staff
			\override SeparationItem #'padding = #0.3
		}
	}
	
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
		\context {
			\type "Performer_group"
			\name Dynamics
			\consists "Span_dynamic_performer"
			\consists "Dynamic_performer"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}

	}


}
