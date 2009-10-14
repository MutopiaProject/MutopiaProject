\version "2.13.3"
mystaffsize = #20
\include "style.ily"
\include "common.ily"
\header {
	title = "Laudate pueri Dominum"
	subtitle = "BuxWV 69"
	composer = "D.Buxtehude"
	tagline = ##f
	mutopiatitle = "Ciaconna: Laudate pueri Dominum"
	mutopiacomposer = "BuxtehudeD" 
	mutopiapoet = ""
	mutopiaopus = "BuxWV 69"
	mutopiainstrument = "2 Soprano, 5 Viola di gamba, Violone, Basso Continuo"
	date = ""
	source = "manuscript, Duben collection"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Martin Straeten"
	maintainerEmail = "martin.straeten@gmx.de"
}
%options
#(ly:set-option 'delete-intermediate-files #t)
#(ly:set-option 'no-point-and-click #t)
%additional paper settings
\paper{
	ragged-last-bottom = ##t
% #(define page-breaking ly:page-turn-breaking)
}
%addition Layout Params
\layout{	
	\context {
	\Score
%	\override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
	\context { \Staff
%	\override VerticalAxisGroup #'minimum-Y-extent = #'(-4.0 . 4.0)
%	beatLength = #(ly:make-moment 1 2)
	}
}
global={
	\key d \dorian 
	\set Score.skipBars = ##t
}
qBeam = {
%8tel in Halben, 16 in 4tel
#(override-auto-beam-setting '(end * * * *) 1 2 'Staff)
#(override-auto-beam-setting '(end 1 16 * *) 1 4 'Staff)
#(override-auto-beam-setting '(end 1 16 * *) 2 4 'Staff)
#(override-auto-beam-setting '(end 1 16 * *) 3 4 'Staff)
}           

\bookpart {
 \header { instrument = "Viola di gamba 1mo" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \qBeam \clef treble \include "./A/n_vg1.ily"}
	>>
 		}
}

\bookpart {
 \header { instrument = "Viola di gamba 2da" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \qBeam \clef alto \include "./A/n_vg2.ily"}
	>>
 		}
}

\bookpart {
 \header { instrument = "Viola di gamba 3ta" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \qBeam \clef alto \include "./A/n_vg3.ily"}
	>>
 		}
}

\bookpart {
 \header { instrument = "Viola di gamba 4te" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \qBeam \clef alto \include "./A/n_vg4.ily"}
	>>
 		}
}

\bookpart {
 \header { instrument = "Viola di gamba 5ta" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \qBeam \clef bass \include "./A/n_vg5.ily"}
	>>
 		}
}

\bookpart {
 \header { instrument = "Violon" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \qBeam \clef bass \include "./A/n_vn.ily"}
	>>
 		}
}


\bookpart {
 \header { instrument = "B.C." }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \clef bass \include "./A/n_bc.ily"}
	>>
	}
}
