\version "2.12.1"				%%% Méhul - Symphonie 1 - mvt 1
\include "Fonctions.lyp"                     
\include "Global.lyp"   
                  
#(set-global-staff-size 14)  
#(ly:set-option 'point-and-click #f)

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
}	%%% fin paper

\book{
\header {
    title = \markup {\fontsize #3 \cTitre}
    subsubtitle = \markup {\fontsize #3 "I"}
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
            \relative c'' {\keepWithTag #'score \include "Mvt1/Fl1-1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt1/Fl2-1.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Hautbois I-II"
         \set Staff.shortInstrumentName = "Hb"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt1/Hb1-1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt1/Hb2-1.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Clarinette Ut I-II"} 
         \set Staff.shortInstrumentName = "Cl"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt1/Cl1-1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt1/Cl2-1.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Basson I-II"
         \set Staff.shortInstrumentName = "Bn"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mvt1/Bn1-1.lyp"}
            \relative c {\keepWithTag #'score \include "Mvt1/Bn2-1.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Cor Si" \flat " I-II"}
         \set Staff.shortInstrumentName = "C."
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt1/C1-1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt1/C2-1.lyp"}
      }
      \new Staff {
         \set Staff.instrumentName = "Timbales"
         \set Staff.shortInstrumentName = "Ti"
				 \keepWithTag #'score 
            \include "Mvt1/Ti-1.lyp"
       }    
       \new GrandStaff <<
         \new Staff {
            \set Staff.instrumentName = "Violon I"
            \set Staff.shortInstrumentName = "v1"
						\keepWithTag #'score 
            \include "Mvt1/V1-1.lyp"
         }
         \new Staff {
            \set Staff.instrumentName = "Violon II"
            \set Staff.shortInstrumentName = "v2"
						\keepWithTag #'score 
            \include "Mvt1/V2-1.lyp"
         }
      >>
      \new Staff {
         \set Staff.instrumentName = "Alto"
         \set Staff.shortInstrumentName = "A."
				 \keepWithTag #'score 
         \include "Mvt1/A-1.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Violoncelle"
         \set Staff.shortInstrumentName = "Vc"
				 \keepWithTag #'score 
         \include "Mvt1/Vc-1.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Contrebasse"
         \set Staff.shortInstrumentName = "Cb"
				 \keepWithTag #'score 
         \include "Mvt1/Cb-1.lyp"
      }
   >>
\layout { 
				\context { \RemoveEmptyStaffContext }
				\context { \RemoveEmptyRhythmicStaffContext }
}  %% layout
}  %% score
}  %% book