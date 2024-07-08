\version "2.12.1"				%%% Méhul - Symphonie 1 - mvt 4
\include "Fonctions.lyp"                     
\include "Global.lyp"   
                  
#(set-global-staff-size 14)  

\paper{ 
		#(define page-breaking ly:minimal-breaking)
    top-margin = 5\mm
    bottom-margin = 5\mm
    before-title-space = 5\mm
    head-separation = 5\mm
	oddFooterMarkup = \markup {
			\column {
			\fill-line {
				%% Copyright header field only on first page.
			%%  \on-the-fly #first-page \fromproperty #'header:copyright
			\fromproperty #'header:copyright
			}
			\fill-line {
			%% Tagline header field only on last page.
			\on-the-fly #last-page \fromproperty #'header:tagline
			}
		}
	}
	systemSeparatorMarkup = \slashSeparator
	ragged-last-bottom = ##f
	ragged-bottom = ##f
	first-page-number = 77
}	%%% fin paper

\book{
\header {
    title = \markup {\fontsize #3 \cTitre}
    subsubtitle = \markup {\fontsize #3 "IV"}
    composer =	\markup {\fontsize #2 \cCompositeur}
	copyright = \cCopyright
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
			\box \center-align {\column {\center-align {
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
            \relative c'' {\keepWithTag #'score \include "Mvt4/Fl1-4.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt4/Fl2-4.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Hautbois I-II"
         \set Staff.shortInstrumentName = "Hb"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt4/Hb1-4.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt4/Hb2-4.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Clarinette Ut I-II"} 
         \set Staff.shortInstrumentName = "Cl"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt4/Cl1-4.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt4/Cl2-4.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = "Basson I-II"
         \set Staff.shortInstrumentName = "Bn"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mvt4/Bn1-4.lyp"}
            \relative c {\keepWithTag #'score \include "Mvt4/Bn2-4.lyp"}
       }     
      \new Staff {
         \set Staff.instrumentName = \markup {"Cor Sol I-II"}
         \set Staff.shortInstrumentName = "C."
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt4/C1-4.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt4/C2-4.lyp"}
      }
      \new Staff {
         \set Staff.instrumentName = "Timbales"
         \set Staff.shortInstrumentName = "Ti"
				 \keepWithTag #'score 
            \include "Mvt4/Ti-4.lyp"
       }    
       \new GrandStaff <<
         \new Staff {
            \set Staff.instrumentName = "Violon I"
            \set Staff.shortInstrumentName = "v1"
						\keepWithTag #'score 
            \include "Mvt4/V1-4.lyp"
         }
         \new Staff {
            \set Staff.instrumentName = "Violon II"
            \set Staff.shortInstrumentName = "v2"
						\keepWithTag #'score 
            \include "Mvt4/V2-4.lyp"
         }
      >>
      \new Staff {
         \set Staff.instrumentName = "Alto"
         \set Staff.shortInstrumentName = "A."
				 \keepWithTag #'score 
         \include "Mvt4/A-4.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Violoncelle"
         \set Staff.shortInstrumentName = "Vc"
				 \keepWithTag #'score 
         \include "Mvt4/Vc-4.lyp"
      }
      \new Staff {
         \set Staff.instrumentName = "Contrebasse"
         \set Staff.shortInstrumentName = "Cb"
				 \keepWithTag #'score 
         \include "Mvt4/Cb-4.lyp"
      }
   >>
\layout { 
				\context { \RemoveEmptyStaffContext }
				\context { \RemoveEmptyRhythmicStaffContext }
}  %% layout
}  %% score
}  %% book