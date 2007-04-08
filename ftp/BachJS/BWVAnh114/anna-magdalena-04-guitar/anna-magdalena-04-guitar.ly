\version "1.4.2"

\header {
   title = "Menuet in G"
   opus = "BWV Anh. 114"
   composer = "Johann Sebastian Bach (1685-1750)"
   instrument = "Guitar"
   enteredby = "Emre Akbas"

   % mutopia headers
   mutopiatitle = "Menuet in G"
   mutopiaopus = "BWV Anh. 114"
   mutopiacomposer = "J. S. Bach (1685-1750)"
   mutopiainstrument = "Guitar"

   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Emre Akbas"
   maintainerEmail = "emreakbas@yahoo.com"
   lastupdated = "2001/Aug/12"

   tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
   footer = "Mutopia-2001/08/13-102"
}

\score {
   \notes
   \relative c'' \sequential {
   	\time 3/4
	\key g \major

	\context Staff \notes\relative c'' <
		\context Voice=one {
		   \stemUp 
		   \repeat volta 2 {
			d4 g,8 a b c |
			d4 g, g |
			e'4 c8 d e fis |
			g4 g, g |
			\break
			c4 d8 c b a |
			b4 c8 b a g |
			fis4 g8 a b g |
			a2. |
			\break
			d4 g,8 a b c |
			d4 g, g |
			e'4 c8 d e fis |
			g4 g, g |
			\break
			c4 d8 c b a |
			b4 c8 b a g |
			a4 b8 a g fis |
			g2. 
			\break
		   }
		% second part 
		   \repeat volta 2 {
		   	\property Voice.TextSpanner \set #'edge-text = #'("1/2 CV " ."")
		   	\property Voice.TextSpanner \set #'type = #'line
		   	\property Voice.TextSpanner \set #'edge-height = #'(0 . 0.5)
			b'4 \spanrequest \start "text"  
			g8 a b g \spanrequest \stop "text" |
			\property Voice.TextSpanner \override #'edge-text = #'("1/2 CIV " ."")
			a4 \spanrequest \start "text"
			d,8 e fis d \spanrequest \stop "text" |
			g4 e8 fis g d |
			cis4 b8 cis a4 |
			\break
			[a8 b] [cis d] [e fis] |
			g4 fis e |
			fis4 a, cis |
			d2. |
			\break
			d4 g,8 fis g4 |
			e'4 g,8 fis g4 |
			d'4 c b |
			a8 g fis g a4 |
			\break
			[d,8 e] [fis g] [a  b] |
			c4 b a |
			b8 d g,4 fis |
			g2.
			\break
		   }
		   \bar "|."
		}

		\context Voice=two {
			\stemDown
			g,2 a4 |
			b2. | c2. | b2. |
			a2. | g2. | 
			d'4 b g |
			d'4 d8 c b a |
			b2 a4 | 
			g b g |
			c2. | 
			b4 c8 b a g |
			a2 fis4 |
			g2 b4 |
			c4 d2 |
			g,2 g4 |
		% second part 
			g'2. |
			fis2 r4 |
			e4 g e |
			a2 a4 |
			a,2. |
			b4 d cis |
			d4 fis, a |
			d4 d c |
			b2 b4 |
			c2 c4 |
			b4 a g |
			d'2.  |
			d2 fis4 |
			e4 g fis |
			g b, d |
			g, d' g, |
		}
	>
   }
   \midi {
       \tempo 4 = 136
   }
   \paper { }
}
