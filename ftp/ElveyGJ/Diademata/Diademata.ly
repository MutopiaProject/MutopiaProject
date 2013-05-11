\header {
  filename = "diademata.ly"
  enteredby = "Peter Chubb"
  composer = "Sir George J. Elvey (1816--1893)"
  date = "1868"
  title = "Diademata"
  metre = "6 6. 8 6. D"
  meter = \metre

  mutopiacomposer = "ElveyGJ"
  mutopiainstrument = "Voice (SATB)"
  style = "Hymn"
  source = "Book of Common Praise, 1908, number 367"
  copyright = "Public Domain"
  maintainer = "Peter Chubb"
  maintainerEmail = "mutopia@chubb.wattle.id.au"
  lastupdated = "2005/Jan/09"

  footer = "Mutopia-2005/01/18-524"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"

}
\version "2.4.0"

%{
Words include `Crown him with many crowns'
%}

sop =  \transpose c c' {
	\voiceOne
	ees2 ees4 ees4 g2 g2 |  c'1.  
	c'2 | bes2 ees aes g |  f1.  
	f2 | g bes c' bes |  a g4( f)  bes2  
	ees'2 | d' ees' c' c' |  bes1. 
	bes2 | bes g f ees |  c'1. 
	c'2 | c' a g f |  d'1. 
	d'2 | ees'2. d'4 c'2 bes |  aes f g 
	bes2 | aes g f f | ees\breve

}

alt =  \transpose c c' {
	\voiceTwo
	bes,2 bes,4 bes,4 ees2 ees2 |  ees1. 
	ees2 | ees ees d ees |  d1. 
	d2 | ees f ees g |  ees c f 
	ees2 | f g c f |  d1. 
	d2 | ees ees d ees |  ees1. 
	e2 | f f ees ees |  d1. 
	f2 | ees ees ees ees |  ees d ees 
	ees | ees ees ees d | ees\breve 
}


ten =  {
	\voiceOne
	g2  g4 g4 g2 g2 |  aes1. 
	aes2 | bes c' aes bes |  bes1. 
	bes2 | bes bes g g  |  c' a bes 
	a2 | bes bes bes a |  bes1. 
	bes2 | bes bes aes bes |  c'1. 
	bes2 | a c' bes c' |  bes1. 
	bes2 | bes bes aes bes |  c' bes bes 
	bes c' bes bes2. aes4 | g\breve 
}

bass =  {
	\voiceTwo
	ees2 ees4 ees4 c2 c2 |  aes,1. 
	aes2 | g aes f ees |  bes,1. 
	bes,2 | ees d c ees |  f ees d 
	c2 bes, ees f f |  bes,1. 
	aes2 | g ees f g |  aes1. 
	g2 | f f g a |  bes1. 
	aes2 | g g  aes g | f bes ees 
	g,2 | aes, ees bes, bes, | ees\breve 
}

one = {
	\time 1/2\skip 2*1 | \time 4/2\skip 2*4 | \time 3/2\skip 2*3 
	\bar "||"
}
two =  {
    \time 1/2 \skip 2*1 | \time 4/2 \skip 2*4 | \skip 2*4 |
}
global = {
	\time 4/2
	\key ees \major
	\skip 2*4 |
	\time 3/2 \skip 2*3 \bar "||" |
	\one \break \one  \one \one 
	\one \break \one \two
	\bar "|."
}

% now have only one || request per staff
upperStaff = \context Staff = upper<< 
	\global
	\context Voice = "sop" \sop
	\context Voice = "alto" \alt
>>

lowerStaff = \context Staff = lower<<
	\global
	\clef "bass"
	\context Voice = "tenor" \ten
	\context Voice = "bass" \bass
>>

msusfour =  {
  < c es f g >1-\markup{ m \super 4 }
}

chExceptions = #(append
		 (sequential-music-to-chord-exceptions msusfour #t) 
		 ignatzekExceptions)


accomp=\chordmode {
  \set chordNameExceptions = #chExceptions 
	es2 es c1:m |
	as1. 
	as2 	
	es2 as d:m5- es |
	bes1.

	bes2 |
	es bes  c:m es |
	f:7  f:7/+es  bes2 |
	a:dim | bes2 es  f:sus4 f |
	bes1. 


	bes2:7 | es2 es d:dim/+f es |
	as1. 

	c2:7 |
	f f es f:7 |
	bes1.
	bes2:7 |
	es2 es4 es:7 as2 es |
	f:m7 bes es 

	es2 |
	as es bes:sus bes4 bes4:7 |
	es1*2
} 
	 
	


\score {
	\context ChoirStaff  \transpose c' c'	<<
		\context ChordNames {
		  \set ChordNames.chordChanges = ##t 
		  \accomp
		}
		\upperStaff 
		\lowerStaff
	>>
	\layout {
		%indent = 0.0 \mm
		%linewidth= 140.0\mm
		\context { 
		  \Staff \remove "Time_signature_engraver"
		}
	}
	\midi {
		\tempo 2 = 100
	}
}

