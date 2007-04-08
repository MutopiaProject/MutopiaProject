\version "2.6.0"

\header {
	title = "Lace"
	composer = "Ramana Kumar"
	piece = \markup{\large "Vivo " \note #"2" #1 \large "69\nmolto rubato"}
	dedication = "for Freya Franzen"
	mutopiatitle = "Lace"
	mutopiacomposer = "R. Kumar (1988-)"
	mutopiainstrument = "Piano"
	date = "2003"
	source = "Original composition"
	style = "Romantic"
	copyright = "Creative Commons Attribution-ShareAlike 2.5"
	maintainer = "Ramana Kumar"
	maintainerEmail = "ramana.kumar@gmail.com"
	maintainerWeb = "http://webbed.org"
	lastupdated = "2006/January/26"

	footer = "Mutopia-2006/01/26-656"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

\score {
	\context PianoStaff <<
		#(set-accidental-style 'piano-cautionary)
		\set PianoStaff.followVoice = ##t
		\set PianoStaff.explicitKeySignatureVisibility = #end-of-line-invisible
		\context Staff = right <<
			\clef treble
			\key d \major
			\time 4/2
			<< {
				\override TextScript #'padding = #2.2 \once \override DynamicLineSpanner #'padding = #3 \stemUp \tieNeutral \phrasingSlurUp \override PhrasingSlur #'height-limit = #3.0 \override PhrasingSlur #'ratio = #0.5 a'4_\f\( fis' a' fis' a' fis' cis'' b'\) |
				b'4\( fis' fis' e'\) e'\( cis' e' cis' |
				e'4 cis' gis' fis'\) fis'2.\( b'4\) |
				b'4\( gis' b' gis' b' gis' dis'' cis''\) |
				cis''4\( gis' fis' e'\) e'\( cis' e' cis' |
				e'4 cis' gis' fis'\) fis'\( dis'\) e'4.\( dis'8 |
				<bis dis'>1.\) \> gis'4\( bes' |
				\key aes \major \stemNeutral \phrasingSlurNeutral ces''4 \!\mp aes' bes' g'\) g'\( aes' ees' c'\) |
				ees'4\( bes d' ees'\) ees'\( bes d' <ees'' bes''>\) |
				ces'''4\( aes'' bes'' g''\) g''\(aes'' ees'' c''\) |
				ees''4\( bes' d'' ees''\) ees''\( bes' d'' ees''\) |
				\key d \major gis'\( fis' gis' eis' a' fis' cis'' b'\) |
				b'4\( fis' fis' e' e'1\) |
				\stemUp \phrasingSlurUp cis''4\( a' cis'' ais' cis'' cis''\rest cis'' b'\) |
				\key e \major b'4\( gis' <a fis'> <b e'>\) e'\( cis' e' cis' |
				e'4 cis' gis' fis'\) \override DynamicLineSpanner #'padding = #2 fis'2.\<\( <gis' b'>4\) |
				<gis' e'' gis''>2\!\( r4 fis''\) fis''\( dis'' fis'' dis'' |
				fis''4\mp \revert DynamicLineSpanner #'padding dis''\) ais'' gis'' gis''\( dis'' cis'' <gis' b'>\) |
				<e' b'>2 <fis' b'> <fis' b'> <eis' b'> |
				<d' b'>2 <cis' b'> cis' fis' |
				\key ges \major bes'4\( ges' bes' f' bes' ees' ges' aes'\) |
				bes'4\( ges' bes' f' bes' ees' ees'' des''\) |
				des''4\( bes' des'' <f' bes'> des'' <ees' bes'> aes'' ges'' |
				ges''4 des'' des'' ces'' ces''1\) |
				r2 r4 ees''\( ees'' f''2 ges''4\) |
				ces''1 \stemNeutral bes''4_\markup{\italic dolce}\( ges'' bes'' f'' |
				bes''4 ees'' ees'''^\markup{\large {molto rit.}} des'''\) \key a \major cis''' gis'' gis''4*2/3 \change Staff=left fis'' \change Staff=right e'' |
				\stemUp e''4^\markup{\large {a tempo}}\( cis'' e'' cis'' e'' cis'' gis'' fis''\) |
				\key ges \major ges''8.\( f''8 d''16. bes' des''8. ces'' bes'8 bes'1 ~ \) |
				bes'2 bes'4 c'' \once \override TextScript #'padding = #1.2 des''_\markup{\italic {semper crescendo}}\( aes' ces'' bes' |
				bes'2. c''4 des'' aes' ces'' bes' |
				bes'2.\) c''4 des''\( bes' des'' bes' |
				des''4 bes' f'' ees''\) ees''\( ces'' aes'' ges''\) |
				ges''4\( des'' des'' c''\) bis'\( cis'' gis' eis'\) |
				des''4\(bes' f'' ees''\) ees''\( ces'' aes'' ges''\) |
				ges''4\( des'' des'' c''\) bis'\( cis'' gis' eis'\) |
				\key ees \major \time 2/2 \stemNeutral \phrasingSlurNeutral g'2^\( ~ \times 2/3 {g'4 ees' f'} |
				\key ges \major ges'2 ~ ges'4*2/3 aes' bes' |
				\key a \major b'2 ~ b'4*2/3 cis'' dis'' |
				\key cis \major eis''2\) ~ eis''4*2/3 fisis'' gis'' |
				\key ees \major bes''4\( <bes' ees'' g''> <bes' d'' ges'' bes''> <g' b' ees'' g''> |
				\key ges \major <bes' des'' ges'' bes''>4 <bes' ees'' g''> <ges'' bes'' f'''> <g'' bes'' ees'''>\) |
				\key a \major <e'' gis'' dis'''>4\( ais'' <cis'' ais''> ~ <cis'' gis''> |
				\key cis \major <eis'' gis''>4 ~ <eis'' fisis''> ~ <d'' eis'' fisis''> ~ <cis'' eis'' gis''>\) |
				\key ees \major <des'' f'' bes''>4\( <bes' ees'' g''> <bes' d'' ges'' bes''> <g' b' ees'' g''> |
				\key ges \major <bes' des'' ges'' bes''>4 <bes' ees'' g''> <ges'' bes'' f'''> <g'' bes'' ees'''>\) |
				\key a \major <e'' gis'' dis'''>4\( ~ <e'' gis'' ais''> <cis'' eis'' ais''> ~ <cis'' eis'' gis''> |
				\key c \major <cis'' eis'' gis''>4 ~ <cis'' eis'' g''> cis'' c'' |
				\key e \major c''4 b' f' e'\) |
				\time 4/2 \stemUp \phrasingSlurUp gis''4\( ais''2 b''4\)^\markup{\italic {meno mosso}} gis''\( ais''2 b''4\) |
				cis'''4^\markup{\italic legere}\( a'' cis''' a'' cis''' a'' fis''' e'''\) |
				\key d \major e'''4\( cis''' e''' cis''' e''' cis''' gis''' fis'''\) |
				s\breve |
				s\breve |
				\key a \major a'4^\markup{\large rit.}\( fis' a' fis' a' fis' a' fis'\) |
				a'4^\markup{\large "Adagio " \note #"2" #1 \large "60"}\( e' cis'' b' ais' gis'2 fis'4\)
				<g fis'>1 r4 cis'2. ~ |
				\key cis \major cis'\breve \bar "|."
			} \\
			{
				\stemDown \tieNeutral \phrasingSlurDown <d' fis'>2 e' dis' cis'4 b |
				<b b'>2 d' <a cis'> b |
				ais2 fis4\( gis <a cis'> <b dis'> <a cis'> b\) |
				e'2 fis' eis' dis' |
				e'2 <gis d'> cis' b |
				ais2 gis4 ais cis' b gis \< ais |
				s2 \! bis'2^\( cisis''' dis''\) |
				\key aes \major s\breve |
				s\breve |
				s\breve |
				s\breve |
				\key d \major s\breve |
				s1 s2 s4 gis'4 |
				gis'4 fis' gis' eis' a' fis' gis' dis' |
				\key e \major <d' fis'>2 d' <a cis'> b |
				ais2 gis4\( ais <a cis'> <b dis'> <a cis'> b\) |
				r4 <e' a' cis''>( <e' fis' b'> ~ <fis' b'>) <a' cis''>2 <gis' bis'> |
				<fis' fis''>4 ~ <fis' b' dis'' fis''> ~ <b' dis''>2 a' <dis' a'> |
				gis'4\> gis' gis' gis' gis' gis' gis' gis' |
				gis'4 gis' gis' gis' gis' gis' gis' gis'\! |
				\key ges \major s\breve |
				s\breve |
				s\breve |
				r2 r4 ees''\( ees'' f''2 ges''4 |
				ges''4 des'' des'' ces'' ces''1\) |
				ees''4\( f''2 ges''4\) s1 |
				s1 \key a \major s1 |
				s1 ais'2 bis'4\< cis'' |
				\key ges \major \tieDown <bes' d''>2 <d' aes'>8. ~ \once \override Score.Tie #'y-offset = #0 \tieNeutral <d' ges'> ~ <d' ges'>8 <d' f'>2\! d''^\( |
				e'''2 f''\) s1 |
				s\breve |
				s1 r2 aes' |
				g'2 r r1 |
				s\breve |
				g'2 r bes' r |
				gis'2 fis' a' gis' |
				\key ees \major \time 2/2 s1 |
				\key ges \major s1 |
				\key a \major s1 |
				\key cis \major s1 |
				\key ees \major s1 |
				\key ges \major s1 |
				\key a \major s1 |
				\key cis \major s1 |
				\key ees \major s1 |
				\key ges \major s1 |
				\key a \major s1 |
				\key c \major s1 |
				\key e \major s1 |
				\time 4/2 cis''2\( dis'' e'' fis''\) |
				gis''4\( a'' e'' cis'' e''1\) |
				\key d \major gis''4\( a'' fis'' e'' fis''1\) | \once \override PhrasingSlur #'height-limit = #5.0
				fis'''4^\( d''' d''' cis''' cis''' d''' a'' fis'' |
				a''4 d'' d'' cis'' cis'' d'' a' fis'\) |
				\key a \major cis'4\( dis'2 e'4\) cis'\( dis'2 e'4\) |
				cis'4\( e' cis' e' cis' e' gis ais\) | \once \override PhrasingSlur #'height-limit = #5.0
				cis'4^\( cis' cis' bis <g bis> ~ <g cis'> \change Staff=left gis eis ~ |
				\key cis \major <eis gis>\breve\) \bar "|."

			} >>
		>>
		\context Staff = left <<
			\clef bass
			\key d \major
			\time 4/2
			<< {
				\stemNeutral \tieNeutral \phrasingSlurNeutral \override PhrasingSlur #'height-limit = #3.5 \override PhrasingSlur #'ratio = #0.4 <d fis a>2 <cis fis b> <b, fis b> ~ <b, fis a> |
				<g, d>2 <e gis> <a, cis e> <gis, cis eis> |
				<fis, cis fis>2 <fis, cis e> b,,1 |
				<e b>2 <dis cis'> <cis cis'> <cis b> |
				<a, a>2\( <e, e> <a, a> <gis, gis> |
				<fis, fis>2 <e, e> <dis, dis> <cis, cis> |
				<gis,, gis,>\breve\) |
				\key aes \major \times 2/3 {fes,4\( bes, ees} aes4*2/3 f' ees'\) aes,\( ees bes aes ees bes, |
				aes,4*2/3\)\( ees c' aes ees aes, aes,,\) ees\( c' aes ees ces |
				fes,4*2/3\)\( bes, ees aes f' ees'\) aes,\( ees bes aes ees bes, |
				aes,4*2/3\) ees'\( c'' aes' ees' aes aes,\) ees'\( c'' aes' ees' aes\) |
				\key d \major a,4*2/3 fis\( d' cis' gis cis\) d, b\( d' cis' b a\) |
				g,4*2/3 fis\( d' cis' b a\) gis b,\( d cis b, a,\) |
				d,4*2/3 a\( d' cis' gis cis\) d, b\(d' cis' b a\) |
				\key e \major gis2 <e, e> <a, e> <gis, cis eis> |
				<fis, cis fis>2 <fis, cis e> b,,1 |
				e,2. dis4 a2 gis |
				<cis gis>1 <fis a cis'>2 <b, b> |
				e2 dis s2 b\( |
				r2 a gis fis\) |
				\key ges \major ges,4*2/3\( des bes f des ges,\) ces,\( ces ges f ees des\) |
				ges,4*2/3\( des bes f des ges,\) ces,\( ces ges bes f ees\) |
				ges,4*2/3\( des bes aes ges f\) ces,\( ges ces des' f ees' |
				ees4*2/3\) bes\( ges' f' des' ges\) ces\( ges des' ces' ges des |
				ees,4*2/3\) bes\( ges' f' des' ges\) ces\( ges des' ces' ges des\) |
				ces4*2/3\( ges des' ces' ges ces\) ges,\( des bes f des ges,\) |
				ces,4*2/3\( ces ges \clef treble ees' ges' ces''\) \key a \major a e' b' d''4 r4 |
				\clef bass cis,4*2/3\( a, e gis cis' eis' fis'1\) |
				\key ges \major <bes, bes>2 <e, e> <bes,, bes,>1 ~ |
				<bes,, bes,>1 e,4*2/3\( bes, ees aes des' ges' |
				f'4*2/3\)\( bes f bes, f, b, e,\)\( bes, ees aes des' ges' |
				f'4*2/3\)\( bes f bes, f, c ees,\)\( bes, ees aes des' f'\) |
				ees,4*2/3\( bes, g \clef treble des' g' bes'\) \clef bass ges,\( ees aes \clef treble des' ges' bes'\) |
				\clef bass a,4*2/3\( e cis' \clef treble fis' ais' fis''\) \clef bass cis\( gis eis' \clef treble gis' eis'' cis'''\) |
				\clef bass ees,4*2/3\( bes, g \clef treble des' g' bes'\) \clef bass ges,\( ees aes \clef treble des' ges' bes'\) |
				\clef bass a,4*2/3\( e cis' \clef treble fis' ais' fis''\) \clef bass cis\( gis eis' \clef treble gis' eis'' cis'''\) |
				\clef bass \key ees \major \time 2/2 \times 2/3 {ees,4\( bes, g} des'2\) |
				\key ges \major ges,4*2/3\( des bes des'2\) |
				\key a \major a,4*2/3\( e cis' gis'2\) |
				\key cis \major cis4*2/3\( gis eis' \clef treble gis' bis' r\) |
				\key ees \major \clef bass ees,4*2/3\( bes, g \clef treble d' ees' bes'\) |
				\key ges \major \clef bass ges,4*2/3\( des bes \clef treble des' ges' bes'\) |
				\key a \major \clef bass a,4*2/3\( e cis' \clef treble fis' bis' cis''\) |
				\key cis \major \clef bass cis4*2/3\( gis eis' gis' eis' dis'\) |
				\key ees \major ees,4*2/3\( bes, g \clef treble d' ees' bes'\) |
				\key ges \major \clef bass ges,4*2/3\( des bes \clef treble des' ges' bes'\) |
				\key a \major \clef bass a,4*2/3\( e cis' \clef treble eis' a' cis''\) |
				\key c \major \clef bass s1 |
				\key e \major e,4*2/3\( b, gis b e b, |
				\time 4/2 e,4*2/3\)\( b, fis e b, fis,\) e,\( b, fis e b, fis,\) |
				a,,4*2/3\( e, b, a, e, b,,\) a,,\( e, b, a, e, b,,\) |
				\key d \major d,4*2/3\( a, e d a, e,\) d,\( a, e d a, e,\) |
				fis,4*2/3\( cis a \clef treble e' a' cis'' fis'' d'' a' \clef bass d' a d\) |
				fis,4*2/3\( cis a \clef treble e' a' cis' fis' d' a \clef bass d a, d,\) |
				\key a \major a,,4*2/3\( e, cis fis e dis\) a,,\( e, cis fis e dis\) |
				a,,2 gis,, fis,,1 |
				a,,2 gis,, \tieDown cis1 ~ |
				\key cis \major <cis eis gis>\breve \tieNeutral \bar "|."
			} \\
			{
				s\breve |
				s\breve |
				s\breve |
				s1 s2 fis4\( gis |
				a2\) s2 s1 |
				s\breve |
				s\breve |
				\key aes \major s\breve |
				s\breve |
				s\breve |
				s\breve |
				\key d \major s\breve |
				s\breve |
				s\breve |
				\key e \major s\breve |
				s\breve |
				cis'4\rest cis' b ~ b s1 |
				s\breve |
				s1 cis |
				fis,1 s1 |
				\key ges \major s\breve |
				s\breve |
				s\breve |
				s\breve |
				s\breve |
				s\breve |
				s1 \key a \major s1 |
				s1 r2 gis4\( ais |
				\key ges \major bes2\) s2 s1 |
				s\breve |
				s\breve |
				s\breve |
				s\breve |
				s\breve |
				s\breve |
				s\breve |
				\key ees \major \time 2/2 s1 |
				\key ges \major s1 |
				\key a \major s1 |
				\key cis \major s1 |
				\key ees \major s1 |
				\key ges \major s1 |
				\key a \major s1 |
				\key cis \major s1 |
				\key ees \major s1 |
				\key ges \major s1 |
				\key a \major s1 |
				\key c \major c?4*2/3_\( g e'^- f'^- fis'^- g'^- |
				\key e \major \change Staff=right gis'2^- gis'\) \change Staff=left |
				\time 4/2 s\breve |
				s\breve |
				\key d \major s\breve |
				s\breve |
				s\breve |
				\key a \major s\breve |
				s\breve |
				s\breve |
				\change Staff=right \stemNeutral r2 eis'\>\( fisis'' gis'\)\! \bar "|."
			} >>
		>>
	>>
	\layout {
	}
	\midi {
		\tempo 2=69
		\context {
			\Voice
			\remove "Dynamic_performer"
			\remove "Span_dynamic_performer"
		}
	}
}
