\version "2.12.1"				%%% score "à la française", avec suppression des lignes de silences
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
					\fill-line { \fromproperty #'header:tagline } }
		}			
		between-system-padding = 10\mm
		between-system-space = 10\mm
    systemSeparatorMarkup = \slashSeparator
		ragged-last-bottom = ##f
		ragged-bottom = ##f
}	%%% fin paper

\book{
\header {
    title = \markup {\fontsize #3 \cTitre}
    subsubtitle = \markup {\fontsize #3 \cSousTitre}
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
        \set Staff.instrumentName = "Petite Flûte"
        \set Staff.shortInstrumentName = "PF"
				\keepWithTag #'score 
            \include "Mus/Pic.lyp"
      }     
      \new Staff {
         \set Staff.instrumentName = "Flûte I-II"
         \set Staff.shortInstrumentName = "Fl"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mus/Fl1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mus/Fl2.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Hautbois I-II"
         \set Staff.shortInstrumentName = "Hb"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mus/Hb1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mus/Hb2.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Clarinette La I-II"} 
         \set Staff.shortInstrumentName = "Cl"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mus/Cl1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mus/Cl2.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Basson I-II"
         \set Staff.shortInstrumentName = "Bn"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mus/Bn1.lyp"}
            \relative c {\keepWithTag #'score \include "Mus/Bn2.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Cor Ré I-II"}
         \set Staff.shortInstrumentName = "C."
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mus/C1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mus/C2.lyp"}
      }
      \new Staff {
         \set Staff.instrumentName = \markup {"Trompette La I-II"}
         \set Staff.shortInstrumentName = "Tp"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mus/Tp1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mus/Tp2.lyp"}
      }
      \new Staff {
         \set Staff.instrumentName = "Trombone I-II"
         \set Staff.shortInstrumentName = "Tb I-II"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mus/Tb1.lyp"}
            \relative c {\keepWithTag #'score \include "Mus/Tb2.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Trombone III"
         \set Staff.shortInstrumentName = "Tb III"
				 \keepWithTag #'score 
            \include "Mus/Tb3.lyp"
       }    
      \new Staff {
         \set Staff.instrumentName = "Timbales"
         \set Staff.shortInstrumentName = "Ti"
				 \keepWithTag #'score 
            \include "Mus/Ti.lyp"
       }    
      \new RhythmicStaff {
         \set Staff.instrumentName = "Tambour"
         \set Staff.shortInstrumentName = "Tr"
				 \keepWithTag #'score 
            \include "Mus/Tamb.lyp"
         }
      \new RhythmicStaff {
         \set Staff.instrumentName = "Grosse Caisse"
         \set Staff.shortInstrumentName = "GC"
				 \keepWithTag #'score 
            \include "Mus/GC.lyp"
         }
       \new GrandStaff <<
         \new Staff {
            \set Staff.instrumentName = "Violon I"
            \set Staff.shortInstrumentName = "v1"
						\keepWithTag #'score 
            \include "Mus/V1.lyp"
         }
         \new Staff {
            \set Staff.instrumentName = "Violon II"
            \set Staff.shortInstrumentName = "v2"
						\keepWithTag #'score 
            \include "Mus/V2.lyp"
         }
      >>
      \new Staff {
         \set Staff.instrumentName = "Alto"
         \set Staff.shortInstrumentName = "A."
				 \keepWithTag #'score 
         \include "Mus/A.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Violoncelle"
         \set Staff.shortInstrumentName = "Vc"
				 \keepWithTag #'score 
         \include "Mus/Vc.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Contrebasse"
         \set Staff.shortInstrumentName = "Cb"
				 \keepWithTag #'score 
         \include "Mus/Cb.lyp"
      }
   >>
\layout { 
				\context { \RemoveEmptyStaffContext }
				\context { \RemoveEmptyRhythmicStaffContext }
}  %% layout
}  %% score
}  %% book