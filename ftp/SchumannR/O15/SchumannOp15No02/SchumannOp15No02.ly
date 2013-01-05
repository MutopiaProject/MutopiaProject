% PaulLiu
%
\version "2.16.1"
\header {
 title = "Kinderscenen"
 subtitle = "Curiose Geschichte"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Curiose Geschichte"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "Op. 15, No. 2"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 footer = "Mutopia-2013/01/05-355"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

#(set-global-staff-size 16)

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
		\partial 4
		\context Voice = "repeattr" {
			s4 |
			 s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
			 s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
			 s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
			 s2. s2. s2. s2. s2. s2. s2. s2. s2. s2
			\bar "|."
		}
	}
}

dynamictr =  {
	\relative c {
		\context Voice = "dynamicctr" {
			s4\mf
			s2.
			s2.
			s2.
			s2.
			s2.
			s2.
			s8\< s8 s8 s8 s8 s8\!
			s2.
			s2.
			s2.
			s2.
			s2.
			s2.
			s2.
			s8\< s8 s8 s8 s8 s8\!
			s2 s4\p
			s8 \< s8 s8 s8 s8 s8\!
			s2 s8 \> s8
			s4 s8 s8\! s4
			s4 s4 s8 \< s8\!
			s4\p s2
			s2.
			s2.
			s2 s4\mf
			s2.
			s8\< s8 s8 s8 s8 s8\!
			s2.
			s4\> s4\! s4\p
			s8\< s8 s8 s8 s8 s8\!
			s2 s4\>
			s4 s8 s8\! s4
			s2 s8\< s8\!
			s4\p s2
			s2.
			s2.
			s2 s4\mf
			s2.
			s8\< s8 s8 s8 s8 s8\!
			s2.
			s4\> s4\!
		}
	}
}

viola =  {
	\relative c' {
		\context Voice = "viola" {
%			\stemUp
			\pslurUp
			\slurUp
			<d fis>4 ( | \grace { b'16 [a16]  }
			<cis, g'>8 ) [ r16 <cis fis>16 ]  <cis g'>4 <cis b'> (
			<d a'>2 ) <a' d>4 (
			<g cis>8 ) [ r16 <fis b>16 ] <e a>4 \stemDown <g a g'>^\accent (
			<fis d' fis>8 ) [ r16 <g cis e>16 ] <a d>4 \stemUp <d, fis>4 (
			\grace { b'16 [a16] } <cis, g'>8 ) [r16 <cis fis>16]  <cis g'>4 <cis b'> (
			<d a'>2 ) d'8. ( cis16 )
			cis8 \( [d e fis ] fis8. [ gis16 ]
			gis4  a \) <d,, fis>4 ( \grace {  b'16 [a16 ]  }
			<cis, g'>8 ) [r16 <cis fis>16 ] <cis g'>4 <cis b'>(
			<d a'>2 ) <a' d>4 (
			<g cis>8) [r16 <fis b>16 ] <e a>4 \stemDown <g a g'>^\accent (
			<fis d' fis>8) [r16 <g cis e>16 ] <a d>4 \stemUp <d, fis>4 (
			\grace { b'16 [a16] } <cis, g'>8 ) [r16 <cis fis>16 ]  <cis g'>4 <cis b'> (
			<d a'>2 ) d'8. ( cis16 )
			cis8 \( [d e fis ] fis8. [ gis16 ]
			gis4 a \) e8 \( fis
			g a g fis g fis
			e2 \) d8 \( c
			b4 c b
			a2 \) fis4 ( \grace { b16 [a] }
			<cis, g'>8 ) [r16 <cis fis>16 ] <cis g'>4 <cis b'>(
			<d a'>2) <a' d>4(
			<g cis>8) [r16 <fis b>16 ] <e a>4 \stemDown <g a g'>^\accent (
			<fis d' fis>8) [r16 <g cis e>16 ] <a d>4 \stemUp <d, fis>( \grace { b'16 [a] }
			<cis, g'>8) [r16 <cis fis>16 ] <cis g'>4 b'8. ( a16 )
			<d, a'>8\( [b' cis d ] d [e]
			fis2^"ritard." e4 ~
			e4  d4^"(a tempo)" \) e8 \( fis8
			g a g fis g fis
			e2 \) d8 \( c
			b4 c b
			a2 \) fis4 ( \grace { b16 [a16] }
			<cis, g'>8) [r16 <cis fis>16 ] <cis g'>4 <cis b'>(
			<d a'>2) <a' d>4(
			<g cis>8) [r16 <fis b>16] <e a>4 \stemDown <g a g'>^\accent (
			<fis d' fis>8) [r16 <g cis e>16 ] <a d>4 \stemUp <d, fis> ( \grace {b'16 [a]}
			<cis, g'>8) [r16 <cis fis>16 ] <cis g'>4 b'8. ( a16 )
			<d, a'>8\( [b' cis d ] d [e ]
			fis2^"ritard." e4 (
			e) d \)
		}
	}
}

oboes =  {
	\relative c'' {
		\context Voice = "oboe" {
			\stemNeutral
			\change Staff=up
			s4 s2. s2. s2. s2.
			s2. s2 \stemDown\slurDown a4 a2 d4 ( d4 ) cis s4
			s2. s2. s2. s2.
			s2. s2 \stemDown a4 a2 d4 (d4) cis c
			d2 dis4 c2 a4 g g8 a <d, a'> g \slurUp <d g>[ ( fis e  d) ] d [bis]
			s2. s2. s2. s2.
			s2 cis4 s2 b'4 a s2 cis4 d c
			b2 dis4 c2 a4 g g8 a <d, a'> g <d g>[( fis e d)] d [bis]
			s2. s2. s2. s2.
       			s2 cis4 s2 b'4 a4 s2 cis4 d
		}
	}
}

oboestwo =  {
	\relative c' {
		\context Voice = "oboetwo" {
			\stemNeutral
			\change Staff=up
			s4 s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. \change Staff=down \stemUp a8 \( b cis d d e fis g \change Staff=up \stemDown a b b  cis \) s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. \change Staff=down \stemUp a,8 \( b cis d d e fis g \change Staff=up \stemDown a b b cis \) s2

		}
	}
}

oboesthree =  {
	\relative c' {
		\context Voice = "oboethree" {
			\stemUp
			\slurUp
			\pslurUp
			\change Staff=down
			s4 s2. s2. s2. s2.
			s2. | s2 a8 b |  cis \( [d e fis ] \clef violin fis8. [gis16 ] | gis4  a4\) \clef bass s4 |
			s2. s2. s2. s2.
			s2. s2 a,8 b cis \( [d e fis ] \clef violin fis8. [gis16 ] gis4  a4\) \clef bass e8 fis
			g a g fis g fis e2 d4~ d4 c b g8 ( fis e  d ) a'4
			s2. s2. s2 a4 s2.
			s2. s2. s2 g'4~ \( g fis \) e8 fis
			g a g fis g fis e2 d4 ~ d c b g8 ( fis e d ) a'4
			s2. s2. s2 a4 s2.
			s2. s2. s2 g'4~ \(  g fis \)
		}
	}
}


bassvoices =  {
	\relative c {
		\context Voice = "bassvoice" {
			\stemDown
			\pslurDown
			\slurDown
			<d a'>4(
			<e a>8) [r16 <dis a'>16 ] <e a>4 <g a>(
			<fis a>8) [r16 <eis a>16 ] <fis a>4 <fis a>(
			<e a>8) [r16 <d a'>16 ] <cis a'>4 <a a'>(
			<d a'>8) [r16 <e a>16 ] <fis a>4 <d a'>(
			<e a>8) [r16 <dis a'>16 ] <e a>4 <g a>(
			<fis a>8) [r16 <eis a>16 ] <fis a>4 fis (
			e4 ) s4 e'4~
			e a, <d, a'>(
			<e a>8) [r16 <dis a'>16 ] <e a>4 <g a>(
			<fis a>8) [r16 <eis a>16 ] <fis a>4 <fis a>(
			<e a>8) [r16 <d a'>16 ] <cis a'>4 <a a'>(
			<d a'>8) [r16 <e a>16 ] <fis a>4 <d a'>(
			<e a>8) [r16 <dis a'>16 ] <e a>4 <g a>(
			<fis a>8) [r16 <eis a>16 ] <fis a>4 fis (
			e4) s4 e'4~
			e a,4 a \(
			b2 b4
			c8 [b a  g\) ] g \( [fis]
			g fis e fis g d
			<d a'>2\) d8 (dis
			<e a>8) [r16 <dis a'>16 ] <e a>4 <g a>(
			<fis a>8) [r16 <eis a>16 ] <fis a>4 <fis a>(
			<e a>8) [r16 <d a'>16 ] <cis a'>4 a8 ( cis8
			<d a'>8) [r16 <e a>16 ] <fis a>4 <d a'>(
			<e a>8) [r16 <dis a'>16 ] <e a>4 <g a>(
			fis2) g4 \(
			a2.
			d2 \) a4 \(
			b2 b4
			c8 [b a g]\) g \( [fis]
			g fis e fis g d
			<d a'>2\) d8 ( dis
			<e a>8) [r16 <d a'>16 ] <e a>4 <g a>(
			<fis a>8) [r16 <eis a>16 ] <fis a>4 <fis a>(
			<e a>8) [r16 <d a'>16 ] <cis a'>4 a8 ( cis8
			<d a'>8) [r16 <e a>16 ] <fis a>4 <d a'>(
			<e a>8) [r16 <dis a'>16 ] <e a>4 <g a>(
			fis2) g4 (
			a2.
			d2 )

		}
	}
}


\score {
	\context PianoStaff  <<
		\context Staff = "up" <<
			\key d \major
			\time 3/4
			\viola
			\oboes
			\repeattr
			\dynamictr
		>>
		\context Staff = "down" <<
			\clef bass
			\key d \major
			\time 3/4
			\oboestwo
			\oboesthree
			\bassvoices
		>>
	>>
	\layout {
	}
}

\score {
	\context PianoStaff  <<
		\context Staff = "up" <<
			\key d \major
			\time 3/4
			\viola
			\oboes
			\repeattr
			\dynamictr
		>>
		\context Staff = "down" <<
			\clef bass
			\key d \major
			\time 3/4
			\oboestwo
			\oboesthree
			\bassvoices
			\dynamictr
		>>
	>>

  \midi {
    \tempo 4 = 112
    }

}
