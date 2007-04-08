% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.1 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 7/Nov/2004

#(ly:set-option 'old-relative)
\version "2.4.0"
\header {
	title = "SUONATA QUARTA, FVGA CROMATICA"
	subtitle = "From Primo Registro of the Organo Suonarino"
	instrument = "Organ"
	%piece = "SUONATA QUARTA, FVGA CROMATICA"
	maintainer = "Giampaolo Orrigo"
	composer = "Adriano Banchieri"
	mutopiatitle = "SUONATA QUARTA, FVGA CROMATICA From Primo Registro of the Organo Suonarino"
	mutopiacomposer = "A. Banchieri"
	mutopiainstrument = "Organ"
	date = "1605"
	source = "Urtext"
	style = "Baroque"
	copyright = "Public Domain"
	filename = "Reg1_Suon4.ly"
	editor = "Ricciardo Amadino, Venezia, 1605"
	maintaineremail = "orrigo.gp@rosenet.it"
	lastupdated = "2004/Nov/07"

	footer = "Mutopia-2004/11/07-34"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"	
}

mensuralBreveNote = { \once \override NoteHead #'style = #'neomensural }

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
	f1 e ~ |
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
	
