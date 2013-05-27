\version "2.2.1"

\header {
  title = "Opus 29 no. 13"
%  subtitle = ""
%  subsubtitle = " "
  composer = "Fernando Sor"
%  opus = "Opus 29"
%  piece = ""
%  instrument = "Guitar"
%  arranger = "Arranger"
%  poet = "Poet"
%  texttranslator = "Translator"
 copyright = "Creative Commons Attribution-ShareAlike 1.0"
 enteredby = "Steve Shorter"
 footer = "Mutopia-2004/05/22"
 mutopiatitle = "Opus 29 no. 13"
 mutopiacomposer = "SorF"
 mutopiaopus = "O 29"
 mutopiainstrument = "Guitar"
 source = "Library"
 style = "Classical"
 maintainer = "Steve Shorter"
 maintainerEmail = "steve@linuxsuite.org"
 maintainerWeb = "http://www.linuxsuite.org/"
 lastupdated = "2004/May/20"
 tagline =	"\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& " + \maintainer + " 2004.} \\makebox[\\textwidth][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License, with the additional permission that attribution is not} \\makebox[\\textwidth][c]{\\footnotesize required in an audio derivative of this work. To view a copy of that license visit \\texttt{http://creativecommons.org/licenses/by-sa/1.0/} } \\makebox[\\textwidth][c]{\\footnotesize or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}"
 footer =	"Mutopia-2004/05/20-450"
}


one =	\context Voice=one \notes \relative c'' {
	\voiceOne
	\stemUp
	\override Slur #'attachment = #'(head . head)
	\override Slur #'direction = #-1
%
	\override Rest #'extra-offset = #'(0 . 1.0)
	\times 4/6 {r16^\markup {"" \raise #6.0 \bold \huge {Andante lento}}
	 d bes f f' d}
	\override TupletBracket #'transparent = ##t
	\times 4/6 {r16 d bes f f' d} |
	\times 4/6 {r16 ees c f, f' ees}	\times 4/6 {r16 ees c f, f' ees} |
	\times 4/6 {r16 d bes f f' d}		\times 4/6 {r16 e c bes e c} |
	\times 4/6 {r16 f c a c a}		\times 4/6 {f16 f' c a c f} |
	\times 4/6 {g16\rest g ees bes ees g}	\times 4/6 {g16\rest a f c f a} |
	\times 4/6 {g16\rest bes f bes, bes' f}	\times 4/6 {g16\rest f d d, f' bes,} |
	\times 4/6 {r16 ees bes g ees' bes}	\times 4/6 {r16 ees a, f f' ees} |
	\times 4/6 {r16 d bes f d' bes}		\times 4/6 {f16 d' bes f d' bes} |
% 9 
	\times 4/6 {r16 c g e g' c,}		\times 4/6 {r16 c g e g' c,} |
	\times 4/6 {r16 f c f, f' c}		\times 4/6 {a16 f' c f, f' c} |
	\times 4/6 {r16 c g e g' c,}		\times 4/6 {r16 c g e g' c,} |
	\times 4/6 {r16 f c f, f' c}		\times 4/6 {a16 f' c f, f' c} |
	\times 4/6 {r16 c a f f' c}		\times 4/6 {r16 cis a f f' cis} |
	\times 4/6 {r16 d bes f f' d}		\times 4/6 {r16 d bes g bes' d,} |
	\times 4/6 {r16 a' f c a' f}		\times 4/6 {r16 g e c g' e} |
	\times 4/6 {r16 c' f, c c' f,}		\times 4/6 {r16 c' f, c c' f,} |
%  17
	\times 4/6 {r16 f c a c' f,}		\times 4/6 {r16 f cis a cis' f,} |
	\times 4/6 {r16 f d bes d' f,}		\times 4/6 {r16 g d bes bes' g} |
	\times 4/6 {r16 a f c a' f}		\times 4/6 {r16 g e bes g' e} |
	\times 4/6 {r16 f c a c a}	f8 s8 \bar ":|"
%
% 21
	\times 4/6 {a'16\rest f c a c f}	\times 4/6 {a16\rest g e bes e g} |
	\times 4/6 {a16\rest a ees c ees a}	\times 4/6 {a16\rest bes d, bes d bes'} |
	\times 4/6 {r16 ees, c f, c' ees}	\times 4/6 {r16 d bes f bes d} |
	\times 4/6 {r16 d bes f bes d}		\times 4/6 {r16 c a f a c} |
	\times 4/6 {r16 f c a c f}		\times 4/6 {a16\rest g e bes e g} |
	\times 4/6 {a16\rest a ees c ees a}	\times 4/6 {a16\rest bes d, bes d bes'} |
	\times 4/6 {r16 ees, c f, ees' c}	\times 4/6 {r16 d bes f d' bes} |
% 28
	\times 4/6 {r16 c a f f' a, }		\times 4/6 {g e' bes a ees' c} |
	\times 4/6 {r16 d bes f f' d}		\times 4/6 {r16 d bes f f' d} |
	\times 4/6 {r16 ees c f, f' ees}	\times 4/6 {r16 ees c f, f' ees} |
	\times 4/6 {r16 d bes f f' d}		\times 4/6 {r16 e c bes e c} |
	\times 4/6 {r16 f c a c a}		\times 4/6 {f16 a c f a, c} |
	\times 4/6 {g'16\rest fis c a fis' c}	\times 4/6 {g'16\rest fis c a fis' c} |
% 34
	\times 4/6 {g'16\rest g c, g g' c,}	\times 4/6 {g'16\rest g c, ees, g' c,} |
	\times 4/6 {g'16\rest fis c a fis' c}	\times 4/6 {g'16\rest fis c a fis' c} |
	\times 4/6 {g'16\rest g c, g g' c,}	\times 4/6 {g'16\rest g c, g g' c,} | 
	\times 4/6 {g'16\rest g c, a g' c,}	\times 4/6 {g'16\rest ges c, a ges' c,} | 
	\times 4/6 {g'16\rest f d bes f' d}	\times 4/6 {b'16\rest bes d, bes bes' d,} |
	\times 4/6 {g16\rest bes c, g c bes'}	\times 4/6 {a16\rest a ees c a' ees} |
	\times 4/6 {r16 bes' f d f d }		\times 4/6 {bes f' d bes d f} |
% 41
	\times 4/6 {r16 g ees bes bes' g} 	\times 4/6 {r16 g ees bes bes' g} |
	\times 4/6 {r16 f d bes bes' f}		\times 4/6 {r16 d bes f f' d} |
	\times 4/6 {r16 c a f f' ees}		\times 4/6 {r16 c a f f' ees} |
	\times 4/6 {r16 d bes f f' d}		\times 4/6 {r16 f d bes bes' f} |
	\times 4/6 {r16 g ees bes bes' g}	\times 4/6 {r16 ges ees bes bes' ges} |
	\times 4/6 {r16 f d bes bes' f}		\times 4/6 {r16 d bes f f' d} |
% 47
	\times 4/6 {r16 c a f  f' ees }		\times 4/6 {r16 c a f  f' ees } |
	\times 4/6 {r16 d bes f f' d}		\times 4/6 {r16 d bes f f' d} |
	\times 4/6 {r16 d c d, fis' d}		\times 4/6 {r16 d c d, fis' d}	|
	\times 4/6 {r16 d bes d, g' d}		\times 4/6 {r16 d bes d, g' d} |
	\times 4/6 {r16 d c d, a'' d,}		\times 4/6 {r16 d c d, a'' d,}	|
	\times 4/6 {r16 d bes g bes' d,}	\times 4/6 {r16 d bes g bes' d,} |
% 53
	\times 4/6 {r16 g cis, bes g' cis,}	\times 4/6 {r16 g' cis, bes g' cis,} |
	\times 4/6 {r16 f d bes f' d}		\times 4/6 {r16 d bes f d' bes} |
	\times 4/6 {r16 c bes e, c' bes}	\times 4/6 {r16 c a ees f' a,} |
	\override Rest #'extra-offset = #'(0 . -1.0)
	\times 4/6 {r16 bes d,( f) bes d,}	\times 4/6 {r16 bes' d,( f) bes d,} |
	\times 4/6 {r16 bes' f( d) f( d)}	\times 4/6 {r16 bes' f( d) f( d)} |
	bes2 |
}

two =	\context Voice=two \notes \relative c' {
	\voiceTwo
	\stemDown
	\override Rest #'extra-offset = #'(0 . 1.0)
	r8 f4 f8 |
	r8 f4 f8 |
	r8 f r bes |
	r8 a f4 |
% 5
	g8\rest bes g8\rest c8 |
	g8\rest bes8 bes4 |
	r8 g r f |
	r8 f[ f f] |
% 9
	r8 e4 e8 |
	r8 f[ a f] |
	r8 e4 e8 |
	r8 f[ a f] |
	r8 f4 f8 |
% 14
	r8 f8 r8 g8 |
	f8\rest c'4 c8 |
	r8 c[ a c] |
	r8 a4 a8 |
	r8 bes4 bes8 |
	r8 c4 bes8 |
	r8  a8 s8 r8
% 21
	a8\rest a a\rest bes |
	a8\rest c a\rest bes |
	r8 f r f |
	r8 f r f |
	r8 a a\rest bes |
	a8\rest c a\rest bes |
	r8 f r f |
% 28
	r8 s g a |
	r8 f4 f8 |
	r8 f4 f8 |
	r8 f8 r bes8 |
	r8 a f4 |
	g8\rest a4 a8 |
% 34
	g8\rest g g4 |
	g8\rest a4 a8 |
	g8\rest g[ g g] |
	g8\rest a4 a8 |
	g8\rest bes c8\rest bes |
	g8\rest g a\rest c |
	r8 d[ bes bes] |
% 41
	r8 bes4 bes8 |
	r8 bes r f |
	r8 f4 f8 |
	r8 f r bes |
	r8 bes r bes |
	r8 bes r f |
	r8 f4 f8 |
% 48
	r8 f4 f8 |
	r8 d4 d8 |
	r8 d4 d8 |
	r8 d4 d8 |
	r8 g4 g8 |
	r8 bes4 bes8 |
% 54
	r8 bes4 f8 |
	r8 e4 ees8 |
	s2 |
	s2 |
	s2 |
}

three =	\context Voice=three \notes \relative c' {
	\voiceThree
	\stemDown
	bes4 bes |
	a4 a |
	bes4 g |
	f2 |
% 5
	ees'4 ees |
	d4. d8|
	c4 f,4 |
	bes2 |
	bes4 bes |
	a2 |
	bes4 bes |
	a2 |
% 13
	a4 a |
	bes4 g |
	c4 c |
	a2 |
	a4 a |
	bes4 bes |
	c4 c |
	f,4 f'8 s8
% 21
	f4 f |
	f4 f |
	a,4 bes |
	f4 f |
	f4 f' |
	f4 f |
	a,4 bes |
	f8 f'8 s4 |
% 29
	bes,4 bes |
	a4 a |
	bes4 g |
	f2 |
	d'4 d |
	ees4. ees8 |
	d4 d |
	ees2 |
	ees4 ees |
	d4 g |
% 39
	ees4 f |
	bes,4 r |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
	bes4 bes |
% 49
	a4 a |
	g4 g |
	fis4 fis |
	g4 g |
	e4 e |
	f4 f |
	f4 f |
	bes4 bes |
	bes4 bes |
	bes2 |
}

	
\score { 
	\notes { \time 2/4 \key bes\major \clef treble 
		\context Staff <<
			 \one
			 \two
			 \three
		>>
	}
%	\midi { \tempo 4=30}
}



