% PaulLiu
% 
\version "2.6.0"
\header {
 title = "Kinderscenen"
 subtitle = "Traümerei"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Traümerei"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "O 15 N 7"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 lastupdated = "2005/Dec/26"

 footer= "Mutopia-2005/12/27-504"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

fingerDU = \set fingeringOrientations = #'(down up)
fingerD = \set fingeringOrientations = #'(down)
fingerUL = \set fingeringOrientations = #'(up left)
fingerUR = \set fingeringOrientations = #'(up right)
fingerU = \set fingeringOrientations = #'(up)
fingerL = \set fingeringOrientations = #'(left)
fingerLRUD = \set fingeringOrientations = #'(left right up down)

tempotr =  {
%%1-5
			s16\tempo 4=100 \override Score.MetronomeMark #'transparent = ##t s16\tempo 4=56 s8 
			s1 s1 s1 s1 
%%6-10
			s1 s1 s1 s8\tempo 4=53 s8\tempo 4=50 s8\tempo 4=47 s8\tempo 4=44 s8\tempo 4=41 s8\tempo 4=38 s8\tempo 4=35 s8\tempo 4=33 s16\tempo 4=56 s16 s8 s4 s4 s4
%%11-15
			s1 s1 s1 s1 s1
%%16-20
			s1 s4 s4 s8\tempo 4=50 s8\tempo 4=45 s8\tempo 4=40 s8\tempo 4=35 s16\tempo 4=56 s16 s8 s4 s2 s1 s1
%%21-25			
			s1 s1 
			s8 s8 s8 s8\tempo 4=30 s8\tempo 4=56 s8\tempo 4=55 s8\tempo 4=54 s8\tempo 4=53 
			s8\tempo 4=52 s8\tempo 4=51 s8\tempo 4=50 s8\tempo 4=49 s8\tempo 4=48 s8\tempo 4=47 s8\tempo 4=46 s8\tempo 4=45 
			s8\tempo 4=44 s8\tempo 4=43 s8\tempo 4=42 s8\tempo 4=41 s8\tempo 4=20 s8\tempo 4=19 s8\tempo 4=18 s8\tempo 4=17
}


repeattr =  {
	\relative c {
		\context Voice = "repeattr" {
%%1-5
			\partial 4
			s4 |
			\repeat volta 1 {
			s1 s1 s1 s1 
%%6-10
			s1 s1 s1 s1 } s1
%%11-15
			s1 s1 s1 s1 s1
%%16-20
			s1 s1 s1 s1 s1
%%21-25
			s1 s1 s1 s1 s1
			\bar "|."
		}
	}
}

dynamictr =  {
%%1-5
	s4\p
	s1 s1 s1 s1 
%%6-10
	s1 s1 s1 s1 s1
%%11-15
	s1 s1 s1 s1 s1
%%16-20
	s1 s1 s1 s1 s1
%%21-25
	s1 s1 s1 s1 s1
}

pedaltr =  {
%%1-5
			s4 
			s4\sustainDown s2. 
			s8\sustainUp s8\sustainDown s2 s4\sustainUp
			s1 
			s1
%%6-10
			s4\sustainDown s2.
			s8\sustainUp s8\sustainDown s2 s8 s8\sustainUp 
			s1 
			s1
			s8\sustainDown s8 s2 s8 s8\sustainUp
%%11-15
			s1 
			s1 
			s1  
			s8\sustainDown s8 s2 s8 s8\sustainUp
			s1
%%16-20
			s1 
			s1 
			s4\sustainDown s2. 
			s8\sustainUp s8\sustainDown s2 s4\sustainUp
			s1
%%21-25
			s1 
			s4\sustainDown s2. 
			s4\sustainUp s2\sustainDown s8 s8\sustainUp
			s1 
			s4 s4\sustainDown s4\sustainUp s4
}			

viola =  {
	\relative c' { 
		\context Voice = "viola" {
			\stemUp
			\phrasingSlurUp
			\slurUp
			{
				\override TextScript  #'direction = #1
				\override Script  #'direction = #1
			}
			\tieUp
			\dynamicUp
			\fingerLRUD
%%1-5
			\dynamicDown c4-2 ( 
			<f-5>2 ~ \dynamicUp f8\p ) e-2\< ( [ f-3 a-1 ]
 			c8 f-4\! ) f2-5 ( e8 d
 			c8 [f] ) g,-2 ( [a-4] bes-3 [d] ) f,-3 ( [<e g>8]
			\fingerU <f-2 a-3>8 [c'] \fingerLRUD <e, g-3>2 ) c4-2 (
%%6-10			
			f2-5 ~ f8 ) e-2\< ( [ f a-1 ]
			c8 [a']\! )  a4. \( g8-4 f e
			f8-4 a d, f-5 e4.^\markup { \finger "4-5" } ees8-5
			d4^\markup{\finger "5-4"}^"ritard." e \acciaccatura{ c8-3 } c2*1/2-4 \) r8 c,8-2 (
			f2-5^"(a tempo)" ~ f8 ) e-2\< ( [f a-1] 
%%11-15
			c8-2 ees-3\! ) ees2-4 ( d8-5 c
			bes-3 d g,-2 a-4 bes4.-5 a8-4
			g4.^\markup { \finger "3-5" } d8-3 ~ d4 ) r8 f8-2 (
			bes2-5 ~ bes8 ) a-2 ( [bes d-1]
			f8 bes-5 ) bes2-4 ( a8-5 g
%%16-20
			f8 a d,-2 e-4 f4.-5 e8-4
			d4.^\markup { \finger "3-5" } a8-3 ~ a4^"ritard." g-5 ) \acciaccatura{c,8-2} 
			f2-5^"(a tempo)" ~ f8 e-2\< ( [f a-1]
			c8\! f-4 ) f2-5 ( e8 d
			c8 f ) g,-2 ( [a-4] bes-3 [d] ) f,-3 ( [<e g>]
%%21-25
			\fingerU <f-2 a-3> [c'] <e, g>2 ) c4-2 (
			f2 ~ f8 ) e-2\< ( [ f a-1 ]
			c8 [a']\! )  a4.^\fermata ( g8-5^"ritardando" f d-3
			c8-2 [f] ) g,-2 ( [a]-4 bes-3 [d] ) g,-3 ( [<fis a>] 
			\fingerU <g-2 bes-3> [d'] ) <d,-3> \p ( [<c e>] ~ <c f>2^\fermata )

		}
	}
}

violatwo =  {
	\relative c' { 
		\context Voice = "violatwo" {
			\stemDown
			\phrasingSlurDown
			\slurDown
			\tieDown
			\fingerLRUD
			\override Rest #'staff-position = #-10
%%1-5
			s4
			r4 \fingerL <f, c'-3>2. \fingerLRUD
			r4 f'2. ~
			f4 \fingerD <e-1>2 <c-1>4 ~ \fingerLRUD
			c4 c2 c4
%%6-10
			r4 \fingerL <f, c'-3>2.
			r4 <g'-1 a>2. ~ \fingerLRUD
			a4. \fingerD <aes-1>8 ( g <c-3> e, <fis-2> \fingerLRUD
			f2 ) e4 s4
			r4 \fingerL <f, c'-3>2. \fingerLRUD
%%11-15			
			c''8 \fingerD <bes-1> <a-2>2 <a-2>4 \fingerLRUD
			g4. s8 s2
			s4. \fingerD <c,-1>8 <bes-2>4 s4
			r4 \fingerL <bes f'-3>2. \fingerD
			f''4 e2_\markup{ \finger "1-2" } <e-2>4
%%16-20
			d4. s8 s2
			s4. <g,-2>8 f4 <e-3>
			r4 <f, c'>2.
			r4 f'2. ~
			f4 e2 c4 ~
%%21-25
			c4 c2 c4
			r4 <f, c'>2.
			r4 \fingerL <f'-1 g d'-2>2. ~
			f4 e2 d4 ~
			d4 \fingerU <bes-1> a2
			
		}
	}
}

oboes =  {
	\relative c' { 
		\context Voice = "oboe" {
			\stemNeutral
			\change Staff=up
%%1-5
			s4 s1 s1 s1 s1 
%%6-10
			s1 s1 s1 s1 s1
%%11-15			
			\change Staff=down \stemUp s8 \slurUp \phrasingSlurUp \fingerU g8-1 ( fis^\markup{ \finger "2-3" } [a] d ) \change Staff=up \stemDown fis s4
			\change Staff=up s4. ees8 ( d g bes, c 
			\change Staff=down \stemUp bes8-2 d g, )  \tieUp a~ a g-1 g, a \stemNeutral
			s1
			\change Staff=down \stemUp s8 d'8-1 ( cis^\markup{\finger "2-3"} [e] a ) \change Staff=up \stemNeutral cis s4
%%16-20			
			s4. \change Staff=up \slurDown \stemDown \fingerD <bes-1>8 ( a d ) f, ( g 
			f <a-2> \change Staff=down \stemUp \fingerU <d,-1> ) \fingerDU <cis-3 e-2> \fingerU s4 s8 s8 \stemNeutral
			s1 s1 s1
%%21-25			
			s1 s1 s1 s1 s1
		}
	}
}

oboestwo =  {
	\relative c' { 
		\context Voice = "oboetwo" {
			\change Staff=up
			\stemNeutral
		}
	}
}


bassvoices =  {
	\relative c {
		\context Voice = "bassvoice" {
			\stemUp
			\phrasingSlurUp
			\slurUp
			\fingerLRUD
			{
  				\override TextScript  #'direction = #1
				\override Script  #'direction = #1
			}
			\tieUp
%%1-5
			r4
			f,1 ~
			\tieDown f4 \tieUp d''2 ( c8-1 bes
			a4-1 ) bes8-2 ( a-1 g4^\markup{\finger "2-1"} ) f8-2 ( g-1
			a4-1 g2-1 ) r4
%%6-10			
			\tieDown f,1 ~ 
			f4 \tieUp e''2.
			d4. s8 s4. c8-2 (
			b8 g' a, b-2 c ) r8 r4
%%11-15
			f,,1
			r8 s8 s4 d''2 ~
			d4. s8 s2
			s1
			s1
			r8 s8 s4 a'2 ~
%%16-20			
			a4. s8 s2
			s2 d,4-1 c8-1 r8
			\tieDown f,,1 ~
			f4 \tieUp d''2 ( c8-1 bes
			a4-1 ) bes8-2 ( a g4^\markup{\finger "2-1"} ) f8-2 ( g-1
%%21-25
			a4-1 g2-1 ) r4
			\tieDown f,1 ~
			f4 \tieUp s2.
			s4 bes'8-2 ( a-2 g4-3 ) s4
			s4 <c, g'>4 ~ \fingerD <c f,-3>2_\fermata
		}
	}
}

bassvoicestwo =  {
	\relative c {
		\context Voice = "bassvoicetwo" {
			\stemDown
			\phrasingSlurDown
			\slurDown
			\fingerLRUD 
			\dynamicDown
			\tieUp
%%1-5			
			s4
			f,4 \stemUp \tieUp \fingerL <c'-3 a'>2. ~
			<c a'>4 \fingerLRUD \tieDown \grace{ bes16 [f'] ~ } \stemDown \fingerD <f-3>2.
			<c-5>4 c2 \p <a-5>8 \< ( <c-4>8
			<f-2>4 \! ) <c-4>8 ( <d-2> c bes g a 
%%6-10
			f4 ) \stemUp \tieUp \fingerL <c'-3 a'>2. ~
			 <c a'>4 \grace{ cis16 [a'] ~ } \tieDown \stemDown a2. ~
			<a d,>4. \tieUp \fingerD <f-4 c'>8 ~ <g_\markup{\finger "3-5"} c>4. \tieDown <a-4>8
			g2 c,8 ( <d-2> <bes-3> <g-4>
			f4 ) \stemUp \fingerL <c'-3 a'>2. \stemDown
%%11-15
			s8 \fingerD <c-5>8 d2_\markup{\finger "4-5"} ~ d8 <fis-4>8
			g4._\markup{\finger "3-1"} \fingerDU <c,-4 fis-2>8 <d_\markup{\finger "3-5"} g-1>4. \fingerD <ees-4>8
			d4. d8 ( ~ d g <g,-5> <a-1>
			bes,4 ) <f''-4 d'>2.
			s8 <g-5>8 a2_\markup{\finger "4-5"} ~ a8\< <cis-4>
%%16-20
			d4.\!_\markup{\finger "3-1"} \fingerDU <g,-5 cis-2>8 <a-4 d-1>4. \fingerD bes8-3
			a2-5 ~ a8 [ <bes-3> ] ~ bes [ <c,-4> ]
			f,4 \stemUp \tieUp \fingerL <c'-3 a'>2. ~
			<c a'>4 \tieDown \grace{ bes16 [f'] ~ } \stemDown f2.
			c4 c2 \fingerD <a-5>8 ( <c-4>8
%%21-25
			<f-2>4 ) <c-4>8 ( <d-2> c bes g a
			f4 ) \stemUp \tieUp \fingerL <c'-3 a'>2. ~
			<c a'>4 \tieDown <g-5 b-4 b'>2.^\fermata \stemDown
			<c a' c>4 c2 \slurUp \fingerDU <bes-5 g'-2>8 ( <d-4 a'-1>8
			<g-2 bes-1>4 ) \fingerD c,8_\markup{\finger "3-1"} c, s2
		}
	}
}


\score {
	\context PianoStaff <<
		\context Staff = "up" <<
			 { 
				\key f 
				\major 
				\time 4/4 
			}
			\repeattr
			\tempotr
			\viola
			\violatwo
			\oboes
		>>
		\context Dynamics = "dynamics" \dynamictr
		\context Staff = "down" <<
			\clef bass
			 {
				\key f 
				\major
				\time 4/4
			}
			\oboestwo
			\bassvoicestwo
			\bassvoices
		>>
		\context Dynamics = "pedal" \pedaltr
	>>
	\layout {
		\context {
			\type "Engraver_group_engraver"
			\name Dynamics
			\alias Voice % So that \cresc works, for example.
			\consists "Output_property_engraver"
			
			\consists "Piano_pedal_engraver"
			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"

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
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}
