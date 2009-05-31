\header{
	title = "Old 100th"
	meter = "88 88"
	composer = "Genevan Psalter 1551"
	enteredby = "Peter Chubb"
	source = "Geneva Psalter 1551"

	mutopiatitle = "Old 100th (original version)"
	%mutopiacomposer = "attributed to L. Bourgeous (1510--1561)"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	mutopiastyle = "Hymn"
	date = "1551"
	copyright = "Public Domain"
	moreInfo = "<p>This tune is attributed to L. Bourgeous (1510-1561).</p><!--<p>For some information on its history, see <a href=\"http://homepage3.nifty.com/dikaios/CMstudy/English/papers/OV.htm\">http://homepage3.nifty.com/dikaios/CMstudy/English/papers/OV.htm</a> and especially appendix 9.</p>-->"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"

 footer = "Mutopia-2009/04/11-194"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.12.0"

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
       \oneline \break
       \oneline
       \oneline
}

sop= \relative c'' {
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


alt = \relative c'{
	d1 |
	d2 d b b |
	b1 d |
	d

	d |
	d2 g fis g |
	g1 g |
	fis

	g |
	d2 d d d |
	e1 c |
	d

	b |
	b2 e e c |
	d( g ~  g) fis |
	g1
}

ten = \relative c' {
	b1 |
	b2 a g fis |
	g1 fis |
	g

	g |
	b2 d d b |
	e1 d |
	d

	b |
	a2 g fis g |
	g1 a |
	b

	fis |
	g2 b c e |
	d1 ~ d2. c4 |
	b1
}


bass = \relative c' {
	g1 |
	g2 d e b |
	e1 d |
	g,

	g' |
	g2 g d e |
	c1 g |
	d'

	e |
	fis2 g d b |
	c1 a |
	g

	b  |
	e2. d4 c( b) a2 |
	b2.( c4) d1 |
	g,1
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 2)
      }
    }


}
