\version "2.6.5"

\header {
	title = "Valse"
	subtitle = "la solitude"
	composer = "Ramana Kumar"
	date = "2002"
	piece = "Allegretto"
	dedication = "pour Stephanie Walls"
	mutopiatitle = "Valse"
	mutopiacomposer = "KumarR"
	mutopiainstrument = "Piano"
	source = "Original composition"
	style = "Classical"
	copyright = "Creative Commons Attribution-ShareAlike 2.5"
	maintainer = "Ramana Kumar"
	maintainerEmail = "ramana.kumar@gmail.com"
	maintainerWeb = "http://webbed.org"
	lastupdated = "2006/January/28"

	footer = "Mutopia-2006/01/28-658"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

\score {
	\context PianoStaff <<
		\context Staff = right <<
			\clef treble
			\key f \minor
			\time 3/4
			{
				\partial 4*1 << {\phrasingSlurUp c'4\(} \\ {c'4 ~} >> |
				<< {aes'2\)\( g'4 ~} \\ {c'4 des'2} >> |
				<< {g'4 f'\) c'4\(} \\ {s2 c'4 ~} >> |
				<< {aes'2\)\( g'4 ~} \\ {c'4 des'2} >> |
				<< {g'4 f'\)} \\ {s2} >> f'4\( |
				des''2\)\( c''4 ~ |
				c''4 bes' aes' |
				aes'2 g'4 ~ |
				g'4\) << {\phrasingSlurUp r4 c'4\(} \\ {aes' c' ~} >> |
				<< {aes'2\)\( g'4 ~} \\ {c'4 des'2} >> |
				<< {g'4 f'\) c'4\(} \\ {s2 c'4 ~} >> |
				<< {c''4\)\( des'' bes' ~} \\ {c'4 des'2} >> |
				<< {bes'4 a'\)} \\ {s2} >> c''4\( |
				c''4 des'' aes' ~ |
				aes' g'\) ees'\( |
				bes'4\)\( c'' ges' ~ |
				ges'4 f'\) des'\( |
				bes'2\)\( aes'4 |
				<< {aes'2 f'4} \\ {s4 des'2} >> |
				ges'4 << {f'4 ees'} \\ {c'2} >> |
				des'2\) c''4\( |
				ees''8 des'' a' bes' c'' des'' |
				des''4 c''\) bes'\( |
				c''8 bes' aes' g' aes' bes' |
				bes'4 aes'\) f'' ~\( |
				f''8 ges'' f'' c'' ees'' a' |
				c''4 bes'\) ees'' ~\( |
				ees''8 f'' ees'' des'' bes' ees' |
				b'4 <aes' c''>\) aes'' ~\( |
				aes''8 bes'' aes'' ges'' f'' ees'' |
				ges''4 f''\) << {\phrasingSlurUp c''\(} \\ {s4} >> |
				<< {ees''8 des'' a' bes' c'' des''} \\ {s2.} >> |
				<< {c''2 bes'4\)\(} \\ {r4 e' c' ~} >> |
				<< {aes'2\)\( g'4 ~} \\ {c'4 des'2 } >>|
				<< {g'4 f'\) c'4\(} \\ {s2 c'4 ~} >> |
				<< {aes'2\)\( g'4 ~} \\ {c'4 des'2} >> |
				<< {g'4 f'\)} \\ {s2} >> f'4\( |
				des''2\)\( c''4 ~ |
				c''4 bes' aes' |
				aes'2 g'4 ~ |
				g'4\) << {r4 \phrasingSlurUp  c'4\(} \\ {aes' c' ~} >> |
				<< {c''2\)\( f''4 ~} \\ {c'2 f'4 ~} >> |
				<< {f''4 e'' bes''} \\ {f'4 e' bes'} >> |
				<< {aes''2 ees''4 ~} \\ {aes'2 ees'4 ~} >> |
				<< {ees''4 des'' aes''} \\ {ees'4 des' aes'} >> |
				<< {g''2 bes'4(} \\ {g'2 s4} >> |
				<< {des''4 c'' bes'} \\ {s2.} >> |
				<< {c''2)\)\( f''4 ~\)\(} \\ {s2.} >> |
				<< {f''4. ees''4 des''8} \\ {r2 g'4 ~} >> |
				<< {c''2 bes'4 ~} \\ {g'4 f'( e')} >> |
				<< {bes'4 aes'\) c'\(} \\ {e'4( f') c' ~} >> |
				<< {aes'2\)\( g'4 ~} \\ {c'4 des'2} >> |
				<< {g'4 f'\) c'4\(} \\ {s2 c'4 ~} >> |
				<< {c''4\)\( des'' bes' ~} \\ {c'4 des'2} >>|
				<< {bes'4 a'\) c''\(} \\ {s2.} >> |
				<< {c''4 des'' f'' ~} \\ {\phrasingSlurDown f'2\( aes'4} >> |
				<< {f''4 ees'' des''\)} \\ {g'2 bes'4\)} >> |
				<< {des''4\( c'' ees'' ~} \\ {ees'2\( ges'4} >> |
				<< {ees''4 des''4 ces''\)\(} \\ {f'2 aes'4\)}  >> |
				<< {bes'2\)\( bes'4} \\ {f'2.} >> |
				<< {aes'2 des''4} \\ {s2.} >> |
				<< {aes'4 ges'8. f'16 ges'8. aes'16} \\ {s2.} >> |
				<< {ges'4 f' ees'8( des')\)\(} \\ {s2.} >> |
				<< {bes'2 aes'4} \\ {s2.} >> |
				<< {\override DynamicLineSpanner #'padding = #2 aes'4\< des''4 f''} \\ {s4 des'2} >> |
				<< {c''4\!\> f'4( e')} \\ {s4 c' s} >> |
				\partial 4*2 << {e'4( f')\!\) \bar "|."} \\ {s2} >>
			}
		>>
		\context Staff = left <<
			\clef bass
			\key f \minor
			\time 3/4
			<< {
				\partial 4*1 r4 |
				s4 <fes aes>2 |
				s4 <f aes> r\sustainUp |
				s4 <fes aes>2 |
				s4 <f a> s\sustainUp |
				s4 <c' e'>2 |
				s4 <c' f'>2 |
				s4 <b f'>2 |
				s4 <e bes> r\sustainUp |
				s4 <fes aes>2 |
				s4 <f aes> r\sustainUp |
				s4 <fes aes>2 |
				s4 <f a>2 |
				s4 <bes des'>2 |
				s4 bes des' |
				s4 <aes c'>2 |
				s4 aes ces' |
				s4 <aes c'>2 |
				s4 f aes |
				s4 aes ges\sustainUp |
				s4 <f aes> <ees a> |
				s4 <des' f'> <bes des'> |
				s4 <aes ees'> <g e'> |
				s4 <c' f'> <bes e'> |
				s4 <c' f'>2 |
				s4 <c' ges'> <ees' f'> |
				s4 <des' f'>2 |
				s4 <bes g'> <des' ees'> |
				s4 <c' ees'>2 |
				\clef treble s4 <ees' c''> <ges' aes'> |
				\clef bass s4 <aes f'> <a ees'> |
				s4 <ees' f'> <bes des'> |
				s4 <c bes> r |
				s4 <fes aes>2 |
				s4 <f aes> r\sustainUp |
				s4 <fes aes>2 |
				s4 <f a> s\sustainUp |
				s4 <c' e'>2 |
				s4 <c' f'>2 |
				s4 <b f'>2 |
				s4 <e bes> r\sustainUp |
				s4 <f aes>2 |
				s4 <bes c'> <bes c'> |
				s4 <c' f'>2 |
				s4 <bes f'> <bes des' f'> |
				s4 <des' ees'> <des' ees'> |
				s4 <f ees'> <g des'> |
				s4 <c' f'> <c' f'> |
				s4 <des' f'> <des' f'> |
				s4 c' bes |
				s4 <aes c'>2 |
				s4 <fes aes>2 |
				s4 <f aes> r\sustainUp |
				s4 <fes aes>2 |
				s4 <f a> s\sustainUp |
				s4 <bes des'> <bes des'> |
				s4 bes des' |
				s4 <aes c'> <ges c'> |
				s4 aes ces' |
				s4 <c' ees'>2 |
				s4 <f des'>2 |
				s4 <aes c'> <c' ees'> |
				s4 aes ces' |
				s4 <c' ees'>2 |
				s4 bes aes |
				s4 aes c
				\partial 4*2 s4 <aes c'> \bar "|."
			} \\
			{
				\partial 4*1 s4 |
				f,4 s2 |
				f,2\sustainDown r4 |
				f,4 s2 |
				f,2\sustainDown ees,4 |
				<bes,, bes,>2.\sustainDown |
				aes,2.\sustainDown |
				g,2.\sustainDown |
				c2\sustainDown r4 |
				f,4 s2 |
				f,2\sustainDown r4 |
				f,4 s2 |
				f,2.\sustainDown |
				bes,2.\sustainDown |
				ees,2.\sustainDown |
				aes,2.\sustainDown |
				des,2.\sustainDown |
				ges,2.\sustainDown |
				f,2.\sustainDown |
				aes,2.\sustainDown |
				des,2\sustainDown r4 |
				bes,2.\sustainDown |
				ees2.\sustainDown |
				c2.\sustainDown |
				f2.\sustainDown |
				a2.\sustainDown |
				bes2.\sustainDown |
				g2.\sustainDown |
				aes2.\sustainDown |
				c'2.\sustainDown |
				des2.\sustainDown |
				f2.\sustainDown |
				e4 s2 |
				f,4 s2 |
				f,2\sustainDown r4 |
				f,4 s2 |
				f,2\sustainDown ees,4 |
				<bes,, bes,>2.\sustainDown |
				aes,2.\sustainDown |
				g,2.\sustainDown |
				c2\sustainDown r4 |
				f,2.\sustainDown |
				g,2.\sustainDown |
				aes,2.\sustainDown |
				bes,2.\sustainDown |
				ees,2.\sustainDown |
				ees2.\sustainDown |
				<aes, aes>2.\sustainDown |
				bes,2.\sustainDown |
				c2.\sustainDown |
				f2.\sustainDown |
				f,4 s2 |
				f,2\sustainDown r4 |
				f,4 s2 |
				f,2\sustainDown ees,4 |
				<bes,, bes,>2.\sustainDown |
				ees,2.\sustainDown |
				aes,2.\sustainDown |
				des,2.\sustainDown |
				ges,2.\sustainDown |
				f,2.\sustainDown |
				aes,2.\sustainDown |
				des,4 s2 |
				ges,2.\sustainDown
				f,2.\sustainDown |
				aes,2 s4
				\partial 4*2 f2\sustainDown \bar "|."
			} >>
		>>
	>>
	\layout {
	}
	\midi {
		\tempo 4=92
		\context {
			\Voice
			\remove "Dynamic_performer"
			\remove "Span_dynamic_performer"
			\remove "Piano_pedal_performer"
		}
	}
}

