\version "2.4.0"

\header {
 mutopiatitle = "Armide"
 mutopiacomposer = "J. B. Lully (1632-1687)"
 mutopiapoet = "P. Quinault (1635-1688)"
 mutopiaopus = "LWV 71"
 mutopiainstrument = "Strings, Tenor, B.C."
 source = "Ballard, 1686"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Björn Sothmann"
 maintainerEmail = "bjoernsothmann@aol.com"
 lastupdated = "2005/Feb/2"
 
 title="ACTE II SCENE III."
 subsubtitle="Renaud seul."
 %footer="Created 9.2.05 by Björn Sothmann Bjoernsothmann@aol.com"
 
 footer = "Mutopia-2005/02/10-532"
 tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

blankslur = \override Slur   #'transparent = ##t
unblankslur = \revert Slur #'transparent

\include "Dessus.ly"
\include "Haute.ly"
\include "Taille.ly"
\include "Quinte.ly"
\include "Renaud.ly"
\include "Basse.ly"

#(set-global-staff-size 16)

\score{
{
	<<
	\context Staff = Dessus \dessus
	\context Staff = Haute \haute
	\context Staff = Taille \taille
	\context Staff = Quinte \quinte
	
	\oldaddlyrics
	\context Staff = Renaud <<\Renaud  \unset Staff.melismaBusyProperties >>
	\context Lyrics = RenaudL \RenaudL
	
	\context Staff = Basse \basse
	>>	
}
	\layout{}

}

\score{
{
	\applymusic #unfold-repeats
	<<
	\context Staff = Dessus 
	<<\dessus
	\set Staff.midiInstrument = #"violin">>
	\context Staff = Haute
	<<\haute
	\set Staff.midiInstrument = #"violin">>
	\context Staff = Taille
	<<\taille
	\set Staff.midiInstrument = #"violin">>
	\context Staff = Quinte
	<<\quinte
	\set Staff.midiInstrument = #"violin">>
	\context Staff = Renaud 
	<<\Renaud
	\set Staff.midiInstrument = #"oboe">>
	\context Staff = Basse
	<<\basse
	\set Staff.midiInstrument = #"harpsichord">>
	>>	
}
	\midi{\tempo 4=80 }
	
}
