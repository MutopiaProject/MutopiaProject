\header {
	filename = "DukeSt.ly"
	enteredby = "Peter Chubb"
	title = "Duke Street"
	metre = "88.88"
	meter = \metre	 % pander to American orthography
	composer = "John Hatton ?--1793"

	mutopiainstrument="Voice (SATB)"
	source = "see comments in source"
	date = "C18"
	style = "Hymn"
	mutopiacomposer = "HattonJ"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintaineremail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2004/Dec/6"

	footer = "Mutopia-2005/01/18-87"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

%{
	Words for this song include:
	      -- Isaac Watt's `Jesus shall reign where'er the sun'
	      -- John S B Monsell's `Fight the Good Fight'

	This version of the tune is taken from a variety of sources
including 
	  `A Collection of Hymns for the People known as Methodists'
	     1831 (where it is in E, the note values are halved, and
	     the base harmony is `straight'in bar 14)
	  `Methodist Hymn Book with Tunes' (where note values are as
	   in this edition, the key is Eflat, and there are more
	   passing-notes in the alto part than shown here)
	   The Anglican Hymn Book of 1965, which has the slightly
	   simpler alto part reproduced here, and is in D.

	I've noticed that modern hymnbooks seem to set tunes lower than 
        older ones.  I believe this is for two reasons:
          A.  Standard pitch has been creeping up, from A-415 to A-440 
              (although military bands used to use as `high pitch' -- A-460)
          B. Singing is becoming less of a pastime, so people are in 
             general less able to sing high through lack of practice.  For
             many people the only time they sing is at church on Sunday.
%}

\version "2.4.0"

global={
	\key d \major
	\time 2/2
	\skip 1*4 \bar "||"
	\skip 1*4 \bar "||"
	\skip 1*4 \bar "||"
	\skip 1*4 \bar "||"
}

sop= \relative c' {
	d2 fis4 g a2 b4( cis) |
	d2 cis4( b) a1 |

	a2 a4 a b2 a |
	g fis e1 |

	fis2 fis4 e d( fis) a( d) |
	b ( a) g( fis) e1

	a2 b4 cis d2. g,4 |
	fis2 e d1
}
sopVoice=\context Voice = "sop" { \voiceOne \sop }

alto= \relative c' {
	a2 d4 cis d2 g |
	fis e cis1 |

	d2 cis4 d d2 a |
	cis d cis1 |

	d2 d4 cis d2 fis4( d) |
	d2 e4 ( d) cis1 |
	d2 d4 g  fis4. ( g8  a4) e4 |
	d2 cis a1
}
altoVoice=\context Voice = "alto" {\voiceTwo \alto }
	
tenor =   \relative c {
	fis2 a4 a a2 g |
	a a4( gis) a1 |

	fis2 g4 a d2 d |
	g,2 a a1 |

	a2 a4 g a2 a |
	b b cis1
	
	a2 g4 g a2. b4 |
	a2 a4( g) fis1
}

tenorVoice=\context Voice = "tenor" {\voiceOne\tenor}

bass=  \relative c {
	d2 d4 e fis2 g4( e) |
	d2 e a,1 |

	d2 e4 fis g2 fis |
	e d a1

	d2 a4 a b2 fis' |
	g4 ( fis) e ( d) |
	a1

	fis'2 g4 e d4. ( e8 fis4  g) |
	a2 a, d1
}

bassVoice=\context Voice = "bass" { \voiceTwo \bass }

guitar = \chordmode {
	d4 d d a:7/+e |
	d d g a:7 |
	d d a e |
	a a a a |

	d d a:7 d |
	g g d d |
	a:7/+e a:7/+e d d |
	a a a a |

	d d d/+a a:7 |
	b:7 b:7 d/+fis d/+fis |
	g b:m7/+fis e:m b:m/+d |
	a a a a |

	d/+fis d/+fis g cis:dim/+e |
	d d d e:m |
	d d a a:7
	d d d d
}

\score {
	 \context ChoirStaff <<
	       \context ChordNames = "guitar" {
		 \set ChordNames.midiInstrument = "acoustic guitar (nylon)"
		 \guitar
		 }
		\context Staff ="upper"  { \clef "G2" <<
			\global
			\sopVoice
			\altoVoice
		>>}
		\context Staff = "lower"  { \clef "F" <<
			\global
			\tenorVoice
			\bassVoice
		>>}
	>>
	\layout{
		indent = 0.0\pt
		linewidth = 180.0 \mm
		\context {
			\ChordNames
	%		\override ChordName #'word-space = #1
			\override ChordName #'style = #'american
			chordChanges = ##t
		}
	}
	\midi {
 		\tempo 2 = 100
	}
}	


