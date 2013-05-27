\header{
	title = "Toplady"
	metre = "77.77.77"
	meter = \metre
	composer = "T. Hastings (1784--1872)"
	date = "1830"
	enteredby = "Peter Chubb"

	mutopiacomposer="HastingsT"

	maintainer = "Peter  Chubb"
	copyright= "Public Domain"	
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2004/Nov/30"
        
        footer = "Mutopia-2004/11/30-196"
        tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"

}


\version "2.4.0"

line={
	\skip 4\skip 2.*1
	\skip 2 \bar "||"
}

global={
	\key bes \major
	\time 3/4
	\set Staff.autoBeaming = ##f
	\partial 4
	\line \line
	\line \line
	\line \line
}

soppartone=\relative c' {
	f8. g16 |
	f4. d8 bes'8. g16 |
	f2

	bes8 c |
	d4. c8 bes a |
	bes2
}

sopparttwo=\relative c''{
	a8. bes16 |
	c4. c8 a f |
	bes2
}
sop = {
	\soppartone
	\sopparttwo
	\sopparttwo
	\soppartone
}

altpartone=\relative c' {
	d8. es16 |
	d4. bes8 d8. es16|
	d2

	f8 g |
	f4. es8 d c |
	d2
}
altparttwo=\relative c' {
	c8. d16 |
	es4. es8 es8 es |
	d2
}
alto={
	\altpartone
	\altparttwo
	\altparttwo
	\altpartone
}
	
tenpartone=\relative c' {
	bes8. bes16 |
	bes4. f8 f8. bes16 |
	bes2
	bes8 bes |
	bes4. f8 f f |
	f2
}
tenparttwo=\relative c {
	f8. f16 |
	a4. a8 c a |
	bes2
}
tenor={
	\tenpartone
	\tenparttwo
	\tenparttwo
	\tenpartone
}

basspartone=\relative c {
	bes8. bes16 |
	bes4. bes8 bes8. bes16 |
	bes2

	d8 es |
	f4. f8 f f |
	bes,2
}
bassparttwo=\relative c {
	f8. f16 
	f4. f8 f f |
	bes,2
}
bass={
	\basspartone
	\bassparttwo
	\bassparttwo
	\basspartone
}

upper=\context Staff=Upper <<
	\global
	\context Voice = "sop" {\voiceOne \stemUp \slurUp \sop}
	\context Voice = "alto" {\voiceTwo \stemDown \slurDown\alto}
>>

lower=\context Staff=Lower <<
	\global
	\clef "F"
	\context Voice = "tenor"  {\voiceOne \stemUp \slurUp\tenor}
	\context Voice = "bass"  {\voiceTwo \stemDown \slurDown \bass}
>>

\score {
	\context ChoirStaff <<
		\upper
		\lower
	>>
	\layout{
		indent = 0.0\mm
	}
	\midi {
		\tempo 4 = 100
	}
}

