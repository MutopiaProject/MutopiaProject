\version "2.18.2"
\header {
	title = "SUONATA PRIMA, FVGA PLAGALE"
	subtitle = "From Primo Registro of the Organo Suonarino"
	instrument = "Organ"
	maintainer = "Giampaolo Orrigo"
	composer = "Adriano Banchieri"
	mutopiatitle = "SUONATA PRIMA, FVGA PLAGALE From Primo Registro of the Organo Suonarino"
	mutopiacomposer = "BanchieriA"
	mutopiainstrument = "Organ"
	date = "1605"
	source = "Ricciardo Amadino, Venezia, 1605"
	style = "Baroque"
	license = "Public Domain"
	maintainerEmail = "orrigo.gp@rosenet.it"
	lastupdated = "2015-Aug-28"

 footer = "Mutopia-2015/09/01-31"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

mensuralBreveNote = { \once \override NoteHead.style = #'neomensural }

soprano =  \relative c'' \context Voice = "soprano" {
	\set Staff.midiInstrument = "church organ"

	\stemUp d1 d2 d |
	a2 c2 b1 |
	a2 f4 g a g a b |
	c4 b a1 gis2 |
	a2. a4 a2 a |
	d,2 f e1 |
	d1 r1 |
	r\breve |
	r\breve |
	r1 r2 r4 a' |
	a2 a d, f ~ |
	f2 e f4 e d2 ~ |
	d2 cis d4 d' d d |
	a4 c b2 a4 f8 g a g a b |
	c4 a2 gis4 a2 a4 a |
	d,4 f e2 d r4 a'4 |
	a4 a d,8 c d e f2 e |
	d4 d'2 cis4 d2 a |
	\mensuralBreveNote a\breve
	\bar "|."
}

contralto =  \relative c' \context Voice = "contralto" {
	\set Staff.midiInstrument = "church organ"

	\stemDown 
	r\breve |
	r\breve |
	d1 d2 d |
	a2 c b1 |
	a2 d1 c2 |
	f4 e d1 cis2 |
	d2 f1 e4 d |
	c4 d e8 d e f g2 d |
	r2 r4 a'4 a2 a |
	d,4 e f e8 d e1|
	d2 f2. e4 d2 |
	c1 c2 a |
	a1 a2 f'2 ~ |
	f4 a2 gis4 a2 f |
	e2 d e4 f e2 |
	f4 d2 cis4 d f2 e8 d |
	c8 d e f g2 c,4 d e2 |
	f4 d e a8 g f2 e |
	\mensuralBreveNote fis\breve
	\bar "|."
}

tenore =  \relative c' \context Voice = "tenore" {
	\set Staff.midiInstrument = "church organ"

	\stemUp r\breve |
	r\breve |
	r\breve |
	r\breve |
	r\breve |
	r1 a1 |
	a2 a d, f |
	e1 d |
	r\breve |
	r2 r4 a' a2 a |
	d,1 bes'2. a4 |
	g2. f8 g8 a4 g f2 |
	e1 d |
	r1 d'2 d4 d |
	a4 c b2 a4 d2 cis4 |
	d4 d, a'2 a4 a d, f |
	e2 d r4 a' a a |
	d,4 f e2 d4 d'2 cis4 |
	\mensuralBreveNote d,\breve
	\bar "|."
}

basso =  \relative c \context Voice = "basso" {
	\set Staff.midiInstrument = "church organ"

	\stemDown r\breve |
	r\breve |
	r\breve |
	r\breve |
	r\breve |
	r\breve |
	d1 d2 d |
	a2 c b1 |
	a2 d1 cis2 |
	f4 e d1 cis2 |
	d1 bes1 |
	c1 f,2. g4 |
	a1 d |
	r\breve |
	r\breve |
	r1 d2 d4 d |
	a4 c b2 a4 d2 cis4 |
	d2 a d8 e f g a2 |
	\mensuralBreveNote d\breve 
	\bar "|."
}

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
  
  % --- Set these to false after all editing is finished
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
}

\score {
	\context PianoStaff  << 
		\context Staff = "top" << \time 4/2
			\context Voice = "soprano" { \voiceOne \soprano }
			\context Voice = "contralto" { \voiceTwo \contralto }
		>>
		\context Staff = "bottom" << \time 4/2
			\clef bass
			\context Voice = "tenore" { \voiceOne \tenore }
			\context Voice = "basso" { \voiceTwo \basso }
		>>
	>>
	\midi {
		\tempo 2 = 70
	}
	\layout {
	}	
}
