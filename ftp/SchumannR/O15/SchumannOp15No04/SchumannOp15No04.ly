% PaulLiu
% 
\version "2.0.0"
\header {
 title = "Kinderscenen"
 subtitle = "Bittendes Kind"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Bittendes Kind"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "O 15 N 4"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "MutopiaBSD"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 lastupdated = "2003/Nov/01"
 tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
 footer = "Mutopia-2003/11/01-366"
}

\include "paper16.ly"

stemDown = \property Voice.Stem \override #'direction = #-1
stemUp = \property Voice.Stem \override #'direction = #1
stemBoth = \property Voice.Stem \revert #'direction
slurUp = \property Voice.Slur \set #'direction = #1
pslurUp = \property Voice.PhrasingSlur \set #'direction = #1
slurDown = \property Voice.Slur \set #'direction = #-1
pslurDown = \property Voice.PhrasingSlur \set #'direction = #-1
tripletbr = \property Voice.TupletBracket \set #'tuplet-bracket-visibility = ##t

repeattr = \notes {
	\relative c {
		\context Voice = repeattr {
			s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
			\bar "|."
		}
	}
}

dynamictr = \notes {
		s16\p s16 s4 s16 s16
		s2 
		s16\pp s16 s4 s16 s16
		s2
		s16\p s16 s4 s16 s16
		s2 
		s16\pp s16 s4 s16 s16
		s2
		s16\p s16 s4 s16 s16
		s2 
		s16\pp s16 s4 s16 s16
		s2
		s16\p s16 s4 s16 s16
		s2 
		s16\pp s16 s4 s16 s16
		s2
		s2
}

pedaltr = \notes {
		s2 s2
		s8\sustainDown s16 s16\sustainUp s4
		s2 s2 s2 s2 s2 s2 s2 s2 s2 
		s8\sustainDown s16 s16\sustainUp s4
		s2
		s8\sustainDown s16 s16\sustainUp s4
		s4 s4\sustainDown
		s4 s8\sustainUp s8
}			

viola = \notes {
	\relative c'' { 
		\context Voice = viola {
			\stemUp
			\pslurUp
			\slurUp
			b8 \( [g' fis e] 
			d <gis, b> <a cis>4\)
			b8 \( [g' fis e]
			d <gis, b> <a cis>4\)
			c8 \( [a b fis]
			g e <d fis>4\)
			c'8 \( [a b fis]
			g e <d fis>4\)
			fis8^"ritardando" \( [gis a b]
			cis <gis b> a4\)
			fis8^"ritardando" \( [gis a b]
			cis <gis b> a4\)
			b8^"(a tempo)" \( [g' fis e]
			d <gis, b> <a cis>4\)
			b8 \( [g'^"ritardando" fis e]
			d <gis, b> s4
			g'4^\fermata \) r4
		}
	}
}

violatwo = \notes {
	\relative c'' { 
		\context Voice = violatwo {
			\stemDown
			\pslurUp
			\slurUp
			g16 e s8 bes'16 g s8
			a16 fis s8 a16 e s8
			g16 e s8 bes'16 g s8
			a16 fis s8 a16 e s8
			
			s2 s2 s2 s2 
			s2 s2 s2 s2 
	
			g16 e s8 bes'16 g s8
			a16 fis s8 a16 e s8
			g16 e s8 bes' 16 g s8
			a16 fis s8 \stemUp <a cis>4~ \stemDown
			<a cis>4 s4
		}
	}
}

oboes = \notes {
	\relative c' { 
		\context Voice = oboe {
			\stemBoth
			\translator Staff=down
			a8 \translator Staff=up b'16 g \translator Staff=down cis,8 \translator Staff=up a'16 g \translator Staff=down \stemUp
			d8 \translator Staff=up \stemDown f16 d \translator Staff=down \stemUp a8 \translator Staff=up \stemDown cis16 a \translator Staff=down
			\stemUp a,8 \translator Staff=up \stemDown b''16 g \translator Staff=down \stemUp cis,8 \translator Staff=up \stemDown a'16 g \translator Staff=down
			\stemUp d8 \translator Staff=up \stemDown f16 d \translator Staff=down \stemUp a8 \translator Staff=up \stemDown cis16 a16
			\stemDown a'16 e fis \translator Staff=down \stemUp ees \translator Staff=up \stemDown g d ees \translator Staff=down \stemUp c 
			\translator Staff=up \stemDown d b cis \translator Staff=down \stemUp bes \translator Staff=up \stemDown d a \translator Staff=down \stemUp fis d
			\translator Staff=up \stemDown a''16 e fis \translator Staff=down \stemUp ees \translator Staff=up \stemDown g d ees \translator Staff=down \stemUp c
			\translator Staff=up \stemDown d b cis \translator Staff=down \stemUp bes \translator Staff=up \stemDown d a \translator Staff=down \stemUp fis d  
			\translator Staff=up \stemDown d'16 b \translator Staff=down \stemUp a gis fis e d \translator Staff=up \stemDown fis'
			\translator Staff=up \stemDown cis'16 e, \translator Staff=down \stemUp dis d \translator Staff=up \stemDown a' cis, \translator Staff=down \stemUp e, cis
			\translator Staff=up \stemDown d'16 b \translator Staff=down \stemUp a gis fis e d \translator Staff=up \stemDown fis' 
			\translator Staff=up \stemDown cis'16 e, \translator Staff=down \stemUp dis d \translator Staff=up \stemDown a' cis, \translator Staff=down \stemUp e, cis
			\stemUp a8 \translator Staff=up \stemDown b''16 g \translator Staff=down \stemUp cis,8 \translator Staff=up \stemDown a'16 g \translator Staff=down
			\stemUp d8 \translator Staff=up \stemDown f16 d \translator Staff=down \stemUp a8 \translator Staff=up \stemDown cis16 a \translator Staff=down
			\stemUp a,8 \translator Staff=up \stemDown b''16 g \translator Staff=down \stemUp cis,8 \translator Staff=up \stemDown a'16 g \translator Staff=down \stemUp
			d8 \translator Staff=up \stemDown f16 d a'16 e~ s8 
			e4 s4 \stemBoth
		}
	}
}

oboestwo = \notes {
	\relative c' { 
		\context Voice = oboetwo {
			\stemBoth
			\translator Staff=down
			s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
			s4 \stemUp a8 \slurUp cis16 ( a16 ~ <a cis>4 )  \stemBoth s4
		}
	}
}


bassvoices = \notes {
	\relative c' {
		\context Voice = bassvoice {
			\stemDown
			\pslurDown
			\slurDown
			a8 r8 cis r
			d r a r
			a, r cis' r
			d r a r
			d,4 d4
			d d
			d, d'
			d d
			b \( cis8 d
			e4 a \)
			b, \( cis8 d
			e4 a \)
			a,8 r8 cis' r8
			d r a r
			a, r cis' r
			d r a r
			a,4_\fermata r4
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
			\key d \major 
			\time 2/4
			\viola
			\violatwo
			\oboes
			\repeattr
		>>
		\context Dynamics = dynamics \dynamictr
		\context Staff = down <<
			\clef bass
			\key d \major
			\time 2/4
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
}

\score {
	\context PianoStaff \notes <<
		\context Staff = up <<
			\key d \major 
			\time 2/4
			\viola
			\violatwo
			\oboes
			\repeattr
			\dynamictr
		>>
		\context Dynamics = dynamics \dynamictr
		\context Staff = down <<
			\clef bass
			\key d \major
			\time 2/4
			\oboestwo
			\bassvoicestwo
			\bassvoices
			\dynamictr
		>>
		\context Dynamics = pedal \pedaltr
	>>
	\midi {
		\tempo 4 = 60
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
