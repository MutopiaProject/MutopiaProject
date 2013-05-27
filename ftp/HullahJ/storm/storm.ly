\paper { linewidth = 7.0 \in
			topmargin = 1 \in
			bottommargin = 0.75 \in
			aftertitlespace = .75 \in
			footsep = .5 \in
		
		}



\include "english.ly"
\version "2.6.0"
#(set-global-staff-size 16.5)

\header {
  title = "The Storm"
  subtitle = " "
  subsubtitle = " "
  composer = \markup {\column {"John Hullah" "(1812-1884)"}}
  poet = \markup {\column {"Adelaide Procter" "(1825-1864)"}}
  instrument = ""  
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  
  
  % These are headers used by the Mutopia Project 
  % http://www.mutopiaproject.org/ 
  mutopiatitle = "The Storm" 
  mutopiacomposer = "HullahJ" 
  mutopiapoet = "Procter A" 
  mutopiainstrument = "Voice and Piano" 
  date = "1812-1884" 
  source = "C. M. Cady, Pub. 1878"
  maintainer = "Stan Sanderson" 
  maintainerEmail = "physinfoman@ameritech.net"
  maintainerWeb = ""
  lastupdated = "2/23/2005"
  
  footer = "Mutopia-2005/10/09-607"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%% From the music book entitled "Parlor Gems" (a Choice Selection
%%% of Music, Instrumental and Vocal, by the 
%%% Best Composers, to which is added original
%%% Charades for Parlor Performance
%%% by C. M. Cady.
%%% Published in 1878 by C. M. Cady, 107 Duane St., New York.
%%% The complete title is

melody =  \relative c'' {
	\key c \minor \time 6/8
	R2.^\markup {\small \italic "Con moto."} R2.*2 r4 r8 r4 s8\segno \bar "|." 
	
	s4 s4. g8 | g4 g8 c4 g8 | af4 c8 g4 g8 |
%%	<<{ g4 }\\{\set fontSize = #-2 g8 g8}>> 
	g4 g8 c4 g8 |
	af4 c8 g4 g8 | ef'4 ef8 d4 g,8 | c4 g8 bf4(\fermata af8) | \bar "|."
	\time 4/4
	g4^\markup {\small \italic "a piacere."} g \acciaccatura bf8 af4 g | f4. g8 g4 {\set fontSize = #-1 g4 } |
	\time 6/8
	af8^\markup {\small \italic "a tempo 1mo."} ~ af af g4 g8 | f4 c'8 bf4 ef,8 |
%%% page 2 Measure 16
	af4 af8 g4 g8 | f4 c'8 b4 g8 | ef'^\markup {\small \italic "slentando."} 
		~ ef ef d4 b8 | c4 g8 bf4(\fermata af8) |
	\bar "|."
	\time 4/4
	g4^\markup {\small \italic "a placere."} g \acciaccatura bf8 af4 g | 
	f4. g8 g2\fermata |
	e4 e \acciaccatura g8 f4 e | d4. c8 c2\fermata | \bar "|."
	\time 6/8
	R2. | r4 r8 r4 s8\segno \bar "|."
%%% verse 4
	s4.s4 g'8 |
	\key c\major
	g4^\markup {\small \italic "un poco meno mosso."} g8 c4 g8 | a4 c8 g8 g g |
	g4 g8 c4 g8 | a4 c8 g4 g8 |
	e'4 e8 d b4 | c4 g8 b4(\fermata a8) |
	R2.^\markup {\small \italic \small \column { Pausa lunga.}} | \bar "|."
	\time 4/4
	c,4^\markup {\small \italic "a placere."} e8 f g4 g | a4. g8 g2 |
	g4^\f g8 g a4 c | d2. c4 | c1 ~ c1\fermata \bar ".|."
	
	
}

textA = \lyricmode { \set fontSize = #-1
	\set stanza = "1."
	The tem -- pest ra -- ges wild and high,
	The waves lift up their voice and cry
	Fierce an -- swers to the an -- gry sky __
	Mi -- se -- re -- re  Do -- mi -- ne. \skip4
	Thro'_the black night and driv -- ing rain, 
	A ship is strug -- gling, all in vain
	To live up -- on the storm -- y main.
	
	}

textB = \lyricmode {  \set fontSize = #-1
	\set stanza = "2."
	The thun -- ders roar, the light -- nings glare,
	Vain8 is8 it8 now to strive or dare;
	A cry goes up of great des -- pair __
	Mi -- se -- re -- re Do -- mi -- ne. The
	storm -- y voi -- ces of the main, 
	The moan -- ing wind and pelt -- ing rain, 
	Beat on the nurs -- 'ry win -- dow pane.
	}
	
textC = \lyricmode {  \set fontSize = #-1
	\set stanza = "3."
	Warm cur -- tain'd was the lit -- tle bed,
	Soft pil -- low'd was the lit -- tle head,
	The storm will wake the child, they said__
	Mi -- se -- re -- re Do -- mi -- ne. \skip4
	Cow'ring a -- mong his pil -- lows white,
	He prays, his dim eyes wild with fright, 
	Fa -- ther, save those at sea to -- night!
	Mi -- se -- re -- re Do -- mi -- ne, 
	Mi -- se -- re -- re Do -- mi -- ne.
 
	\set stanza = "4."
	The morn -- ing shone, all clear and gay,
	On a ship at an -- chor in the bay,
	And on a lit -- tle child at play! __
	Glo -- ri -- a Ti -- bi Do -- mi -- ne,
	Glo -- ri -- a Ti -- bi Do __ mi --  ne __

	}

textD = \lyricmode {
	\skip 2. \skip 2. \skip 2. \skip 2. \skip 2. 
	\skip 2. \skip 2. \skip 2. \skip 2. \skip 2. 
	\skip 2. 
	\skip 1 \skip 1 
	\skip 2. \skip 2. \skip 2. \skip 2. \skip 2. \skip 2. 
	\skip 1 \skip 1 \skip 1 \skip 1 
	\skip 2. \skip 2. 
	\set stanza = "4."
	The morn-ing shone, all clear and gay,
	On a ship at an-chor in the bay,
	And on a lit-tle child at play!__
	\skip 1
	Glo-ri-a Ti-bi Do-mi-ne,
	Glo-ri-a Ti-bi Do __ mi - ne__
	}



upper = \relative c' {   
	\key c \minor \time 6/8 
	\set doubleSlurs = ##t
	<ef ef'>4.( <d d'>8) r8 g | 
	<c, c'>4. <b b'>8 <c c'> <d d'> |
	<ef ef'>8 r r <f c' f> r r | 
	<g b g'>4. ~ <g b g'>8 r8 s8  |
	\bar "|."
	
	\set doubleSlurs = ##f
	r8 s4 s4.| 
	r8 g,( <c ef>) r g( <c g'>) |
	r8 af( <c d>) r g( <d' f g>) |
	r8 g,( <c ef>) r g( <c g'>) |
	r8 af( <c d> r g( <d' f g>) |
	r8 ef( <g ef'>) r d( <g d'>) |
	r8 c,( <ef c'>) r bf( <d af'>)\fermata |
	\time 4/4
	<bf ef g>2 <<{ <c af'>4 <bf g'> <bf f'>2 }\\{ef2 ~ ef4 d}>> 
		<bf ef g>4. r8 | \bar "|."
	\time 6/8
	r8 af( <ef' af>) r bf( <ef g>) |
	r8 c( <ef f>) r bf( <ef bf'>) |
%%% page 2 measure 16
	r8 af,( <ef' af>) r bf( <ef g>) |
	r8 c( <d f>) r b( <d g>) |
	<g, c ef> <g c ef> <g c ef> <g b f'> <g b f'> <g b f'> |
	<g c g'> <g c g'> <g c g'> <<{<bf g'>4\fermata}\\{c4}>> <af f'>8 |
	\time 4/4
	<g c ef>2 <<{ <af d>4 <g ef'>}\\{c2}>> | <af c f>2 <g b g'>\fermata |
	<g c e>2 <<{ <a f'>4 <g e'> }\\{c2}>> |
	<<{<g d'>2 }\\{c4 b}>> <g c e>4 <c c'> ~ | 
	\time 6/8
	\set doubleSlurs = ##t
	<c c'>4 g'8 <bf, bf'>4 <af af'>8 |
	<g g'>4. ~ <g g'>8 r8 s8 |
%%% verse 4 	
	s4.s4 r8 |
	\key c \major
	\set doubleSlurs = ##f
	r16 g( c e g c) e( c g e c g) |
	r16 a( c f a c) e( c g e c g) |
	r16 g( c e g c) e( c g e c g) |
	r16 a( c f a c) e( c g e c g) |
	<g c e>8 <g c e>8 <g c e>8 <g b f'> <g b f'> <g b f'> |
	<g c g'> <g c g'> <g c g'> <b c g'>4(\fermata <a f'>8) |
	R2.
	\time 4/4
	<<{c4 e8 f g2}\\{c,2 c4 b4}>> |
	<c a'>2 <e g> | <c e> <a c f>4 <g c g'> |
	<<{<d' f>1}\\{c4 b8 a b g a b}>> |
	\repeat "tremolo" 8 {<c e>32 g } 
	\repeat "tremolo" 8 { <c e>32 g} |
	<c e>1\fermata

}

lower = \relative c {
	\key c \minor \time 6/8 
	\set doubleSlurs = ##t
	R2. | <ef ef,>4.( <d, d'>8) r8 g8 |
	<c, c'>8 r r <af af'> r r | 
	<g g'>4. ~ <g g'>8 r8 s8 | 
	r8 s4 s4.| 
	
	<c c'>8 r r <ef ef'> r r |
	<f f'>8 r r <b, b'> r r |
	<c c'>8 r r <ef ef'> r r |
	<f f'>8 r r <b, b'> r r |
	<c c'>8 r r <bf bf'> r r |
	<af af'>8 r r <bf bf'>\fermata r r |
	\time 4/4 
	<ef ef'>2 <af, af'>4 <ef' ef'> |
	<bf bf'>2 <ef, ef'>4. r8 |
	\time 6/8
	<cf' cf'>8 r r <bf bf'> r r |
	<af af'>8 r r <g g'> r r |
%%% page 2 measure 16
	<c c'>8 r r <bf bf'> r r |
	<af af'> r r <g g'> r r |
	<c c'> <c c'> <c c'> <d d'> <d d'> <d d'>  |
	<e e'> <e e'> <e e'>  <f f'>4._\fermata |
	\time 4/4
	<c c'>2 <f f'>4 <ef ef'>4 | <d d'>2 <g, g'>\fermata |
	<c c'>2 <f, f'>4 <c' c'> | <g g'>2 <c c'>4 r |
	<e, e'>4. <f f'>4. | <g g'>4. ~ <g g'>8 r s |
	s4. s4 r8 |
	\key c\major
	<e' e'>4.( <c' g'>8) r r | <f, f'>4.( <c' g'>8) r r |
	<e, e'>4.( <c' g'>8) r r | <f, f'>4.( <c' g'>8) r r |
	c,8 c c d d d | e e e f4.\fermata | R2. |
	\time 4/4
	<<{e'4. d8}\\{a2}>> <g d'>2 | <f f'>4 <a f'> <c g'>2 |
	<c g'>2 f,4 e |
	\repeat "tremolo" 8 {g,32 g'}
	\repeat "tremolo" 8 {g,32 g'}
	\repeat "tremolo" 8 {c,32 c'}
	\repeat "tremolo" 8 {c,32 c'}
	<c, c' e g>1\fermata |
}

dynamics = { s8\mf s4 s4. s8\sfz s4 s4. s8\f s4 s4. s4\sfz s4. s8
			s2. s8\f s4 s4. s2. s2. s2. s8\f s4 s4. s4. 
			s8_\markup {\italic \small dim} s4
			%%%line3
			s2^\markup {\italic \small "colla voce."} s2 s1
			s8\p s4 s4. s2. s8^\markup {\italic \small cres.} s4 s4.
			s2. s8\mf s4 s4. s4. s8\sfz s4
%%% line 2, p 2
			s2^\markup {\italic \small "colla voce."} s2 s1 s1 s1
			s4^\markup {\italic \small slentando} s4. s8 s2. s2.
			s8\p s4 s4. s2. s2. s2. s2. s2. 
			s8^\markup {\italic \small \column { Pausa lunga.}} s4. s4
			s2\f s2 s2\f s2 s2\ff s2 s1 s1 s1 
			
		
	}
	
	
\score {
 	<<
      \context Voice = "mel" {
	  \autoBeamOff
	  \melody
      }
		\lyricsto mel \new Lyrics \textA
		\lyricsto mel \new Lyrics \textB
        \lyricsto mel \new Lyrics \textC 
	
					
     \context PianoStaff <<
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
           \clef bass
           \lower
         >>
%         \context Dynamics=pedal \pedal
         >>
       >>
       \layout {
         \context {
           \type "Engraver_group_engraver"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           minimumVerticalExtent = #'(-1 . 1)
           pedalSustainStrings = #'("Ped." "*Ped." "*")
           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
           \consists "Piano_pedal_engraver"
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
       \midi {
         \context {
           \type "Performer_group_performer"
           \name Dynamics
           \consists "Piano_pedal_performer"
           \consists "Span_dynamic_performer"
           \consists "Dynamic_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }

}
