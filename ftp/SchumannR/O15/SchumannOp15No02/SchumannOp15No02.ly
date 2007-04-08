% PaulLiu
% 
\version "2.0.0"
\header {
 title = "Kinderscenen"
 subtitle = "Curiose Geschichte"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Curiose Geschichte"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "O 15 N 2"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "MutopiaBSD"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 lastupdated = "2003/Oct/08"
 tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
 footer = "Mutopia-2003/10/08-355"
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
		\partial 4
		\context Voice = repeattr {
			s4 |
			 s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
			 s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
			 s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
			 s2. s2. s2. s2. s2. s2. s2. s2. s2. s2
			\bar "|."
		}
	}
}

dynamictr = \notes {
	\relative c {
		\context Voice = dynamicctr {
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

viola = \notes {
	\relative c' { 
		\context Voice = viola {
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

oboes = \notes {
	\relative c'' { 
		\context Voice = oboe {
			\stemBoth
			\translator Staff=up
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

oboestwo = \notes {
	\relative c' { 
		\context Voice = oboetwo {
			\stemBoth
			\translator Staff=up
			s4 s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. \translator Staff=down \stemUp a8 \( b cis d d e fis g \translator Staff=up \stemDown a b b  cis \) s2.
			s2. s2. s2. s2.
			s2. s2. s2. s2.
			s2. \translator Staff=down \stemUp a,8 \( b cis d d e fis g \translator Staff=up \stemDown a b b cis \) s2

		}
	}
}

oboesthree = \notes {
	\relative c' { 
		\context Voice = oboethree {
			\stemUp
			\slurUp
			\pslurUp
			\translator Staff=down
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


bassvoices = \notes {
	\relative c {
		\context Voice = bassvoice {
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
	\context PianoStaff \notes <<
		\context Staff = up <<
			\key d \major 
			\time 3/4
			\viola
			\oboes
			\repeattr
			\dynamictr
		>>
		\context Staff = down <<
			\clef bass
			\key d \major
			\time 3/4
			\oboestwo
			\oboesthree
			\bassvoices
		>>
	>>
	\paper {
	}
}

\score {
	\context PianoStaff \notes <<
		\context Staff = up <<
			\key d \major 
			\time 3/4
			\viola
			\oboes
			\repeattr
			\dynamictr
		>>
		\context Staff = down <<
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


