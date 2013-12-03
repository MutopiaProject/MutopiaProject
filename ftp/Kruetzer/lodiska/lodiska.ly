\header {
  title = "The Lancer's Quadrilles"
  subtitle = "Ladoiska (#2)"
  source = "Original Sheet Music"
  composer = "Kruetzer"
  enteredby = "mdu"
  copyright = "Public Domain"
  
  mutopiatitle = "Ladoiska"
  mutopiacomposer = "Kruetzer"
  mutopiainstrument = "Piano"
  date = "c1860"
  source = "Original Sheet Music"
  style = "Popular / Dance"
  copyright = "Public Domain"
  maintainer = "Martin Usher"
  maintainerEmail = "martinusher@earthlink.net"
  lastupdated = "2006/Feb/18"
 
  texidoc = "This is the second of a set of six dances publised in the mid 1800s.

  The title page text reads:-
  
  The Lancer's Quadrilles', or 'Duval (of Dublin)'s Second Set', Seventh Edition
  Containing Les Graces, Lodoiska, La Dorset, La Native & Les Lanciers with proper
  figures in French and English, as Danced at Almack's London (and at the Rotunda,
  Dublin), to which is added A New Waltz, by Sigr Spagnoletti and the Stop Waltz,
  respectfully dedicated to the Countess of Farnham.
  
  NB The Public are particularily cautioned against spurious Copies of this
  Work & are requested to observe that no other set can contain the whole
  of the Original Tunes but those bearing the Signature of....."  

  footer = "Mutopia-2006/02/25-678"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.6.0"

PianoRH = \relative c' {
	\clef treble
	\key bes \major
	\time 2/4
	
	\partial 8 f8^\segno					|
	bes bes16. bes32 bes8 bes				|
	bes8. f16 g a bes c					|
	d8 d16. d32 d8 d					|
	d8. a16 bes c d ees					|
	
	f8 f16. f32 f8 bes					|
	f d16. ees32 f8 bes					|
	f d16 ees f ees d c					|
	bes4.  \bar "||" \mark \markup { \small "Fine" }
	
	\partial 8 f8						|
	bes8-| bes-| a16( g a f)				|
	bes8-| bes-| \acciaccatura bes16 a16( g a f)		|
	bes8-| bes16( c) ees( d c bes)				|
	a bes c < a d > c f, g a				|
	bes8-| bes-| a16( g a f)				|
	bes8-| bes-| \acciaccatura bes16 a16( g a f)		|
	
	bes8-| bes16( d) c( ees) a,( c)				|
	\once \override TextScript #'padding = #2.5
	bes4.^\markup { "    D.C. al"  }
	\bar "|:" \mark \markup { \musicglyph #"scripts.segno" }
	
	\partial 8 bes8-|					|
	a( f') f-| f-|						|
	f16 ees d c bes8-| bes-|				|
	a f f( g16 a)						|
	
	bes( a bes c) d( c d bes)				|
	a8-| f'8-| f-| f-|					|
	f16 ees d c bes8-| bes'-|				|
	bes,-| bes'-| f16( ees d c)				|
	\once \override TextScript #'padding = #2.5
	bes4^\markup { "   D.C. al"  } bes'8
		\bar ":|" \mark \markup { \musicglyph #"scripts.segno" }
	\cadenzaOn s8
}

PianoLH = \relative c {
	\clef bass
	\key bes \major
	\time 2/4
	
	\partial 8 r8						|
	bes8 bes'8 f d						|
	bes4 r4							|
	bes8 bes'8 f d						|
	bes4 r4							|
	
	< bes d f bes >8 < bes d f bes >16. < bes d f bes >32
		< bes d f bes >4				|
	< bes d f bes >8 < bes d f bes >16. < bes d f bes >32
		< bes d f bes >4				|
	< bes bes' >4 < f f' >4					|
	bes8 f bes, \bar "||"
	
	\partial 8 r8						|
	< f'' bes d >8 < f bes d > < f c ees >4			|
	
	< f bes d >8 < f bes d > < f c ees >4			|
	< bes d >8 < bes d > ees, e				|
	f4 f,4							|
	f'16 d' bes d f, ees' c ees				|
	f, d' bes d f, ees' c ees				|
	
	< bes, bes' >8 < g g' > < ees ees' > < f f' >		|
	bes f bes, \bar "|:"
	
	\partial 8 r8						|
	f''8 < a c > < a c > < a c >				|
	f < bes d > < bes d > < bes d >				|
	f < c' ees > < c ees > < c ees >			|
	
	f, < bes d > < bes d > < bes d >			|
	f < a c ees > < a c ees > < a c ees >			|
	f < bes d > < bes d > < bes d >				|
	< f bes d > < f bes d > < f a ees' > < f a ees' >	|
	< bes d >4. \bar ":|" \cadenzaOn s8
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
		\tempo 8=120
	}
	
   \layout {
         }
}

\markup { "1st Gent and Lady advance and retire twice, the second time he leaves the Lady on the left of the" }
\markup { "opposite Gent. Chassez to the right and left and turn your Partner right and left entirely -- " }
\markup { "Ballancez to the sides, then advance and retire in two lines and then turn your partner to places." }
\markup { "" }
\markup { "The other six do the same." }
}

