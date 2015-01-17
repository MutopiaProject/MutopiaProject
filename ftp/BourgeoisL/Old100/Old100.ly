\version "2.18.2"

\header{
	title = "Old 100th"
	composer = "Genevan Psalter 1551" % source ref., not composer? -gl
	arranger = "Arr. John Dowland"
	meter = "88 88"
	source = "A Pilgrimes Solace"
	style = "Hymn"
	date = "1612"
	% first published date I know about for this arrangement

	mutopiacomposer = "BourgeoisL"
	mutopiaarranger = "J. Dowland (1563-1626)"
	mutopiainstrument = "Voice (SATB)"

	license = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2015/01/11"  %update to 2.18.2 (Javier Ruiz-Alma)
	
	

 footer = "Mutopia-2015/01/17-90"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%{
	For some information on the history of this tune, see 
	http://homepage3.nifty.com/dikaios/CMstudy/English/papers/OV.htm
	and especially appendix 9.
%}

oneline={       
	\skip 1
	\skip 2*8
	\skip 1
	\bar "||"
}

global = {
       \key g \major
       \time 4/2
       \partial 1
       \oneline
       \oneline
       \oneline
       \oneline
}

sop= \relative c'' {
	b1^"Melody in tenor" |
	b2 a c b |
	b1 d |
	d

	d |
	d2 d d b |
	e1 d |
	d1

	b |
	a2 g fis d' |
	c1 a |
	b 

	b  |
	g2. g4 d'2 e |
	d1 d2.( c4) |
	b1
}

alt=\relative c' {
	d1 |
	d2 d e4( fis) g2 |
	g1 fis |
	g

	g |
	g2 g fis e |
	g1 g |
	fis1

	d |
	fis2 d d2. d4 |
	e1 d |
	d 

	g1 |
	d2 g fis g |
	g1 fis |
	g
}

ten=\relative c' {
	g1 |
	g2  fis e d |
	g1 a |
	b 

	b |
	b2 b a g |
	c1 b |
	a

	g |
	a2 b a g |
	e1 fis |
	g

	d'1 |
	b2 g a c |
	b1 a |
	g
}

bass=\relative c{
	g1 
	g2 d' a b |
	e1 d |
	g,

	g' |
	g2 g d e |
	c1 g' |
	d

	g, |
	d'2 g, d' b |
	c1 d |
	g, 

	g'  |
	g2 e d c |
	g'1 d |
	g,
}


upper=\context Staff = "upper" <<
	\clef "treble"
	\global
	\context Voice = "sop" {\voiceOne \sop}
	\context Voice = "alto" {\voiceTwo \alt}
>>

lower=\context Staff = "lower" <<
	\clef "bass"
	\global
	\context Voice = "tenor" {\voiceOne \ten}
	\context Voice = "bass" {\voiceTwo \bass}
>>

\score {
       \context ChoirStaff <<
            \set ChoirStaff.midiInstrument = "choir aahs"
		\upper
		\lower
	>>
	\layout{
%		gourlayMaxmeasures = 6.0
		line-width = 180.0\mm
		indent = 0.0\pt
		\context {
		    \Staff
		    \remove "Time_signature_engraver"
		}
	}
	
  \midi {
    \tempo 2 = 120
    }

}
