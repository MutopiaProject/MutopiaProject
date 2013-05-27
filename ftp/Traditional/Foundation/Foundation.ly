\header {
    filename = "Foundation.ly"
    enteredby = "Peter Chubb"
    composer = "Trad."
    title = "Foundation"
    metre = "11 11.11 11 anapaestic"
    meter = \metre
    poet = "R. Keen (c. 1787)"

    copyright = "Creative Commons Attribution-ShareAlike 2.0"
    maintainer = "Peter Chubb"
    maintainerEmail = "mutopia@chubb.wattle.id.au"
    mutopiacomposer = "Traditional"
    mutopiainstrument="Voice (SATB)"
    source="Australian Hymn Book plus other sources"
    mutopiaPoet = "R. Keen (1787)"
    lastupdated = "2005/Jan/14"
    style = "Hymn"

    footer = "Mutopia-2005/01/18-89"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2004.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

%{
	The traditional words to this tune are `How Firm a foundation, 
	ye saints of the Lord' by R. Keen.

	The tune and arrangement were taken  mainly from
	the Australian Hymn Book (Collins 1977), with minor modifications 
	to make the tune more singable, and to conform with late 18th century 
	singing practice.

	The preface in the Australian Hymn Book says:

	`No copyright fee is claimed by the Australian Hymn Book
	Company for the work of the Committees on individual hymns,
	and these versions of tunes and words may be used without the
	granting of formal permission'

	so the arrangment is useable.
%}


\version "2.4.0"

global= {
	\key g \major
	\time 4/4

	\partial 2
	\skip 2
	\skip 1*3
	\skip 2 \bar "||"
	\skip 2
	\skip 1*3
	\skip 2 \bar "||"
	\skip 2
	\skip 1*3
	\skip 2 \bar "||"
	\skip 2
	\skip 1*3
	\skip 2 \bar "||"
}

sop= \relative c' {
	d4( e) |
	g2 e4 g |
	d2 g4 a |
	b2 g4 b |
	d,2

	d4 ( e) |
	g2 e4 g |
	d4.( e8) g4 a
	b2 a4 a |
	g2 

	g4( b) |
	d2 b4 d |
	g,2 g4 a |
	b2 g4 b |
	d,2 

	d4( e) |
	g2 e4 g |
	d4.( e8) g4 a |
	b2 a4 a |
	g2
}

sopVoice=\context Voice { \voiceOne \sop }

alto =  \relative c' {
	b4( c) |
	d2 c4 e |
	d2 b4 b |
	d2 b4 g |
	a2

	b4( c) |
	d2 c4 e |
	d2 b4 b |
	d2 d4 c |
	b2

	d2 |
	g d4 d |
	e2 e4 e |
	d2 b4 g |
	a2 
	b4 ( c) |
	d2 c4 e |
	d2 b4 b |
	d2 d4 c |
	b2
}
altoVoice = \context Voice = "alto" { \voiceTwo \alto }
tenor =  \relative c' {
	g2
	b g4 g |
	g2 d4 d |
	g2 g4 g 
	fis2 

	g2 |
	b g4 g |
	g2 g4 g |
	g2 fis4 fis 
	g2

	g2 |
	b g4 a |
	b2 a4 g |
	g2 g4 g
	fis2

	g2 |
	b g4 g |
	g2 g4 g |
	g2 fis4 fis |
	g2
}
tenorVoice=\context Voice = "tenor" { \voiceOne \tenor }

bass= \relative c { 
	g2 |
	g2 c4 c |
	b2 g4 g |
	g2 g4 g |
	d'2

	g,2 |
	g c4 c |
	b2 e4 e |
	d2 d4 d |
	g,2

	g'2 g2 g4 fis |
	e2 c4 c |
	g2 g4 g |
	d'2
	g,2 |
	g c4 c |
	b2 e4 e |
	d2 d4 d |
	g,2
}
bassVoice = \context Voice = "bass" {\voiceTwo \bass }

accomp=\chordmode{
	g4 c/+g |
	g2 c 
	g/+b g |
	g g |
	d g4 c/+g |
	g2 c g/+b e:m |
	d2 d4 d:7 |
	g2 g2 | g2 g4 d4/+fis | e2:m a4:m/+c c4 | g2 g2 
	d2 g4 c/+g |
	g2 c g/+b e4:m % e:m.sus4 |
	e:sus4
	g2/+d d4 d:7 |
	g2 
}


\score {
    <<
	\context ChordNames = "top" { 
		\set ChordNames.chordChanges = ##t 
		\override ChordName   #'style = #`banter
		\accomp
	}
	\context ChoirStaff <<
		\context Staff ="upper" { \clef "G" <<
			\set Staff.midiInstrument = "recorder"
			\global
			\sopVoice
			\altoVoice
		>>}
		\context Staff = "lower" {\clef "F" <<
			\set Staff.midiInstrument = "reed organ"
			\global
			\tenorVoice
			\bassVoice
		>>}
	>>
    >>

	\layout{
		indent = 0.0\pt
	}
	\midi {
		\tempo 4 = 160
	}
}

