#(ly:set-option 'old-relative)
\header {
    filename="TrustAndObey.ly"
    enteredby = "Peter Chubb"
    composer = "D. B. Towner (1833--1896)"
    metre = "6 6.6. D. and Refrain"
    title = "Trust and Obey"
    poet = "John Henry Sammis (?--1919)"

    meter=\metre
    mutopiatitle = "Trust and Obey"
    mutopiacomposer = "TownerDB"
    mutopiapoet = "J. H. Sammis (?--1919)"
    mutopiainstrument = "Voice (SATB)"
    date = "C19"
    source = "Methodist Hymnbook 1933, No. 516"
    style = "Hymn"
    copyright = "Public Domain"
    maintainer = "Peter Chubb"
    maintainerEmail = "mutopia@chubb.wattle.id.au"
    lastupdated = "2005/Jan/11"

    footer = "Mutopia-2005/01/18-96"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

% $Id: TrustAndObey.ly,v 1.7 2005/01/11 10:03:22 peterc Exp $

\version "2.4.0"

global= {
	\set Staff.midiInstrument = #"acoustic grand"
	\key f \major
	\time 3/4
 	\set autoBeaming = ##f
	\partial 4
	\skip 4
	\skip 2.*6
	\skip 2
	\bar "||"

	\skip 4
	\skip 2.*7
	\bar "||"

	\skip 2.*7
	\skip 2
	\bar "||"
}

sl= \relative c' {
	f8 g |
	a4 a g |
	f2 f8 a |
	c4 c bes |
	a2 a8 a |
	bes4 d bes |
}

sop=\context Voice = "sop"  \relative c' {
	\sl
	a'4 c a |
	g2
	\break

	\sl
	a4 f g |
	f2. |

	c'4 g c |
	a2 a8 a |
	d4 a c |
	bes2 bes8 bes |
	bes4 a g |
	a c^\fermata f,8 g |
	a4 f g |
	f2
}

al=\relative c' {
        c8 c |
	f4 f e |
	f2 f8 f |
	e4 e e |
	f2 f8 f |
	f4 f f |
}

alto=\context Voice = "alto"  \relative c'{
	\al
	f4 f f |
	e2

	\al
	f4 c c |
	c2.

	e4 e e |
	f2 f8 f |
	fis4 fis fis |
	g2  g8 g |
	g4 f e |
	f f_\fermata f8 f |
	f4 c c |
	c2
}

tl=\relative c' {
        a8 bes |
	c4 c bes |
	a2 
	a8 c |
	c4 g c |
	c2
	c8 c |
	bes4 bes bes |
}

tenor = \context Voice = "tenor"  \relative c' {
	\tl
	c4 a c |
	c2

	\tl
	c4 a bes |
	a2. |

	g4 c c |
	c2 c8 c |
	a4 d d |
	d2 c8 c |
	c4 c c |
	c a\fermata c8 d |
	c4 a bes |
	a2
}


bl=\relative c {
	f8 f |
	f4 f c |
	f2 f8 f |
	c4 c c |
	f2 f8 f |
	d4 bes d |
}

bass=\context Voice = "bass"  \relative c {
	\bl
	f a f |
	c2

	\bl
	c4 c c |
	<f f,>2. |

	c4 c c |
	f2 f8 es |
	d4 d d |
	g2  e8 d |
	c4 c c |
	f f_\fermata 
	a,8 bes |
	c4 c c |
	<f f,>2
}

verseOne=\lyricmode {
	When we walk with the Lord
	in the light of his word
	What a glo -- ry He sheds on our way!
	While we do His good will
	He a -- bides with us still
	And with all who will trust and o -- bey
}
Refrain=\lyricmode {
	Trust and o -- bey
	For there's no o -- ther way
	to be hap -- py in Jes -- us
	but to trust and o -- bey
}

verseTwo = \lyricmode {
	Not a shad -- ow can rise
	Not a cloud in the skies
	But his smile quick -- ly drives it a -- way
	Not a doubt or a fear
	not a sigh or a tear
	can a -- bide while we trust and o -- bey
}

verseThree = \lyricmode {
	Not a bur -- den we bear,
	Not a sor -- row we share,
	But our toil he doth rich -- ly re -- pay
	Not a grief or a loss,
	Not a frown or a cross,
	But is blest if we trust and o -- bey
}

verseFour=\lyricmode {
	But we ne -- ver can prove
	The de -- lights of his love
	Un -- til all on the al -- tar we lay
	For the fa -- vour he shows,
	And the joy He be -- stows
	are for them who will trust and o -- bey
}

verseFive=\lyricmode {
	Then in fel -- low -- ship sweet
	We will sit at His feet,
	Or we'll walk by His side in the way
	What He says we will do,
	Where He says we will "go---"
	Ne -- ver fear, on -- ly trust and o -- bey.
}

Accomp=\chordmode{
	f4 |
	f2 c4:7 |
	f2 f4 |
	c2.  |
	f2 f4 |
	bes2. |
	f2. |
	c2
	f4 |
	f2 c4:7 |
	f2 f4 |
	c2.  |
	f2 f4 |
	bes2. |
	f2./c |
	f2.

	c2. |
	f2.
	d2 d4:7 |
	g2:m c4:7 |
	c4:7 f/c c|
	f2 f8/a bes:6 |
	f2/c c4:7 |
	f2
}
	
Words=	<< 
	\lyricsto sop \context Lyrics = vOne \verseOne
	\lyricsto sop \context Lyrics = vTwo   \verseTwo
	\lyricsto sop \context Lyrics = vThree { \verseThree  \Refrain }
	\lyricsto sop \context Lyrics = vFour  \verseFour
	\lyricsto sop \context Lyrics = vFive \verseFive
	>>


\score {
       <<
		\context ChordNames = "guitar" \Accomp
		\context Staff = "upper" << 
			\context Voice = "sop" <<{\voiceOne \global} \sop>>
			\context Voice = "alto" <<{\voiceTwo \global} \alto>>
		>>
		\Words
		\context Staff = "lower" { \clef "F" <<
			\context Voice = "tenor" <<{\voiceOne \global} \tenor>>
			\context Voice = "bass" <<{ \voiceTwo \global} \bass>>
			>>
		}
	>>

	\layout {
		indent = 0.0\mm
		textheight = 273.0\mm
		\context { 
			\ChordNames
%		 \override ChordName #'word-space = #1 
%		 \override ChordName #'style = #'american
		}
	}
	\midi {
		\tempo 4=120
	}
}
	
