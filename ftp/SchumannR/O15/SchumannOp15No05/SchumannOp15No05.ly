% PaulLiu
% 
\version "2.6.0"
\header {
 title = "Kinderscenen"
 subtitle = "Glückes genug"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Glückes genug"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "O 15 N 5"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 lastupdated = "2006/Feb/01"

 footer = "Mutopia-2006/02/01-372"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

fingerDU = \set fingeringOrientations = #'(down up)
fingerD = \set fingeringOrientations = #'(down)
fingerUL = \set fingeringOrientations = #'(up left)
fingerUR = \set fingeringOrientations = #'(up right)
fingerU = \set fingeringOrientations = #'(up)
fingerL = \set fingeringOrientations = #'(left)
fingerLRUD = \set fingeringOrientations = #'(left right up down)


repeattr =  {
	\relative c {
		\partial 8
		\context Voice = "repeattr" {
			s8 | s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2 s2 s2 s2
			\bar "|."
		}
	}
}

dynamictr =  {
			s16\p s16
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
}

pedaltr =  {
			s8
			s2
			s2
			s2
			s2
			s2
			s2
			s16\sustainDown s16 s8 s16 s16\sustainUp s8
			s2
			s16\sustainDown s16 s8 s8 s16 s16\sustainUp
			s2
			s2
			s2
			s2
			s2
			s16\sustainDown s16 s8 s16 s16\sustainUp s8
			s2
			s16\sustainDown s16 s8 s8 s16 s16\sustainUp
			s2
			s4 s8 s32\sustainDown s32 s32 s32\sustainUp
			s2
			s16\sustainDown s16 s8 s16 s16\sustainUp s8
			s2
			s2
			s2
}			

viola =  {
	\relative c'' { 
		\context Voice = "viola" {
			\stemUp
			\phrasingSlurUp
			\slurUp
			\dynamicUp
			\override Voice.Rest #'staff-position = #4
			<gis-3>8\p (
			<a-4> \< [ <cis> <fis-5>\! <e-4> ] 
			<d-5> <a-3> ) r8 <a-4>^.
			<a-5>16 ( [ <e-3>16^. ] ) <e-2> ( [fis] g8 b
			a [ <fis-4> ] e ) <gis-4>^> (
			<a-5>4^> ) r8 <cis,-3>8 (
			<d-4>\< [ <fis> <b-5>\! <a-4> ]
			<g-5> [ <b-3> e\> d^"rit." ]
			<cis-4> [ <b-5>\! <a-4> ] ) <gis-3>^"(a tempo)" (
			<a-4> \< [ <cis> <fis-5>\! <e-4> ]
			<d-5> <a-3> ) r8 <a-4>^.
			<a-5>16 ( [ <e-3>16^. ] ) <e-2> ( [fis] g8 b
			a <fis-4> e ) <gis-4>^> (
			<a-5>4^> ) r8 <cis,-3>8 (
			<d-4>\< [ <fis> <b-5>\! <a-4> ]
			<g-5> [ <b-3> e\> d^"rit." ]
			<cis-4> [ <b-5>\! <a-4> ] ) <a-4>^"(a tempo)" (
			<bes-3>\< [ e a\! g ]
			f <c-3> ) r8 <c-4>^.
			<c-5>16 ( [ <g-3>16^. ] ) <g-2> ( [a] bes8 d
			c8 <a-4> <g-3> ) <a-4> (
			<bes-3>\< [ e a\! g ]
			<fis-5> [ <cis-3> e d ]
			<b-5> [ <fis-3> a^"ritardando" g ]
			<fis-4> <e-5> <d-4>4 )
		}
	}
}

violatwo =  {
	\relative c'' { 
		\context Voice = "violatwo" {
			\stemDown
			\phrasingSlurUp
			\slurUp
			\fingerD
			\override Voice.Rest #'staff-position = #-4
			gis16 <e g>16
			a <e g> cis' \fingerD <g-1 a-2> fis' <g, a> e' <g, a>
			d' <d, fis> a' <d, fis> r16 <d fis> a' <d, fis>
			a' [<cis,-1>] <cis-1>8 g'16 <cis, e> b' <b, g'>
			a' \fingerL <a, fis'-3> fis' <a, d> e' [<a, cis>] gis' [<e g>] 
			a [<e g> r16 <g, a>] r16 <g a> cis <g a>
			d' <fis, a> fis' <a, d> b' <d, fis> a' <d, fis>
			g \fingerU <g, d'-2> b' <d, g> e' <e, g> d' <d, g>
			cis' <cis, g'> b' <d, g> a' [<dis, g>] gis [<e g>]

			a <e g> cis' \fingerD <g-1 a-2> fis' <g, a> e' <g, a>
			d' <d, fis> a' <d, fis> r16 <d fis> a' <d, fis>
			a' [<cis,-1>] <cis-1>8 g'16 <cis, e> b' <b, g'>
			a' \fingerL <a, fis'-3> fis' <a, d> e' [<a, cis>] gis' [<e g>] 
			a [<e g> r16 <g, a>] r16 <g a> cis <g a>
			d' <fis, a> fis' <a, d> b' <d, fis> a' <d, fis>
			g \fingerL <g, d'-2> b' <d, g> e' <e, g> d' <d, g>
			cis' <cis, g'> b' <d, g> a' [<dis, g>] a' [<e g>]

			bes' <e, g> e' <g, bes> a' <g, bes> g' <g, bes>
			f' <f, a> c' <f, a> r16 <f a> c' <f, a>
			c' [<e,-1>] <e-1>8 bes'16 <e, g> d' <c, bes'>
			c' <c, a'-3> a' <c, f> g' [c,] a' [<e g>]
			bes' <e, g> e' <g, bes> a' <g, bes> g' <g, bes>
			fis' <fis, a> cis' <g a> e' <e, a-2> d' <d, a'-3>
			b' <d, g-4> fis <c d> a' <a, d-2> g' <g, d'>
			fis' <a, d> e' <g, cis> d' <fis, a>8. 
			
		}
	}
}

oboes =  {
	\relative c'' { 
		\context Voice = "oboe" {
			\stemNeutral
			\change Staff=up
		}
	}
}

oboestwo =  {
	\relative c' { 
		\context Voice = "oboetwo" {
			\stemNeutral
			\change Staff=up
		}
	}
}


bassvoices =  {
	\relative c {
		\context Voice = "bassvoice" {
			\stemDown
			\phrasingSlurDown
			\slurDown
			\fingerD
			s8
			s2
			<a-5>2
			a16 ([g'_.]) <g-2> ([fis] e8) a,, (
			<d-3>8 fis a4 )
			a2
			s2
			s2
			s2
			s2
			<a-5>2
			a16 ([g'_.]) <g-2> ([fis] e8) a,, (
			<d-3>8 fis a4 )
			a2
			s2
			s2
			s2
			s2
			<c-5>2
			c16 ([bes'_.]) <bes-2> ([a] g8) c,, (
			f8 <a-3> c4 )
			s2
			s2
			s2
			<a-1>8 a,8 <d-3>4
		}
	}
}

bassvoicestwo =  {
	\relative c {
		\context Voice = "bassvoicetwo" {
			\stemUp
			\phrasingSlurDown
			\slurUp
			\tieUp
			\dynamicDown
			\fingerU
			r8 
			<a, a'>8^.\p \dynamicUp r8 r8  <cis'-4>8 (  
			<d-3> \< [ fis b\! <a-1> ] )
			a,16 [a'] <a-1>8 ~ a8 a, ~
			a2
			\grace { a,8 ( }  a'8\< ) [ ( <cis-3> <fis-1>\! <e-2> ]
			<d, d'>4. ) \fingerD <c-4 c'>8 \(
			<b-5 b'>4. <bes-4 bes'>8
			<a-5 a'> [ <b b'> <bis-4 bis'> <cis-3 cis'> ~ ]
			<cis cis'> a \) r8 \fingerU <cis'-4> (

			<d-3> \< [ fis b\! <a-1> ] )
			a,16 [a'] <a-1>8 ~ a8 a, ~
			a2
			\grace { a,8 ( }  a'8\< ) [ ( <cis-3> <fis-1>\! <e-2> ]
			<d, d'>4. ) \fingerD <c-4 c'>8 \(
			<b-5 b'>4. <bes-4 bes'>8
			<a-5 a'> [ <b b'> <cis-4 cis'> <c c'>^>^"(ten.)" ~ \) ]
			\fingerU <c c'>4. <e'-4>8 ( 
			<f-3>8\< [ a  <d-1>\! <c-1> ] )
			c,16 [d'] <d-1>8 g, e (
			f4 e )
			\fingerD <c, c'>4. \( <cis-4 cis'>8
			<d-5 d'> [<e e'> <f f'> <fis-4 fis'>]
			\stemDown <g-5 g'> [<a a'> <bes-4 bes'>^> <b b'>] \stemUp
			<a>4 ~ a4 \)
			
		}
	}
}


\score {
	\context PianoStaff  <<
		\context Staff = "up" <<
			\key d \major 
			\time 2/4
			\viola
			\violatwo
			\oboes
			\repeattr
		>>
		\context Dynamics = "dynamics" \dynamictr
		\context Staff = "down" <<
			\clef bass
			\key d \major
			\time 2/4
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
			\consists "Output_property_engraver"
			
			minimumVerticalExtent = #'(-1 . 1)
			
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
		\tempo 4 = 84
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


