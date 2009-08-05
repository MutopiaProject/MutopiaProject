\header {
    filename = "ode.ly"
    enteredby = "Peter Chubb"
    composer = "L. V. Beethoven (1770--1827)"
    date = "c. 1800"
    title = "Ode to Joy"
    metre = "8 7 8 7 D"
    meter = "8 7 8 7 D"


    title = "Ode to Joy"
    mutopiacomposer = "BeethovenLv"
    mutopiainstrument = "Voice (SATB)"

    style = "Hymn"
    source = "Various"
    copyright = "Public Domain"
    maintainer = "Peter Chubb"
    maintainerEmail = "mutopia@chubb.wattle.id.au"
    lastupdated = "2009/Aug/5"
 footer = "Mutopia-2009/08/05-528"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.12.0"

sop =  \transpose c c'{
	\voiceOne
	b4 b c' d' | d' c' b a | g g a b | b4. a8 a2 \bar "||"
	b4 b c' d' | d' c' b a | g g a b | a4. g8 g2 \bar "||"	
	a4 a b g | a  b8[( c']) b4 g | a  b8[( c']) b4 a | g a d2 \bar "||"
	b4 b c' d' | d' c' b a | g g a b | a4. g8 g2 |
}

alto =  \transpose c c'{
	\voiceTwo
	g4 g a g | g4. a8 g4 fis | d d fis g| g4. fis8 fis2 |
	g4 g a g | g4. a8 g4 fis | d d fis g| g4 fis d2 |
	d4 d d d | d d d d | d d fis fis | e cis d2 |
	d4 g a a b  g8[( a]) g4 e | e d fis g |g fis g2 |
}

tenor = {
	\voiceOne
	d'4 d' c' b | e'4. d'8 d'4 d' | b b d' d' | d'4. d'8 d'2 \bar "||"
	d'4 d' c' b | e'4. d'8 d'4 d' | b b d' d' | d'4 d' b2 \bar "||"
	fis4 fis g  e | fis  g8[( a8]) g4 e | fis fis fis b | b a g( fis) \bar "||"
	g4 d' f' f' | g'4. d'8 d'4 c' | g g c' d' | d' d' b2
}
bass = {
      \voiceTwo
      g4 g g g | e4. fis8 g4 d | b b a g | d4. d8 d2 |
      g4 g g g | e4. fis8 g4 d | b b a g | d d g,2 |
      d4 d d d | d d d d | d d dis dis | e a, d2 |
      g4 g f f  | e4. fis8 g4 c | c b, a, g, | d d g,2 |
}


global = {
	\time 4/4
	\key g \major
	\tempo 4=100
	\skip 1*16
	\bar "|."
}

upperStaff = \context Staff = upper<< 
	\global
	\clef "G"
	  <<
	   \context Voice = "sop"    \sop
	   \context Voice = "alto" \alto
	  >>
>>

lowerStaff = \context Staff = lower<<
	\global
	\clef "F"
	<<
	    \context Voice = "tenor" \tenor
	    \context Voice = "bass" \bass
	>>
>>
\score{
 %\transpose bes c'
	<<
		\upperStaff
		\lowerStaff
	>>

	\layout {
	  indent = 0.0\mm
	}

	\midi {
	}
}

