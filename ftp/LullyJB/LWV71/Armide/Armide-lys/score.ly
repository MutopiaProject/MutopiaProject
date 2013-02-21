\version "2.16.0"

\header {
 mutopiatitle = "Armide"
 mutopiacomposer = "LullyJB"
 mutopiapoet = "P. Quinault (1635-1688)"
 mutopiaopus = "LWV 71"
 mutopiainstrument = "Voice (Tenor), String Ensemble, Basso Continuo"
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
	\new Staff = Dessus \dessus
	\new Staff = Haute \haute
	\new Staff = Taille \taille
	\new Staff = Quinte \quinte
	
	\new Staff = Renaud \Renaud
	\addlyrics \RenaudL
	
	\new Staff = Basse \basse
	>>	
}
	\layout{}

}

\score{
{
	\applyMusic #unfold-repeats
	<<
	\new Staff = Dessus 
	<<\dessus
	\set Staff.midiInstrument = #"violin">>
	\new Staff = Haute
	<<\haute
	\set Staff.midiInstrument = #"violin">>
	\new Staff = Taille
	<<\taille
	\set Staff.midiInstrument = #"violin">>
	\new Staff = Quinte
	<<\quinte
	\set Staff.midiInstrument = #"violin">>
	\new Staff = Renaud 
	<<\Renaud
	\set Staff.midiInstrument = #"oboe">>
	\new Staff = Basse
	<<\basse
	\set Staff.midiInstrument = #"harpsichord">>
	>>	
}
	
  \midi {
    \tempo 4 = 80
    }
}
