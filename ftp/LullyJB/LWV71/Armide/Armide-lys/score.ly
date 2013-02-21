\version "2.16.1"

\header {
 mutopiatitle = "Acte II, Scene III from Armide"
 mutopiacomposer = "LullyJB"
 mutopiapoet = "P. Quinault (1635-1688)"
 mutopiaopus = "LWV 71"
 mutopiainstrument = "Voice (Tenor), String Ensemble, Basso Continuo"
 source = "Ballard, 1686"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Björn Sothmann"
 maintainerEmail = "bjoern.sothmann@rub.de"
 maintainerWeb = "http://www.thp.uni-due.de/~bjoerns/"
 
 title="ACTE II SCENE III."
 subsubtitle="Renaud seul."
 %footer="Created 9.2.05 by Björn Sothmann Bjoernsothmann@aol.com"
 
 footer = "Mutopia-2013/02/21-532"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
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
