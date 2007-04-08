\version "2.4.1"

#(set-global-staff-size 18)

global = 
{
	\key bes \major
	\time 2/4
}

intro = { f16 bes c bes~bes d, ees b c f g f~f a, bes g f g a bes c d ees c f8 }
rpt = { bes16 c cis d~d f, fis g~g bes c d~d }

\paper
{
	topmargin = 0.6\cm
	bottommargin = 1.0\cm
	leftmargin = 1.5\cm
	linewidth = 18.0\cm
	raggedlastbottom = ##t
}

\header
{
	title = "Eugenia"
	composer = "Scott Joplin (1868-1917)"
	mutopiatitle = "Eugenia"
	mutopiacomposer = "JoplinS"
	mutopiainstrument = "Piano"
	style = "Song"
	copyright = "Public Domain"
	maintainer = "Jefferson dos Santos Felix"
	maintainerEmail = "jsfelix (at) gmail.com"
	lastupdated = "2004/Nov/15"

	footer = "Mutopia-2004/11/15-496"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

\score
{
	\new GrandStaff
	<<
		\new Staff
		{
			\relative
			{
				\set Staff.minimumVerticalExtent = #'(-8 . 2)
				\global
				\intro
				r8 r16 f g a 
				\repeat volta 2
				{
					bes c cis d~d f, fis g~  
					g bes c d~d f d bes r bes' g ees bes g8 ges16 f bes d g~g ees c a \rpt f e d  
					r16 <<{c c' a c, d8 c16}\\{c8. bes4}>> <a f'>4~<a f'>16 f g a \rpt bes d f r 
						<<{bes, g a bes c8 cis16} {bes' g a bes c8 cis16}>>  
					<d a fis d> fis, a <c a fis ees>~<c a fis ees> f, g a 
						<<{bes d, ees f~f d f bes~bes g a bes~bes g e cis} {d bes c d~d bes d f~f ees f g~g e cis bes}>>
						<<{d f, f' d f, g8 f16}\\{bes f~f8 ees8. ees16}>>
				} \alternative { {<bes' d,>4~<bes d,>16 f g a  } {<bes d,>4~<bes d,>16 f' a bes} }
				\repeat volta 2
				{
					<c a ees>8 b16 <c a ees>~<c a ees> d c a <g ees a,>8 fis16 <g ees a,>~<g ees a,> <<{a g ees} {f ees c}>>
						<d bes>8 cis16 <d bes>~<d bes> d cis! d <g d bes g>8 <d bes>16 <f d bes f>~<f d bes f> d bes f 
						<<{r d' ees c a c8 ees16}\\{r8 fis, r16 f8.}>>  
					<<{d'16 bes c d~d d g8 r16 a bes g e g8 bes16 a f g a~a f a  bes}\\
						{g,8. g16~g8 cis r8 cis r16 cis8. d8. d16~d8}>>
						<c' a ees>8 b16 <c a ees>~<c a ees> d c a <g ees a,>8 fis16 <g ees a,>~<g ees a,> <<{a g ees} {f ees c}>>
						<d bes>8 cis16 <d bes>~<d bes> bes c d  
					ees8 g16 ees~ees c g8 
						<<{ees'16 d c d ees <<{bes'8 ges16 f8} {ees8 bes16 bes8}>>} {ees,16 d c d ees bes'8 ges16 f8 [}>>
						f'16 d']~d bes f d <ees c>8 [ees16 c'~]c f, ees c
				} \alternative {{bes4~bes16 f' a bes} {bes,4 bes16 f g a}} \bar "||"  
				\rpt f d bes r bes' g ees bes g8 ges16 f bes d g~g ees c a \rpt f e d  
				r16 <<{c c' a c, d8 c16}\\{c8. bes4}>> <a f'>4~<a f'>16 f g a \rpt bes d f r 
					<<{bes, g a bes c8 cis16} {bes' g a bes c8 cis16}>> 
					<d a fis d> fis, a <c a fis ees>~<c a fis ees> f, g a  
				<<{bes d, ees f~f d f bes~bes g a bes~bes g e cis} {d bes c d~d bes d f~f ees f g~g e cis bes}>>
					<<{d f, f' d f, g8 f16 bes4~bes16 d f aes}\\{bes, f~f8 ees8. ees16 d4~d16 bes' d8}>> \bar "||"
				\set Staff.printKeyCancellation = ##f
				\key ees \major
				<<{g8. aes16 bes aes g8 f8. g16 aes g f8 ees8. f16 g f ees8}
					{ees8. f16 g f ees8 d8. ees16 f ees d8 c8. d16 ees d c8}>>
				<<{d f16 g aes bes!8 aes16 g f ees g~g fis g8 g16 f e f~f e f8 f16 g c f,~f g f8}\\
					{b,4 d ees8. ees16~ees8 <cis bes> <d bes>8. <d bes>16~<d bes>8 d ees8. ees16~ees8 ees}>>
				bes'4~bes16 d, f aes
				<<{g8. aes16 bes aes g8 f8. g16 aes g f8 ees8. f16 g f g8}
					{ees8. f16 g f ees8 d8. ees16 f ees d8 c8. d16 ees d ees8}>>
				<<{aes8 f16 g aes c8 aes16 ees aes bes aes~aes ees aes8 g16 f ees bes~bes c g8 bes16 c f bes,~bes c bes8}\\
					{c2 <ces aes>4. <ees aes,>8 <ees bes>8. <g, ees>16~<g ees>8 ees aes8. aes16~aes8 aes}>>
				<ees' g,>4~<ees g,>8 \noBeam bes,16 [(b)]
				\repeat volta 2
				{
					c16 d ees d ees c8 ees16 d8 aes'16 f~f d b8 f''16 (e f d ees d ees f) <fis d c>8-> <fis d c>8-> <g d b>8-> 
					\noBeam
					\clef bass
					d,,16 (dis) e fis g fis g e8 g16 fis8 c'16 a~a fis dis8
					\clef treble
					a''16 gis a fis g fis g a <bes ges e>8 [<bes ges e>] <b ges ees> b16 [a]
					g8 [e d b] c16 d c b c8 b'16 a g8 [e d b] c16 b c d c b bes8 ees ees~ees16 d c bes f'8 f~f16 d c bes g'8 g~g16
					f <g e> <a ees> <<{bes4~bes16 d f aes}\\{d,,4~d16 bes' d8}>> 
					<<{g8. aes16 bes aes g8 f8. g16 aes g f8 ees8. f16 g f ees8}
						{ees8. f16 g f ees8 d8. ees16 f ees d8 c8. d16 ees d c8}>>
					<<{d f16 g aes bes!8 aes16 g f ees g~g fis g8 g16 f e f~f e f8 f16 g c f,~f g f8}\\
						{b,4 d ees8. ees16~ees8 <cis bes> <d bes>8. <d bes>16~<d bes>8 d ees8. ees16~ees8 ees}>>
					bes'4~bes16 d, f aes
					<<{g8. aes16 bes aes g8 f8. g16 aes g f8 ees8. f16 g f g8}
						{ees8. f16 g f ees8 d8. ees16 f ees d8 c8. d16 ees d ees8}>>
					<<{aes8 f16 g aes c8 aes16 ees aes bes aes~aes ees aes8 g16 f ees bes~bes c g8 bes16 c f bes,~bes c bes8}\\
						{c2 <ces aes>4. <ees aes,>8 <ees bes>8. <g, ees>16~<g ees>8 ees aes8. aes16~aes8 aes}>>
					\override Staff.VoltaBracket #'minimum-space = #6.5
				} \alternative {{<ees' g,>4~<ees g,>8 \noBeam bes,16 [(b)]} {<ees' g,>4 <ees g ees'>8 r}} \bar "|."
			}
		}
	
		\new Staff
		{
			\relative c
			{
				\set Staff.minimumVerticalExtent = #'(-2 . 8)
				\clef bass
				\global
				\intro
				<<{c16 d ees f ees c} {c,16 d ees f ees c}>>
				\repeat volta 2
				{
					<bes' bes,>8 <f' bes d> f, <f' bes d>
					bes, <f' bes d> <f f,> <aes bes d> <ees ees,> <g bes ees> <g g,> <ees ees,> <d d,> <f bes d> f, <f' a ees'>
						<bes, bes,> <f' bes d> f, <f' bes d> bes, <f' bes d> b, <gis' d' f>
					c, <a' c f> c, <bes' c e> <<{f8 c16 d ees f ees c} {f,8 c16 d ees f ees c}>>
						<bes' bes,>8 <f' bes d> f, <f' bes d> bes, <f' bes d> <d d,> <f bes d> <g g,> <g bes d> <ees ees,> <g a ees'>
					<d d,> <fis a d> <f,! f,!> <f' a ees'> <bes, bes,> <f' bes d> <d d,> <aes' bes d> <ees ees,> <g bes ees>
						<e e,> <g bes cis> <f f,> <f bes d> <f f,> <f a> 
				} \alternative {{<bes f bes,> <<{f16 d ees f ees c} {f,16 d ees f ees c}>>} {<<{bes''8 [f bes,] s}{bes f bes,}>>}}
				\repeat volta 2
				{
					<f'' f,> <f a ees'> <a a,> <f a ees'> <c c'> <f a ees'> <f f,> <f a ees'> <bes bes,> <f bes d> <f f,> <f bes d>
						<bes bes,> <f bes d> <f f,> <f bes d> <d d,> <fis a c d> <fis! fis,!> <fis a c d>
					<g g,> [<g bes d> <g bes d>] <bes bes,> <a a,> <g a cis> cis, <g' a cis> d [<f a d> <f a d>] r
						<f f,> <f a ees'> <a a,> <f a ees'> <c c'> <f a ees'> <f f,> <f a ees'> <bes bes,> <f bes d> <f f,> <f b d>
					<c' c,> [<g c ees> <g c ees>] r <<{c,16 d ees f g ges8 ees16} {c, d ees f g ges8 ees16}>>
						<d' d,>8 <f bes d> <f f,> <f bes d> <f f,> <f a ees'> <f f,> <f a ees'>
				} \alternative {{<bes d> <f f'> <d d'> <bes bes'>} {<bes' d> <<{f16 d ees f ees c} {f,16 d ees f ees c}>>}}
				<bes' bes,>8 <f' bes d> f, <f' bes d>
				bes, <f' bes d> <f f,> <aes bes d> <ees ees,> <g bes ees> <g g,> <ees ees,> <d d,> <f bes d> f, <f' a ees'>
					<bes, bes,> <f' bes d> f, <f' bes d> bes, <f' bes d> b, <gis' d' f>
				c, <a' c f> c, <bes' c e> <<{f8 c16 d ees f ees c} {f,8 c16 d ees f ees c}>>
					<bes' bes,>8 <f' bes d> f, <f' bes d> bes, <f' bes d> <d d,> <f bes d> <g g,> <g bes d> <ees ees,> <g a ees'>
				<d d,> <fis a d> <f,! f,!> <f' a ees'> <bes, bes,> <f' bes d> <d d,> <aes' bes d> <ees ees,> <g bes ees>
					<e e,> <g bes cis> <f f,> <f bes d> <f f,> <f a> <bes d bes,> <<{c16 bes aes bes aes f}{c16 bes aes bes aes f}>> 
				\set Staff.printKeyCancellation = ##f
				\key ees \major
				<ees' ees,>8 <g bes ees> <ees ees,> <g bes ees> <bes bes,> <aes bes d> <bes bes,> <b b,> <c c,> <g c ees>
				<c, c,> <g' c ees> <g g,> <g b d> <f f,> <aes bes d> <ees ees,> <g bes ees> <ees ees,> <e e,> <f f,> <f bes d>
				<d d'> <f bes d> <c c'> <f a ees'> <f f,> <f a ees'> 
					<<{bes c16 bes aes! bes aes f} {bes,8 c16 bes aes! bes aes f}>>
				<ees' ees,>8 <g bes ees> <ees ees,> <g bes ees> <bes bes,> <aes bes d> <bes bes,> <b b,> <c c,> <g c ees>
				<c, c,> <g' c ees> <f f,> <aes c f> <c c,> <aes c f> 
					<<{ces aes ees ces! bes ees g bes} {ces,! aes ees ces! bes ees g bes}>>
				<f' f,> <aes bes d> <bes, bes,> <aes' bes d> <ees ees,> [bes ees,] bes'16 [(b)]
				\repeat volta 2
				{
					c16 d ees d ees c8 ees16 d8 aes'16 f~f d b8 
					\clef treble
					<bes' d aes'>4 (<c ees g>)
					\clef bass
					<aes aes,>8-> <aes aes,>8-> <g g,>8-> \noBeam
					d,16 (dis) e fis g fis g e8 g16 fis8 c'16 a~a fis dis8 <dis' fis c'>4 (<e g b>) <c c,>8 <c c,> <b b,> dis
					e [c b g] a16 b a gis a d dis8 e [c b g] a16 gis a b a8 bes ees ees~ees16 d c bes f'8 f~f16 d c bes
					g'8 g~g16 f c f, bes8 <<{c'16 bes aes bes aes f} {c16 bes aes bes aes f}>>
					<ees' ees,>8 <g bes ees> <ees ees,> <g bes ees> <bes bes,> <aes bes d> <bes bes,> <b b,> <c c,> <g c ees>
					<c, c,> <g' c ees> <g g,> <g b d> <f f,> <aes bes d> <ees ees,> <g bes ees> <ees ees,> <e e,> <f f,> <f bes d>
					<d d'> <f bes d> <c c'> <f a ees'> <f f,> <f a ees'> 
						<<{bes c16 bes aes! bes aes f} {bes,8 c16 bes aes! bes aes f}>>
					<ees' ees,>8 <g bes ees> <ees ees,> <g bes ees> <bes bes,> <aes bes d> <bes bes,> <b b,> <c c,> <g c ees>
					<c, c,> <g' c ees> <f f,> <aes c f> <c c,> <aes c f> 
						<<{ces aes ees ces! bes ees g bes} {ces,! aes ees ces! bes ees g bes}>>
					<f' f,> <aes bes d> <bes, bes,> <aes' bes d> 
				} \alternative {
						{<ees ees,> [bes ees,] bes'16 [(b)]} {<ees ees,>8 [bes ees,] r}}
			}
		}
	>>
	
	\layout {indent = 0.0\cm}
	\midi {\tempo 4=68}
}
