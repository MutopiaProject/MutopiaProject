\version "2.18.2"
\header {
	title = "SUONATA QUARTA, FVGA CROMATICA"
	subtitle = "From Primo Registro of the Organo Suonarino"
	instrument = "Organ"
	maintainer = "Giampaolo Orrigo"
	composer = "Adriano Banchieri"
	mutopiatitle = "SUONATA QUARTA, FVGA CROMATICA From Primo Registro of the Organo Suonarino"
	mutopiacomposer = "BanchieriA"
	mutopiainstrument = "Organ"
	date = "1605"
	source = "Ricciardo Amadino, Venezia, 1605"
	style = "Baroque"
	license = "Public Domain"
	maintainerEmail = "orrigo.gp@rosenet.it"
	lastupdated = "2015-Sep-02"

 footer = "Mutopia-2015/09/03-34"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

mensuralBreveNote = { \once \override NoteHead.style = #'neomensural }

soprano =  \relative c'' \context Voice = "soprano" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne
	r1 b ~ |
	b1 e,2 fis |
	gis2 a b e, |
	r1 r2 b' ~ |
	b2 a b g ~ |
	g2 fis g e ~ |
	e2 d e1 ~ |
	e1 r1 |
	r2 e' gis, b |
	\mensuralBreveNote e,\breve |
	r2 e' gis, b |
	e,2 c'1 b4 a |
	b2 e, r gis4 fis8 gis |
	a4 gis8 a b2 r1 |
	r2 fis4 e8 fis gis4 fis8 gis a2 |
	b2 e,2. d8 c d2 ~ |
	d4. e8 c4. d8 b1 |
	r\breve |
	e2. d4 c2 b |
	a2 b c4 b8 c d4 c8 d |
	\mensuralBreveNote e\breve 
	\bar "|."
}
contralto =  \relative c' \context Voice = "contralto" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	r\breve |
	\mensuralBreveNote e\breve |
	b2 cis dis e |
	b2 e1 d2 |
	e2 c d b |
	d2. c8 d e2 c |
	a2. b4 c2 b4 a |
	b1 r2 e |
	gis,2 b r e |
	gis,2 a1 gis4 fis |
	gis1 r2 e' |
	gis,2 a e'1 |
	r\breve |
	r2 e cis8 b cis d e2 ~ |
	e2 dis e d |
	b2 c r1 |
	r\breve |
	e2 fis4 e8 fis gis4 fis8 gis a2 |
	r1 e2. d4 |
	c2 b a1 |
	\mensuralBreveNote gis\breve
	\bar "|."
}
tenore =  \relative c' \context Voice = "tenore" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne
	\mensuralBreveNote b\breve |
	e,2 fis gis a |
	b2 e, r2 a ~ |
	a2 gis fis g |
	e1 d ~ |
	d1 c |
	f1 e _~ |
	e1 r1 |
	r1 e'2 gis, |
	b2 c1 b4 a |
	gis1 e'2 gis, |
	b2 a1 gis4 fis |
	gis4 fis8 gis a4 g8 a b1 |
	r\breve |
	r1 e,2 fis4 e8 fis |
	gis4 fis8 gis a1 ~ a4. b8 |
	gis2 a1 gis2 |
	a1 r1 |
	r1 r2 e ~ |
	e4 f g2 a1 |
	\mensuralBreveNote b\breve
	\bar "|."
}
basso =  \relative c \context Voice = "basso" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	r\breve |
	r1 e ~ |
	e1 b2 cis |
	dis2 e b1 |
	c1 b |
	r\breve |
	r1 a'2 gis4 fis |
	gis1 a |
	\mensuralBreveNote e\breve ~ |
	\mensuralBreveNote e\breve ~ |
	\mensuralBreveNote e\breve ~ |
	\mensuralBreveNote e\breve |
	b2 cis dis e |
	fis4 e8 fis gis4 fis8 g a1 |
	b1 r1 |
	e,1 f |
	e1 ~ e2. d4 |
	cis2 d e2. d4 |
	c2 b a1 ~ |
	a2 g f1 |
	\mensuralBreveNote e\breve |
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
	
