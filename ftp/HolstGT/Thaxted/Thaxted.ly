\header {
    title = "Thaxted"
    metre = "13 13 13 13 13 13"
    meter=\metre
    composer = "G T Holst (1874--1934)"

    mutopiatitle = "Thaxted"
    source = "Methodist Hymnbook 1933, number 900"
    mutopiacomposer = "HolstGT"
    mutopiainstrument = "Voice and Piano"
    date = "1921"

    style = "Hymn"
    copyright = "Public Domain"
    maintainer = "Peter Chubb"
    maintainerEmail = "mutopia@chubb.wattle.id.au"
    lastupdated = "2005/Jan/09"

    footer = "Mutopia-2005/01/18-527"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

\version "2.4.0"
global={
    \time 3/4
    \key c \major
    \partial 4
    s4 |
    \skip 2.*3
    s2 \bar "||"
    s4 |
    \skip 2.*3
    s2 \bar "||"
    s4 |
    \skip 2.*3
    s2 \bar "||"
    s4 |
    \skip 2.*3
    s2 \bar "||"
    s4 |
    \skip 2.*3
    s2 \bar "||"
    s4 |
    \skip 2.*3
    s2 \bar "||"
}

guitar=\chordmode {
    c4 |
    f f d:m |
    c c c |
    f f g |
    a:m a:m 

    g |
    f f d:m |
    c c c |
    f f f |
    c c

    c/e |
    g g a:m |
    g/+b g/+b c/+e |
    g g c |
    f f/+e 

    d:m |
    a:m c/+g f |
    c/+e d:m7 c |
    f d:m a:m/+c |
    g/+b a:m7

    g |
    f f g:7/+b |
    c/+e c e:m |
    f f g|
    a:m a:m 

    g |
    f f g:7/+d |
    c/+e c c |
    f f d:m/+f |
    c c
}


tune=\relative c'{
    e8( g) |
    a4. c8     b8. g16 |
    c8( d) c4 b |
    a8 b a4 g |
    e2 

    e8( g) |
    a4. c8 b8. g16 |
    c8( d) e4 e |
    e8 d c4 d |
    c2 

    g8( e) |
    d4. d8 c e |
    d4 g g8( e) |
    d4. d8 e g |
    a2 

    a8( b) c8. c16 b4 a |
    g c e, |
    d8 c d4 e |
    g2 

    e8( g) a4. c8 b8. g16 |
    c8( d) c4 b |
    a8 b a4 g |
    e2 

    e8 ( g) |
    a4. c8 b8. g16 |
    c8 d e4 e 
    e8 d c4 d |
    c2
}


RHpartOne=\relative c'{
    c4 |
    <c f> r <b f'>|
    <c g'> r <c g'> |
    <c f> r <b d> |
    c2 

    b4 |
    <c f> r <b f'>|
    <c g'> r <g' c> |
    <f a>2 <f a>4 |
    <e g>2
}

RHpartTwo=\relative c' {
    c4 |
    <b g>2 r4 |
    g2 c4 |
    b2 c4 |
    <c f>2

    <d f>4 |
    c4 <c e> <c f> |
    c <c f> c |
    a s a |
    d c 
}

LH=\relative c {
    <c c,>4 |
    <f f,> r <d d,> |
    <e e,> r <e e,> |
    <f f,> r <g g,> |
    <a a,>2 

    <g g,>4 |
    <f f,> r <d d,> |
    <e e,> r <c c,>8 <e e,> |
    <f f,>2 <f f,>4 |
    <c c,>2
    <e, e,>4 |
    <g g,>2 <a a,>4 |
    <b b,>2 <e, e,>4 |
    <g g,>2 <c c,>4 |
    <f f,>4 <e e,>

    <d d,> |
    <a' a,>4 <g g,> <f f,> |
    <e e,> <d d,> <c c,> |
    <f f,> <d d,> <c c,> |
    <b b,> <a a,>

    <g g,> |
    <f f,> r <d d,> |
    <e e,> r <e e,> |
    <f f,> r <g g,> |
    <a a,>2 
    <g g,>4 |
    <f f,> r <d' d,> |
    <e e,> r <c c, >8 <e e,> |
    <f f,>2 <f f,>4 |
    <c c,>2
}

\score {
    \transpose c' bes \context ChoirStaff <<
	\context ChordNames { 
	    \set midiInstrument = "acoustic guitar (nylon)"
	    \set chordChanges = ##t 
	    \override ChordName   #'style = #`banter
	    \guitar }
	\context Staff = "upper" <<
		\global
		\context Voice = "sop" { \voiceOne \tune}
		\context Voice = "accomp" { 
		    \set Staff.midiInstrument = "violin"
		    \voiceTwo \RHpartOne \RHpartTwo \RHpartOne
		  }
		>>	
	\context Staff = "lower" <<
	    \set Staff.midiInstrument = "orchestral strings"
		\clef "F" \global
		\LH
		>>
    >>
	\layout{
		indent = 0.0\mm
	}
	\midi {
		\tempo 4=100
	}
}

