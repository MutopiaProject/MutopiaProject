% PaulLiu
%
\version "2.16.1"
\header {
 title = "Kinderscenen"
 subtitle = "Hasche-Mann"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Hasche-Mann"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "Op. 15, No. 3"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 footer = "Mutopia-2013/01/05-365"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

#(set-global-staff-size 16)

\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #5
  }
}


stemDown = \override Stem   #'direction = #-1
stemUp = \override Stem   #'direction = #1
stemNeutral = \revert Stem #'direction
slurUp = \override Slur   #'direction = #1
pslurUp = \override PhrasingSlur   #'direction = #1
slurDown = \override Slur   #'direction = #-1
pslurDown = \override PhrasingSlur   #'direction = #-1
tripletbr = \override TupletBracket   #'tuplet-bracket-visibility = ##t

repeattr =  {
	\relative c {
		\context Voice = "repeattr" {

			s2 s2 s2 s2 s2 s2 s2 s2
			\repeat volta 2 { s2 s2
			s2 s2 s2 s2 s2 s2 s2 s2 s2 }
			\alternative { {s2} {s2} }
			\bar "|."
		}
	}
}

dynamictr =  {
		s2 s2 s2 s2 s2 s2 s2 s2
		s2 s2 s2 s2 s2 s2 s2 s16\< s16 s8 s8 s16\! s16
		s2 s2 s2 s2 s2
}

pedaltr =  {
			s2 s2 s2 s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2 s2 s4 s4\sustainOn
			s4 s8 s16 s16\sustainOff
			s2 s2 s2 s2 s2
}

viola =  {
	\relative c'' {
		\context Voice = "viola" {
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

violatwo =  {
	\relative c' {
		\context Voice = "violatwo" {
			\stemUp
			\pslurUp
			\slurUp
		}
	}
}

oboes =  {
	\relative c' {
		\context Voice = "oboe" {
			\stemNeutral
			\slurDown
			\change Staff=up
			fis16 (d) \change Staff=down b-. fis-. s4
			s2
			\change Staff=up b'16 (g) \change Staff=down e-. b-. s4
			s2
			\change Staff=up fis'16 (d) \change Staff=down b-. fis-. s4
			s2
			\change Staff=up b'16 (g) \change Staff=down e-. b-. s4
			s2
			\change Staff=up d'16 (b) \change Staff=down g-. d-. s4
			s2
			\change Staff=up e16 (b) \change Staff=down g-. e-. s4
			s2
			\change Staff=up c'16 (g) \change Staff=down e-. c-. \change Staff=up \stemDown d'8 b8 \stemNeutral
			\change Staff=up c16 (g) \change Staff=down e-. c-. \change Staff=up \stemDown f'8 d8 \stemNeutral
			\change Staff=up g16 (e) \change Staff=down c-. g-. \change Staff=up \stemDown ais' (e) \stemNeutral s8
			s2
			fis16 (d) \change Staff=down b-. fis-. s4
			s2
			\change Staff=up b'16 (g) \change Staff=down e-. b-. s4
			s2
			s2
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

bassvoicestwo =  {
	\relative c' {
		\context Voice = "bassvoicetwo" {
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
	\context PianoStaff  <<
		\context Staff = "up" <<
			\key d \major
			\time 2/4
			\viola
			\violatwo
			\oboes
			\repeattr
%			\dynamictr
		>>
		\context Dynamics = "dynamics" \dynamictr
		\context Staff = "down" <<
			\clef bass
			\key d \major
			\time 2/4
			\oboestwo
			\bassvoicestwo
			\bassvoices
%			\pedaltr
		>>
		\context Dynamics = "pedal" \pedaltr
	>>
	\layout { }
	\midi {
		\tempo 4 = 116
%{
		\context {
			\type "Performer_group"
			\name Dynamics
			\consists "Piano_pedal_performer"
%			\consists "Span_dynamic_performer"
			\consists "Dynamic_performer"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}
%}
	}
}
