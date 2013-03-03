\version "2.16.1"

\header {
	title = "Love Divine"
	composer = "J. Stainer"
	date = "1889"

	mutopiatitle = "Love Divine"
	mutopiacomposer = "StainerJ"
	mutopiainstrument = "Voice (SATB)"
	style = "Hymn"
	source = "Unknown"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"

 footer = "Mutopia-2013/03/03-193"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

% $Log: LoveDivine.ly,v $
% Revision 1.2  2002/02/27 01:00:56  peterc
% Added mutopia headers and log.
%
\paper {
  % this adds space between composer and the first staff
  markup-system-spacing #'padding = #4
}

global =
{
	\key g \major
	\time 4/4
	\partial 2
}

sop=\relative c'  {
	\slurUp \tieUp
	g'4 g |
	 g8[( a)] b4 a g |
	fis d \bar "||"
	g4 d' |
	d cis d b |
	a2 \bar "||"

	a4 a |
	 a8[ ( b)] c4 b a |
	g e \bar "||"
	b'4 a |
	g d e fis |
	g2 \bar "|."
}

alto= \relative c'{
	d4 dis |
	e b e e |
	d d \bar "||"
	d g |
	g g g g |
	g( fis) \bar "||"

	fis f! |
	e e dis fis |
	e e \bar "||"
	e e | d d d c |
	b2
}

tenor=\relative c' {
	b4 b |
	b g a  c8[( b)] |
	a4 fis \bar "||"
	g  b8[( d)] |
	d4 e d d |
	d2 \bar "||"

	d4 a |
	a  a8[( g)] fis4 b |
	b g \bar "||"
	g c |
	c b b a |
	g2
}

bass=\relative c' {
	g4 fis |
	e4  e8[( d)] c4 a |
	d  d8[( c)] \bar "||"
	b4 b' |
	b ais b g |
	d2 \bar "||"

	d4 d |
	c a b dis |
	e  e8[( d)] \bar "||"
	c4 c |
	d d d d |
	g2
}

accomp=\chordmode{
	\partial 2
	g4 b/fis |
	e4:m e:m a:m/+c a:m7 |
	d4 d:7

	g4/b g/b |
	g4/b g:dim/ais g/b g |
	d:sus4 d

	d4 d:m |
	a4:m/c a:m b b:7/dis % < dis b  fis a>  |
	e4:m e:m

	c4:7+  a:m/c |
	g4:sus4/d d:6^7 d:6.9^7 d:7
	g2
}

\score {
	 \transpose c c <<
	\context ChordNames  { \time 4/4 \accomp }
	\context ChoirStaff <<
		\context Staff = "top" << \global
			\set Staff.midiInstrument = "choir aahs"
			\context Voice = "sop" {\voiceOne \sop}
			\context Voice = "alto" {\voiceTwo \alto}
		>>
		\context Staff = "bottom" << \clef "bass" \global
			\set Staff.midiInstrument = "voice oohs"
			\context Voice = "tenor" {\voiceOne \tenor}
			\context Voice = "bass" {\voiceTwo \bass}
		>>
	>>
	>>
	\layout{
	   indent = 0.0\pt
	}

  \midi {
    \tempo 4 = 100
    }

}
