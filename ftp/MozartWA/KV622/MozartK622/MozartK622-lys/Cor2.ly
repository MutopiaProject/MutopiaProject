\version "2.12.1"
\include "Fonctions.lyp"                     
\include "Global.lyp"                     

#(set-global-staff-size 19)  
#(ly:set-option 'point-and-click #f)

\paper{ #(define page-breaking ly:page-turn-breaking)
    top-margin = 5.0
    bottom-margin = 5.0
    before-title-space = 5.0
    after-title-space = 5.0
		oddHeaderMarkup = \markup \fill-line { 
				" "
				\on-the-fly #not-first-page \fromproperty #'header:instrumentHeader
				\on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
		evenHeaderMarkup = \markup \fill-line {
				\on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
				\on-the-fly #not-first-page \fromproperty #'header:instrumentHeader
				" " }
    oddFooterMarkup = \markup \fill-line \teeny { \fromproperty #'header:copyright }
    ragged-last-bottom = ##f
   % first-page-number = 2
}	%% fin paper
\book {
\header {
    title = \cTitre
		subtitle = \cSousTitre
    composer =	\cCompositeur
		copyright = \markup {\concat {
				\char #169  "2008-" \italic {"Le Concert - "} \cRefConcert " / " \cCompositeur " - " \cTitre}}
		poet = \markup \box { \pad-around #1 {"Corno 2"}}	%% placé en haut à gauche
		instrumentHeader = \markup {"Corno 2"}
}	%% fin header

\markup \fill-line {\bold \huge "I"}
\score {
		\new Staff << 
			\reperes \silencesMulti
			\set Staff.instrumentName = \markup {\bold \huge {"in A"}}
		 	\keepWithTag #'partie
			\include "Mvt1/C2-1.lyp" >>
}	%% fin score I

\markup \fill-line {\bold \huge "II"}
\score {
		\new Staff { 
			\reperes \silencesMulti
			\set Staff.instrumentName = \markup {\bold \huge {"in D"}}
		 	\keepWithTag #'partie
			\include "Mvt2/C2-2.lyp" }
}	%% fin score II

\markup \fill-line {\bold \huge "III"}
\score {
		\new Staff { 
			\reperes \silencesMulti
			\set Staff.instrumentName = \markup {\bold \huge "in A"}
		 	\keepWithTag #'partie
			\include "Mvt3/C2-3.lyp" }
}	%% fin score III

}	%% fin book	
