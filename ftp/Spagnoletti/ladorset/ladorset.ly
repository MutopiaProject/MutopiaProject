\header {
  title = "The Lancer's Quadrilles"
  subtitle = "La Dorset (#1)"
  source = "Original Sheet Music"
  composer = "Spagnoletti"
  enteredby = "mdu"
  copyright = "Public Domain"

  mutopiatitle = "La Dorset"
  mutopiacomposer = "Spagnoletti"
  mutopiainstrument = "Piano"
  date = "c1860"
  source = "Original Sheet Music"
  style = "Popular / Dance"
  copyright = "Public Domain"
  maintainer = "Martin Usher"
  maintainerEmail = "martinusher@earthlink.net"
  lastupdated = "2006/Feb/18"
 
  texidoc = "This is the first of a set of six dances publised in the mid 1800s.

  The title page text reads:-
  
  'The Lancer's Quadrilles', or 'Duval (of Dublin)'s Second Set', Seventh Edition
  Containing Les Graces, Lodoiska, La Dorset, La Native & Les Lanciers with proper
  figures in French and English, as Danced at Almack's London (and at the Rotunda,
  Dublin), to which is added A New Waltz, by Sigr Spagnoletti and the Stop Waltz,
  respectfully dedicated to the Countess of Farnham.
  
  NB The Public are particularily cautioned against spurious Copies of this
  Work & are requested to observe that no other set can contain the whole
  of the Original Tunes but those bearing the Signature of....."

  footer = "Mutopia-2006/02/25-677"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.6.0"

stemExtend = \once \override Stem #'length = #15
noFlag = \once \override Stem #'flag-style = #'no-flag

PianoRH = \relative c'' {
	\clef treble
	\key f \major
	\time 6/8
	
	\partial 4. c8 d c 					|
	< c a' >4 < c a' >8 < c g' >4 <c g' >8			|
	< a c f >4 c8 c d c					|
	< c g' bes >4 < c g' bes >8 < c f a >4 < c f a > 8	|
	< c e g >4 r8 c d c					|
	< c a' >4 < c a' >8 < c g' >4 < c g' >8			|
	< a c f >4 c8 c d c					|
	<< \stemDown { \stemExtend g4. \stemExtend < c, e bes' >4. } \\
		\stemUp { d'4 g8 c, d e } >>			|
	
	<< \stemUp < a, f' >4^\markup { \small "Fine" } \\
		\stemDown \stemExtend f4 >> r8
		\bar "||"
		c8 d c						|
	< c e >4 < c e >8 < c f >4 < c f >8			|
	< c fis >4 g'8 c, d c 					|
	bes c bes a bes a					|
	g4 r8 c' d c						|	
	<< \stemUp { < c a' >4 < c a' >8 < e g >4 < e g >8 } \\
	\stemDown { < f, a >4 < f a >8 < cis a' >4 < cis a' >8 } >> |
	<< \stemUp { < d' f >4 < d f >8 } \\
		{ \stemDown < d, a' >4 r8 } >>
		< d' f > < c e > < bes d >			|	
	< a c >4 < f a >8 < g bes >4 < bes, e >8		|
	
	< a f' >4 r8
		\bar "||"
		a'8 bes a					|
	< a d >4 < a d >8 < a f' >4 < a f' >8 			|
	< a e' >4 a8 a bes a					|
	< a d >4 < a d >8
		\appoggiatura { bes16[ c] } < a f' >4 < a f' >8	|
	< a e' >4. a8 \appoggiatura c16 bes8 a			|
	<< \stemUp { < a f' >4 < a f' >8 } \\
		\stemDown { < d, f >4 < d f >8 } >>
		< g e' >4 < g e' >8				|
	< f d' >4 < f d' >8 < g bes ees >4 < g bes ees >8	|
	< f a d >4 < f a d >8 < e g cis >4 < e g cis >8		|
	< f a d >4 r8
		\bar "||"
		a8 bes a					|
		
		<< \stemUp { < g cis >4 < g cis >8 < a d >4 < a d >8 } \\
		\stemDown { \stemExtend e4 \stemExtend \noFlag e8
		\stemExtend < d f >4 \stemExtend \noFlag < d f >8 } >>	|
	< a' dis >4( e8) a,8^\f bes a				|
	g a g f g f						|
	e4 r8 a' bes a						|
	< a f' >4 < a f' >8 < g e' >4 < g e' >8			|
	< f d' >4 < f d' >8 < bes ees >4 < bes ees >8		|
	< f a d >4 < f a d >8 < e a cis >4
		< e a cis >8^\markup { \small "D.C. al Fine" }	|
	< f a d >4 r8 \bar "||"
}

PianoLH = \relative c {
	\clef bass
	\key f \major
	\time 6/8
	
	\partial 4. r4 r8					|
	< f a c f >4 < f a c f >8
		< f bes c e >4 < f bes c e >8			|
	< f a c f >4 r8 r4 r8					|
	< e, e' >4 < e e' >8 < f f'>4 < f f' >8			|
	< c c' >4 r8 r4 r8					|
	< f' a c f >4  < f a c f >8
		< f bes c e >4 < f bes c e >8			|
	< f a c f >4 r8 r4 r8					|
	\stemDown < bes d >4. s4.				|
	
	< f a c >4 r8
		\bar "||"
		r4 r8						|
	< c g' bes >4 < c g' bes >8 < c f a >4 < c f a >8	|
	< c e g >4. \stemUp c8 d c 				|
	bes c bes a bes a					|
	g4 c8 r4 r8						|
	s2.							|
	s4. < bes bes' >4.					|
	< c c' >4 r8 < c, c' >4 r8				|
	
	< f f' >4 r8
		\bar "||"
		r4 r8						|
	\stemDown < a' f' >4 < a f' >8( < a d >4) < a d >8(	|
	< a cis >4.) r4 r8 					|
	< a f' >4 < a f' >8( < a d >4) < a d >8(		|
	< a cis >4.) r4 r8 					|
	s4. < a cis >4 < a cis >8				|
	< bes d >4 < bes d >8 \stemUp < g, g' >4 < g g' >8	|
	< a a' >4 < a a' >8 < a, a' >4 < a a' >8		|
	< d d' >4 r8
		\bar "||"
		r4 r8						|
		
	\stemDown a''4 a8 a4 a8					|
	< a cis e >4._\f a,8 bes a				|
	g a g f^\p g f						|
	e4 r8 r4 r8						|
	\stemDown < d'' f >4 < d f >8( < a c >4) < a c >8	|
	< bes d >4 < bes d >8( g4) g8(				|
	a4) a8( \stemUp a,4) a8 \stemDown d4 r8 \bar "||"				
}

dynamics = {
	\partial 4. s4\p s8					|
	s2.							|
	s2.\f							|
	s2.							|
	s2.							|
	s2.							|
	s2.							|
	s2.							|
	
	s4 s8
	%%	\bar "||"
		s8 s4\p						|
	s2.							|
	s4-> s8\f s4.						|
	s2.							|
	s2.							|
	s2.							|
	s4. s4.\f						|
	s2.							|	
	s4.
	%%	\bar "||"
		s4 s8\p						|
	s2.							|
	s2.							|
	s2.							|
	s2.							|
	s2.							|
	s2.							|
	s2.							|
	s4.
	%%	\bar "||"
		s4.						|
		
	s2.							|
	s2.							|
	s4. s4. %%{ \p	%%}					|
	s4.	s4.\f						|
	s2.							|
	s2.							|
	s2. s4.							
}

\paper {
  betweensystempadding = #1
  raggedbottom=##f
  raggedlastbottom=##f
}

\book {
  \score {
       \new PianoStaff \with {
         \override VerticalAlignment #'forced-distance = #5
       } <<
		\context Staff=upper \PianoRH
		\context Dynamics = dynamics \dynamics
		\context Staff=lower \PianoLH
		>>
  
	\midi {
		\context {
			\type "Performer_group_performer"
			\name Dynamics
			\consists "Piano_pedal_performer"
		}
		\tempo 4=168
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
	
   \layout {
         \context {
           \type "Engraver_group_engraver"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           minimumVerticalExtent = #'(-1 . 1)
     
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"      
         }
         
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #7
         }         
       }
	}
	
\markup { "1st Lady and opposite Gent chasses to the right and left and swing quite round with right hand to place" }
\markup { "1st Lady and Gent and opposite couple change places and back again, 1st Lady and Gent passing in the" }
\markup { "centre and return to places passing outside, the 4th Gent joins left hands in the centre at the same" }
\markup { "time, their right hands to their partners, all forming a cross and ballotez, the Gents changes places" }
\markup { "with their partners: the 4 Ladies coming to the centre joining both left and right hands with each other," }
\markup { "forming a cage, the 4 Ladies with hands joined dance round to the left while the 4 Gents singly dance" }
\markup { "quite round the reverse way outside, then turn their partners to their places." }
\markup { "" }
\markup { "The other 6 do the same." }
\markup { "" }
\markup { "The 1st, 2nd and 3rd figures commence with the 2nd part of each tune." }
}

