\version "2.16.1"

\header {
   title = "Menuet in G"
   opus = "BWV Anh. 114"
   composer = "Johann Sebastian Bach (1685-1750)"
   instrument = "Guitar"
   enteredby = "Emre Akbas"

   % mutopia headers
   mutopiatitle = "Menuet in G"
   mutopiaopus = "BWV Anh. 114"
   mutopiacomposer = "BachJS"
   mutopiainstrument = "Guitar"

   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Yannick KIRSCHHOFFER"
   maintainerEmail = "alcibiade@alcibiade.org"
   source = "Mutopia"

 footer = "Mutopia-2013/01/06-695"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

partGtrAa = {
	\repeat volta 2 {
		d'4 g8 a b c'  |
		d'4 g g |
		e'4 c'8 d' e' fis' |
		g'4 g g |
		\break

		c'4 d'8 c' b a |
		b4 c'8 b a g |
		fis4 g8 a b g |
		a2. |
		\break

		d'4 g8 a b c'  |
		d'4 g g |
		e'4 c'8 d' e' fis' |
		g'4 g g |
		\break

		c'4 d'8 c' b a |
		b4 c'8 b a g |
		a4 b8 a g fis |
		g2. |
		\break
	}

	\repeat volta 2 {
		b'4 g'8 a' b' g' |
		a'4 d'8 e'\2 fis' d' |
		g'4 e'8 fis' g' d' |
		cis'4 b8 cis' a4 |
		\break

		a8 b cis' d' e' fis' |
		g'4 fis' e' |
		fis' a cis' |
		d'2. |
		\break

		d'4 g8 fis g4 |
		e'4 g8 fis g4 |
		d'4 c' b |
		a8 g fis g a4 |
		\break

		d8 e fis g a b |
		c'4 b a |
		b8 d' g4 fis |
		g2. |
	}
}

partGtrAb = {
	g,2 a,4 | b,2. | c2. | b,2. |
	a,2. | g,2. | d4\5 b, g, | d4 d8 c b, a, |
	b,2 a,4 | g,4 b, g, | c2. | b,4 c8 b, a, g, |
	a,2 fis,4 | g,2 b,4 | c4 d4 d4\5 | g,2 g,4 |

	g2. | fis2 r4 | e4 g e | a2 a4 |
	a,2. | b,4 d cis | d4 fis, a, | d4 d c |
	b,2 b,4 | c2 c4 | b,4 a, g, | d2.\5 |
	d2\5 fis4 | e4 g fis | g4 b, d\5 | g,4 d g, |
}


\score {
	 <<
		\context StaffGroup <<
		\context Staff <<
			\time 3/4
			\key g \major
			\clef treble
			\set Staff.instrumentName = "Guitar    "
			\set Staff.midiInstrument = "pad 2 (warm)"

			% Hide fingering number
			\override Staff.Fingering   #'transparent = ##t

			\context Voice {
				\stemUp
				\transpose c c' \partGtrAa
			}
			\new Voice {
				\stemDown
				\transpose c c' \partGtrAb
			}
		>>

		\context TabStaff <<
			\set Staff.midiInstrument = "acoustic guitar (nylon)"
			\context TabVoice {
				\stemUp
				\partGtrAa
			}
			\new TabVoice {
				\stemDown
				\partGtrAb
			}
		>>
		>>
	>>

	
  \midi {
    \tempo 4 = 130
    }


	\layout {}
}

