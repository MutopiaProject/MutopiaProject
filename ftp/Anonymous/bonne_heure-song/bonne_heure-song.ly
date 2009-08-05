\header {
	filename = "bonne_heure-song.ly"
	enteredby = "Peter Chubb"
	composer = \markup {\column {Anonymous}{ c.1470}}
	year = "c. 1470"
	title = "Il Est de Bonne Heure Né"
	mutopiatitle = "Il Est de Bonne Heure Né"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	mutopiadate = "c. 1470"
	maintainer="Peter Chubb"
	maintainerEmail="mutopia@chubb.wattle.id.au"
	style="Renaissance"
	lastupdated="2009/Aug/5"
	copyright = "Public Domain"
	source = "Unknown"

 footer = "Mutopia-2009/08/05-198"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
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
	Revision 1.8  2009-08-05 09:23:14  peterc
	Updated to 2.12.2.  New \lyricsto allowed simpler score; but had to
	convert from TeX-style accents to UTF.  Hope it all worked!

	Revision 1.7  2004-04-24 21:48:29  peterc
	Changed version to 2.2.0

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

\version "2.12.0"


#(set-global-staff-size 18)

global =  {
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT  
	\key a \minor
	\time 2/2
	\partial 2
	\skip 2*13
	\time 3/2
	\skip 1*1
	\mark \markup {\italic {"Fine"}}
	\bar "||"
	\skip 2*1
	\time 2/2
	\skip 2*6
	\time 3/2
	\skip 2*3
	\time 2/2
	\skip 2*19
	\bar "||"
	\mark \markup {\italic {"D.C. al Fine"}}
}


sopOne= \relative c'' {
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
	a1
}
sopTwo=\relative c'' {
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
	c2

}

soprano = {\sopOne\sopTwo}

altoOne = \relative c'' {
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
altoTwo=\relative c''' {
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

alto =  {\altoOne\altoTwo}

tenorOne = \relative c' {
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
tenorTwo=\relative c' {
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

tenor =  {\tenorOne\tenorTwo}

bassOne = \relative c' {
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
bassTwo=\relative c {
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

bass= {\bassOne\bassTwo}

words = \lyrics {
	Il est de bonne heu -- re né, 
	Qui tient sa dame en un pré, 
	Sur l'her -- be __  jo -- li --  e
	Ma trés douce a -- mi -- e, 
	Dieu vous doint bon -- 	jour, 
	Qu'a -- vez en pen --  sé, 
	di -- tes qu'a -- vez  vous, 
	Par ma 	foy mon bel a --  my, 
	Le con -- seil en est tout pris, __ 
	Je ne vous  ai -- me mi --  e.
}

sopstaff = \context Staff ="Soprano" <<
	\set Staff.instrumentName = "S"
	\global
	\context Voice = sop \soprano
	\lyricsto sop \words
>>

altstaff = \context Staff ="Alto" <<
	\set Staff.instrumentName = "A"
	\global
	 \transpose c' c \context Voice = alto \alto
	\lyricsto alto \words
>>

tenstaff = \context Staff="tenor" <<
	\set Staff.instrumentName = "T"
	\clef "G_8"
	\global
	\context Voice = tenor \tenor
	\lyricsto tenor \words
>>

bassstaff = \context Staff="bass" <<
	\set Staff.instrumentName = "B"
	\global
	\context Voice = bass \bass
	\lyricsto bass \words
>>

% This prints out the full score, for singing to.
\score {
	\context ChoirStaff <<
		\sopstaff
		\altstaff
		\tenstaff
		\bassstaff
	>>
	\layout {
		indent = 0.0\mm
      }
}

translation = \lyricmode {
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

	\new GrandStaff \with { fontSize = #-2 \override StaffSymbol #'staff-space = #(magstep -2)
} <<
		\context Staff ="RH"<<
			\global
			\context Voice = "sop" {\voiceOne\soprano}
			\context Voice = "alt"  {\transpose c' c {\voiceTwo\alto}}
		>>
		\context Staff ="LH" <<
			\clef "bass"
			\global
			\context Voice = "tenor"  {\voiceOne\tenor}
			\context Voice = "bass"  {\voiceTwo\bass}
		>>
	>>
	\header { piece = \markup { \italic {Piano Practice Staff}}}

	\layout{
	    indent = 0.0\mm
	}
}


\score {
	\translation
	\header { piece = \markup \column {\line { \italic \bold { Translation}}
					   \line {Courtesy of Francois Montagner}}
}
	\layout{ 
		indent = 0.0\pt
		line-width = 10.0\cm
		\context{
			\Score
			\remove "Bar_number_engraver"
		}
	}
}

% For MIDI output
\score {
	\context StaffGroup <<
		\global
		\context Staff = "sop" {\sopOne\sopTwo\sopOne}
		\context Staff = "alt"  {\altoOne\altoTwo\altoOne}
		\context Staff = "tenor"  \transpose c' c  {\tenorOne\tenorTwo\tenorOne}
		\context Staff = "bass" {\bassOne\bassTwo\bassOne}
	>>
	\midi {
	}
}
