% PaulLiu
% 
\version "2.0.0"
\header {
 title = "Kinderscenen"
 subtitle = "Hasche-Mann"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Hasche-Mann"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "O 15 N 3"
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
 footer = "Mutopia-2003/11/01-365"
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
			
			s2 s2 s2 s2 s2 s2 s2 s2 
			\repeat volta 2 { s2 s2
			s2 s2 s2 s2 s2 s2 s2 s2 s2 } 
			\alternative { {s2} {s2} } 
			\bar "|."
		}
	}
}

dynamictr = \notes {
		s2 s2 s2 s2 s2 s2 s2 s2
		s2 s2 s2 s2 s2 s2 s2 s16\< s16 s8 s8 s16\! s16
		s2 s2 s2 s2 s2
}

pedaltr = \notes {
			s2 s2 s2 s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2 s2 s4 s4\sustainDown
			s4 s8 s16 s16\sustainUp
			s2 s2 s2 s2 s2
}			

viola = \notes {
	\relative c'' { 
		\context Voice = viola {
			\stemUp
			\pslurUp
			\slurUp

			b4 ( \stemDown cis16) d-. e-. fis-.
			a-.-> g-. fis-. e-. g-.-> fis-. e-. d-. \stemUp
			e4 ( \stemDown fis16) g-. a-. b-.
			d-.-> cis-. b-. ais-. <fis b> (d) b-. fis-. \stemUp

			b4 ( \stemDown cis16) d-. e-. fis-.
			a-.-> g-. fis-. e-. g-.-> fis-. e-. d-. \stemUp
			e4 ( \stemDown fis16) g-. a-. b-.
			d-.-> cis-. b-. ais-. <fis b> (d) b-. fis-. \stemUp

			g'4 ( \stemDown a,16) b-. cis-. d-.
			fis-. e-. d-. c-. \stemUp b-. a-. g-. fis-.
			g4 (fis16) g-. a-. b-.
			d-. c-. b-. a-. g-. fis-. e-. dis-.
			e4 (d16 e f g)
			e4 \( f16 g a b
			c4 \) <ais e'>4 ~
			<ais e'>2

			b4 ( \stemDown cis16) d-. e-. fis-.
			a-.-> g-. fis-. e-. g-.-> fis-. e-. d-. \stemUp
			e4 ( \stemDown fis16) g-. a-. b-.
			d-.-> cis-. b-. ais-. <fis b> (d) b-. fis-. \stemUp

			\stemDown d''16-.-> cis-. b-. ais-. b4 \stemUp
		}
	}
}

violatwo = \notes {
	\relative c' { 
		\context Voice = violatwo {
			\stemUp
			\pslurUp
			\slurUp
		}
	}
}

oboes = \notes {
	\relative c' { 
		\context Voice = oboe {
			\stemBoth
			\slurDown
			\translator Staff=up
			fis16 (d) \translator Staff=down b-. fis-. s4
			s2
			\translator Staff=up b'16 (g) \translator Staff=down e-. b-. s4
			s2
			\translator Staff=up fis'16 (d) \translator Staff=down b-. fis-. s4
			s2
			\translator Staff=up b'16 (g) \translator Staff=down e-. b-. s4
			s2
			\translator Staff=up d'16 (b) \translator Staff=down g-. d-. s4
			s2
			\translator Staff=up e16 (b) \translator Staff=down g-. e-. s4
			s2
			\translator Staff=up c'16 (g) \translator Staff=down e-. c-. \translator Staff=up \stemDown d'8 b8 \stemBoth
			\translator Staff=up c16 (g) \translator Staff=down e-. c-. \translator Staff=up \stemDown f'8 d8 \stemBoth
			\translator Staff=up g16 (e) \translator Staff=down c-. g-. \translator Staff=up \stemDown ais' (e) \stemBoth s8
			s2
			fis16 (d) \translator Staff=down b-. fis-. s4
			s2
			\translator Staff=up b'16 (g) \translator Staff=down e-. b-. s4
			s2
			s2
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

       			b16 r16 s8 b8-. <fis' d'>8-.
			e8-. <b' e>-. b,-. <b' d>-.
			e,16 r16 s8 e8-. <e' g>-.
			fis,8-. <e' ais>-. b16-. r16 s8

       			b,16 r16 s8 b8-. <fis' d'>8-.
			e8-. <b' e>-. b,-. <b' d>-.
			e,16 r16 s8 e8-. <e' g>-.
			fis,8-. <e' ais>-. b16-. r16 s8

			b16 r16 s8 b8-. <d g>-.
			a8-. <c g'>-. d,-. c'-.
			r8 s8 b,8-. <g' b>-.
			a,8-. <fis' c'>-. b,-. <fis' a>-.
			r8 s8 <c, g'>4-> ~
			<c g'> <c g'>-> ~
			<c g'>8 s8 <fis fis'>4\sf ~
			<fis fis'>2
			r8 s8 b8-. <fis' d'>-.
			e8-. <b' e>-. b,-. <b' d>-.
			e,16 r16 s8 e8-. <e' g>-.
			fis,8-. <e' ais>-. b16-. r16 s8
			fis8-. <e' ais>8-. <b d b'>4
		}
	}
}

bassvoicestwo = \notes {
	\relative c' {
		\context Voice = bassvoicetwo {
			\stemUp
			\pslurUp
			\slurUp
			s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s4 s8
			gis16 (a ais b bis cis d dis e eis)
			s2 s2 s2 s2 s2 
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
%			\dynamictr
		>>
		\context Dynamics = dynamics \dynamictr
		\context Staff = down <<
			\clef bass
			\key d \major
			\time 2/4
			\oboestwo
			\bassvoicestwo
			\bassvoices
%			\pedaltr
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
		\tempo 4 = 116
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
