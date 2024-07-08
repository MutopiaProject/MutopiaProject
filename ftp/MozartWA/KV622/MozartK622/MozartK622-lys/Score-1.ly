\version "2.11.64"				%%% score complet, sans suppression des lignes de silences
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
					\fill-line { \fromproperty #'header:copyright } }			%%%tagline
		}			
		ragged-last-bottom = ##f
		ragged-bottom = ##f
}	%%% fin paper

\book{
\header {
    title = \markup {\fontsize #3 \cTitre}
		subtitle = \cSousTitre
    subsubtitle = \markup {\fontsize #3 "I"}
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
            \relative c'' {\keepWithTag #'score \include "Mvt1/Fl1-1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt1/Fl2-1.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Basson I-II"
         \set Staff.shortInstrumentName = "Bn"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mvt1/Bn1-1.lyp"}
            \relative c {\keepWithTag #'score \include "Mvt1/Bn2-1.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Cor in A I-II"}
         \set Staff.shortInstrumentName = "C."
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt1/C1-1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt1/C2-1.lyp"}
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
			%%	\context { \RemoveEmptyStaffContext }
			%%	\context { \RemoveEmptyRhythmicStaffContext }
}  %% layout
}  %% score
}  %% book