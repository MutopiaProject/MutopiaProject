\header {
  title = "The Lancer's Quadrilles"
  subtitle = "The Countess of Farnham's Waltz (#6)"
  source = "Original Sheet Music"
  composer = "Spagnoletti"
  enteredby = "mdu"
  copyright = "Public Domain"
  
  mutopiatitle = "The Countess of Farnham's Waltz"
  mutopiacomposer = "Spagnoletti"
  mutopiainstrument = "Piano"
  date = "c1860"
  source = "Original Sheet Music"
  style = "Popular / Dance"
  copyright = "Public Domain"
  maintainer = "Martin Usher"
  maintainerEmail = "martinusher@earthlink.net"
  lastupdated = "2006/Feb/18"
 
  texidoc = "This is the last of a set of six dances publised in the mid 1800s.

  The title page text reads:-
  
  The Lancer's Quadrilles', or 'Duval (of Dublin)'s Second Set', Seventh Edition
  Containing Les Graces, Lodoiska, La Dorset, La Native & Les Lanciers with proper
  figures in French and English, as Danced at Almack's London (and at the Rotunda,
  Dublin), to which is added A New Waltz, by Sigr Spagnoletti and the Stop Waltz,
  respectfully dedicated to the Countess of Farnham.
  
  NB The Public are particularily cautioned against spurious Copies of this
  Work & are requested to observe that no other set can contain the whole
  of the Original Tunes but those bearing the Signature of....."

  footer = "Mutopia-2006/02/25-682"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.6.0"

PianoRH = \relative c' {
	\clef treble
	\key bes \major
	\time 3/8
	
	\partial 8 f8 						|
	f bes bes						|
	bes[ d] g16.[ f32]					|
	c8[ c] d16[ c]						|
	bes8[ f] d'(						|
	c[) c] e16.[ d32]					|
	c8[ c] f16.[ c32]					|
	
	a8[ ~ a16 c bes g]					|
	f4 \bar ":|:" f8					|
	ees'[( c]) c						|
	d[ bes] bes						|
	\acciaccatura c16 bes8 a bes				|
	c[ f] f,						|
	ees'[ c] c						|
	
	d8.[ bes16 g'16. f32]					|
	e8.[ bes'16 g e]					|
	f[ e ees c a f]						|
	f8( bes) bes						|
	bes[( d]) g16. f32					|
	c8[ c] d16.[ c32]					|
	bes8 f f						|
	
	g16 a bes c d ees					|
	e8[( f]) d						|
	f ees c							|
	bes4^\markup { "Fine" } \bar ":|:"
		\key ees \major < g bes >16. < g bes >32 	|
	< g bes >8 < aes c > < bes d >				|
	< c ees > < bes d > < aes c >				|
	< g bes > < aes c > < e g >				|
	
	< e g >[( < f aes >]) < bes bes' >16 < bes bes' >	|
	< bes bes' >8[ < bes bes' >8] < bes bes' >		|
	< bes g' >[ < g, bes' >] < ees' g >16 < ees g >		|
	< e g >8[ < f aes >] < bes, f' >			|
	< g ees' >4 \bar ":|:"
		< bes' bes' >16 < bes bes' >			|
	<< \stemDown bes4 \\ \stemUp { aes'8[ f8] } >>
		bes,16[ aes']					|
	\stemUp < bes, g' >8[ < g, bes' >]
		\stemDown < bes' bes' >16[ < bes bes' >16]	|

	<< \stemDown bes4 \\ \stemUp { aes'8[ f8] } >>
		bes,16[ aes']					|
	\stemUp < bes, g' >8[ < g, bes' >]
		\stemDown < g' bes >16[ < g bes >16]		|
	< g bes >8 < aes c > < f d' >				|
	< g ees' >4 < ees' g >16[ < ees g >16]			|
	< g bes >8[( < f aes >]) < aes, f' >			|
	< g ees' >4 \bar ":|" \mark \markup "D.C." 
	\cadenzaOn s8
}

PianoLH = \relative c {
	\clef bass
	\key bes \major
	\time 3/8
	
	\partial 8 r8 						|
	bes8 bes' bes						|
	bes, bes' bes						|
	bes, a' a						|
	d,[ bes'] < bes, d f bes >				|
	c < g' bes > < g bes >					|
	c, < f a > < f a >					|
	
	< c f a >4 < c e bes' >8				|
	< f a >4 \bar ":|:" r8					|
	< f a c >4 < f a c >8					|
	< f bes d >4 < f bes >8					|
	< e g c >4 < e g c >8					|
	< f a c >4.						|
	< f a c >4 < f a c >8					|
	
	< f bes d >4 r8						|
	< c e g >4.						|
	< f a >4.						|
	bes,8 bes' bes						|
	bes, < d bes' > < d bes' >				|
	f < a ees' > < a ees' >					|
	< bes d >4 < d,, d' >8					|
	
	< ees ees' >4.						|
	cis'8 d g						|
	f < a ees' > < a ees' >					|
	< bes d >4
		\bar ":|:" \key ees \major r8			|
	ees,,8 ees' ees						|
	ees, ees' ees						|
	ees, ees' c						|
	
	f4 r8							|
	< bes, d bes' >8 < bes d bes' > < bes d bes' >		|
	< ees, ees' >4 r8					|
	bes'4 bes8						|
	< ees, ees' >4 \bar ":|:" r8				|
	< bes' d bes' >4 < bes bes' >8				|
	< ees, ees' >4 r8					|
	
	< bes' d bes' >4 < bes bes' >8				|
	< ees, ees' >4 r8					|
	ees8 ees' ees						|
	< ees, ees' >4 r8					|
	< bes' bes' >4 < bes bes' >8				|
	< ees, ees' >4 \bar ":|" \cadenzaOn s8
}

\paper {
  betweensystempadding = #1
  raggedbottom=##f
  raggedlastbottom=##f
}

  \score {
       \context PianoStaff
       <<
		\context Staff=upper \PianoRH
		\context Staff=lower \PianoLH
		>>
  
	\midi {
		\tempo 8=120
	}
	
   \layout {
         }
}


