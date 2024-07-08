﻿\version "2.12.1"
\include "Fonctions.lyp"                     
\include "Global.lyp"                     

#(set-global-staff-size 20)  

\paper{ 
    top-margin = 5.0
    bottom-margin = 5.0
    before-title-space = 10.0
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
    composer =	\cCompositeur
	copyright = \cCopyright
	poet = \markup \box { \pad-around #1 {"Flûte 1"}}	%% placé en haut à gauche
	instrumentHeader = \markup {"Flûte 1"}
}	%% fin header

\markup \fill-line {\bold \huge "I"}
\score {
		\new Staff << 
			\reperes \silencesMulti
		 	\keepWithTag #'partie
			\include "Mvt1/Fl1-1.lyp" >>
}	%% fin score I

\markup \fill-line {\bold \huge "II"}
\score {
		\new Staff { 
			\reperes \silencesMulti
		 	\keepWithTag #'partie
			\include "Mvt2/Fl1-2.lyp" }
}	%% fin score II

\markup \fill-line {\bold \huge "III"}
\score {
		\new Staff { 
			\reperes \silencesMulti
		 	\keepWithTag #'partie
			\include "Mvt3/Fl1-3.lyp" }
}	%% fin score III

\markup \fill-line {\bold \huge "IV"}
\score {
		\new Staff { 
			\reperes \silencesMulti
		 	\keepWithTag #'partie
			\include "Mvt4/Fl1-4.lyp" }
}	%% fin score IV

}	%% fin book	
%{ 
%}
