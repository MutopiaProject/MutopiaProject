\header {
	filename = "bonne_heure-song.ly"
	enteredby = "Peter Chubb"
	composer = "Anonymous\\\\ c.1470"
	year = "c. 1470"
	title = "Il Est de Bonne Heure N\\'e"
	mutopiatitle = "Il Est de Bonne Heure N&eeq;"
	mutopiacomposer = "Anonymous"
	maintainer="Peter Chubb"
	maintainerEmail="mutopia@chubb.wattle.id.au"
	style="Renaissance"
	lastupdated="2004/Apr/24"
	copyright = "Public Domain"
	
	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
	footer = "Mutopia-2004/04/24-198"
}

%{
	I found this as a recorder arrangement for descant, treble,
	tenor and bass, in a 1937 Schott edition.
	I've changed the pitches to suit voice, added phrase marks,
	fitted words to the music (the edition I worked from had
	the words only on the tenor part), and added a translation
	(courtesy of Francois Montagner).
%}

%{
	$Log: bonne_heure-song.ly,v $
	Revision 1.6  2004/04/24 10:28:10  peterc
	Updated to Lilypond 2.2; fixed translation printout.
	
	Revision 1.5  2002/02/28 22:20:52  peterc
	Added copyright. Sent to Mutopia.
	
	Revision 1.4  2002/02/28 22:17:27  peterc
	Fiddled translation to fit;
	
	Revision 1.3  2002/02/24 09:17:33  peterc
	Updated to current LilyPond; added MIDI output.
	
%}

%{

He was born at a lucky time,
He who holds his lady in a field
Upon the sweet grass.

My sweetest friend,
God grant you good-day,
What is in your mind,
Please tell me what !

Faith, my dear friends,
I have thought it all over,
I do not love you a bit.

%}

\version "2.2.0"


#(set-global-staff-size 16)

global = \notes {
	\key a \minor
	\time 2/2
	\partial 2
	\skip 2*13
	\time 3/2
	\skip 1*1
	\bar "||"
	\skip 2*1
	\time 2/2
	\skip 2*6
	\time 3/2
	\skip 2*3
	\time 2/2
	\skip 2*19
	\bar "||"
}


sopOne= \notes\relative c'' {
	\bar "" \tempo 2=100
	\partial 2
	a4 a |
	b b c c |
	b2 \breathe a4 a|
	b b c c |
	b 2 \breathe e4 e |
%5
	d4.(  b8) c4( b~ |
	 b8[  a)] a2(  gis4) |
	a1^" Fine" 
}
sopTwo=\notes\relative c'' {
	c4 c |
	b2 a |
	b4 c d c |
%10
	a(  e'2) d4 |
	c1 \breathe c4 c |
	b2 a |
	b c4 d |
	c4(  b8[  a)] gis2 |
%15
	a \breathe c4 c |
	b b a a |
	b2 \breathe c4 c |
	 d8[ d d d ] c4.(  b16[ a] |
	 g4) g b b |
%20
	c e2 d4 |
	c2^"D.C. al Fine"
}

soprano = \notes{\sopOne\sopTwo}

altoOne = \notes\relative c'' {
        \partial 2
	e4 e |
	g g a a |
	e2 \breathe e4 e |
	g g a a |
%5
	e2 \breathe e4 e |
	g g a( e |
	a  f) e2~ |
	e1 
}
altoTwo=\notes\relative c''' {
	a4 a |
	g2 e |
%10
	b4 a b c |
	d(  a) b2 |
	e1 \breathe a4 a |
	e2 e |
	d e4 d |
%15
	e2 e |
	e \breathe a4 a|
	e e e e |
	g2 \breathe a4 a |
	g g a a |
%20
	b b  g e |
	a a gis4.(  fis8) |
	a2
}

alto = \notes {\altoOne\altoTwo}

tenorOne = \notes\relative c' {
	\partial 2
	r2 |
	r2 a4 a |
	b b c c |	
	b2 \breathe a4 a |
	b b c c |
%5
	b2 \breathe e4 e |
	c a b2 |
	a1
}
tenorTwo=\notes\relative c' {
	a4 a |
	b2 c |
	d4 c b a |
%10
	a2 gis |
	a1 \breathe a4 a |
	b2 c |
	d c4 b |
	a2 b | 
%15
	a \breathe a4 a |
	b b c c |
	b2 \breathe  a4 a |
	b b c c |   
	b b e e |
%20
	c a b2 |
	a2
}

tenor = \notes {\tenorOne\tenorTwo}

bassOne = \notes\relative c' {
	\clef "bass"
	\partial 2
	a4 a |
	e e a, a|
	e'2 \breathe a4 a |
	e e a, a |
%5
	e'2 \breathe c4 a |
	b2 a4 e'( |
	f a  e2) |
	a,1
}
bassTwo=\notes\relative c {
	a4 a |
	e'2 a |
%10
	g4 a g a |
	d,(  c) b2 |
	a1 \breathe a4 a |
	e'2 c |
	b a4 b |
	c( a) e'2 |
%15
	a, \breathe a4 a |
	e' e c a |
	e'2 \breathe c4 c |
	 b8[ b b b] a2 |
	e'4 e e e |
%20
	a, a(  e'2) |
	a,2
}

bass=\notes {\bassOne\bassTwo}

sopWords = \lyrics{
	\partial 2
	Il4 est | de bonne heu -- re |
	n\'e,2 Qui4 tient |
	sa dame en un |
	pr\'e,2 Sur4 l'her -- |
	be4. __ _8 jo2*3/2 -- li2*3/2 -- | e.1
	Ma4 tr\`es douce2 a -- |
	mi4 -- e, Dieu vous |
	doint2*3/2 bon4 |
	jour,1 Qu'a4 -- vez |
	en2 pen -- | s\'e, di4 -- tes |
	qu'a2 -- vez | vous, Par4 ma |
	foy mon bel a -- | my,2 Le4 con -- |
	seil8 en est tout
	pris,2 __ | _4 Je4 ne vous | ai -- me2 
	mi-4 __ | e.2
}

altWords = \lyrics{
	\partial 2
	Il4 est | de bonne heu -- re |
	n\'e,2 Qui4 tient |
	sa dame en un |
	pr\'e,2 Sur4 l'her -- |
	be4 jo -- li1 -- e.1 __ _2
	Ma4 tr\`es douce2 a -- |
	mi4 -- e, Dieu vous |
	doint2 bon2 |
	jour,1 Qu'a4 -- vez |
	en2 pen -- | s\'e, di4 -- tes |
	qu'a2 -- vez | vous, Par4 ma |
	foy mon bel a -- | my,2 Le4 con -- |
	seil4 en est tout
	pris,4 Je4 ne vous ai -- me 
	mi2 -- e.2
}

tenorWords = \lyrics{
	\partial 2
	""2 | ""2 Il4 est | de bonne heu -- re |
	n\'e,2 Qui4 tient |
	sa dame en un |
	pr\'e,2 Sur4 l'her -- |
	be jo -- li2 -- | e.1
	Ma4 tr\`es douce2 a -- |
	mi4 -- e, Dieu vous |
	doint2 bon |
	jour,1 Qu'a4 -- vez |
	en2 pen -- | s\'e, di4 -- tes |
	qu'a2 -- vez | vous, Par4 ma |
	foy mon bel a -- | my,2 Le4 con -- |
	seil en est tout |
	pris, Je ne vous | ai -- me 
	mi2 -- | e.
}

bassWords = \lyrics{
	\partial 2
	Il4 est | de bonne heu -- re |
	n\'e,2 Qui4 tient |
	sa dame en un |
	pr\'e,2 Sur4 l'her -- |
	be2 jo4 -- li1 -- _4| e.1
	Ma4 tr\`es douce2 a -- |
	mi4 -- e, Dieu vous |
	doint2 bon2 |
	jour,1 Qu'a4 -- vez |
	en2 pen -- | s\'e, di4 -- tes |
	qu'a2 -- vez | vous, Par4 ma |
	foy mon bel a -- | my,2 Le4 con -- |
	seil8 en est tout
	pris,2 Je4 ne vous ai -- me 
	mi2. -- e.2
}

sopstaff = \context Staff ="Soprano" <<
	\set Staff.instrument = "S"
	\global
	\soprano
	\context Lyrics="Soprano" \sopWords
>>

altstaff = \context Staff ="Alto" <<
	\set Staff.instrument = "A"
	\global
	\notes \transpose c' c \alto
	\context Lyrics="Alto" \altWords
>>

tenstaff = \context Staff="tenor" <<
	\set Staff.instrument = "T"
	\clef "G_8"
	\global
	\tenor
	\context Lyrics="tenor" \tenorWords
>>

bassstaff = \context Staff="bass" <<
	\set Staff.instrument = "B"
	\global
	\bass
	\context Lyrics="bass" \bassWords
>>

% This prints out the full score, for singing to.
\score {
	\context ChoirStaff <<
		\sopstaff
		\altstaff
		\tenstaff
		\bassstaff
	>>
	\paper{
		\paperSixteen
		indent = 0.0\mm
	}
}

translation = \lyrics {
    << 
	\new Lyrics { "He was born at a lucky time,"}
	\new Lyrics { "He who holds his lady in a field" }
	\new Lyrics { "Upon the sweet grass." }
    >>
    <<
	\new Lyrics { "My sweetest friend," }
	\new Lyrics { "God grant you good-day," }
	\new Lyrics { "What is in your mind," }
	\new Lyrics { "Please tell me what !" }
    >>

    <<
	\new Lyrics { "Faith, my dear friend,"}
	\new Lyrics { "I have thought it all over," }
	\new Lyrics { "I do not love you a bit." }
    >>
}

% First print out a practicestaff, then a translation.
\score {

	\new GrandStaff \with { fontSize = #-4 \override StaffSymbol #'staff-space = #(magstep -4)
} <<
		\context Staff ="RH"<<
			\global
			\context Voice=sop {\voiceOne\soprano}
			\context Voice=alt \notes {\transpose c' c {\voiceTwo\alto}}
		>>
		\context Staff ="LH" <<
			\clef "bass"
			\global
			\context Voice=tenor \notes {\voiceOne\tenor}
			\context Voice=bass  {\voiceTwo\bass}
		>>
	>>
	\header { piece = "\it Piano Practice Staff"}
	\paper{

	    indent = 0.0\mm
	}
}


\score {
	\translation
	\header { piece = "\\it Translation\\\\"}
	\paper{ 
		\paperSixteen
		indent = 0.0\pt
		linewidth = 10.0\cm
		\context{
			\ScoreContext
			\remove "Bar_number_engraver"
		}
	}
}

% For MIDI output
\score {
	\context StaffGroup <<
		\global
		\context Staff=sop \notes{\sopOne\sopTwo\sopOne}
		\context Staff=alt \notes {\altoOne\altoTwo\altoOne}
		\context Staff=tenor \notes \transpose c' c  {\tenorOne\tenorTwo\tenorOne}
		\context Staff=bass \notes{\bassOne\bassTwo\bassOne}
	>>
	\midi {
	}
}
