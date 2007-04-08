\header {
  title = "The Lancer's Quadrilles"
  subtitle = "La Native (#3)"
  source = "Original Sheet Music"
  composer = "Anon"
  enteredby = "mdu"
  copyright = "Public Domain"
  mutopiatitle = "La Native"
  mutopiacomposer = "Anonymous"
  mutopiainstrument = "Piano"
  date = "c1860"
  source = "Original Sheet Music"
  style = "Popular / Dance"
  copyright = "Public Domain"
  maintainer = "Martin Usher"
  maintainerEmail = "martinusher@earthlink.net"
  lastupdated = "2006/Feb/18"
 
  texidoc = "This is the third of a set of six dances publised in the mid 1800s.

  The title page text reads:-
  
  The Lancer's Quadrilles', or 'Duval (of Dublin)'s Second Set', Seventh Edition
  Containing Les Graces, Lodoiska, La Dorset, La Native & Les Lanciers with proper
  figures in French and English, as Danced at Almack's London (and at the Rotunda,
  Dublin), to which is added A New Waltz, by Sigr Spagnoletti and the Stop Waltz,
  respectfully dedicated to the Countess of Farnham.
  
  NB The Public are particularily cautioned against spurious Copies of this
  Work & are requested to observe that no other set can contain the whole
  of the Original Tunes but those bearing the Signature of....."

  footer = "Mutopia-2006/02/25-679"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.6.0"

PianoRH = \relative c' {
	\clef treble
	\key d \major
	\time 6/8
	
	\partial 8 fis16 g				|
	a8. b16 a8 a8. b16 a8				|
	d4 a8 a4 fis16 g				|
	a8. b16 a8 a8. b16 a8				|
	e' e a, a fis g					|
	a b a a b a					|
	
	d4 a8 e'4 a,8					|
	fis'8. e16 d8 a8. d16 cis8			|
	d4 d,8 d4. \bar "||" \mark \markup { \small "Fine" }
	fis'8. e16 d8 fis8. e16 d8			|
	e4 a,8 a4.					|
	fis'8. e16 d8 fis8. e16 d8			|
	
	g4 e8 e4.					|
	\grace { d16[ e16] } fis8. e16 d8 fis8. e16 d8	|
	g fis e < a, cis e a >4^\fermata g'8		|
	fis8. e16 d8 a16 d8. cis8			|
	d4 d,8 d4.^\markup { \small "D.C." } \bar "||"
}

PianoLH = \relative c {
	\clef bass
	\key d \major
	\time 6/8
	
	\partial 8 r8
	
	d8 fis a d, fis a				|
	d, fis a d, fis a				|
	cis, e a cis, e a				|
	cis, e a < a, cis a' > r8 r8 			|
	d fis a d, fis a				|
	
	d, fis a cis, e a				|
	d,4 fis8 a4 a,8					|
	d4. d,4.	\bar "||"
	
	d'8 fis a d, fis a				|
	cis,8 e a a, e' a
	d, fis a d, fis a				|
	
	cis, e a a, e' a				|
	d, fis a d, fis a				|
	cis, e a < a, cis e a >4.^\fermata		|
	d4 fis8 a4 a,8					|
	d4 d,8 d4.	\bar "||"
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
		\tempo 8=182
	}
	
   \layout {
         }
}

\markup { "1st Lady chasses forward alone, then the opposite Gentleman. Both chassez to the right and pirouet" }
\markup { "Chassez and Glissade assemble round to the left into their own places, then the four Ladies join" }
\markup { "their right hands in the centre, at the same time giving their left hands to their Partner's left" }
\markup { "hand, all dancing quite round in the form of a cross. Each Gentlman turns his partner round to" }
\markup { "the left into their own places." }
\markup { "" }
\markup { "The other six do the same." }
}

