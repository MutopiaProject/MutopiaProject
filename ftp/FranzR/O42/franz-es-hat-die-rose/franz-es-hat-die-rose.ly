\version "2.11.41"

#(set-global-staff-size 18)

\paper {
	ragged-last-bottom = ##f
	%head-separation = 0\in
	between-system-padding = 0
}

\header {
	title = "Es hat die Rose sich beklagt"
	%subsubtitle = "The Rose Complained"
	composer = "Robert Franz (1815–1892)"
	poet = "Friedrich von Bodenstedt (1819–1892)"
	opus = "Op. 42, No. 5"

	%mutopia-specific headers:
	mutopiatitle = "Es hat die Rose sich beklagt"
	mutopiacomposer = "FranzR"
	mutopiapoet = "Friedrich von Bodenstedt (1819–1892)"
	mutopiaopus = "Op 42, No 5"
	mutopiainstrument = "Voice and Piano"
	date = "19th century"
	source = "Oliver Ditson Company, 1902"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2008/Mar/05"
	
 footer = "Mutopia-2008/03/10-1367"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = { \key des \major \time 2/4 \partial 4 \dynamicUp }
hpDown = { \override Hairpin #'extra-offset = #'(0 . -1) }

wideStaves = { \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((alignment-offsets . (0 -5.5 -15 -22 -29))) }
narrowStaves = { \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((alignment-offsets . (0 -5.25 -13.5 -19.75 -26))) }
pianoStaves = { \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((alignment-offsets . (0 -6.25 -12.5))) }

voxNotes = {
	\global \clef treble \autoBeamOff
	\wideStaves
	%0
	r4^\markup{\hspace #-6 \large\bold "Innig und zart"} |
	%1
	R2 |
	%2
	r4 r16 ees' f' ges' | \break
	
	\wideStaves
	%3
	f'8 ees' bes'([ aes'16]) ges' |
	%4
	f'8([^\< aes'])\! r16 des'16 \acciaccatura { f'8 } ees'16 des' |
	%5
	bes'8 aes' ges' f'\< | \break
	
	\wideStaves
	%6
	ees'8\! ges' r16 f' ges' aes' |
	%7
	bes'8([ f''16]) ees'' des''8 c'' |
	%8
	ees''8 des'' r4 | \break
	
	\narrowStaves
	%9
	R2 |
	%10
	r4 r16 ees'16 f' ges' | \break
	
	\narrowStaves
	%11
	f'8 ees' bes'([ aes'16]) ges' |
	%12
	f'8([\> aes'])\! r16 des'16 \acciaccatura { f'8 } ees'16 des' |
	%13
	bes'8 aes' ges' f' | \break
	
	\narrowStaves
	%14
	ees'8\> ges'\! r16 f'16\< ges' aes' |
	%15
	bes'8\!([ f''16]) ees'' des''8 c'' |
	%16
	ees''8 des'' r4 | \break
}

rhNotes = {
	\global \clef treble
	r16 \once\override Beam #'positions = #'(3.5 . 3.5) f'16^\markup{\small\italic "espressivo"}\( \acciaccatura { aes'8 } ges'16 f'\) |
	%1
	<< { des''8[ c'' bes' des''] } \\ { r16 <des' f'>8[ <des' f'> <des' f'> <des' f'>16] } >> |
	%2
	<< { <c' c''>4 } \\ { r16 <ges' bes'>8[ <ges' bes'>16] } >> r16 ees'16( f' ges') |
	
	%3
	<< { f'8([^\< ees' <bes bes'>\! <aes aes'>16 <ges ges'>] | <f f'>8^\> <aes aes'>)\! } \\ { r16 <f c'>8[ <ges c'>16] r16 <c' ees'>8[ <c' ees'>16] | r16 c'8[ c'16] } >>
	r16 \once\override Beam #'positions = #'(2 . 2) des'16\( \acciaccatura { f'8 } ees'16 des'\) |
	%5
	<< { bes'8([ aes' ges' f'] | <ees ees'>8 <ges ges'>) } \\ { r16 <bes des'>8 <bes des'>16 r16 <ges bes>8 <ges bes>16 | r16 bes8 bes16 } >>
	r16 <f f'>16^( <ges ges'> <aes aes'>) |
	
	%7
	<bes bes'>8[ <f' f''>16( <ees' ees''> <des' des''>8 <c' c''>] |
	%8
	<< \context Voice = rhVoice { \voiceOne <ees' ees''>8 <des' des''>) \oneVoice } \\ { aes'4 } >>
	r16 \once\override Beam #'positions = #'(3.5 . 3.5) f'16\( \acciaccatura { aes'8 } ges'16 f'\) |
	
	%9
	<< { des''8([ c'' bes' des'']) } \\ { r16 <des' f'>8[ <des' f'> <des' f'> <des' f'>16] } >> |
	%10
	<< { <c' c''>4 } \\ { r16 <ges' bes'>8[ <ges' bes'>16] } >> r16 ees'16([ f' ges']) |
	
	%11
	<< { f'8([^\< ees' <bes bes'>\! <aes aes'>16 <ges ges'>] | <f f'>8^\> <aes aes'>)\! } \\ { r16 <f c'>8[ <ges c'>16] r16 <c' ees'>8[ <c' ees'>16] | r16 c'8[ c'16] } >>
	r16 \once\override Beam #'positions = #'(2 . 2) des'16\( \acciaccatura { f'8 } ees'16 des'\) |
	%13
	<< { bes'8([ aes' ges' f'] | <ees ees'>8 <ges ges'>) } \\ { r16 <bes des'>8 <bes des'>16 r16 <ges bes>8 <ges bes>16 | r16 bes8 bes16 } >>
	r16 <f f'>16^( <des' ges'> <c' aes'>) |
	
	%15
	<< { <bes bes'>8[ <f' f''>16( <ees' ees''> <des' des''>8 <c' c''>] | <ees' ees''>8[ <des' des''>]) } \\ { s2 | aes'4 } >>
	r16 \once\override Beam #'positions = #'(3.5 . 3.5) f'16\( \acciaccatura { aes'8 } ges'16 f'\) |
	
	\pianoStaves
	%17
	<< { des''8([ c'' bes' des'']) } \\ { r16 <des' f'>8[ <des' f'>16] r16 <bes des'>8[ <bes des'>16] } >> |
	%18
	<< { <c' c''>4 } \\ { r16 <ges' bes'>8[ <ges' bes'>16] } >> r16 ees'16([ f' ges']) |
	%19
	<< { f'8([^\< ees'\! f' ges']) } \\ { r16 <aes c'>8[ <ges c'> <aes c'>^\> <bes c'>16]\! } >> |
	%20
	<< { f'4 } \\ { <des' aes>4 } >> \bar "|."
}

lhNotes = {
	\global \clef bass
	r4_\markup{\small\italic "Con Ped."} |
	%1
	<bes,, bes,>2 ~ |
	%2
	<bes,, bes,>4 r4 |
	
	%3
	\slurDown <aes,, aes,>2( |
	%4
	<< { aes,8( f) } \\ \context Voice = lhVoice { \voiceTwo des,4) \oneVoice } >> r4 |
	%5
	<ges,, ges,>8[( <bes,, bes,> <ees, ees> <des, des>] |
	
	%6
	<c, c>4) r16 << { aes,16 f ees } \\ { des,16( ees, f,) } >> |
	%7
	\set PianoStaff.connectArpeggios = ##t
	<< { des8[ aes16 ges f8 ees] | ges8\arpeggio f } \\ { ges,4( aes, | des,4)\arpeggio } >> r4
	\unset PianoStaff.connectArpeggios
	%9
	\set doubleSlurs = ##t <bes,, bes,>2( |
	%10
	<ees, ees>4) \unset doubleSlurs r4 |

	%11
	\slurDown <aes,, aes,>2( |
	%12
	<< { aes,8( f) } \\ \context Voice = lhVoice { \voiceTwo des,4) \oneVoice } >> r4 |
	%13
	<ges,, ges,>8[( <bes,, bes,> <ees, ees> <des, des>] |
	
	%14
	<c, c>4) r16 << { aes,16 f ees } \\ { des,16( ees, f,) } >> |
	%15
	\set PianoStaff.connectArpeggios = ##t
	<< { des8[ aes16 ges f8 ees] | ges8\arpeggio f } \\ { ges,4( aes, | des,4)\arpeggio } >> r4
	\unset PianoStaff.connectArpeggios
	
	%17
	<bes,, bes,>8([ <des, des> <ges, ges> <f, f>] |
	%18
	<ees, ees>4) r4 |
	%19
	\set Voice.doubleSlurs = ##t
	<aes,, aes,>2( |
	%20
	<des, des>4)
}

text = \lyricmode {
	Es hat die
	Ro -- se sich __ be -- klagt, __ daß gar zu schnell der Duft ver --
	ge -- he den ihr der Lenz __ ge -- ge -- ben ha -- be,
	Da hab’ ich
	ihr zum Trost __ ge -- sagt, __ daß er durch mei -- ne Lie -- der
	we -- he, und dort ein ew’ -- ges Le -- ben ha -- be.
}

dyn = {
	\time 2/4 \partial 2
	s4\mf
	%1
	\once\override Hairpin #'extra-offset = #'(0 . 1) s8\< s8\! s4 |
	%2
	s16 s8\> s16\! s4 |
	
	%3
	s2 |
	%4
	s4 s8 s16\< s16\! |
	%5
	\once\override Hairpin #'extra-offset = #'(2.5 . 0.5) s16\< s8.\! s4 |
	
	%6
	s16 \once\override Hairpin #'extra-offset = #'(0 . 0.5) s8\> s16\! r16 \once\override Hairpin #'extra-offset = #'(0 . 1.5) s8\< s16\! |
	%7
	s2
	%8
	s8\> s8\! s8. s16\< |
	%9
	\once\override Hairpin #'extra-offset = #'(0 . 0.5) s8\< s4.\! |
	%10
	s16 \once\override Hairpin #'extra-offset = #'(0 . 0.5) s8\> s16\! s4 |

	%11
	s2 |
	%12
	s4 s8 s16\< s16\! |
	%13
	\once\override Hairpin #'extra-offset = #'(2.5 . 0.5) s16\< s8.\! s4 |

	%14
	s16 \once\override Hairpin #'extra-offset = #'(0 . 0.5) s8\> s16\! r16 \once\override Hairpin #'extra-offset = #'(0 . 1.5) s8\< s16\! |
	%15
	s2
	%16
	s8\> s8\! s4 |
	
	%17
	\once\override Hairpin #'extra-offset = #'(0 . 0.5) s8\< s4.\! |
	%18
	s16 \once\override Hairpin #'extra-offset = #'(0 . 0.5) s8\> s16\! s4 |
	%19
	\once\override DynamicText #'extra-offset = #'(0 . 0) s2\p
}

\score {
	<<
		\new Staff = voxStaff {
			\set Staff.instrumentName = \markup{\tiny "Singstimme"}
			\new Voice = voxVoice { \voxNotes }
		}
		\new Lyrics \lyricsto voxVoice \text 

		\new PianoStaff <<
			\set PianoStaff.instrumentName = "Piano"
			\new Staff = rh { \new Voice = rhVoice { \rhNotes } }
			\new Dynamics \dyn
			\new Staff = lh { \new Voice = lhVoice { \lhNotes } }
		>>
	>>
	\layout {
		\context { \RemoveEmptyStaffContext }
		\context {
			\type "Engraver_group"
			\name Dynamics
			\alias Voice % So that \cresc works, for example.
			\consists "Output_property_engraver"
     
			\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"
     
			\override TextScript #'font-size = #1.0
			\override TextScript #'font-shape = #'italic
			\override TextScript #'extra-offset = #'(0 . 1.0)
			\override DynamicText #'extra-offset = #'(0 . 2.5)
			\override Script #'extra-offset = #'(0 . 1.0)
			\override Hairpin #'extra-offset = #'(0 . 2.5)
     
			\consists "Skip_event_swallow_translator"
     
			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}
\score {
	<<
	\new Staff { \set Staff.midiInstrument = "violin" \voxNotes }
	\new Staff { \rhNotes }
	\new Staff { \lhNotes }
	>>
	\midi {
		\context { \Score tempoWholesPerMinute = #(ly:make-moment 40 4) }
		\context { \Voice \remove Dynamic_performer }
	}
}

