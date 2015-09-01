\version "2.18.2"
\header {
	title = "SUONATA TERZA, FVGA GRAVE"
	subtitle = "From Primo Registro of the Organo Suonarino"
	instrument = "Organ"
	maintainer = "Giampaolo Orrigo"
	composer = "Adriano Banchieri"
	mutopiatitle = "SUONATA TERZA, FVGA GRAVE From Primo Registro of the Organo Suonarino"
	mutopiacomposer = "BanchieriA"
	mutopiainstrument = "Organ"
	date = "1605"
	source = "Ricciardo Amadino, Venezia, 1605"
	style = "Baroque"
	license = "Public Domain"
	maintainerEmail = "orrigo.gp@rosenet.it"
	lastupdated = "2015-Aug-31"

 footer = "Mutopia-2015/09/01-33"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

soprano =  \relative c'' \context Voice = "soprano" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne
	r\breve |
	a1. b2 |
	cis2 d e d4 cis |
	b2 a gis a |
	b2. a8 b cis2 d |
	a\breve |
	r\breve |
	r2 e'2. d8 c d2 ~ |
	d4. e8 c4. d8 b2. ~ b8 d |
	cis1 r1 |
	r\breve |
	e1 gis,2 a |
	b2 c4 d e2 d4 c |
	d1. cis4 d |
	e2 d8 c b a gis2 a4 d8 c |
	b4 e8 d c4 b8 a b2 e ~ |
	e2 dis e4 c b4. a16 b |
	cis2 d e1 ~ |
	e2 d4 c b2 a |
	gis2 a b2. a8 b |
	cis\breve
	\bar "|."
}
contralto =  \relative c' \context Voice = "contralto" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	e\breve ~ |
	e1 a, ~ |
	a2 b cis d |
	e4 d c2 b a ~ |
	a2 gis a2. b4 |
	cis2 d e fis |
	gis2 a e1 ~ |
	e1 r1 |
	r\breve |
	e1 a,8 b c d e f g e |
	a1 cis,2 d |
	e1. fis2 |
	gis2 a b4. c8 a2 ~ |
	a2 gis a1 ~ |
	a2 fis b, d |
	e\breve |
	r1 r2 e ~ |
	e2 fis a,1 ~ |
	a2 b2. a8 b cis4 d |
	e2 c e1 |
	e\breve
	\bar "|."
}
tenore =  \relative c' \context Voice = "tenore" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne
	r1 a1 ~ |
	a2 b cis d |
	e d a1 |
	gis2 a b c |
	b2 e1 fis2 |
	e2 d a1 |
	e'2 d4 c b2 c |
	b1 a2 ~ a4. b8 |
	gis2 a1 gis2 |
	a1 r1 |
	r\breve |
	r\breve |
	e'1 gis,2 a |
	b1 e |
	r1 e2 a, |
	b2 c b1 |
	a1 gis4 a2 gis4 |
	a1 cis,2 d |
	e2 fis gis a |
	b2 a1 gis2 |
	a\breve
	\bar "|."
}
basso =  \relative c \context Voice = "basso" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	r\breve |
	r\breve |
	r\breve |
	e\breve ~ |
	e1 a, ~ |
	a2 b cis d |
	e2 fis gis a ~ |
	a2 g f1 |
	e\breve |
	a,1 r1 |
	r\breve |
	r\breve |
	r\breve |
	r1 a' |
	cis,2 d e fis |
	gis2 a1 g2 |
	f1 e |
	a,1. b2 |
	cis2 d e1 ~ |
	e\breve |
	a,\breve
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
			\soprano
			\contralto
		>>
		\context Staff = "bottom" << \time 4/2
			\clef bass
			\tenore
			\basso
		>>
	>>
	\midi {
		\tempo 2 = 70
	}
	\layout {
	}
}
	
