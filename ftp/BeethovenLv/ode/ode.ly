\header {
    filename = "ode.ly"
    enteredby = "Peter Chubb"
    composer = "L. V. Beethoven (1770--1827)"
    date = "c. 1800"
    title = "Ode to Joy"
    metre = "8 7 8 7 D"
    meter = \metre


    mutopiatitle = \title
    mutopiacomposer = \composer

    style = "Hymn"
    source = "Various"
    copyright = "Public Domain"
    maintainer = "Peter Chubb"
    maintainerEmail = "mutopia@chubb.wattle.id.au"
    lastupdated =	 "2005/Jan/11"

    footer = "Mutopia-2005/01/18-528"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

\version "2.4.0"

sop =  \transpose c c'{
	\voiceOne
	b4 b c' d' | d' c' b a | g g a b | b4. a8 a2 \bar "||"
	b4 b c' d' | d' c' b a | g g a b | a4. g8 g2 \bar "||"	
	a4 a b g | a  b8[( c']) b4 g | a  b8[( c']) b4 a | g a d2 \bar "||"
	b4 b c' d' | d' c' b a | g g a b | a4. g8 g2 |
}

alto =  \transpose c c'{
	\voiceTwo
	g4 g a g | g4. a8 g4 fis | d d fis g| g4. fis8 fis2 |
	g4 g a g | g4. a8 g4 fis | d d fis g| g4 fis d2 |
	d4 d d d | d d d d | d d fis fis | e cis d2 |
	d4 g a a b  g8[( a]) g4 e | e d fis g |g fis g2 |
}

tenor = {
	\voiceOne
	d'4 d' c' b | e'4. d'8 d'4 d' | b b d' d' | d'4. d'8 d'2 \bar "||"
	d'4 d' c' b | e'4. d'8 d'4 d' | b b d' d' | d'4 d' b2 \bar "||"
	fis4 fis g  e | fis  g8[( a8]) g4 e | fis fis fis b | b a g( fis) \bar "||"
	g4 d' f' f' | g'4. d'8 d'4 c' | g g c' d' | d' d' b2
}
bass = {
      \voiceTwo
      g4 g g g | e4. fis8 g4 d | b b a g | d4. d8 d2 |
      g4 g g g | e4. fis8 g4 d | b b a g | d d g,2 |
      d4 d d d | d d d d | d d dis dis | e a, d2 |
      g4 g f f  | e4. fis8 g4 c | c b, a, g, | d d g,2 |
}


global = {
	\time 4/4
	\key g \major
	\skip 1*16
	\bar "|."
}

upperStaff = \context Staff = upper<< 
	\global
	\clef "violin"
	  <<
	   \context Voice = "sop"    \sop
	   \context Voice = "alto" \alto
	  >>
>>

lowerStaff = \context Staff = lower<<
	\global
	\clef "bass"
	<<
	    \context Voice = "tenor" \tenor
	    \context Voice = "bass" \bass
	>>
>>
\score{
	<<
		\upperStaff
		\lowerStaff
	>>
	\layout {
	  indent = 0.0\mm
	}
	\midi {
	  \tempo 4=100
	  }
}
