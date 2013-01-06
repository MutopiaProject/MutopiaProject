\header {
	title = "Diadem"
	metre = "C.M. (extended)"
	meter = \metre
	composer = "J. Ellor (1819-1899)"
	enteredBy = "Peter Chubb"

	mutopiatitle = "Diadem"
	mutopiacomposer = "EllorJ"
	mutopiainstrument = "Voice (SATB)"
	style = "Hymn"
	copyright = "Public Domain"
        source = "Unknown"
	maintainerEmail = "peter_chubb@hotmail.com"
	maintainer = "Peter Chubb"

 footer = "Mutopia-2013/01/06-188"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


\version "2.16.1"

global={
        \set Staff.autoBeaming = ##f
	\key bes \major
	\time 3/4
	\partial 4
	s4 |
	\skip 2.*8 |
	s2 \bar "||"

	s4 |
	\skip 2.*13 |
	s2 \bar "||"
}

sop=\relative c' {
	f4 |
	bes2 c4 |
	 d8.[( es16]  f4) bes, |
	c4(  bes) a | bes2

	 a8[( g)] |
	f4. f8 f f |
	d4( f) bes |
	g( es') es |
	d2 c4 |
	bes2

	 bes8[( c)] d2 d4 |
	d4( c) bes |
	c( bes)  a |
	 bes8.[(c16]  d4) \breathe

	f4 |
	es4.(  d8[ c es] |
	d4.  c8[ bes d] |
	c4.  bes8[ a c] |
	 bes4) bes r4 |
	es es r4 |
	c c r4 |
	d d f |
	 bes,8.[( c16]  d4) c |
	bes2 a4 |
	bes2
}

alto=\relative c' {
	d4 |
	f2 f4 |
	f2 g4 |
	g( f) es |
	d2

	 f8[( es)] |
	d4. d8 d d |
	d2 f4 |
	es( g) g |
	f2 es4 |
	d2

	 d8[( es)] f2 f4|
	fis2 g4 |
	g( f) es |
	 d8.[( es16]  f4) \breathe
	as |
	g4.(  f8[ es g ]|
	f4.  es8[ d f]|
	es4.  d8[ c es]|
	 d4) d s4 |
	g g s |
	f f s |
	f f f|
	f2 es4 |
	d2 c4 |
	d2
}

bass=\relative c {
	bes4 |
	bes( d) f |
	bes2 g4 |
	es( f) f |
%5
	bes,2

	bes4 |
	bes4. bes8 bes bes |
	bes2 d4 |
	es2 c4 |
	f2 f4 |
%10
	bes,2

	bes4 |
	bes'2 bes4 |
	a2 g4 |
	es4( f) f |
	bes,2 \breathe

	bes'4 |
%15
	es,4 es r |
	bes bes r |
	f' f r |
	bes4.(  a8[ g f] |
	es4.  d8[ c bes] |
%20
	f'4.  g8[ a f] |
	 bes4) bes bes |
	bes2 es,4 |
	f2 f4 |
	bes,2
}



tenor=\relative c' {
	bes4 |
	d( bes) a |
	 bes8.[( c16]  d4) d |
	es4(  d) c |
	bes2 \breathe
	bes4 |
	bes4. bes8 bes bes |
	bes2 bes4 |
	bes2 bes4 |
	bes2 a4 |
	bes2

	bes4 |
	bes2 bes4 |
	d2 d4 |
	es( d) c |
	bes2 \breathe
	d4 |
	es4 bes s4 |
	bes bes s |
	a a s |
	bes bes r |
	bes bes r |
	a a r |
	bes bes d |
	 d8.[( c16]  bes4)  g |
	f2 f4 |
	f2
}


\score {
    \context ChoirStaff <<
	\context Staff = "upper" <<
	    \global
	    \context Voice = "sop" { \voiceOne \sop}
	    \context Voice = "alto" { \voiceTwo \alto}
	>>
	\context Staff = "lower" <<
	    \clef "F" \global
	    \context Voice = "tenor" { \voiceOne \tenor}
	    \context Voice=bass{ \voiceTwo \bass}
	>>
    >>

    \layout{
	indent = 0.0\mm
    }

    
  \midi {
    \tempo 4 = 120
    }


}
