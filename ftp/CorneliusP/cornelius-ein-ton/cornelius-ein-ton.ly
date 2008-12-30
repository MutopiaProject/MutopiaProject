\version "2.10.0"
#(set-global-staff-size 18)

\paper {
	top-margin = 0.25\in
	bottom-margin = 0.25\in
	print-page-number = ##t
	head-separation = 0\in
	ragged-last-bottom = ##f
	system-count = 11
}

\header {
	title = "Ein Ton"
	subtitle = "The Monotone"
	composer = "Peter Cornelius (1824–1874)"

	%mutopia-specific headers:
	mutopiatitle = "Ein Ton"
	mutopiacomposer = "CorneliusP"
	mutopiapoet = "P. Cornelius (1824-1874)"
	mutopiaopus = ""
	mutopiainstrument = "Voice and Piano"
	date = "19th Century"
	source = "The University Society, 1909"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2006/Dec/06"
 footer = "Mutopia-2006/12/18-583"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


sopNotes = {
	\clef treble
	\time 3/4
	\key e \minor
	\autoBeamOff
	%Page 1 Line 1
	\once \override Score.RehearsalMark #'extra-offset = #'(7.0 . 2.0)
	\mark \markup {\large \bold "Etwas bewegt."}
	R2.^\fermataMarkup | r4.\fermata b'8 b'8 b'8 | b'4. b'8 b'8 b'8 | b'4. b'8 b'8 b'8 |
	%Page 1 Line 2
	b'8 b'8 b'4. b'8 | b'2. ~ | b'4 r4 r4 | r4 r8 b'8 b'8 b'8 |
	%Page 1 Line 3
	b'4. b'8 b'8 b'8 | b'4. b'8 b'8 b'8 | b'8 b'8 b'4. b'8 |
	
	%Page 2 Line 1
	b'2. ~ | b'4 r4 r4 | r4 r8 b'8 b'8 b'8 | b'8 b'4 b'4 b'8 |
	%Page 2 Line 3
	b'4. b'8 b'8 b'8 | b'8 b'8 b'4. b'8 | b'2 r4 | R2. |
	%Page 2 Line 3
	r4 b'4 b'8 b'8 | b'4. b'8 b'8 b'8 | b'4. b'8 b'8 b'8 |
	%Page 2 Line 4
	b'8 b'8 b'4. b'8 | b'2. ~ | b'4 r4 r4 | R2. |
	
	%Page 3 Line 1
	b'4^\pp b'4 b'4 | b'4. b'8 b'8 b'8 | b'4. b'8 b'8 b'8 |
	%Page 3 Line 2
	b'8 b'8 b'4. b'8 | b'2. ~ | b'4 r4 r4 | R2. |
	R2.*8
}

rhOne = {
	\clef treble
	\time 3/4
	\key e \minor
	\oneVoice
	%Page 1 Line 1
	b'2\fermata b'4\rest | b'4.\fermata \voiceOne g'8^\markup{\italic "gebunden."}[ g'8 g'8] | dis'8[ e'8 g'8 b'8 fis''8 e''8] | e''8[ d''8 b'8 d''8 a''8 g''8] |
	%Page 1 Line 2
	g''8[ fis''8 b'8 a''8 a''8 g''8] | g''8[ fis''8 fis''8 e''8 fis''8 g''8] | \oneVoice <b' g''>8[ <g' b'>8] r8 <g' b'>8[ <g' b'>8 <b g'>8] | <b g'>8[ <g b>8] r8 <b g'>8[ <b g'>8 <a fis'>8] | \voiceOne
	%Page 1 Line 3
	d'8[ e'8 g'8 b'8 fis''8 e''8] | e''8[ d''8 b'8 d''8 a''8 g''8] | g''8[ fis''8 b'8 a''8 a''8 g''8] |
	%Page 2 Line 1
	g''8[ fis''8 fis''8 e''8 fis''8 g''8] | \oneVoice <b' g''>8[ <g' b'>8] r8 <g' b'>8[ <g' b'>8 <b g'>8] |
	\voiceOne <b g'>8[ <g e'>8 g8 g'8 <b g'>8 <a fis'>8] | e'8[ g'8 b'8 e''8 e''8 d''8] |
	%Page 2 Line 2
	cis''8[ d''8 d''8 e''8 f''8 d''8] | g''!8[ fis''!8 d''8 fis''8 g''8 fis''8] | a''8[ gis''8 d''8 gis''8 a''8 gis''8] | b''8[ gis''8 gis''8 dis''8 b'8 gis'8] |
	%Page 2 Line 3
	gis'8[ b8 b'8 g'8 g'8 fis'8] | dis'8[ e'8 g'8 b'8 b'8 b'8] | b'8[ cis''8 d''!8 b'8 b'8 b'8] |
	%Page 2 Line 4
	b'8[ cis''8 dis''8 b'8 b'8 b'8] | b'!8[ gis'8 f'8 d'8 fis'8 gis'8] | \oneVoice b'!8[ d''8 f''8 gis''8 b''8 gis''8] | b''2 r4 |
	%Page 3 Line 1
	<dis' gis' b'>4 <dis' gis' b'>4 <dis' gis' b'>4 | \stemDown <dis' b'>4. \voiceOne <dis' gis' b'>8[ <dis' gis' b'>8 <dis' gis' b'>8] | b'8[ cis''8 b'8 b'8 b'8 b'8] |
	%Page 3 Line 2
	b'8[ cis''8 dis''8 b'8 b'8 b'8] | b'8[ cis''8 b'8 gis'8 b'8 b'8] | b'8[ cis''8 b'8 gis'8 b'8 b'8] | b'8[ c''!8 b'8 e''8 fis''8 e''8] |
	%Page 3 Line 3
	e''8[ d''8 b'8 d''8 a''8 g''8] | g''8[ fis''8 b'8 a''8 a''8 g''8] | g''8[ fis''8 fis''8 e''8 fis''8 g''8] | \oneVoice <b' g''>8[ <g' b'>8] r8 <g' b'>8[ <g' b'>8 <b g'>8] | \voiceOne
	%Page 3 Line 4
	g'8[ e'8 b8 e'8 g'8 fis'8] | dis'8[ e'8 c'!8 b8 \change Staff = lh g8 fis8] | dis8[ e8 g8 b8 \change Staff = rh \stemDown e'8 g'8] | \oneVoice b'2\fermata r4 | b'2.\fermata \bar "|."
}

rhTwo = {
	\clef treble
	\time 3/4
	\key e \minor
	\voiceTwo
	s2. | s4. r8 b4 | b4 r4 b'4 | b'4 r4 b'4 |
	b'4 b'4 b'4 | b'4 b'4 b'4 | s2. | s2. |
	<g b>4 r4 b'4 | b'4 b'4 b'4 | b'4 b'4 b'4 |
	
	b'4 b'4 b'4 | s2. | s4 g4 s4 | g4 r4 b'4 |
	b'2 b'4 | b'2 <b' d''>4 | <b' d''>2 <b' d''>4 | <b' dis''>4 gis'2 |
	r8 \once\override Staff.NoteCollision #'merge-differently-dotted = ##t b4. b8 a8 | <g b>4 r8 <b e'>8[ <b e'>8 <b e'>8] | <d'! f'!>4. <d' f'>8[ <d' f'>8 <d' f'>8] |
	<dis' fis'!>4. <dis' fis'>8[ <dis' fis'>8 <dis' fis'>8] | <d'! f'>4 s2 | s2.*2 |
	
	s2. | \stemUp gis'8[ fis'8 dis'8] \voiceTwo s4. | <b e'>4. <b e'>8[ <b e'>8 <b e'>8] |
	<dis' gis'>2 <dis' gis'>8[ <dis' fis'>8] | <b e'>2 <a dis' fis'>4 | <b e'>2 <a dis' fis'>4 | <b e'>2 b'4 |
	b'4 b'4 b'4 | b'4 b'4 b'4 | b'4 b'4 b'4 | s2. |
	b4 g4 <a dis'>4 | <g b>4 s2 | s2.*3 |
}

lhOne = {
	\clef bass
	\time 3/4
	\key e \minor
	\oneVoice
	R2.^\fermataMarkup | r4.\fermata r8 <b, a>4 | <e g>2 \clef treble <cis' g'>4 | <d'! g'>2 <e' g'>4 |
	\voiceOne g'4 a'4 \oneVoice <e' g'>4 | <dis' a'>4 <e' g'>4 <cis' g'>4 | \clef bass d'4 d2 ~ | \voiceOne d2 \oneVoice <dis, dis>4 |
	<e, e>4 r4 \clef treble <cis' g'>4 | <d'! g'>2 <e' g'>4 | \voiceOne g'4 a'4 \oneVoice <e' g'>4 |
	
	<dis' g'>4 <e' g'>4 <cis' g'>4 | \clef bass d'4 d4 dis4 | e2 b,4 | <e, e>4 r4 <g f'>4 |
	<gis f'>2 <g f'>4 | <fis! fis'!>2 <f f'>4 | <e e'>2 <e e'>4 | <dis dis'>4 <b, b>2 |
	b,2 <b,, b,>4 | <e, e>4 r8 <g, g>8[ <g, g>8 <g, g>8] | <gis, gis>4. <gis, f gis>8[ <gis, f gis>8 <gis, f gis>8] |
	<a, fis a>4. <a, fis a>8[ <a, fis a>8 <a, fis a>8] | <bes, f gis>2. ~ | <bes, f gis>2. ~ | <bes, f gis>2 r4 |
	
	dis4 dis4 dis4 | <b, a>4. <b, b>8[ <b, b>8 <b, b>8] | <e, b, gis>4.\arpeggio <e, b, gis>8\arpeggio[ <e, b, gis>8\arpeggio <e, b, gis>8\arpeggio] |
	<dis, dis>2 <b, a>8[ <b, a>8] | <e, b, gis>2\arpeggio <e, b, gis>4 | <e, b, gis>2\arpeggio <e, b, gis>4 | <e, b, g!>2\arpeggio \clef treble <cis' g'>4 |
	<d'! g'>2 <e' g'>4 | \voiceOne g'4 a'4 \oneVoice <e' g'>4 | <dis' a'>4 <e' g'>4 <cis' g'>4 | \clef bass d'4 d4 dis4 |
	e2 b,4 | <e, e>4 b,4\rest b,4\rest | s2. | R2. | R2.^\fermataMarkup
}

lhTwo = {
	\clef bass
	\time 3/4
	\key e \minor
	\voiceTwo
	s2.*4
	dis'2 s4 | s2. | s2. | e,4\rest d,4 s4 |
	s2.*2 | dis'2 s4
	
	s2.*4
	s2.*4
	s2.*3
	s2.*3
	
	s2.*3
	s2.*4
	s2. s2. | dis'2 s4
}

dynamics = {
	s2.\p | s4.\pp s16 s16\p s4 | s8 s8\< s4. s8\! | s2 s4-> |
	s2 s4-> | s2\< s8 s8\! s4.\mf s4\> s8\! | s2.\p |
	s8 s8\< s8 s8\! s4-> | s2 s4-> | s2 s4-> |
	
	s2.-"cresc." | s4. s8\< s8 s8\! | s2. | s4 s4-"cresc." s4 |
	s2.*3 | s4 s4.\> s8\! |
	s2.\p | s8 s8-"cresc." s2 | s2. |
	s2. | s8\fp s8-"dim." s2 | s2. | s8 s8\pp s2 |
	
	s2.\pp | s2.*2 |
	s2.*4
	s2 s4-> | s2 s4-> | s2\< s8 s8\! | s4.\mf s8\> s8 s8\! |
	s2. | s8 s8\> s2 | s4. s8\! s4 | s2.\pp
}

textGer = \lyricmode {
	Mir klingt ein Ton, so wun -- der -- bar in Hertz und Sin -- nen im -- mer -- dar. __
	Ist es der Hauch, der dir ent -- schwebt, als ein -- mal noch dein Mund ge -- bebt? __
	ist es des Glöck -- leins trü -- ber Klang, der dir ge -- folgt den Weg ent -- lang?
	Mir klingt der Ton so voll und rein, als schlöss er dei -- ne See -- le ein, __
	als stie -- gest lie -- bend nie -- der Du und säng -- est mei -- nen Schmertz in Ruh! __
}

\score {
	<<
		\context Staff = melStaff {
			\context Voice = mel { \sopNotes }
			\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
		}
		\lyricsto mel \new Lyrics \textGer

		\context PianoStaff <<
			\context Staff = rh {
				<<
					\context Voice = rhA { \rhOne }
					\context Voice = rhB { \rhTwo }
				>>
			}
			\context Dynamics = dynamics \dynamics
			\context Staff = lh
			{
				<<
					\context Voice = lhA { \lhOne }
					\context Voice = lhB { \lhTwo }
				>>
			}
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
			\override VerticalAlignment #'forced-distance = #6.5
		}
		\context {
			\Staff
			\override SeparationItem #'padding = #0.75
		}
	}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


}
