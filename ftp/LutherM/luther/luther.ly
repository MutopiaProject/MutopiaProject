\header{
	title = "Luther"
	meter = "8.7. 8.7. 8 8.7."
	enteredby = "Peter Chubb"
	source = "Methodist Hymnbook 1904, number 846"
	mutopiacomposer = "Attributed to M. Luther (1483--1546)"

	date = "1535"
	style = "Hymn"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "peter_chubb@hotmail.com"
	lastupdated = "2002/Feb/26"

        tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
        footer = "Mutopia-2002/02/26-201"
}


%{ 
Traditionally sung to `Great God, What do I see and hear?' translated by Rev. B. Collyer and others (1802 for verse 1, 1812 for verses 2--4) 
%}

\version "1.4.0"

global=\context Thread=timing\notes{
	\property Staff.autoBeamSettings \override #'(end * * * *) = #(make-moment 1 4)
	\key g \major
	\time 4/4
	\partial 4
	s4 |
	\skip 1*3 |
	s2 s4
	\bar "||"
	s4 |
	\skip 1*3 |
	s2 s4 \bar "||"
	s4 |
	\skip 1*3
	s2 s4 \bar "||"
	s4 |
	s1 |
	s2 s4-\fermata
	\bar "||"
}

sopA=\notes\relative c''{
	g4 |
	g b a g |
	a a b
}
sopB=\notes\relative c''{
	g |
	b c d b |
	a2 g4
}
sop= \notes\relative c'' {
	\sopA
	\sopB
	\sopA
	\sopB
	b4 |
	c b a g |
	fis g a 

	b |
	g fis g d |
	g a b

	\sopB
}
altA=\notes\relative c' {
	d4 |
	d g fis g |
	g fis g
}
altB=\notes\relative c'{
	d4 |
	d g fis g |
	g () fis g
}
alt=\notes\relative c' {
	\altA
	\altB
	\altA
	\altB
	g4 |
	g g fis e |
	dis e fis d |
	d c d d |
	b8()g' fis()e dis4
	\altB
}

tenA=\notes\relative c' {
	b4 |
	g d' d b |
	e d d
}
ten=\notes\relative c' {
	\tenA
	b4  |
	d g, a g |
	e'( d8 )c b4
	\tenA
	d8()c |
	b()a g4 a g |
	e'4( d8)c b4

	d4 |
	e d d b |
	b b d! d |
	b c b b8()a |
	g4 e fis

	e8()fis |
	g4 g d'4. e8 |
	a,4( d8 )c b4
}

bassA=\notes\relative c{
	g4 |
	b g d' e |
	c d g
}
bass=\notes\relative c{
	\bassA
	g4 |
	g e d e |
	c()d g

	\bassA
	b8()a |
	g()fis e4 d e |
	c()d g4

	g |
	e b8()c d4 e |
	b e d g
	b a g g8()fis |
	e4 c d 

	c |
	g d' b4. c8 |
	d2 g4

}

upper=\context Staff = "upper" <
	\clef "treble"
	\global
	\context Voice = sop {\voiceOne \sop}
	\context Voice = alto {\voiceTwo \alt}
>

lower=\context Staff = "lower" <
	\clef "bass"
	\global
	\context Voice = tenor {\voiceOne \ten}
	\context Voice = bass {\voiceTwo \bass}
>

\score {
       \context ChoirStaff <
		\upper
		\lower
	>
	\paper{
		indent = 0.0\pt
		\translator {
		    \StaffContext
		    \remove "Time_signature_engraver"
		}
	}
	\midi {
		\tempo 4 = 120
	}
}
	

