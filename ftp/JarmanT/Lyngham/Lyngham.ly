\header {	
	title = "Lyngham"
	subtitle = "(Nativity)"
	composer = "T. Jarman (1776--1861)"
	date = "c. 1821"
	metre = "C.M."
	meter=\metre

	mutopiatitle = "Lyngham"

	source="Methodist Hymnbook AT7, 1904"
	mutopiacomposer="JarmanT"
	mutopiainstrument="Voice (SATB)"
	copyright="Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	style="Hymn"
	lastmodified = "2005/Jan/23"
	
	footer = "Mutopia-2005/01/23-178"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

%{
	This is an alternative tune for Wesley's great hymn,
	"O for a thousand tongues to sing".  There are 
	several variations in my hymnbooks, mostly altering the 
	timing of the quavers in manners consistent with 
	baroque ornamentation practice.  Feel free to swing it!

	For congregational singing, I suggest transposing 
	down a tone; for choir leave as is (or even transpose up into 
	A as was done in a later Methodist Hymnbook)

	I've put the date as 1821 (being the first published date I could 
	find).  Some sources put the composition date as 1803. 
%}

\version "2.4.0"

global =  {
        \set Staff.autoBeaming = ##f
	\time 2/4
	\key g \major
	\skip 2*3 |
	s4. \bar "||"

	s8 |
	\skip 2*5
	\bar "||" 

	\skip 2*12
	\bar "||"
}
guitar=\chordmode {

    g8 g g8 c |
    g g g8 c8 |
    g/+d g/+d d d |
    g g g 

    g8 |
    a a d8 e:m |
    d d d d |
    g g g c |
    d d a:7 a:7 |
    d d d d|
    g g d d |
    g g g g |
    d8:7 g d a:7/+e |
    d d d d |
    g g g g|
    c c c c|
    g g g g |
    d d d d |
    g g g g |
    c c c c |
    d:sus d:sus d d:7 |
    g g g g
}



sop =  \relative c'' {
	g4 b8. c16 |
	 d[ e d c b8] c |
	 b[ g]  a[ fis] g4.

	b8 |
	c b a g |
	a4. \breathe

	a8 |
	 b16[ a b c d8] e |
	d4 cis |
	d2 |

	d4 d8 d |
	 b8.[ a16 g8] b |
	 c[ b a] g |
	a4. r8 |
	r4. g8 |
	c c c c |
	b4.  \breathe
	b8 |
	a a a a |
	d4. \breathe

	d8 |
	 e[ d c] b 
	a4. a8 |
	g2

}

alto=\relative c' {
	d4 g8. g16 |
	g4. e8 |
	d4 d |
	d4.

	r8 r2 r4. fis8 |
	g4. g8 |
	fis4 e |
	fis2 
	g4 a8 fis |
	 g8.[ fis16 g8] g |
	 fis8[ g d]  e |
	fis4. r8 |
	r2 |
	r4. c8 |
	d d d d |
	fis4.
         \once \override BreathingSign #'extra-offset = #'(-0.0 . -5.0)
	 \breathe
	fis8 |
	g2 ( ~ |
	g4  fis8) g8 g4 fis |
	g2
}

tenor = \relative c' {
	b4 d8. c16 |
	 b16[ c b a g8] g |
	 g[ b]  c[ a] |
	b4. 

	r8 |
	r2 |
	r4. d8 |
	 d8.[ c16 b8]  b |
	a4 a |
	a2 |
	b4 a8 d |
	d4. d8 |
	d4. cis8 |
	d4. r8 |
	r2 |
	r2 |
	r4. b8|
	d d d d d4. b8 |
	 c[ d ~ d] d | 
	d4. c8 |
	b2
}


bass=\relative c' {
	g4 g8. g16 |
	g4. c,8 |
	d4 d |
	g,4. 
	g'8 |
	a g fis e |
	d4. d8 |
	g4. e8 |
	a4 a, |
	d2 |
	g4 fis8 d |
	 g8.[ a16 b8] g |
	 a8[ g fis] e |
	d4. d8 |
	g a b g |
	e4. 

	c8 |
	g' a b g |
	d4. 

	d'8  b[ a b] g |
	 c[ b a] g |
	d4. d8 |
	g,2
}

\score {
	% \transpose c' bes for congregational singing
	% \transpose c' d for a choir with weak basses
	% leave as is for good choir.
    \transpose c' bes \context ChoirStaff <<
	\context ChordNames { 
	    \set midiInstrument = "acoustic guitar (nylon)"
	    \set chordChanges = ##t 
	    \override ChordName   #'style = #`banter
	    \guitar }
	\context Staff = "upper" <<
		\global
		\context Voice = "sop" { \voiceOne \sop}
		\context Voice = "alto" { \voiceTwo \alto}
		>>	
	\context Staff = "lower" <<
		\clef "F" \global
		\context Voice = "tenor" { \voiceOne \tenor}
		\context Voice=bass{ \voiceTwo \bass}
		>>
    >>
	\layout{
		indent = 0.0\mm
	}
	\midi {
		\tempo 4=100
	}
}

