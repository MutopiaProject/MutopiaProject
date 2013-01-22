\header{
	title = "Luther"
	meter = "8.7. 8.7. 8 8.7."
	enteredby = "Peter Chubb"
	source = "Methodist Hymnbook 1904, number 846"

	% Attributed to M. Luther (1483--1546)
	mutopiacomposer = "LutherM"
	mutopiainstrument = "Voice (SATB)"

	date = "1535"
	style = "Hymn"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"

 footer = "Mutopia-2013/01/22-201"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


%{ 
Traditionally sung to `Great God, What do I see and hear?' translated by Rev. B. Collyer and others (1802 for verse 1, 1812 for verses 2--4) 
%}

\version "2.16.1"

global={
	\key g \major
	\time 4/4
	\partial 4
	s4 |
	s1*3 |
	s2 s4
	\bar "||"
	s4 |
	s1*3 |
	s2 s4 \bar "||"
	s4 |
	s1*3
	s2 s4 \bar "||"
	s4 |
	s1 |
	s2 s4
	\bar "||"
}

sopA=\relative c''{
	g4 |
	g b a g |
	a a b
}
sopB=\relative c''{
	g |
	b c d b |
	a2 g4
}
sop= \relative c'' {
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
altA=\relative c' {
	d4 |
	d g fis g |
	g fis g
}
altB=\relative c'{
	d4 |
	d g fis g |
	g ( fis) g
}
alt=\relative c'' {
	\altA
	\altB
	\altA
	\altB
	g4 |
	g g fis e |
	dis e fis d |
	d c d d |
	b8([ g')] fis( e) dis4
	<<\altB {s4 | s1 | s2 s4\fermata}>>
}

tenA=\relative c' {
	b4 |
	g d' d b |
	e d d
}
ten=\relative c' {
	\tenA
	b4  |
	d g, a g |
	e'( d8  c) b4
	\tenA
	d8( c) |
	b( a) g4 a g |
	e'4( d8 c) b4

	d4 |
	e d d b |
	b b d! d |
	b c b b8( a) |
	g4 e fis

	e8( fis) |
	g4 g d'4. e8 |
	a,4( d8  c) b4
}

bassA=\relative c{
	g4 |
	b g d' e |
	c d g
}
bass=\relative c'{
	\bassA
	g4 |
	g e d e |
	c( d) g

	\bassA
	b8( a) |
	g( fis) e4 d e |
	c( d) g4

	g |
	e b8( c) d4 e |
	b e d g
	b a g g8( fis) |
	e4 c d 

	c |
	g d' b4. c8 |
	d2 g4\fermata

}

upper=\new Staff = "upper" <<
	\clef "treble"
	\global
	\new Voice = "sop" {\voiceOne \sop}
	\new Voice = "alto" {\voiceTwo \alt}
>>

lower=\new Staff = "lower" <<
	\clef "bass"
	\global
	\new Voice = "tenor" {\voiceOne \ten}
	\new Voice = "bass" {\voiceTwo \bass}
>>

\score {
       \new ChoirStaff <<
		\upper
		\lower
	>>
	\layout{
		indent = 0.0\pt
		\context {
		    \Staff
		    \remove "Time_signature_engraver"
		}
	}
	
  \midi {
    \tempo 4 = 120
    }


}
	

