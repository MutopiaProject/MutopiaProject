\header {
	title = "Hymn of Eve"
	subtitle = "(Uxbridge)"
	composer = "Arne's {\it Death of Abel,} 1755"
	poet = "Charles Wesley"
	date = "1755"
	filename = "Uxbridge.ly"
	piece = "\\thispagestyle{plain}"

	mutopiatitle = "Hymn of Eve (Uxbridge)"
	mutopiacomposer = "Dr T. Arne (1710-1788)"
	mutopiapoet = "C. Wesley (1707-1788)"
	mutopiainstrument = "Voice, (SATB)"
	source = "Methodist Hymn Book, 1933, No. 648"
	metre = "8.8.8.8. D."
	meter = \metre
	copyright = "Public Domain"
	style = "Hymn"
	maintainer = "Peter Chubb"
	maintainerEmail = "peterc@sw.oz.au"
	lastupdated = "2001/June/9"
        
        tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
        footer = "Mutopia-2001/06/09-97"
}

% $Id: Uxbridge.ly,v 1.3 2001/06/09 03:56:10 peterc Exp $

% fit onto one page
\include "paper16.ly"

\version "1.3.148"

global=\notes{
	\key d \major
	\time 3/4
	\partial 4
	\repeat unfold 4 {
	\skip 4
	\skip 2.*5
	\skip 2
	\bar "||" \break
	}
}

sop=\notes\relative c'' {
	\autoBeamOff
	a4 |
	fis4. e8 d4 |
	d'4. cis8 b4 |
	b( )a  [a8()g] |
	fis4. g8 a4 |
	b4 [d8()b] [a()fis] |
	fis4()e 

	a4 |
	fis4. e8 d4 |
%8
	d'4. cis8 b4 |
	cis2 
	d4 |
	e4 a, d |
	cis4. d8 b4 |
	a2 

	a4 |
	a4. g8 fis4 |
	a4. b8 c4 |
	b2 

	b4 |
%16
	gis4. fis8 e4 |
	b'4. cis8 d4 |
	cis2 

	a4 |
	fis4. e8 d4 |
	c'4. b8 a4 |
	b2 

	cis4 |
	d d, g |
	fis4. g8 e4 |
	d2
}

alto=\notes\relative c' {
	d4 |
	d4. cis8 d4 |
	d4. d8 d4 |
	d2 

	e4 |
	d4. d8 d4 |
	d4 d d |
	d () cis

	e |
	d4. cis8 d4 |
	e e e |
	e2
	a4 |
	a a fis |
	e fis d |
	cis2

	e4 |
	fis4. d8 d4 |
	d4. d8 d4 |
	d2 

	fis4|
	e4. dis8 e4 |
	e4. e8 e4 |
	e2

	e4 |
	d4. cis8 d4 |
	d4. d8 d4 |
	d2 
	g4 |
	fis d d |
	d4. e8 cis4 |
	d2
}
	

ten=\notes\relative c {
	fis4 |
	a4. g8 a4 |
	b4. a8 g4 |
	g () fis 
	a |
	a4. b8 fis4 |
	g4 g fis |
	a2 

	a4 |
	a4. g8 a4 |
	b a gis |
	a2 

	a4 a a a |
	a a gis |
	a2

	a4 |
	a4. b8 a4 |
	fis4. g8 a4 |
	g2 

	b4 |
	b4. a8 gis4 |
	gis4. a8 b4 |
	a2 

	a4 |
	a4. g8 fis4 |
	a4. g8 fis4 |
	g2 

	a4 |
	a a b |
	a b g |
	fis2
}

bass=\notes\relative c {
	d4 |
	d4. e8 fis4 |
	g4. g8 g4 |
	d2

	cis4 |
	d4. d8 d4 |
	g b, d |
	a2

	cis4 |
	d4. e8 fis4 |
	gis a e |
	a2 

	fis4 |
	cis cis d |
	e d e |
	a,2

	cis4 |
	d4. d8 d4 |
	d4. d8 d4 |
	g2

	dis4 |
	e4. e8 e4 |
	e4. e8 e4 |
	a2 

	cis,4 |
	d4. d8 d4 |
	d4. d8 d4 |
	g2

	e4 |
	d fis, g |
	a g a |
	d2
}


VerseOne=\lyrics {
	A -- way with our sor -- row and fear!
	We soon shall re -- co -- ver our home,
	The ci -- ty of saints shall ap -- pear
	The day of e -- ter -- ni -- ty come:
	From earth we shall quick -- ly re -- move,
	And mount to our na -- tive a -- bode,
	The house of our Fa -- ther a -- bove,
	The pa -- lace of an -- gels and God.
}

VerseTwo = \lyrics {
	Our mourn -- ing is all at an end,
	When, raised by the life -- gi -- ving word,
	We see the new ci -- ty de -- scend,
	A -- dorned as a bride for her Lord;
	The ci -- ty so ho -- ly and clean,
	No sor -- row can breathe in the air;
	No gloom of af -- flic -- tion or sin,
	No sha -- dow of e -- vil is there.
}

VerseThree = \lyrics {
	By faith we al -- rea -- dy be -- hold
	That love -- ly Je -- ru -- sa -- lem here:
	Her walls are of jas -- per and gold,
	As cry -- stal her build -- ings are clear:
	Im -- mov -- ab -- ly found -- ed in grace,
	She stands as she e -- ver hath stood,
	And bright -- ly her Build -- er dis -- plays,
	And flames with the glo -- ry of God.
}

VerseFour = \lyrics {
	No need of the sun in that day,
	Which ne -- ver is fol -- lowed by night,
	Where Je -- sus's _ beau -- ties dis -- play
	A pure and a per -- ma -- nent light:
	The Lamb is their light ands their Sun,
	And lo, by re -- flec -- tion they shine,
	With Je -- sus in -- ef -- fa -- bly one,
	And bright in ef -- ful -- gence di -- vine.
}

Words = \context Lyrics = sop <
	\context LyricsVoice = "sop-1" { 
		\property LyricsVoice . stanza = "1." 
		\VerseOne
	}
	\context LyricsVoice = "sop-2" { 
		\property LyricsVoice . stanza = "2." 
		\VerseTwo
	}
	\context LyricsVoice = "sop-3" { 
		\property LyricsVoice . stanza = "3." 
		\VerseThree
	}
	\context LyricsVoice = "sop-4" { 
		\property LyricsVoice . stanza = "4." 
		\VerseFour
	}
>

upper = \context Staff = "upper" <
	\clef "treble" \property Staff.midiInstrument = "recorder"
	\property Staff.automaticMelismata = ##t
	\global
	\addlyrics
		\context Voice = sop {\voiceOne \sop}
		\Words
	\context Voice = alto {\voiceTwo \alto}
>

lower=\context Staff = "lower" <
	\clef "bass" 
	\property Staff.midiInstrument = "acoustic bass"
	\global
	\context Voice = tenor {\voiceOne \ten}
	\context Voice = bass {\voiceTwo \bass}
>

\score {

	% Transposing down a tone gives a range c' -> d''
	% which is good for mixed-voice untrained singers 
	% (i.e., congregations)
       \notes \transpose bes \context ChoirStaff <
		\upper 
		\lower
	>

	\paper{
%		linewidth = 180.0\mm
		indent = 0.0\pt
		\translator {
		    \StaffContext
		    \remove "Time_signature_engraver"
		}
	}

	\midi {
		\tempo 4 = 180
	}
}
