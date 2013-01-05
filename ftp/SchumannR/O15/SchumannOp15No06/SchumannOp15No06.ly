% PaulLiu
%
\version "2.16.1"
\header {
 title = "Kinderscenen"
 subtitle = "Wichtige Begebenheit"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Wichtige Begebenheit"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "Op. 15, No. 6"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 footer = "Mutopia-2013/01/05-374"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

#(set-global-staff-size 16)
\paper {
  markup-system-spacing #'padding = #4
}
\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #6
    % stretch measures slightly
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 32)
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
fingerDU = \set fingeringOrientations = #'(down up)
fingerD = \set fingeringOrientations = #'(down)
fingerUL = \set fingeringOrientations = #'(up left)
fingerU = \set fingeringOrientations = #'(up)
repeattr =  {
	\relative c {
		\context Voice = "repeattr" {
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

dynamictr =  {
	s4\f s2. s2. s2. s2 s4\mf
	s2. s8\> s8 s4 s4 s4 s4 s8 s8\! s2 s4\ff s2.
	s2. s2. s2. s8\< s8 s4 s8 s8\! s2.
	s2. s2 s4\f s2. s2. s2.
	s2 s4\mf s2. s8\> s8 s4 s4 s4 s4 s8 s8\! s2
}

pedaltr =  {
}

viola =  {
	\relative c'' {
		\context Voice = "viola" {
			\stemUp
			\pslurUp
			\slurUp
			{
\override TextScript  #'direction = #1
\override Script  #'direction = #1
}

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
			<b e gis-4>4-^ <cis e a>-^ \stemNeutral

		}
	}
}

violatwo =  {
	\relative c' {
		\context Voice = "violatwo" {
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
			\pslurDown
			\slurDown
			\fingerD
			{
\override TextScript  #'direction = #1
\override Script  #'direction = #1
}

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

bassvoicestwo =  {
	\relative c {
		\context Voice = "bassvoicetwo" {
			\stemDown
			\pslurDown
			\slurDown
		}
	}
}


\score {
	\context PianoStaff  <<
		\context Staff = "up" <<
			\key a \major
			\time 3/4
			\viola
			\violatwo
			\oboes
			\repeattr
		>>
		\context Dynamics = "dynamics" \dynamictr
		\context Staff = "down" <<
			\clef bass
			\key a \major
			\time 3/4
			\oboestwo
			\bassvoicestwo
			\bassvoices
		>>
		\context Dynamics = "pedal" \pedaltr
	>>
	\layout { }
	\midi {
		\tempo 4 = 120
		\context {
			\type "Performer_group"
			\name Dynamics
			\consists "Piano_pedal_performer"
			\consists "Dynamic_performer"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}
