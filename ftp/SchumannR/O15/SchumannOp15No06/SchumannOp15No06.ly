% PaulLiu
% 
\version "2.0.0"
\header {
 title = "Kinderscenen"
 subtitle = "Wichtige Begebenheit"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Wichtige Begebenheit"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "O 15 N 6"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "MutopiaBSD"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 lastupdated = "2003/Nov/29"
 tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
 footer = "Mutopia-2003/11/29-374"
}

%\include "paper16.ly"

stemDown = \property Voice.Stem \override #'direction = #-1
stemUp = \property Voice.Stem \override #'direction = #1
stemBoth = \property Voice.Stem \revert #'direction
slurUp = \property Voice.Slur \set #'direction = #1
pslurUp = \property Voice.PhrasingSlur \set #'direction = #1
slurDown = \property Voice.Slur \set #'direction = #-1
pslurDown = \property Voice.PhrasingSlur \set #'direction = #-1
tripletbr = \property Voice.TupletBracket \set #'tuplet-bracket-visibility = ##t
fingerDU = \property Voice.fingeringOrientations = #'(down up)
fingerD = \property Voice.fingeringOrientations = #'(down)
fingerUL = \property Voice.fingeringOrientations = #'(up left)
fingerU = \property Voice.fingeringOrientations = #'(up)
repeattr = \notes {
	\relative c {
		\context Voice = repeattr {
			\partial 4
			s4 |
			s2. s2. s2. s2. s2. s2. s2. s2 \repeat volta 1
			{ s4
			s2. s2. s2. s2. s2. s2. s2. s2 } s4
			s2. s2. s2. s2. s2. s2. s2. s2
			\bar "|."
		}
	}
}

dynamictr = \notes {
	s4\f s2. s2. s2. s2 s4\mf
	s2. s8\> s8 s4 s4 s4 s4 s8 s8\! s2 s4\ff s2.
	s2. s2. s2. s8\< s8 s4 s8 s8\! s2.
	s2. s2 s4\f s2. s2. s2.
	s2 s4\mf s2. s8\> s8 s4 s4 s4 s4 s8 s8\! s2
}

pedaltr = \notes {
}			

viola = \notes {
	\relative c'' { 
		\context Voice = viola {
			\stemUp
			\pslurUp
			\slurUp
			\scriptUp

			\stemDown \fingerDU <cis-1 e-2 a-5>4 (
			<b e gis-4>8. ) <a dis fis-5>16 <gis cis e-4>4^^ \fingerUL <a cis-3 fis-5>-^
			<fis b dis-4>4-^ <gis b e>-^ \stemUp \fingerU <b-4 d-5>4 (
			<e, a cis-4>8. ) <d gis b-5>16 <cis fis a-4>4-^ \fingerUL <d fis-3 b-5>-^
			<b e gis-4>4-^ <cis e a>-^ <cis e a> (
			<b e gis-4>8. ) <a dis fis-5>16 <gis cis e-4>4-^ <a cis-3 fis-5>-^ 
			\clef bass \stemDown <fis b dis-4>4-^ <gis b e>4-^ \stemUp \fingerU <b-4 d-5> ( \fingerUL \stemDown
			<e, a cis-4>8. ) <d gis b-5>16 <cis fis a-4>4-^ <d fis-3 b-5>-^
			<b e gis-4>4-^ <cis e a>-^ \clef violin \stemUp
			<a' cis e a>4
			<a d fis a>2 <a d fis a>4
			<d e g b>2-^ <d e g b>4
			<g, a cis e>4-^ <g a cis e>-^ <g a cis e>-^
			\dynamicUp <c d a'>2.\sf
			<g c d-4>4-^ <g c d>4-^ <g c d>4-^ 
			<g b d>-^ <g d' g>-^ <a d fis-4>-^
			<b d e-3>8.-^ <b d fis>16 <b d g>4-^ <g a cis e>-^
			<fis a d-4>-^ r4

			\stemDown \fingerDU <cis''-1 e-2 a-5>4 (
			<b e gis-4>8. ) <a dis fis-5>16 <gis cis e-4>4^^ \fingerUL <a cis-3 fis-5>-^
			<fis b dis-4>4-^ <gis b e>-^ \stemUp \fingerU <b-4 d-5>4 (
			<e, a cis-4>8. ) <d gis b-5>16 <cis fis a-4>4-^ \fingerUL <d fis-3 b-5>-^
			<b e gis-4>4-^ <cis e a>-^ <cis e a> (
			<b e gis-4>8. ) <a dis fis-5>16 <gis cis e-4>4-^ <a cis-3 fis-5>-^ 
			\clef bass \stemDown <fis b dis-4>4-^ <gis b e>4-^ \stemUp \fingerU <b-4 d-5> ( \fingerUL \stemDown
			<e, a cis-4>8. ) <d gis b-5>16 <cis fis a-4>4-^ <d fis-3 b-5>-^
			<b e gis-4>4-^ <cis e a>-^ \stemBoth
			
		}
	}
}

violatwo = \notes {
	\relative c' { 
		\context Voice = violatwo {
			\stemDown
			\pslurUp
			\slurUp
			\fingerD

			s4 
			s2.
			s4 s4 fis8 e8 
			s2.
			s2.
			s2.
			s4 s4 fis,8 e8
			s2.
			s2
			s4
			s2.
			s2.
			s2.
			s2.
			s2.
			s2.
			s2.
			s2
			s4 
			s2.
			s4 s4 fis'8 e8 
			s2.
			s2.
			s2.
			s4 s4 fis,8 e8
			s2.
			s2

		}
	}
}

oboes = \notes {
	\relative c'' { 
		\context Voice = oboe {
			\stemBoth
			\translator Staff=up
		}
	}
}

oboestwo = \notes {
	\relative c' { 
		\context Voice = oboetwo {
			\stemBoth
			\translator Staff=up
		}
	}
}


bassvoices = \notes {
	\relative c {
		\context Voice = bassvoice {
			\stemDown
			\pslurDown
			\slurDown
			\fingerD
			\scriptUp

			<a a'>8 <cis-4 cis'>
			<e e'>8. <bis bis'>16 <cis-4 cis'>4-^ <a a'>-^
			<b b'>-^ \stemUp <e, e'>-^ <fis-5 fis'>8 <gis-4 gis'> 
			<a a'>8. <eis eis'>16 <fis-4 fis'>4-^ <d d'>-^
			<e e'>-^ <a, a'>-^ <a a'>8 <cis-4 cis'>
			<e e'>8. <bis bis'>16 <cis-4 cis'>4-^ <a a'>-^
			<b b'>-^ <e, e'>-^ <fis-5 fis'>8 <gis-4 gis'>8
			<a a'>8. <eis eis'>16 <fis-4 fis'>4-^ <d d'>-^
			<e e'>4-^ <a-3 e'>-^
			<a a'>8 cis'-2
			<d, d'>8-> [ <a a'> <g g'> <fis-4 fis'> ] <fis-5 fis'>4
			<d' d'>8-> [ <b b'> <a a'> <g-5 g'> ] <g-4 g'>4
			<a a'>8->  [ <e e'> <d d'> <cis-4 cis'> ] <cis-5 cis'>4
			<d' d'>8-> [ <a a'> <g g'> <fis-4 fis'> ] <fis-5 fis'>4
			<g g'>8 [ <a a'> <b b'> <c c'> <d d'> <e e'> ]
			<d d'>4 <b b'>-^ <a a'>-^
			<g g'>8.-^ <fis-4 fis'>16 <e e'>4 <a a'>
			<d d'>4 r4 \stemDown

			<a' a'>8 <cis-4 cis'>
			<e e'>8. <bis bis'>16 <cis-4 cis'>4-^ <a a'>-^
			<b b'>-^ \stemUp <e, e'>-^ <fis-5 fis'>8 <gis-4 gis'> 
			<a a'>8. <eis eis'>16 <fis-4 fis'>4-^ <d d'>-^
			<e e'>-^ <a, a'>-^ <a a'>8 <cis-4 cis'>
			<e e'>8. <bis bis'>16 <cis-4 cis'>4-^ <a a'>-^
			<b b'>-^ <e, e'>-^ <fis-5 fis'>8 <gis-4 gis'>8
			<a a'>8. <eis eis'>16 <fis-4 fis'>4-^ <d d'>-^
			<e e'>4-^ <a-3 e'>-^
			 
		}
	}
}

bassvoicestwo = \notes {
	\relative c {
		\context Voice = bassvoicetwo {
			\stemDown
			\pslurDown
			\slurDown
		}
	}
}


\score {
	\context PianoStaff \notes <<
		\context Staff = up <<
			\key a \major 
			\time 3/4
			\viola
			\violatwo
			\oboes
			\repeattr
		>>
		\context Dynamics = dynamics \dynamictr
		\context Staff = down <<
			\clef bass
			\key a \major
			\time 3/4
			\oboestwo
			\bassvoicestwo
			\bassvoices
		>>
		\context Dynamics = pedal \pedaltr
	>>
	\paper {
		\translator {
			\type "Engraver_group_engraver"
			\name Dynamics
			\consists "Output_property_engraver"
			
			minimumVerticalExtent = #'(-1 . 1)
			
			\consists "Piano_pedal_engraver"
			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"

			TextScript \override #'font-relative-size = #1
			TextScript \override #'font-shape = #'italic
			DynamicText \override #'extra-offset = #'(0 . 2.5)
			Hairpin \override #'extra-offset = #'(0 . 2.5)
			
			\consists "Skip_event_swallow_translator"

			\consistsend "Axis_group_engraver"
		}
		\translator {
			\PianoStaffContext
			\accepts Dynamics
			VerticalAlignment \override #'forced-distance = #7
		}
	}
	\midi {
		\tempo 4 = 120
		\translator {
			\type "Performer_group_performer"
			\name Dynamics
			\consists "Piano_pedal_performer"
			\consists "Span_dynamic_performer"
			\consists "Dynamic_performer"
		}
		\translator {
			\PianoStaffContext
			\accepts Dynamics
		}
	}
}
