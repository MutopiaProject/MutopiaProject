\header {
    title = "Austria"
    meter = " 8 7. 8 7. D"
    composer = "F. Haydn (1732--1809)"

    mutopiacomposer = "HaydnFJ"
    date = "1797"

    style = "Hymn"
    source = "Book of Common Praise, 1908, number 280"
    copyright = "Public Domain"
    maintainer = "Peter Chubb"
    maintainerEmail = "mutopia@chubb.wattle.id.au"
    lastupdated =	 "2005/Jan/09"

    footer = "Mutopia-2005/01/18-522"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}


%{
Words to this tune include:
   -- Hark, Creation's Alleluia
   -- Glorious things of thee are spoken
   -- Zion's King shall reign Victorious
   etc.
%}

\version "2.4.0"

global =  {
    \time 4/2
    \key es \major
    \repeat volta 2 {
	s1 s1 |
	s1 s1 \bar "||"
	s1 s1
	s1 s1 |
    }
    s1 s1 |
    s1 s1 \bar "||"
    s1 s1 |
    s1 s1 \bar "||"
    s1 s1 |
    s1 s1 \bar "||"
    s1 s1 |
    s1 s1 \bar "||"
}

soprano =  \relative c' {
    es2. f4 g2 f |
    as g f4(d) es2 |
    c'2 bes as g |
    f g4(es) bes'1 |

    f2 g f4(d) bes2 |
    as' g f4(d) bes2 |

    bes'2 as g2. g4 |
    a2. a4 bes1 |

    es2. d4 c2 bes |
    c2. bes4 bes(as) g2 |

    f2 g4( as) bes( c) as( f) |
    es2 g4( f) es1
}


alto = \relative c' {
    es2. es4 es2 d |
    f es bes bes |
    c4( d) es2 f es |
    f es d1 |

    bes2 bes bes bes |
    bes bes bes bes |
    bes c4 ( d) es2. es4 |
    es2. es4 d1 |

    es2. es4 es2 es |
    es2. es4 d2 es |
    d2 d es c |
    bes d bes1
}

tenor = \relative c' {
    g2. as4 bes2 bes |
    d, es as g |
    as bes bes bes |
    c c f,1 |

    d2 es d d |
    f es d d |
    g f es2. es4 |
    f2. c'4 bes1 |

    bes2. bes4 as2 g |
    as2. bes4 bes 2 bes |
    bes bes bes4( es,) c'( as) |
    g2 bes4 ( as) g1
}


bass=\relative c {
    es2. es4 es2 bes |
    bes bes bes es |

    as g d es |
    as, a bes1 |

    bes2 bes bes bes |
    d es bes bes |
    g as4( bes) c2. c4 |
    f2. f4 bes,1 |

    g'2. g4 as2 es |
    as2. g4 f2 es |
    bes as g as |
    bes bes es1
}

guitar = \chordmode {
    es2 es es bes |
    bes:7 es/+bes bes:7 es |
    as es bes:7 es |
    f:m a:dim bes bes |

    bes es/+bes bes bes |
    bes:7/+d es bes bes |
    g:m f:m c:m c:m |
    f:7 f:7 bes bes |
    es es as es |
    as es bes4 bes:7 es2 |
    bes bes:7/+as es/+g f:m/+as |
    es bes es es
}

\score {
    \transpose c' b \context ChoirStaff <<
	\context ChordNames << \global \guitar >>
	\context Staff = "top" <<
	    \global
	    \context Voice = "one" { \voiceOne \soprano }	    
	    \context Voice = "two" { \voiceTwo \alto }
	    >>
	\context Staff = "bottom" <<
	    \clef "F"
	    \global
	    \context Voice = "three" { \voiceOne \tenor }
	    \context Voice = "four" { \voiceTwo \bass }
	>>
   >>

    \layout {
	indent = 0.0\mm
	\context {
	    \ChordNames
%	ChordName \override #'word-space = #1
	    \override  ChordName #'style = #'american
	    chordChanges = ##t
	}
    }
    \midi {
	\tempo 2=80
    }
	

}



