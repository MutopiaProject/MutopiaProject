\header {
  title = "The Lancer's Quadrilles"
  subtitle = "Les Lanciers (#5)"
  source = "Original Sheet Music"
  composer = "Yaniewicz"
  enteredby = "mdu"
  copyright = "Public Domain"
  
  mutopiatitle = "Les Lanciers"
  mutopiacomposer = "Yaniewicz"
  mutopiainstrument = "Piano"
  date = "c1860"
  source = "Original Sheet Music"
  style = "Popular / Dance"
  copyright = "Public Domain"
  maintainer = "Martin Usher"
  maintainerEmail = "martinusher@earthlink.net"
  lastupdated = "2006/Feb/18"
 
 texidoc = "This is the fifth of a set of six dances publised in the mid 1800s.

  The title page text reads:-
  
  The Lancer's Quadrilles', or 'Duval (of Dublin)'s Second Set', Seventh Edition
  Containing Les Graces, Lodoiska, La Dorset, La Native & Les Lanciers with proper
  figures in French and English, as Danced at Almack's London (and at the Rotunda,
  Dublin), to which is added A New Waltz, by Sigr Spagnoletti and the Stop Waltz,
  respectfully dedicated to the Countess of Farnham.
  
  NB The Public are particularily cautioned against spurious Copies of this
  Work & are requested to observe that no other set can contain the whole
  of the Original Tunes but those bearing the Signature of....."

  footer = "Mutopia-2006/02/25-681"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.6.0"

PianoRH = \relative c''' {
	\clef treble
	\key c \major
	\time 4/4

	\repeat volta 2 {
	g8.[ fis16 g8. a16] g8.[ f16 e8. d16]			|
	c4 c4 \acciaccatura d16 c8.[ b16 c8. d16]		|
	e4 e4 \acciaccatura f16 e8.[ d16 e8. f16]		|
	d4 d4 d8.[ e16 f8. fis16]				|
	g8.[ fis16 g8. a16] g8.[ f16 e8. d16]			|
	
	c4 c4 \acciaccatura d16 c8.[ b16 c8. d16]		|
	e4 e4 \acciaccatura e16 d8.[ c16 d8. e16]		|
	}
	\alternative { { c4 c4 c8.[ d16 e8. f16] }
			{ c4 r4 r4  \bar "||" b4 } }		|
	c8.[ b16 c8. d16] e4. c8				|
	c8.[ b16 d8. b16] g4 a8. b16				|
	
	c8.[ b16 c8. d16] e8.[ d16 e8. c16]			|
	c8.[ b16 d8. b16] g4 r4					|
	g'8.[ f16 e8. f16] g8.[ a16 b8. c16]			|
	g8.[ f16 e8. f16] g8.[ a16 b8. c16]			|
	\acciaccatura e,8 g4. e8
		\acciaccatura e16 d8.[ c16 d8. e16]		|
	c4 c'4 c,2 \bar ":|"
}

PianoLH = \relative c {
	\clef bass
	\key c \major
	\time 4/4
	
	\repeat volta 2 {
	<< { r4 < e g >4 < e g > < e g > } \\ c1>>		|
	<< { r4 < e g >4 < e g > < e g > } \\ c1 >>		|
	<< { r4 < e g >4 < e g > < e g > } \\ c1 >>		|
	<< { r4 < d f >4 < d f > < d f > } \\ g,1 >>		|
	<< { r4 < e' g >4 < e g > < e g > } \\ c1 >>		|
	<< { r4 < e g >4 < e g > < e g > } \\ c1 >>		|
	< c e >4 g' < g, d' > g'				|
	}
	\alternative { { < c, e >4 g' < c, e > g' }
		{ < c, e g >4 r4 r4 \bar "||" r4 } }		|
	< c e g >8 r8 < c e g > r < c e g > r < c e g > r	|
	< g d' g >4 < g d' g > < g d' g >2			|
	< c e g >8 r8 < c e g > r < c e g > r < c e g > r	|
	< g d' g >4 < g d' g > < g d' g >2			|
	c8 g' e g c, g' e g					|
	c,8 g' e g c, g' e g					|
	c,8 g' e g g, g' d g					|
	c, g' e g c,2 \bar ":|"
}

\paper {
  betweensystempadding = #1
  raggedbottom=##f
  raggedlastbottom=##f
}

\book {
  \score {
       \context PianoStaff
       <<
		\context Staff=upper \PianoRH
		\context Staff=lower \PianoLH
		>>

   \layout {
         }
}

\markup { "Right & Left - all round making ballotez every time the right and left hand is given, 1st Gent" }
\markup { "gives his right hand in his Partner's left and turn half round in their own places, their backs" }
\markup { "to the 3rd couple: the 2nd Gent and Lady follow the 1st Couple: the 3rd Gent and Lady follow the" }
\markup { "2nd Couple, the 4th Gent and Lady follow the 3rd Couple -- only one Couple advancing at a time," }
\markup { "when  all form in two lines the Ladies on the right of the Gents all facing the top of the room" }
\markup { "then chassez all across twice, and pas de basque twice the Gent turn off round to the left, and" }
\markup { "the Ladies to the right, Gents following 1st Gent and Ladies following the 1st Lady. When all are" }
\markup { "returned to the former situation they turn off, then form two lines, each Gent facing his Partner" }
\markup { "and chassez forward and back, each Gent turns his Partner into their own places." }
\markup { "Conclude with the grand Square; viz: 1st and 3rd Couple chassez forward, while the side Couples" }
\markup { "chassez open, 1st & 3rd Couple chassez open while the side Couples chassez open forward, 1st and 3rd" }
\markup { "Couple chassez back, while the side Couples chassez close 1st & 3rd Couples chassez close into places" }
\markup { "while the side Couples chassez backwardws into places. The figure commences next with the 2nd Couple" }
\markup { "then with the 3rd, then with the 4th. With the side Couples commence the figure they chassez forward" }
\markup { "in the Square, while the 1st and 3rd Couples chassez open." }
\markup { "" }
\markup { "This Dance begins with the 1st part of the Air played twice, it commences each time after with the" }
\markup { "2nd part played twice, then each part played once, ending with the first part" }

\score {
	\unfoldRepeats 
       \context PianoStaff
       <<
		\context Staff=upper \PianoRH
		\context Staff=lower \PianoLH
		>>
  
	\midi {
		\tempo 8=172
	}
}
}

