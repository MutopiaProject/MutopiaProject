\version "2.10.33"

\header {
	title = "Prelude"
	composer = "Ramana Kumar"
	mutopiatitle = "Prelude"
	mutopiacomposer = "KumarR"
	mutopiainstrument = "Piano"
	date = "2005"
	source = "Original composition"
	style = "Romantic"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Ramana Kumar"
	maintainerEmail = "ramana.kumar@gmail.com"
	maintainerWeb = "http://xrchz.net"
	lastupdated = "2008/January/13"
 footer = "Mutopia-2008/01/13-657"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\score {
	\context PianoStaff <<
		\context Staff = right <<
      #(set-accidental-style 'forget)
			\clef treble
			\time 6/4
			<< {
			<d' ges' bes'>4 <d' ges' bes'>4 <d' ges' bes'>4 <d' ges' bes'>2. |
			<ces' ges' aes'>4 <ces' ges' aes'>4 <ces' ges' aes'>4 <<{<ces' aes'>2.}\\{ges'2 f'4}>> |
			<b e' aes'>4 <b e' aes'>4 <b e' aes'>4 <bes ees' aes'>2 <bes ees' ges'>4 |
			<b dis' fis'>4 <b dis' fis'>4 <b dis' fis'>4 <a dis' fis'>4 <a dis' gis'>4 <a dis' fis'>4 |
			<a d' fis'>4 <a d' fis'>4 <a d' fis'>4 <gis cis' fis'>2 <gis cis' e'>4 |
			<g b cis'>4 <g b cis'>4 <g b cis'>4 <ges bes des'>2 <ges bes ees'>4 |
			<g b dis'>4 <g b dis'>4 <g b dis'>4 <g b dis'>2.\! |
			\clef bass <e gis cis'>4 <e gis cis'>4 <e gis cis'>4 <e g cis'>2 <dis g cis'>4 |
			<dis fis c'>4 <dis fis c'>4 <dis fis c'>4 <dis fis b>2 <dis fis b>4 |
			<c fis a>4 <c e>4 <c fis>4 <ees g>2 <ees a>4 |
			<b gis'>4 <gis e'>4 b s2. |
			\clef treble <<{gis'4 fis'}\\{dis'2}>> cis'4 e'2 dis'4 |
			e'4 b cis' <fis d'>2 <gis e'>4 |
			<a cis'>2 <b e'>4 <g cis'>2 <g dis'>4 |
			<g b ees'>4 <g b ees'>4 <g b ees'>4 <aes b ees'>2 <aes b f'>4 |
			<<{<b g'>2}\\{ees'4 ees'}>> ees'4 f'2 <bes des' g'>4 |
			<<{aes'4 aes' ees'}\\{<b ees'>2 s4}>> <<{bes'4 aes' ees'}\\{<b ees'>2 s4}>> |
			<<{bes'4 bes'}\\{ees'2}>> f'4 <f' c''> <aes' des''> <ces'' ees''> |
			<ges' bes' f''>4 <f' bes' f''>4 <f' bes' f''>4 <f' bes' f''>2. |
			<ees' b' ees''>4 <ees' aes' b' ees''>4 <ees' aes' b' ees''>4 <ees' ges' b' ees''>2 <f' des''>4 |
			<e' a' e''>4 <e' a' e''>4 <e' aes' e''>4 <ges' bes' ees'' ges''>2 <fes' aes' ees''>4 |
			<e' gis' cis''>4 <dis' gis' b'> <eis' gis' b'>4 <d' fis' ais'>2 <d' gis'>4 |
			<b dis' gis'>4 <b dis' gis'>4 <b dis' gis'>4 <b dis' gis'>2 <b dis' ais'>4 |
			<bis dis' gis'>4 <bis dis' gis'>4 <bis dis' gis'>4 <bis e' gis'>2 <bis eis' ais'>4 |
			<cis' eis' a'>4 <cis' eis' a'>4 <cis' eis' a'>4 <cis' eis' a'>2. |
			<cis' fis' ais'>4 <dis' fis' ais'>4 <dis' fis' cis''>4 <cis' fis' bis'>2 <bis fis' ais'>4 |
			<<{gis'4 dis' eis' fis'2 gis'4}\\{<b dis'>2. <a cis'>2.}>> |
			<<{f'4 des' ees' fes'2 ges'4}\\{bes2. b2.}>> |
			<<{<b ees'>4 <bes bes'>4 <c' c''>4 <des' des''>2 <ees' ees''>4}\\{g2. ges'2.}>> |
			<<{<c' c''>4 <aes aes'>4 <bes bes'>4 <ces' ces''>2 <des' des''>4}\\{f'2. fes'2.}>> |
			<<{<bes bes'>4 <f f'>4 <g g'>4 <aes aes'>2 <bes bes'>4}\\{ees'2. des'2.}>> |
			<<{<g g'>1.}\\{ees'4 ees'2 ~ ees'2.}\\{b2 bes4 ~ bes2.}>> |
			<<{g'4\! f'}\\{<b ees'>2}>> c'4 ees'2 <bes d'>4 |
			<g ees'>4 <g bes>4 <g c'>4 <aes des'>2 <aes ees'>4 |
			<<{c'2 c'4}\\{g4 \change Staff = left ees \change Staff = right f}>> <ges des'>2 <aes ees'>4\! |
			<f a ees'>4 <des' des''>4 aes'4 <dis' a' dis''>2 <eis' gis' cis'' eis''>4 |
			<<{fis''4 fis''}\\{<fis' cis''>2}>> <gis' cis''>4 <a' dis'' gis''>2 <b' dis'' gis''>4 |
			<c'' e'' gis''>4 <c'' e'' gis''>4 <c'' e'' gis''>4 <c'' e'' gis''>2. |
			<e' ais' cis''>4 <e' ais' dis''>4 <e' ais' e''>4 <e' ais' dis''>2 <dis' a' cis''>4 |
			<dis' b'>4 <e' fis'>4 <f' gis'>4 <fis' a'>2 <g' b'>4 |
			gis'4 ais' b' <ais' cis''>2 <fis' ais' dis''>4 |
			<g' b' dis''>4 <g' b' dis''>4 <g' b' dis''>4 <g' b' dis''>2. \bar "|."
			} >>
		>>
		\context Staff = left <<
			\clef bass
			\time 6/4
      #(set-accidental-style 'forget)
			<< {
			bes4 ges des ges,2. |
			bes4 aes ees <<{des,2.}\\{s2 f4}>> |
			ges4 des ees fes2 fes4 |
			\grace b,,8 f4 f f fis fis fis |
			e4 b, cis d2 d4 |
			e4 e e fes,2 fes,4 |
			dis4 b, fis, b,,2. |
			\clef treble dis''4 cis'' gis' b'2 ais'4 |
			a'4 e' fis' g'2 a'4 |
			fis'4 \clef bass fis, fis, b,2 b,4 |
			<<{e2 e4 e2.}\\{e,2. e,2.}>> |
			a,4 a e b, b a |
			gis4 e b, <<{e,2.}\\{c4\rest b,2}>> |
			gis4 fis cis e2 dis4 |
			r4 ees bes, f2 g4 |
			aes2 bes4 <<{b2.}\\{r4 des2}>> |
			<<{f2 ges4 aes2 bes4}\\{des2. des2.}>> |
			<<{b2. des'2.}\\{r2 des4 ~ des2.}>> |
			<<{bes4\! ges des ges,2.}\\{}>> |
			bes4 aes ees <<{des,2.}\\{s4 des'2}>> |
			ges4 des ees <<{fes2 ges4}\\{r4 ges,2}>> |
			b,,4 <f b>4 <f b> <<{ais2 f4}\\{r4 b,2}>> |
			fis4 b, fis, b,,2 cis'4 |
			ais4 fis dis <<{gis,2.}\\{f2\rest fis4}>> |
			eis4 cis gis, cis,2. |
			eis4 dis ais, gis,,2. |
			eis2. dis2. |
			<ges, des ges>2. <a, e g>2. |
			<bes, ees>2. <g, e a>2. |
			<des, aes, des> <g, d g> 2. |
			<c ges c'>2. <e, bes, e>2. |
			<<{ees4 ees2 ees2.}\\{b,2 bes,4 ~ bes,2.}\\{ees,2. ees,2.}>> |
			<<{g2 f4}\\{<aes, ees>2.}>> <<{s4 aes s}\\{bes,2 r4}>> |
			ees,4 ees, ees, <bes, f>2 <bes, f>4 |
			<aes, d>2. <ges, ees>2 <ges, ees>4 |
			<des, aes,>4 s4 aes4 <fis cis'>2 <gis dis'>4 |
			<a dis' a'>2 <b e' b'>4 <<{<cis' fis'>2 dis'4}\\{r4 b,2}>> |
			gis4 e b, e,2. |
			gis4 fis cis b,,2. |
			b4 b b b2 b4 |
			gis'4 e' b e2 e4 |
			dis'4 b fis b,2. \bar "|."
			} >>
		>>
	>>
	\layout {
	}
  \midi {
  }
}

