\header {
  title = "The Lancer's Quadrilles"
  subtitle = "Les Graces (#4)"
  source = "Original Sheet Music"
  composer = "Anon"
  enteredby = "mdu"
  copyright = "Public Domain"
  
  mutopiatitle = "Les Graces"
  mutopiacomposer = "Anonymous"
  mutopiainstrument = "Piano"
  date = "c1860"
  source = "Original Sheet Music"
  style = "Popular / Dance"
  copyright = "Public Domain"
  maintainer = "Martin Usher"
  maintainerEmail = "martinusher@earthlink.net"
  lastupdated = "2006/Feb/18"
 
  texidoc = "This is the fourth of a set of six dances publised in the mid 1800s.

  The title page text reads:-
  
  The Lancer's Quadrilles', or 'Duval (of Dublin)'s Second Set', Seventh Edition
  Containing Les Graces, Lodoiska, La Dorset, La Native & Les Lanciers with proper
  figures in French and English, as Danced at Almack's London (and at the Rotunda,
  Dublin), to which is added A New Waltz, by Sigr Spagnoletti and the Stop Waltz,
  respectfully dedicated to the Countess of Farnham.
  
  NB The Public are particularily cautioned against spurious Copies of this
  Work & are requested to observe that no other set can contain the whole
  of the Original Tunes but those bearing the Signature of....."

  footer = "Mutopia-2006/02/25-680"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.6.0"

PianoRH = \relative c'' {
	\clef treble
	\key g \major
	\time 6/8
	
	\partial 4. d8 cis d 				|
	g4 g8 \acciaccatura c,16 b8 a b			|
	d4 d8 g8 d dis					|
	e a, b c e, a					|
	g4 fis8 d' cis d				|
	
	g4 g8 \acciaccatura c,16 b8 a b			|
	d4 d8 g d dis					|
	e c a g4 fis8					|
	g4. \bar "||" \mark \markup { \small "Fine" }
		< fis a >4 < fis a >8		|
	< fis a > < e g > < d fis > < b' d >4 < b d >8	|
	< b d > < a cis > < g b > < e' g >4 < e g >8	|
	
	< e g > < d fis > < cis e > < g e' > < fis d' > < e cis' >|
	< e cis' > < d b' > < cis a' > < e g >4 < e g >8	|
	< e g > < d fis > < cis e > cis'4 cis8		|
	cis b a g'4 g8					|
	g fis e e d cis					|
	
	d4.~ d8 e cis					|
	a'4. ~ a8 g e					|
	d e cis d e b					|
	c4. d16 e fis g a b				|
	c4.^\fermata \bar "||" \mark \markup "  D.C." 
	\cadenzaOn s8
}

PianoLH = \relative c' {
	\clef bass
	\key g \major
	\time 6/8
	
	\partial 4. r4 r8				|
	g b d g, b d					|
	g, b d b, d g					|
	c, e a c, e a					|
	d, fis a	d, a' c				|
	
	g b d g, b d					|
	g, b d b, d g					|
	c, e a < d, g b >4 < d a' c >8			|
	< g b >4. \bar "||" r4 r8			|
	d,4 d'8 d4 d8					|
	g,4 g'8 g4 g8					|
	
	a4. a,4.					|
	a'4 a,8 a'4 r8					|
	a,4 a'8 a cis e					|
	a, cis e a, cis e				|
	a, cis e a, e' g				|
	
	a, d fis a, e' g				|
	a, cis e a, cis e \clef treble			|
	d4 < e g >8 < d fis >4 < d gis >8		|
	< d a' >4. r4 r8				|
	< d a' c >4._\fermata \bar "||" 
	\cadenzaOn s8
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
  
	\midi {
		\tempo 8=172
	}
	
   \layout {
         }
}

\markup { "One Gentleman and his Partner with the Lady on his left, the three advance and retire twice," }
\markup { "Balancez and pass betwee the two Ladies, three half round to the left and back again, the other" }
\markup { "three Gentlemen do the same figure, after which the Ladies do the same figure with the Gentlemen." }
}

