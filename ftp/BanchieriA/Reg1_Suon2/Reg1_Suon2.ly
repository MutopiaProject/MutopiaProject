% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.1 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 7/Nov/2004

\version "2.4.0"
\header {
	title = "SUONATA SECONDA, FVGA TRIPLICATA"
	subtitle = "From Primo Registro of the Organo Suonarino"
	instrument = "Organ"
	%piece = "SUONATA SECONDA, FVGA TRIPLICATA"
	maintainer = "Giampaolo Orrigo"
	composer = "Adriano Banchieri"
	mutopiatitle = "SUONATA SECONDA, FVGA TRIPLICATA From Primo Registro of the Organo Suonarino"
	mutopiacomposer = "BanchieriA"
	mutopiainstrument = "Organ"
	date = "1605"
	source = "Urtext"
	style = "Baroque"
	copyright = "Public Domain"
	filename = "Reg1_Suon2.ly"
	editor = "Ricciardo Amadino, Venezia, 1605"
	maintaineremail = "orrigo.gp@rosenet.it"
	lastupdated = "2004/Nov/07"

	footer = "Mutopia-2004/11/07-32"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"	
}

mensuralBreveNote = { \once \override NoteHead #'style = #'neomensural }

soprano =  \relative c'' \context Voice = "soprano" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne 
	d1 d2 d |
	c2 bes a1 ~ |
	a1 g |
	r\breve |
	bes4 g d' d, e8 d e f g2 ~ |
	g2 f4 e fis2 fis |
	g2 e r1 |
	r2 bes'4 g d'2 d4 d |
	c4 bes bes2. a8 g a2 |
	bes1 r1 |
	r\breve |
	bes4 g d'4. c8 bes4 a8 g a4 f |
	g8 a bes c d4 c8 bes c1 |
	bes1 r1 |
	r2 bes4 g d'2 a |
	r2 bes4 g d'2 r4 d, |
	e8 d e f g1 fis2 |
	g1 bes4 g d'2 |
	es2 d c4 g c2 |
	\mensuralBreveNote b\breve
	\bar "|."
}
contralto =  \relative c' \context Voice = "contralto" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	r2 bes4 g d'2 r4 d |
	e8 d e f g1 f4 e |
	fis2 fis g d |
	r1 d |
	d2 d c bes |
	\mensuralBreveNote a\breve |
	g1 r1 |
	r1 bes4 g g'4. f8 |
	es2 bes8 c d es f1 |
	bes,8 a bes c d4 bes a1 |
	g1 r1 |
	r2 bes4 g d'2 d4 d |
	c4 bes bes2. a8 g a2 |
	bes1 r2 f'4 d |
	g2 d r1 |
	bes4 g d'2 d d4 d |
	c2 bes a1 |
	\mensuralBreveNote g\breve ~ |
	\mensuralBreveNote g\breve ~ |
	\mensuralBreveNote g\breve
	\bar "|."
}
tenore =  \relative c' \context Voice = "tenore" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne 
	r\breve |
	r1 d1 |
	d2 d c bes |
	\mensuralBreveNote a\breve |
	g1 r1 |
	r1 r2 r4 d |
	e8 d e f g1 fis2 |
	g1 r1 |
	r\breve |
	r2 bes4 g d'2 r4 d, |
	e8 d e f g1 fis2 |
	g1 r1 |
	r\breve |
	r1 d'2 d4 d |
	c2 bes a1 |
	\mensuralBreveNote g\breve |
	r1 r2 d'4 a |
	bes2 c4 es d2 b |
	c4 a d2 es1 |
	\mensuralBreveNote d\breve 
	\bar "|."
}
basso =  \relative c \context Voice = "basso" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	r\breve |
	r\breve |
	r2 d2 e8 d e f g2 ~ |
	g2 f4 e fis2 fis |
	g1 r1 |
	d1 d2 d |
	c2 bes a1 |
	g1 r1 |
	r\breve |
	r1 d'2 d4 d |
	c2 bes a1 |
	g1 r1 |
	r\breve |
	r2 bes4 g d'2 r4 d |
	e8 d e f g1 fis2 |
	g1 r1 |
	r2 bes,4 g d'1 |
	g,2 es'4 c g'1 |
	c,2 b c1 |
	\mensuralBreveNote g\breve
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
	
