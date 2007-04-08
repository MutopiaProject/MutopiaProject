\version "2.11.15"

\header {
	title = "Lani"
	composer = "Ramana Kumar"
	piece = \markup {with considered and plentiful rubato}%; ~1.5s/bar}
  mutopiatitle = "Lani"
  mutopiacomposer = "KumarR"
  mutopiainstrument = "Piano"
  date = "2005"
  source = "Original composition"
  style = "Romantic"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Ramana Kumar"
  maintainerEmail = "ramana.kumar@gmail.com"
  lastupdated = "2007/April/05"
 footer = "Mutopia-2007/04/07-951"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\score {
	\context PianoStaff <<
		\override PianoStaff.TimeSignature #'style = #'()
		\once \override PianoStaff.TimeSignature #'stencil = ##f
		\context Staff = right <<
			\clef bass
			<< {
				#(set-accidental-style 'forget)
				\once \override DynamicText #'extra-offset = #'(0 . -1.2)
				\cadenzaOn \tieNeutral \slurNeutral \phrasingSlurUp cis'2\(\p \bar ""
				cis'4. b8 \bar ""
				b8 a gis a \bar ""
				gis8 fis eis fis \bar ""
				a8 gis gis fis \bar ""
				gis4\) \clef treble a'\( \bar ""
				a'8 gis' fis' gis' \bar ""
				fis'8 e' dis' e' \bar ""
				g'8 fis' e' fis' \bar ""
				e'8\) d'\( cis' d' \bar ""
				e'8\) d'\( cis' d' \bar ""
				e'8\)\( d'\) d'\( e'\) \bar ""
				e'8 dis'\( e' fis' \bar ""
				dis'4\) gis'4 \bar ""
				aes'4\( ges'4\) \bar ""
				ges'4\( fes'4 \bar ""
				dis'4 e'\) \bar ""
				fis'4\( e' \bar ""
				dis'4 e'\) \bar ""
				fis'4\( e' \bar ""
				dis'4 e'\) \bar ""
				dis'4\( cis'4 \bar ""
				bis4 cis' \bar ""
				\clef bass c'8\) g\( aes bes ~ \bar ""
				bes8 aes g aes ~ \bar ""
				aes8 g f g ~ \bar ""
				g8 f ees f ~ \bar ""
				f8 ees des ees ~ \bar ""
				\cadenzaOff \time 4/4 ees4\) fes ees\( aes |
				\time 3/4 \clef treble c'4\)\( bes des' |
				c'4\p bes_\markup{poco cresc.} f' |
				f'4 ees' bes' |
				<<{s4 ges'( f'} \\ {} \\ {<aes' bes'>2.}>> |
				f'4 ges' f' |
				f'4 ees' f')\) |
				bes'4\( aes' ces'' |
				bes'4 aes' ees''\) |
				ees''4\( des'' aes'' |
				aes''4 ges'' ees''\) |
				dis''4\( cis'' e'' |
				dis''4 cis'' e''\) |
				dis''4\( cis'' dis'' |
				cis''4 b' a' |
				gis'4\)\( fis' a' |
				gis'4 fis' a' |
				gis'4 fis' a' |
				cis''4 b'2\) |
				aes'2. |
				aes'2 g'4 |
				<c' c''>2.\mf |
				<b b'>2. |
				<<
					{
						<c' c''>4 <d' d''> <ees' ees''> |
						<d' d''>4 <ees' ees''> <f' f''> |
						<ees' ees''>4 <d' d''> <c' c''> |
						<d' d''>2 <ees' ees''>4\( |
					} \\
					{
					} \\
					{
						s2. |
						aes'2. |
						aes'2. |
						aes'2. |
					}
				>>
				<dis' gis' dis''>4\f cis'' ais' |
				ais'4 gis' ais'\) |
				<cis' gis' cis''>4\( ais' gis' |
				gis'4 fis' gis'\) |
				<b fis' b'>4\( gis' a'\) |
				<a e' a'>4\( g' d'8 ~ d'\) |
				<f c' f'>2\( ees'4 |
				<f ees'>2 ees'4 |
				<aes ees' aes'>2 <ees' ges'>4 |
				<ees' bes'>2 <ees' aes'>4 |
				<ees' c'' f''>2\arpeggio <ees' ees''>4 |
				<ees' a' ees''>2 <ees' aes'>4 |
				<ees' g'>2 <ees' ges'>4 |
				<ees' f'>4\)\( ees' <ees' ges'> |
				<ees' f'>4 ees' <ees' ges'>\) |
				<ees' f'>4\( ees' <ees' ges'> |
				<ees' f'>4 ees' dis' |
				\cadenzaOn \clef bass dis'8 cis' bis cis' \bar ""
				c'8 bes a bes \bar ""
				cis'8 bis bis ais \bar ""
				bis4\) cis'\( \bar ""
				cis'2 \bar ""
				cis'2 \bar ""
				cis'2 \bar ""
				cis'2 \bar "|."
			} \\
			{
				\cadenzaOn \tieNeutral fis2 \bar ""
				eis2 \bar ""
				fis2 \bar ""
				eis2 \bar ""
				eis2 \bar ""
				e4 r \bar ""
				<bis dis'>2 \bar ""
				cis'2 \bar ""
				bes2 \bar ""
				a2 \bar ""
				a2 \bar ""
				bes2 \bar ""
				cis'2 \bar ""
				b2 \bar ""
				c'2 \bar ""
				bes2 \bar ""
				bis2 \bar ""
				dis'2 \bar ""
				cis'2 \bar ""
				a2 \bar ""
				b2 \bar ""
				gis2 ~ \bar ""
				gis2 \bar ""
				e2 \bar ""
				ees2 \bar ""
				e2 \bar ""
				ees2 \bar ""
				s2 \bar ""
				\cadenzaOff \time 4/4 c1 |
				\time 3/4 \change Staff=left \stemUp r8 ees4 ees ees8 ~ | ees8
				aes4 aes aes8 ~ | aes8
				\change Staff=right \stemDown des'4 des' des'8 ~ | des'8
				des'4 des' des'8 ~ | des'8
				ees'4 ees' ees'8 ~ | ees'8
				des'4 des' des'8 |
				r8 des'4 des' des'8 ~ | des'8
				des'4 ees' ges'8 ~ | ges'8
				ges'4 ges' aes'8 ~ | aes'8
				bes'4 bes' aes'8 ~ | aes'8
				fis'4 gis' gis'8 ~ | gis'8
				gis'4 fis' fis'8 ~ | fis'8
				fis'4 gis' fis'8 ~ | fis'8
				gis'4 fis' fis'8 ~ | fis'8
				dis'4^- cis'^- dis'8^- ~ | dis'8^-
				e'4^- dis'^- e'8^- |
				<<
					{
					} \\
					{
						fis'4^- eis'^- fis'^- |
						a'2 gis'4 |
					} \\
					{
						s8 dis'4 dis' dis'8 ~ | dis'8
						dis'4 dis' e'8 |
					}
				>>
				r8 <bes des'>8 ~ <bes des'>2 |
				r4 <des' ees'> g' |
				g'2.\( |
				g'2 f'4 |
				f'8\noBeam \change Staff=left ees'\noBeam \change Staff=right d'4 ees' |
				\change Staff=left \stemUp d'8 c' b4 c' |
				ees'8 d' d'4 c' |
				\change Staff=right \stemDown d'2\) ees'4 |
				s8 fis'4 fis' fis'8 ~ | fis'8
				fis'4 fis' fis'8 |
				s8 fis'4 <cis' fis'> <dis' fis'>8 ~ | <dis' fis'>8
				<cis' dis'>4 dis' dis'8 ~ |
				s8 dis'4 dis' dis'8 |
				s8 d'4 d' d'8 |
				s8 bes8 c'_\markup{più mosso} aes4 aes8 |
				s8 bes8 c' aes4 aes8 |
				s8 bes8 c' aes4 aes8 |
				s8 bes8 c' aes4 aes8 |
				s8 bes8 c' aes4 s8 |
				s8 bes8 c' aes4 aes8 |
				s8 bes8 c' aes4 aes8 |
				s8 bes8 c' aes4 aes8 |
				s8 bes8 c' aes4 aes8 |
				s8 bes8 c' aes4 aes8 |
				a8 bes c' a4 a8 |
				\cadenzaOn \clef bass ais2 \bar ""
				aes2 \bar ""
				a2 \bar ""
				gis4 fis \bar ""
				fis2 \bar ""
				eis2 \bar ""
				fis2 \bar ""
				<fis gis>2 \bar "|."
			} >>
		>>
		\context Staff = left <<
			\clef bass
			<< {
				#(set-accidental-style 'forget)
				\cadenzaOn \stemUp \tieUp d2 \bar ""
				cis2 \bar ""
				d2 \bar ""
				dis2 \bar ""
				b,2 ~ \bar ""
				b,2 \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 \bar ""
				f2 \bar ""
				fis2 \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 \bar ""
				gis2 \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 ~ \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 \bar ""
				s2 \bar ""
				ces2 \bar ""
				\cadenzaOff \time 4/4 s1 |
				\time 3/4 \stemDown r8 des4 des des8 ~ | des8
				ges4 ges ges8 ~ | ges8
				\stemUp ces'4 ces' ces'8 ~ | ces'8
				ces'4 ces' ces'8 ~ | ces'8
				des'4 des' des'8 ~ | des'8
				ces'4 ces' ces'8 |
				r8 bes4 ces' ces'8 ~ | ces'8
				ces'4 des' ees'8 ~ |ees'8
				fes'4 fes' ges'8 ~ | ges'8
				ges'4 aes' ges'8 ~ | ges'8
				e'4 fis' fis'8 ~ | fis'8
				dis'4 dis' e'8 ~ | e'8
				e'4 e' e'8 ~ | e'8
				e'4 e' dis'8 ~ | dis'8
				b4 b b8 ~ | b8
				cis'4 cis' cis'8 ~ | cis'8
				<a b>4 <a b> <a b>8 ~ | <a b>
				<a b>4 <a b> <gis b>8 |
				r8 <e aes>8 ~ <e aes>2 |
				r4 <aes bes> g |
				s4 ees2 |
				s8 d'8 ~ d'2 |
				aes2. |
				<a b>2. |
				<f b>2. |
				<f bes>2. |
				r8 dis'4 dis' dis'8 ~ | dis'8
				dis'4 dis' dis'8 |
				r8 b4 b b8 ~ | b8
				<eis gis>4 b b8 |
				r8 cis'4 cis' cis'8 |
				r8 b4 b b8 |
				r8 ges4 ges ges8 |
				r8 ges4 ges ges8 |
				r8 ges4 ges ges8 |
				r8 ges4 ges ges8 |
				r8 ges4 ges <aes ges>8 |
				r8 ges4 ges ges8 |
				r8 ges4 ges ges8 |
				r8^\markup{meno} ges4 ges ges8 |
				r8 ges4 ges ges8 |
				r8 ges4 ges ges8 |
				r8 ges4 fis fis8 |
				\cadenzaOn fis2 \bar ""
				f2 \bar ""
				dis2 ~ \bar ""
				dis2 \bar ""
				d2 \bar ""
				cis2 \bar ""
				d2 \bar ""
				dis2 \bar "|."

			} \\
			{
				\cadenzaOn \stemDown \tieDown d,2 \bar ""
				gis,2 \bar ""
				a,2 \bar ""
				b,2 \bar ""
				e,2 ~ \bar ""
				e,2 \bar ""
				gis2 \bar ""
				a2 \bar ""
				e2 \bar ""
				c2 \bar ""
				<c d>2 \bar ""
				g2 \bar ""
				a2 \bar ""
				b2 \bar ""
				ees2 \bar ""
				ges2 \bar ""
				gis2 \bar ""
				b2 \bar ""
				eis2 \bar ""
				d2\( \bar ""
				e2 \bar ""
				cis2\) ~ \bar ""
				cis2 \bar ""
				g,2 \bar ""
				ges,2 \bar ""
				c2 \bar ""
				des2 \bar ""
				ges,2 \bar ""
				\cadenzaOff \time 4/4 aes,1 |
				\time 3/4 s2. |
				s2. |
				s2. |
				ges2. |
				ges2. |
				ges2. |
				ges,2. |
				ces2. |
				fes2. |
				ces'2. |
				a2. |
				a2. |
				bes2. |
				b2. |
				e2. |
				a2. |
				dis2. |
				e2. |
				bes,2. |
				ees2 g4 |
				<aes, aes>2. |
				<d g>2. |
				ees2. |
				f2. |
				bes,2. |
				bes,2. |
				\acciaccatura b,,8 <fis, b, fis>2. ~ |
				<fis, b, fis>2. |
				\acciaccatura e,8 <gis, e gis>2. ~ |
				<gis, e gis>2. |
				<a, e a>2.\arpeggio |
				<f, c g>2.\arpeggio |
				<aes, ees aes>2. |
				<des, aes, des>2. |
				<des, aes, ees>2. |
				<aes, des f>2. |
				<aes, ees bes>2. |
				<des, aes, f>2.\arpeggio |
				<aes, des f>2. |
				des,2. |
				a,2. |
				<ges, ges>2. |
				<c f>2. |
				\cadenzaOn cis2 \bar ""
				d2 \bar ""
				gis,2 ~ \bar ""
				gis, \bar ""
				d,2 \bar ""
				gis,2 \bar ""
				a,2 \bar ""
				b,2 \bar "|."

			} >>
		>>
	>>
	\layout {
	}
  \midi {
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}



