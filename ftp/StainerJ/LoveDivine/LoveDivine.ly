\header {
	title = "Love Divine"
	composer = "J. Stainer"
	date = "1889"
	
	mutopiatitle = "Love Divine"
	mutopiacomposer = "J. Stainer (1840--1901)"
	mutopiainstrument = "Voice (SATB)"
	style = "Hymn"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	lastupdated = "2002/Feb/26"

        tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
        footer = "Mutopia-2002/02/26-193"
}

% $Log: LoveDivine.ly,v $
% Revision 1.2  2002/02/27 01:00:56  peterc
% Added mutopia headers and log.
%

\version "1.4.0"

global =\notes
{
	\key g \major
	\time 4/4
	\partial 2
}

sop=\notes\relative c'  {
	\slurUp \tieUp
	g'4 g |
	[g8()a] b4 a g |
	fis d \bar "||"
	g4 d' |
	d cis d b |
	a2 \bar "||"
	
	a4 a |
	[a8 () b] c4 b a |
	g e \bar "||"
	b'4 a |
	g d e fis |
	g2 \bar "|."
}

alto=\notes \relative c'{
	d4 dis |
	e b e e |
	d d \bar "||"
	d g |
	g g g g | 
	g()fis \bar "||"

	fis f! |
	e e dis fis |
	e e \bar "||"
	e e | d d d c |
	b2 
}

tenor=\notes\relative c' {
	b4 b |
	b g a [c8()b] |
	a4 fis \bar "||"
	g [b8()d] |
	d4 e d d |
	d2 \bar "||"

	d4 a |
	a [a8()g] fis4 b |
	b g \bar "||"
	g c | 
	c b b a |
	g2
}

bass=\notes\relative c' {
	g4 fis |
	e4 [e8()d] c4 a |
	d [d8()c] \bar "||"
	b4 b' | 
	b ais b g |
	d2 \bar "||"

	d4 d |
	c a b dis |
	e [e8()d] \bar "||"
	c4 c |
	d d d d |
	g2
}

accomp=\chords{
	\partial 2
	g4 b/+fis |
	e:m e:m a:m/+c a:m7 |
	d d:7 

	g/b g/b |
	g/b g:dim/+ais g/b g |
	d:sus d 

	d d:m |
	a:m/+c a:m b b:7/dis %\notes < dis b  fis a>  |
	e:m e:m	

	c:7+  a:m/+c |
	g:sus/+d d:6^7 d:6.9^7 d:7 
	g2
}
	

#(set! chord::names-alist-american
      (append 
      '(
	;; any changes here, see scm/chord-names.scm
	 (((0 . 0) (4 . 0)) . (""))
	)
      chord::names-alist-american))

\score {
	\notes \transpose c' <
	\context ChordNames \notes { \time 4/4 \accomp }
	\context ChoirStaff <
		\context Staff=top < \global
			\property Staff.midiInstrument = "choir aahs"
			\context Voice = sop {\voiceOne \sop}
			\context Voice = alto {\voiceTwo \alto}
		>
		\context Staff=bottom < \clef "bass" \global
			\property Staff.midiInstrument = "voice oohs"
			\context Voice = tenor {\voiceOne \tenor}
			\context Voice = bass {\voiceTwo \bass}
		>
	>
	>
	\paper{
	   indent = 0.0\pt
%	   linewidth=180.0\mm
	   \translator { 
	     \ChordNamesContext
	      ChordName \override #'word-space = #1 
	      ChordName \override #'style = #'american
	    }
	}
	\midi{
		\tempo 4=100
	}
}

