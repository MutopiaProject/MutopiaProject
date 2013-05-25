
\header {
 title = "Vals no. 3"
 composer = "J. Brahms (1833-1897)"
 opus = "Op. 39"
 mutopiatitle = "Vals no. 3"
 mutopiacomposer = "BrahmsJ"
 mutopiaopus = "O 39"
 mutopiainstrument = "Guitar"
 source = "Transcribed"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "P. Bozzo"
 maintainerEmail = "bozzo@mclink.it"
 lastupdated = "2002/Sep/09"

 tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
 footer = "Mutopia-2002/09/09-264"
}

\version "1.6.0.uu1"


SoloXguitarAVoiceA = \notes\relative c' {
	\clef violin
	\time 3/4
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\property Staff.transposing = -12

	\repeat "volta" 2 {

	\stemUp
		\property Voice.TextSpanner \set #'type = #'dotted-line
		\property Voice.TextSpanner \set #'edge-height = #'(0 . 1.5)
		\property Voice.TextSpanner \set #'edge-text = #'("C5 " . "")
		a''4.\spanrequest \start "text" e8-1 e-1 (  ) f-2 | e4.-1 a,8-4 a-4 e'-1 |   %4
		a4. e8 e (  ) f\spanrequest \stop "text" | e4.-0 a,8 a d |   % 6
		\property Voice.TextSpanner \set #'edge-text = #'("C3 " . "")
		\property Voice.Fingering \set #'extra-offset = #'(-0.3 . -1.8)
		a'4.-4\spanrequest \start "text" g8 c, g'\spanrequest \stop "text" |
		\property Voice.Fingering \revert #'extra-offset
		g4.-4 f8-1 b,-0 f'-1 |	 % 8
		e4.-0 d8 c-2 c'-4 |
	}
	\alternative {
		{
			g4 < b, d > < b d gis! >
		}
		{
			g2 a4
		}
	}

	\repeat "volta" 2 {
		g4. f8 e e'-4 | d4.-2 b8-2 g-3 f-1 |   % 13
		e4.-0
		\property Voice.TextSpanner \set #'edge-text = #'("C5 " . "")
		d8\spanrequest \start "text" c c'-4\spanrequest \stop "text" | b4.-3 g8 e d |% 15
		c e  c' b-4 r < c,-3 a'-4 > | r d a' < a, f' > r < b d > |   % 17
		r e c'-4 < c, e-1 > b'-4 < d,-1 e-3 > |
	}
	\alternative {
		{
			r8 \stemDown c e c' (  b ) a | \stemUp g2 a4
		}
		{
			r4 < c\fermata e a > r
		}
	}
	}
SoloXguitarAVoiceB = \notes\relative c' {
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\repeat "volta" 2 {
		\stemDown a4 < a' c > < a c > a, < e' a > r a, < a' c > < a c > d, < f a > r c < c' e > r b,_2 < f'_3 g > < f g > d < g b > fis!_1
		}
	\alternative {
		{
		     g,4. f8 e e'
		}
		{
		     \stemUp < g,4. b' d > a8 g f
		}
	}
	\repeat "volta" 2 {
		\stemDown e,4 < e' g b > r g < g b > g c, < e g > < e g > e, < g' b > < g b > a,4. b8 a4 a'4. f8 d4 c2 d4
		}
	\alternative {
		{
		     a2 r4 < g4. b' d > a8 g f
		}
		{
			a2.\fermata
		}
	}
}

SoloXguitarA = \simultaneous {
	\property Staff.instrument = #"Solo guitar"
	\context Voice="SoloXguitarAVoiceA" \SoloXguitarAVoiceA
	\context Voice="SoloXguitarAVoiceB" \SoloXguitarAVoiceB
}

\score {
	\simultaneous {
		\property Score.skipBars = ##t
		\context Staff="Solo guitar" \SoloXguitarA
		}
	\paper {
	       }
}
\score {
	\simultaneous {
		\apply #unfold-repeats \SoloXguitarAVoiceA
		\apply #unfold-repeats \SoloXguitarAVoiceB
		}
\midi {\tempo 4=120}
}
