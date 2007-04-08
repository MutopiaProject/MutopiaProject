% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.1 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 7/Nov/2004

\version "2.4.0"
\header {
	title = "SUONATA SESTA, FVGA TRIPLICATA"
	subtitle = "From Primo Registro of the Organo Suonarino"
	instrument = "Organ"
	%piece = "SUONATA SESTA, FVGA TRIPLICATA"
	maintainer = "Giampaolo Orrigo"
	composer = "Adriano Banchieri"
	mutopiatitle = "SUONATA SESTA, FVGA TRIPLICATA From Primo Registro of the Organo Suonarino"
	mutopiacomposer = "A. Banchieri"
	mutopiainstrument = "Organ"
	date = "1605"
	source = "Urtext"
	style = "Baroque"
	copyright = "Public Domain"
	filename = "Reg1_Suon6.ly"
	editor = "Ricciardo Amadino, Venezia, 1605"
	maintainerEmail = "orrigo.gp@rosenet.it"
	lastupdated = "2004/Nov/07"

	footer = "Mutopia-2004/11/07-36"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"	
}

mensuralBreveNote = { \once \override NoteHead #'style = #'neomensural }

soprano =  \relative c'' \context Voice = "soprano" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne
	c1 bes2 a |
	g2 r4 f4 a8 g a bes c2 |
	r4 g4 a bes c2 c |
	bes2 a g r4 c |
	d8 c d e f2 r1 |
	r\breve |
	r\breve |
	r\breve |
	r1 r4 f, a8 g a bes |
	c2 a g1 |
	a1 r2 r4 f |
	a8 g a bes c4 c bes2 a |
	g2 f r1 |
	r2 r4 c' bes2 a |
	g4 g a8 g a bes c2 r |
	r2 r4 c bes2 a |
	g2 r1 r4 g |
	a8 g a bes c2 r r4 f,4 |
	a8 g a bes c2 r c ~ |
	c4 bes a2 g1 |
	\mensuralBreveNote a\breve 
	\bar "|."
}
contralto =  \relative c' \context Voice = "contralto" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	r\breve |
	r1 r2 f |
	es2 d c r4 c |
	d8 c d e f1 es2 |
	d2 c4 c d8 c d e f2 |
	r\breve |
	r\breve |
	r2 c d8 c d e f4 f |
	es2 d c f |
	e2 f1 e2 |
	f2 r4 f es2 d |
	c2 r4 c d8 c d e f2 |
	r\breve |
	r2 c d8 c d e f4 d |
	e2 f g r4 e |
	f8 e f g a2 d,8 c d e f2 |
	e8 d e f g2 r1 |
	r2 a g f |
	e2 r4 c e8 d e f g2 |
	g2 f1 e2 |
	\mensuralBreveNote f\breve
	\bar "|."
}
tenore =  \relative c' \context Voice = "tenore" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne
	r\breve |
	r\breve |
	r\breve |
	r1 r2 c |
	bes2 a g r4 f |
	a8 g a bes c2 r4 g a bes |
	c2 c bes a |
	g1 f4 f a8 g a bes |
	c2 bes a r2 |
	r4 g a8 g a bes c1 |
	c1 r |
	r\breve |
	r2 r4 f, a8 g a bes c2 |
	bes2 a g f |
	e d c c' |
	bes2 a g4 g a8 g a bes |
	c2 r4 c bes a g2 |
	r4 f a8 g a bes c2 r2 |
	r1 r4 c, e8 d e f |
	g4 g a8 g a bes c1 |
	\mensuralBreveNote c\breve
	\bar "|."
}
basso =  \relative c \context Voice = "basso" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	r\breve |
	r\breve |
	r\breve |
	r\breve |
	r\breve |
	f1 es2 d |
	c2 r4 c d8 c d e f2 ~ |
	f2 es d1 |
	c4 c d e f2 d |
	\mensuralBreveNote c\breve |
	r\breve |
	r1 r2 r4 f |
	es2 d c r4 c |
	d8 c d e f2 r1 |
	r\breve |
	r\breve |
	r2 c d e |
	f2 r4 f es2 d |
	\mensuralBreveNote c\breve ~ |
	\mensuralBreveNote c\breve |
	\mensuralBreveNote f,\breve
	\bar "|."
}
\score {
	\context PianoStaff  << 
		\context Staff = "top" << \time 4/2
			\key f \major
			\soprano
			\contralto
		>>
		\context Staff = "bottom" << \time 4/2
			\clef bass
			\key f \major
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
	
