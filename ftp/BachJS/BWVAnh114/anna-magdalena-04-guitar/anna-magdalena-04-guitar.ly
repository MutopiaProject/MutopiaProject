\version "2.16.1"

\header {
   title = "Menuet in G"
   opus = "BWV Anh. 114"
   composer = "Johann Sebastian Bach (1685-1750)"
   instrument = "Guitar"
   enteredby = "Emre Akbas"

   % mutopia headers
   mutopiatitle = "Menuet in G"
   mutopiaopus = "BWV Anh. 114"
   mutopiacomposer = "BachJS"
   mutopiainstrument = "Guitar"

   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Emre Akbas"
   maintainerEmail = "emreakbas@yahoo.com"
   source = "Mutopia"

 footer = "Mutopia-2013/01/06-102"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\score {
   
   \relative c'' \sequential {
   	\time 3/4
	\key g \major

	\context Staff \relative c'' <<
		\context Voice = "one" {
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
		   	\override TextSpanner #'(bound-details left text) = "1/2 CV"
		   	\override TextSpanner #'style = #'line
			\override TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5) }

			b'4 \startTextSpan g8 a b g \stopTextSpan |
		   	\override TextSpanner #'(bound-details left text) = "1/2 CIV"
			a4 \startTextSpan d,8 e fis d \stopTextSpan |
			g4 e8 fis g d |
			cis4 b8 cis a4 |
			\break
			 a8[ b]  cis[ d]  e[ fis] |
			g4 fis e |
			fis4 a, cis |
			d2. |
			\break
			d4 g,8 fis g4 |
			e'4 g,8 fis g4 |
			d'4 c b |
			a8 g fis g a4 |
			\break
			 d,8[ e]  fis[ g]  a[  b] |
			c4 b a |
			b8 d g,4 fis |
			g2.
			\break
		   }
		   \bar "|."
		}

		\context Voice = "two" {
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
	>>
   }
   
  \midi {
    \tempo 4 = 136
    }


   \layout { }
}
