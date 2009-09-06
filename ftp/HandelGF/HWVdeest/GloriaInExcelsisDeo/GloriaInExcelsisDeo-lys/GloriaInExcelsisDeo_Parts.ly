\version "2.13.3"
\header {
	title = "Gloria in Excelsis Deo"
	subtitle = "HWV deest"
	composer = "G.F.Händel"
	tagline = ##f
}
mystaffsize = #20
\include "style.ily"
\include "common.ily"
\paper{
ragged-last-bottom = ##t
#(define page-breaking ly:page-turn-breaking)
}
\layout{
	indent = 0\cm	
}
globalb={\key b \major
		\set Score.skipBars = ##t}
globalf={\key f \major
		\set Score.skipBars = ##t}

\bookpart {
\header { instrument = "Violino 1" }
	\score { \new Staff 
	<< 
	\new Voice {\include "./A/layout.ily"}
	\new Voice {\globalb \clef treble \include "./A/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "1. Gloria in Excelsis Deo" }	
 	}
	
	\score { \new Staff 
	<< 
	\new Voice {\include "./B/layout.ily"}
	\new Voice {\globalb \clef treble \include "./B/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "2. Et in terra pax" }	
 	}
	
	\score { \new Staff 
	<< 
	\new Voice {\include "./C/layout.ily"}
	\new Voice {\globalf \clef treble \include "./C/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "3. Laudamus te" }	
 	}
	
	\markup {\fontsize #1 \bold "4. Domine Deus Rex. Tacet"}

	\score { \new Staff 
	<< 
	\new Voice {\include "./E/layout.ily"}
	\new Voice {\globalb \clef treble \include "./E/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "5. Qui tollis peccata mundi" }	
 	}
	
	\score { \new Staff 
	<< 
	\new Voice {\include "./F/layout.ily"}
	\new Voice {\globalb \clef treble \include "./F/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "6. Quoniam tu solus sanctus" }	
 	}
}

\bookpart {
 \header { instrument = "Violino2" }
	\score { \new Staff 
	<< 
	\new Voice {\include "./A/layout.ily"}
	\new Voice {\globalb \clef treble \include "./A/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "1. Gloria in Excelsis Deo" }	
 	}
	
	\score { \new Staff 
	<< 
	\new Voice {\include "./B/layout.ily"}
	\new Voice {\globalb \clef treble \include "./B/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "2. Et in terra pax" }	
 	}
	
	\score { \new Staff 
	<< 
	\new Voice {\include "./C/layout.ily"}
	\new Voice {\globalf \clef treble \include "./C/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "3. Laudamus te" }	
 	}
	
	\markup {\fontsize #1 \bold "4. Domine Deus Rex. Tacet"}
	
	\score { \new Staff 
	<< 
	\new Voice {\include "./E/layout.ily"}
	\new Voice {\globalb \clef treble \include "./E/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "5. Qui tollis peccata mundi" }	
 	}
	
	\score { \new Staff 
	<< 
	\new Voice {\include "./F/layout.ily"}
	\new Voice {\globalb \clef treble \include "./F/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "6. Quoniam tu solus sanctus" }	
 	}
	
}

\bookpart {
 \header { instrument = "Basso" }
	\score { \new Staff 
	<< 
%	\new Voice {\include "./A/n_fig.ily" }
	\new Voice {\include "./A/layout.ily"}
	\new Voice {\globalb \clef bass \include "./A/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "1. Gloria in Excelsis Deo" }	
%	\layout {\context {\Score \override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4)}}
 	}
	
	\score { \new Staff 
	<< 
%	\new Voice {\include "./B/n_fig.ily" }
	\new Voice {\include "./B/layout.ily"}
	\new Voice {\globalb \clef bass \include "./B/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "2. Et in terra pax" }	
 	}
	
	\score { \new Staff 
	<< 
%	\new Voice {\include "./C/n_fig.ily" }
	\new Voice {\include "./C/layout.ily"}
	\new Voice {\globalf \clef bass \include "./C/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "3. Laudamus te" }	
 	}
	
	\score { \new Staff 
	<< 
%	\new Voice {\include "./D/n_fig.ily" }
	\new Voice {\include "./D/layout.ily"}
	\new Voice {\globalf \clef bass \include "./D/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "4. Domine Deus" }	
 	}
	
	\score { \new Staff 
	<< 
%	\new Voice {\include "./E/n_fig.ily" }
	\new Voice {\include "./E/layout.ily"}
	\new Voice {\globalb \clef bass \include "./E/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "5. Qui tollis peccata mundi" }	
 	}
	
	\score { \new Staff 
	<< 
%	\new Voice {\include "./F/n_fig.ily" }
	\new Voice {\include "./F/layout.ily"}
	\new Voice {\globalb \clef bass \include "./F/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "6. Quoniam tu solus sanctus" }	
 	}
	
}
