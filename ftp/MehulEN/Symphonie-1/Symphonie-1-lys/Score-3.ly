﻿\version "2.12.1"				%%% Méhul - Symphonie 1 - mvt 3
\include "Fonctions.lyp"                     
\include "Global.lyp"   
                  
#(set-global-staff-size 14)  

\paper{ 
		#(define page-breaking ly:minimal-breaking)
    top-margin = 5\mm
    bottom-margin = 5\mm
    before-title-space = 5\mm
    head-separation = 5\mm
	oddFooterMarkup = \markup \column {
				\fill-line { \tiny {			%% imprime le copyright et le titre sur toutes les pages, sauf la dernière
					\on-the-fly #(lambda (layout props arg)
							(if (not (chain-assoc-get 'page:last?  props #f))
									(interpret-markup layout props arg)
									empty-stencil))
					\fromproperty #'header:copyright }}
				\fill-line {			%% imprime tagline sur la dernière page
					\on-the-fly #(lambda (layout props arg)
							(if (chain-assoc-get 'page:last?  props #f)
									(interpret-markup layout props arg)
									empty-stencil))
					\fill-line { \fromproperty #'header:copyright } }
		}			
	ragged-last-bottom = ##f
	ragged-bottom = ##f
	first-page-number = 65
}	%%% fin paper

\book{
\header {
    title = \markup {\fontsize #3 \cTitre}
    subsubtitle = \markup {\fontsize #3 "III"}
    composer =	\markup {\fontsize #2 \cCompositeur}
	copyright = \cCopyright
}	%%% fin header

\score {
  \new StaffGroup <<
		\override Score.BarNumber #'padding = #2 
		\override Score.BarNumber #'font-size = #2 
		\reperes											%% voir Foncions.lyp
		\set Score.soloText = #"I."
		\set Score.soloIIText = #"II."
		\override Score.VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
   
      \new Staff {
         \set Staff.instrumentName = "Flûte I-II"
         \set Staff.shortInstrumentName = "Fl"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt3/Fl1-3.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt3/Fl2-3.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Hautbois I-II"
         \set Staff.shortInstrumentName = "Hb"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt3/Hb1-3.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt3/Hb2-3.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Clarinette Ut I-II"} 
         \set Staff.shortInstrumentName = "Cl"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt3/Cl1-3.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt3/Cl2-3.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Basson I-II"
         \set Staff.shortInstrumentName = "Bn"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mvt3/Bn1-3.lyp"}
            \relative c {\keepWithTag #'score \include "Mvt3/Bn2-3.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Cor Sol I-II"}
         \set Staff.shortInstrumentName = "C."
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt3/C1-3.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt3/C2-3.lyp"}
      }
      \new Staff {
         \set Staff.instrumentName = "Timbales"
         \set Staff.shortInstrumentName = "Ti"
				 \keepWithTag #'score 
            \include "Mvt3/Ti-3.lyp"
       }    
       \new GrandStaff <<
         \new Staff {
            \set Staff.instrumentName = "Violon I"
            \set Staff.shortInstrumentName = "v1"
						\keepWithTag #'score 
            \include "Mvt3/V1-3.lyp"
         }
         \new Staff {
            \set Staff.instrumentName = "Violon II"
            \set Staff.shortInstrumentName = "v2"
						\keepWithTag #'score 
            \include "Mvt3/V2-3.lyp"
         }
      >>
      \new Staff {
         \set Staff.instrumentName = "Alto"
         \set Staff.shortInstrumentName = "A."
				 \keepWithTag #'score 
         \include "Mvt3/A-3.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Violoncelle"
         \set Staff.shortInstrumentName = "Vc"
				 \keepWithTag #'score 
         \include "Mvt3/Vc-3.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Contrebasse"
         \set Staff.shortInstrumentName = "Cb"
				 \keepWithTag #'score 
         \include "Mvt3/Cb-3.lyp"
      }
   >>
\layout { 
				\context { \RemoveEmptyStaffContext }
				\context { \RemoveEmptyRhythmicStaffContext }
}  %% layout
}  %% score
}  %% book