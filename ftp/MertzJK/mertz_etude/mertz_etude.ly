\version "1.4.2"

\header {
   title = "Etude in A minor"
   composer = "Johann Kapsar Mertz(1806-1856)"
   instrument = "Guitar"
   enteredby = "Emre Akbas"
   piece = "Allegro"

   % mutopia headers
   mutopiacomposer = "MertzJK"

   style = "Classical"
   copyright = "Public Domain"
   maintainer = "Emre Akbas"
   maintainerEmail = "emreakbas@yahoo.com"
   lastupdated = "2001/Aug/29"

   footer = "Mutopia-2001/08/29-111"
   tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

\score {
   \notes
   \relative c'' \sequential {
   	\time 4/4
	\key a \minor

	\context Staff \notes\relative c'' <
		\context Voice=one {
		   \stemUp 
		   [a,16^"p" a'^"i" c^"m" e^"a"] [e^"m" e^"i" e^"m" e^"i"] e4^"m"^> e,,8 <e'' b gis-1> |
		   [a,,16 a' c e] [f^"m" () e e^"m" e^"i"] e4^>^"m" e,,8 <e'' b gis> |
		   [a,,16 a' c e] a4^4 [d,,16 a' b f'] f4  |
		   \break
		   [e,16-2 gis-1 b e] [f^1 () e b e] [gis, e' e, e'] [d, e' b, e']
		   [a,,16 a' c e] [e e e e] e4^> e,,8 <e'' b gis> |
		   [a,,16 a' c e] [f () e e e] e4^> fis,,8-3 <e'' c a-4> |
		   \break
		   [g,,16 \< g' c e] [e e e e] \! g2 |
		   [c,,16^p g'^i c^"m" e^"a"] [g,^"i" c^"m" e,^p g^"i"] c,4^p r4 |
		   [e,16 gis' b e] [e e e e] e8 b c a |
		   \break
		   [e,16 gis' b e] [e e e e] e8^> b c a |
		   [e,16 gis' b e] [e8 <e^> c a>] [e <e^> b gis-1>] [e <e^> c a>] |
		   [<gis,8 b e> dis16^p e'^"m"] [e,16^p e'^"m" dis,^p e'^"m"] [e, e' d, e'] [c, e' b, e'] |
		   \break %13
		   [a,,16 a' c e] [e e e e] e4^> e,,8 <e'' b gis> |
		   [a,,16 a' c e] [e e e e] e4^> d,8 <b' f'> |
		   [e,,16 a' c e] e4 e'^4^"m" gis,-4 |
		   a <e b> a, r4^\fermata 
		   \bar "|."
		}

		\context Voice=two {
			\stemDown
			\notes\relative c'
			a2\p e''8 a,, e4 |
			a2 e''8 a,, e4 |
			a4 a''8 a,, d4 f'8 d, | 
			e4 r8 b' gis e d b |
			a2 e''8 a,, e4 |
			a2 e''8 a,, fis4 |
			g2-3 r8 [f'16-3-p g-i] [e-p g-i d-p g-i] |
			c,2 c4 r4 |
			e,2\p r8 [e\f e e] |
			% 10
			e2\p r8 [e\f e e] |
			e4. e8 r8 e8 r8 e8 |
			e8 dis' e dis e d c b |
			% 13
			a2 e''8 a,, e4 |
			a2 e''8 a,, d4 |
			e,4 [e''8 e,, ] [e''' e,,,] [d'' e,,] |
			[c'' a,] [gis' e,] a4 r4
		}
	>
   }
   \midi {
       \tempo 4 = 76
   }
   \paper { }
}
