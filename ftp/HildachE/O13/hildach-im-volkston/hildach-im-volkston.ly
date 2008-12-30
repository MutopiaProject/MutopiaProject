\version "2.10.0"

#(set-global-staff-size 19)
\paper {
	top-margin = 0.2\in
	bottom-margin = 0.2\in
	between-system-padding = 0\in
	between-system-spacing = 0\in
	ragged-last-bottom = ##f
	system-count = 8
	head-separation = 0\in
}

\header {
	title = "Im Volkston"
	composer = "Eugen Hildach (1849–1924)"
	opus = "Op. 13, No. 2"
	poet = "Anna Hildach (1852–1935)"

	%mutopia-specific headers:
	mutopiatitle = "Im Volkston"
	mutopiacomposer = "HildachE"
	mutopiapoet = "Anna Hildach (1852-1935)"
	mutopiaopus = "O 13"
	mutopiainstrument = "Voice and Piano"
	date = "19th century"
	source = "The University Society, 1904"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2006/Dec/06"
 footer = "Mutopia-2006/12/21-886"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

highSlur = { \once \override Slur #'height-limit = #'5 } 

sopNotes = {
	\time 3/4
	\key des \major
	\clef treble
	\autoBeamOff
	R2.*3 | \break
	r4 r4 aes'4^\pp | f''4 ees''4. des''8 | ges''4 bes'4. bes'8 | ees''4 des''4 c''4 |
	f''2 r8 f'8 | des''4 c''4 bes'4 | c''4 ges'4 r8 ges'8 | f'4 c''4. des''8 |
	bes'2 r4 | r4 r4 aes'4^\p | f''4 ees''4. des''8 | ges''4 bes'4. bes'8 |
	
	ees''4 des''4 c''4 | f''4. r8 f'4 | des''4 c''4 bes'4 | c''4 ges'4 ges'8 ges'8 |
	f'4 c''4. des''8 | bes'4 r4 r4 | r4 r4 r8^\markup{\italic "rit."} aes'8 | f''4^\markup{\italic "a tempo"} ees''4. des''8 |
	ges''4 bes'4 r8 bes'8 | ees''2 des''8 c''8 | f''2 des''4^\< | aes''4 ges''4.\!\> f''8\! |
	f''4 bes'4 c''8([ des''8]) | des''4 aes'4 r16 ees''8^\fermata([ des''16]) | des''2 r4 | R2. | R2.^\fermataMarkup \bar "|."
}

textGer = \lyricmode {
	Was leuch -- tet ihr Ster -- ne so hell in der Nacht?
	mein Schatz der ist fer -- ne, hat mein nicht mehr Acht!
	Ihr Vög -- lein was singt ihr am Mor -- gen so schön,
	den Lieb -- sten nicht bringt mir eu -- er hel -- les Ge -- tön!
	Ver -- weht al -- le Blü -- ten, er -- fro -- ren der Klee,
	mag Gott dich be -- hü -- ten, Herz -- lieb -- ster, a -- de!
}

rhOne = {
	\time 3/4
	\key des \major
	\clef treble
	\voiceOne
	\once\override Score.RehearsalMark #'extra-offset = #'(6.0 . 1.0)
	\mark \markup {\large \bold "Sehr langsam."}
	aes'4( f'4 aes'4 | bes'2 des''4 | c''4 ees''4 e''4 |
	f''8. aes''16 aes''2) | r4 ees''4( des''4 | ges''4 bes'2) | ees''4( des''4 c''4 |
	f''2.) | des''4( c''4 bes'4 | c''2 ges'4) | f'4.^\( a'8( f''4)\) |
	f'4( ees'4 des'4 | ges'2 ~  ges'8) f'8 | f'4( aes'4 des''4 | c''2 bes'4 |
	
	aes'2) ges'4( | f'4 aes'4 des''4 ~ | des''2 des''4 | ges'2 bes'4 |
	a'2) f''4 ~ | f''4 ees''4( des''4 | ges''4 bes'4 c''4) | \highSlur \change Staff = "lh" \oneVoice des,8([ aes,8] f8[ aes8] \change Staff = "rh" \stemDown des'8[ f'8]) \oneVoice |
	\highSlur \change Staff = "lh" ees,8([ aes,8] ges8[ bes8] \change Staff = "rh" \stemDown des'8[ ges'8]) | \highSlur \stemUp \change Staff = "lh" aes,8([ ges8] bes8[ des'8] c'8[ \change Staff = "rh" \stemDown aes'8]) |
		\highSlur \oneVoice \change Staff = "lh" des,8([ aes,8] f8[ aes8] \change Staff = "rh" \stemDown des'8[ \tieUp aes'8]) ~ | \voiceOne aes'4 r4 r4 |
	<g des'>2 r4 | \tieNeutral \set tieWaitForNote = ##t aes8 ~ des'8 ~  <aes des' aes'>4 beses'8 aes'8^\fermata | f''4( ees''4 \tieUp des''4 ~ |
		\once\override TextScript #'extra-offset = #'(2 . -1.5) <des' f' des''>4)^\markup{\italic "smorzando"} s4 s4 | 
}

rhTwo = {
	\time 3/4
	\key des \major
	\clef treble
	\voiceTwo
	r8 <aes des'>4 <aes des'>4 <aes des' f'>8 | r8 <bes ees' ges'>4 <ees' ges'>4 <ees' ges' bes'>8 | r8 <ees' ges' aes'>4 <ges' aes' c''>4 <ges' aes'>8 |
	r8 aes'8 ~ <aes' des''>2 | r8 <f' aes'>4 <f' aes'>4 <f' aes'>8 | r8 <ees' ges'>4 <ees' ges'>4 <ees' ges'>8 | r8 <ees' ges'>4 <ees' ges'>4 <ees' ges' aes'>8 |
	r8 <f' aes'>4 <f' aes'>4 <f' aes'>8 | r8 <des' f'>4 <des' f'>4 <des' f'>8 | r8 <bes ees'>4 <bes ees'>4 <bes ees'>8 | r8 <a ees'>4 ees'4. |
	r8 <f bes des'>4 <f bes>4 <f bes>8 | r8 <ges bes>8 ~ <ges c'>2 | r8 <aes des'>4 <des' f'>4 <f' aes'>8 | r8 <ees' ges'>4 <ees' ges'>4 <ees' ges'>8 |
	
	r8 <c' ees'>4 <c' ees'>4 <c' ees'>8 | r8 <aes des'>4 <des' f'>4 <des' f'>8 | r8 <des' f'>4 <des' f'>4 <des' f'>8 | r8 <bes ees'>4 <bes ees'>4 <ees' ges'>8 |
	r8 <c' ees' f'>4 <ees' a'>4. | r8 <f' bes'>4 <f' bes'>4 <f' bes'>8 | r8 <ees' ges'>4 <ees' ges'>4 <ees' ges' aes'>8 | s2. |
	s2. | s8 \change Staff = "lh" \set tieWaitForNote = ##t \once \override Stem #'stencil = ##f \once \override Beam #'stencil = ##f ges8 ~ s4 <ges c'>4 |
		\change Staff = "rh" s2. | ces'8[ des'8] bes8[ des'8] aes8[ des'8] |
	s2. | s2 c'4\fermata | r8 <f' aes'>4 <f' aes'>4 <ees' ges'>8 | \oneVoice \highSlur \change Staff = "lh" des,8[( aes,8] f8[ aes8] \change Staff = "rh" \stemDown des'8[ aes'8] | des''2.)^\fermata |
}

lhOne = {
	\time 3/4
	\key des \major
	\clef bass
	des,4( aes,4 f4) | des,4( ges4 bes4) | des,4( aes4 c'4) |
	des,8( \tieDown aes8 ~ <aes f'>2) \tieNeutral | des,4 aes2 | ees,4 aes2 | aes,4 bes4 aes4 |
	des,4 aes2 | bes,,4 f2 | ees,4 ges2 | f,4( c4 a4) |
	bes,,2. | <ees,, ees,>4 <aes,, aes,>2 | des,4( aes,4 f4) | ees,4 aes2 |
	
	aes,4 ges2 | des,4( aes,4 f4) | bes,,4( f4 bes4) | ees,4 ges2 |
	f,4( c4 a4) | bes,4 <f bes des'>2 | ees,4 aes4 aes,4 | s2. |
	s2. | \voiceTwo \once \override NoteColumn #'horizontal-shift = #'3 aes,2. \oneVoice | s2. | << { des2. } \\ {f,4 ges,4 aes,4} >> |
	ees,2 r4 | <aes, f>2 <ges, ges>4_\fermata | des,4 aes4 <des beses>4 | s2.*2
}

lhTwo = {
	s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp |
	s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp |
	s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp |
	s2\sustainDown s8 s8\sustainUp | s2. | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp |
	
	s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp |
	s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp |
	s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2\sustainDown s8 s8\sustainUp | s2. |
	s2. | s2. | s2\sustainDown s4\sustainUp | s2.\sustainDown | s2.\sustainUp
}

dynamics = {
	s2.\pp | s4. s4.\< | s4 s8\! s4\> s8\! |
	\once\override TextScript #'extra-offset = #'(0 . 2.5) s2.-"riten." | s2.\pp | s2. | s2. |
	s2.*4 |
	s2.\p | s2. | s2.\p | s2. |
	s2.*4 |
	s2 s8 s8\p | s2. | s4. s4-"rit." s8 | \once\override TextScript #'extra-offset = #'(0 . 3.5) s2.-\markup{\column {"a tempo" \dynamic "p"}} |
	s2.*2 | s2 \once\override Hairpin #'extra-offset = #'(0 . 0) s4\< | s8 s8\! s4 \once\override Hairpin #'extra-offset = #'(0 . 0) s8\> s8\! |
	s2. | s2 s8 s16\>  s16\! | \once\override TextScript #'extra-offset = #'(0 . 3.5) s2.-\markup{\column {\dynamic "pp" "sehr langsam"}} | s2.\> | s2.\!
}

\score {
	<<
		\context Staff = melStaff {
			\context Voice = mel { \sopNotes }
			\override Staff.VerticalAxisGroup #'minimum-Y-extent = ##f
			\override Staff.VerticalAxisGroup #'Y-extent = #'(-3 . 5)
		}
		\lyricsto mel \new Lyrics \textGer

		\context PianoStaff <<
			\context Staff = rh {
				\override Staff.VerticalAxisGroup #'minimum-Y-extent = ##f
				\override Staff.VerticalAxisGroup #'Y-extent = #'(-3 . 5.25) %-5 . 4
				<<
					\context Voice = rhA { \rhOne }
					\context Voice = rhB { \rhTwo }
				>>
			}
			\context Dynamics = dynamics \dynamics
			\context Staff = lh
			{
				\override Staff.VerticalAxisGroup #'minimum-Y-extent = ##f
				\override Staff.VerticalAxisGroup #'Y-extent = #'(-4 . 3) %-4 . 3
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
     
			\override TextScript #'font-size = #0.5
			\override TextScript #'font-shape = #'italic
			\override TextScript #'extra-offset = #'(0 . 1.0)
			\override DynamicText #'extra-offset = #'(0 . 2)
			\override Script #'extra-offset = #'(0 . 1.0)
			\override Hairpin #'extra-offset = #'(0 . 2)
     
			\consists "Skip_event_swallow_translator"
     
			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
			\override VerticalAlignment #'forced-distance = #5.75
		}
		\context {
			\Staff
			\override SeparationItem #'padding = #0.6
		}
		\context {
			\Score
			\override VerticalAxisGroup #'remove-first = ##t
		}
	}
	%
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


}
