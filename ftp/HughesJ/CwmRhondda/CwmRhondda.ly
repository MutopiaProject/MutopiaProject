\header {
	title = "Cwm Rhondda"
	composer = "John Hughes (1873--1932)"
	metre="8.7.8.7.4.7"
	source="Methodist Hymnbook 1933, Number 615"
	meter=\metre

	mutopiacomposer = "HughesJ"
	mutopiainstrument = "Voice (SATB)"
	date = "1665"

	style = "Hymn"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2005/Jan/06"

	footer = "Mutopia-2005/01/18-523"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

%{
The original was in A; I dropped it a tone for easier congregational singing.
Also I've halved time values from the original.
%}

\version "2.4.0"

global= {
	\time 4/4
	\key g \major
	\skip 1*2 \bar "||"
	\skip 1*2 \bar "||" \break
	\skip 1*2 \bar "||"
	\skip 1*2 \bar "||" \break
	\skip 1*4 \bar "||"
	\skip 1*2 \bar "|."
}

sop=\relative c' {
	d4 e d4. g8|
	g( fis) g( a) b4 a |

	b g e c' |
	b a g2

	d4 e d4. g8|
	g( fis) g( a) b4 a |

	b4 c d c8( a) |
	g4 fis g2

	a4. b8 c4 a |
	b4. c8 d4 b |
	d4. d8 d d d d |
	d1

	d4. c8 b( d) c( a) |
	g4 fis g2
}

alto=\relative c' {
	b4 c d4. d8 |
	d4 d8( e) d4 d |

	d c e e d c b2 |

	b4 c d4. d8 |
	d4 d8( e) d4 d |

	d4 e d e |
	d d d2 |

	fis4. g8 a4 d, |
	g4. a8 b( a) g4 |
	g4. g8 fis g d g |
	fis4( d8 fis  a2) |
	g4. fis8 g4 e |
	d d d2
}

tenor=\relative c' {
	g4 g g4. b8 |
	b( a) g4 g fis |

	g4 g g g |
	g fis g2 |

	g4 g g4. b8 |
	b( a) g4 g fis |

	g4 g g g8( c) |
	b4 a b2 |

	c4. b8 a( g) fis( a) |
	d4. c8 b4 d |
	
	d4. d8 c b a g |
	d'1 |

	d4. d8 d( b) a( c) |
	b4 a8( c) b2
}	
bass=\relative c {
	g4 c b a |
	g8( a) b( c) d4 d |

	g4 e c a |
	d d g,2

	g4 c b a |
	g8( a) b( c) d4 d |

	g4 e b c |
	d d g,2 |

	d'4. d8 d( e) fis4 |
	g4. d8 g( a) b4 |
	b4. b8 a g fis e |
	d4(fis8 a  c2) |
	b4. a8 g4 c, |
	d d g2
}


accomp=\chordmode{

	g4 c g g |
	g g g d |

	g c c a:m7 |
	g d:7 g g |

	g4 c g g |
	g g g d |

	g c g a:m7 |
	g d:7 g g |

	d:7 d:7 d:7 d:7/+fis |
	g g g g |
	g g d:7 d:7 |
	d d d:7 d:7 |
	g g g c |
	g d:7 g g
}
	


\score {
	\context ChoirStaff <<
		    #(override-auto-beam-setting '(end * * * *) 1 4 'ChoirStaff)

		 \context ChordNames {
		      \set ChordNames.midiInstrument = "acoustic guitar (nylon)"
		      \set ChordNames.midiMaximumVolume = 1
		      \set ChordNames.chordChanges = ##t
		      \accomp }
		\context Staff = "up" <<
			\global
			\context Voice = "sop" {\voiceOne \sop}
			\context Voice = "alto" {\voiceTwo\alto}
		>>
		\context Staff = "down" <<
			\clef "F"
			\global
			\context Voice = "tenor" {\voiceOne \tenor}
			\context Voice = "bass" {\voiceTwo\bass}
		>>
	>>
	\layout{
		indent = 0.0\mm
	}
	\midi {
		\tempo  2= 60
	}
}

