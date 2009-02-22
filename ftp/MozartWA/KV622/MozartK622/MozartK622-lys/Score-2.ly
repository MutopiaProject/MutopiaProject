\version "2.11.64"				%%% score complet, sans suppression des lignes de silences
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
					\fill-line { \fromproperty #'header:copyright } }			%%%tagline
		}			
		ragged-last-bottom = ##f
		ragged-bottom = ##f
}	%%% fin paper

\book{
\header {
    title = \markup {\fontsize #3 \cTitre}
		subtitle = \cSousTitre
    subsubtitle = \markup {\fontsize #3 "II"}
    composer =	\markup {\fontsize #2 \cCompositeur}
		copyright = \markup {\concat {
				\char #169  "2008-" \italic {"Le Concert - "} \cRefConcert " / " \cCompositeur " - " \cTitre}}
		tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
			\box \center-align {\column {\center-align {
				\small \line { \copyright }
				\small \line {
					"Typeset using GNU-Lilypond " \with-url #"http://www.LilyPond.org" \hspace #-1.0 
					#(ly:export (string-append "version " (lilypond-version))) \hspace #-1 . }
				\small \line {
					"Sheet music from http://www.MutopiaProject.org - Free to download, distribute, modify and perform."}
				\teeny \line { 
					"Licensed under the Creative Commons Attributio 3.0 License, 
					for details see: http://creativecommons.org/licenses/by/3.0" }
			}}}
		}		
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
            \relative c'' {\keepWithTag #'score \include "Mvt2/Fl1-2.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt2/Fl2-2.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Basson I-II"
         \set Staff.shortInstrumentName = "Bn"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mvt2/Bn1-2.lyp"}
            \relative c {\keepWithTag #'score \include "Mvt2/Bn2-2.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Cor in A I-II"}
         \set Staff.shortInstrumentName = "C."
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt2/C1-2.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt2/C2-2.lyp"}
      }
       \new GrandStaff <<
         \new Staff {
            \set Staff.instrumentName = "Violon I"
            \set Staff.shortInstrumentName = "v1"
						\keepWithTag #'score 
            \include "Mvt2/V1-2.lyp"
         }
         \new Staff {
            \set Staff.instrumentName = "Violon II"
            \set Staff.shortInstrumentName = "v2"
						\keepWithTag #'score 
            \include "Mvt2/V2-2.lyp"
         }
      >>
      \new Staff {
         \set Staff.instrumentName = "Alto"
         \set Staff.shortInstrumentName = "A."
				 \keepWithTag #'score 
         \include "Mvt2/A-2.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Violoncelle"
         \set Staff.shortInstrumentName = "Vc"
				 \keepWithTag #'score 
         \include "Mvt2/Vc-2.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Contrebasse"
         \set Staff.shortInstrumentName = "Cb"
				 \keepWithTag #'score 
         \include "Mvt2/Cb-2.lyp"
      }
   >>
\layout { 
			%%	\context { \RemoveEmptyStaffContext }
			%%	\context { \RemoveEmptyRhythmicStaffContext }
}  %% layout
}  %% score
}  %% book