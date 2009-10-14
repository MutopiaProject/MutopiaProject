\version "2.13.0"
\header {
 title = "Alles was ihr tut"
 subtitle = "BuxWV 4"
 composer = "D.Buxtehude"
 tagline = ##f
}
mystaffsize = #20
\include "style.ily"
\include "common.ily"
%options
#(ly:set-option 'delete-intermediate-files #t)
#(ly:set-option 'no-point-and-click #t)

\paper{
	ragged-last-bottom = ##t
% #(define page-breaking ly:page-turn-breaking)
}
\layout{	
	\context { \FiguredBass
	\override VerticalAxisGroup #'Y-extent = #'(0 . 0)
	\override VerticalAxisGroup #'minimum-Y-extent = ##f
	\override VerticalAxisGroup #'keep-fixed-while-stretching = ##t
	figuredBassAlterationDirection = #RIGHT
	figuredBassPlusDirection = #RIGHT
	}
}
global={
	\key g \major 
	\set Score.skipBars = ##t
}
\bookpart {
 \header { instrument = "Violino 1" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \clef treble \include "./A/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "I. Sonata" }
	}
	
 \score { \new Staff 
	<< 
		\new Voice {\include "./B/layout.ily"}
		\new Voice {\global \clef treble \include "./B/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "II. Tutti" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./C/layout.ily"}
		\new Voice {\global \clef treble \include "./C/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "III. Aria" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./D/layout.ily"}
		\new Voice {\global \clef treble \include "./D/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "IV." }
	}

	\score { \new Staff 
	<< 
		\new Voice {\include "./E/layout.ily"}
		\new Voice {\global \clef treble \include "./E/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "V. Tutti" }
	}
}

\bookpart {
 \header { instrument = "Violino2" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \clef treble \include "./A/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "I. Sonata" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./B/layout.ily"}
		\new Voice {\global \clef treble \include "./B/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "II. Tutti" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./C/layout.ily"}
		\new Voice {\global \clef treble \include "./C/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "III. Aria" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./D/layout.ily"}
		\new Voice {\global \clef treble \include "./D/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "IV." }
	}

	\score { \new Staff 
	<< 
		\new Voice {\include "./E/layout.ily"}
		\new Voice {\global \clef treble \include "./E/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "V. Tutti" }
	}
}
\bookpart {
 \header { instrument = "Viola 1" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \clef alto \include "./A/n_va1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "I. Sonata" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./B/layout.ily"}
		\new Voice {\global \clef alto \include "./B/n_va1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "II. Tutti" }
	}

 \score { \new Staff 
	<< 
		\set Staff.instrumentName = #"Violino"
		\new Voice {\include "./C/layout.ily"}
		\new Voice {\global \clef treble \include "./C/n_v1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "III. Aria" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./D/layout.ily"}
		\new Voice {\global \clef alto \include "./D/n_va1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "IV." }
	}

	\score { \new Staff 
	<< 
		\new Voice {\include "./E/layout.ily"}
		\new Voice {\global \clef alto \include "./E/n_va1.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "V. Tutti" }
	}
}
\bookpart {
 \header { instrument = "Viola 2" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \clef alto \include "./A/n_va2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "I. Sonata" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./B/layout.ily"}
		\new Voice {\global \clef alto \include "./B/n_va2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "II. Tutti" }
	}

 \score { \new Staff 
	<< 
		\set Staff.instrumentName = #"Violino"
		\new Voice {\include "./C/layout.ily"}
		\new Voice {\global \clef treble \include "./C/n_v2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "III. Aria" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./D/layout.ily"}
		\new Voice {\global \clef alto \include "./D/n_va2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "IV." }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./E/layout.ily"}
		\new Voice {\global \clef alto \include "./E/n_va2.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "V. Tutti" }
	}
}

\bookpart {
 \header { instrument = "Violone" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\global \clef bass \include "./A/n_vn.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "I. Sonata" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./B/layout.ily"}
		\new Voice {\global \clef bass \include "./B/n_vn.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "II. Tutti" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./C/layout.ily"}
		\new Voice {\global \clef bass \include "./C/n_vn.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "III. Aria" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./D/layout.ily"}
		\new Voice {\global \clef bass \include "./D/n_vn.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "IV." }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./E/layout.ily"}
		\new Voice {\global \clef bass \include "./E/n_vn.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "V. Tutti" }
	}
}
\bookpart {
 \header { instrument = "Basso Continuo" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./A/layout.ily"}
		\new Voice {\include "./A/n_fig.ily" }
		\new Voice {\global \clef bass \include "./A/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "I. Sonata" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./B/layout.ily"}
		\new Voice {\include "./B/n_fig.ily" }
		\new Voice {\global \clef bass \include "./B/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "II. Tutti" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./C/layout.ily"}
		\new Voice {\include "./C/n_fig.ily" }
		\new Voice {\global \clef bass \include "./C/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "III. Aria" }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./D/layout.ily"}
		\new Voice {\include "./D/n_fig.ily" }
		\new Voice {\global \clef bass \include "./D/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "IV." }
	}

 \score { \new Staff 
	<< 
		\new Voice {\include "./E/layout.ily"}
		\new Voice {\include "./E/n_fig.ily" }
		\new Voice {\global \clef bass \include "./E/n_bc.ily"}
	>>
	\header { piece = \markup \fontsize #1 \bold "V. Tutti" }
	}
}
