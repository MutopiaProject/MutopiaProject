\version "2.13.3"
\header {
	title = "Sonata XII"
	%subtitle = "a sette"
	composer = "J.H.Schmelzer"
	%instrument = "CATB"
	tagline = ##f
}
mystaffsize = #20
\include "style.ily"
\include "common.ily"
%options
#(ly:set-option 'delete-intermediate-files #t)
#(ly:set-option 'no-point-and-click #t)
\paper{
%	ragged-last-bottom = ##t
 #(define page-breaking ly:page-turn-breaking)
}
global={
	\key c \major 
	\set Score.skipBars = ##t
}
\bookpart {
 \header { instrument = "Cornettino primo" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./sonata_xii/layout.ily"}
		\new Voice {\global \clef treble \include "./sonata_xii/n_cn1.ily"}
	>>
	}
}
\bookpart {
 \header { instrument = "Cornettino 2do" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./sonata_xii/layout.ily"}
		\new Voice {\global \clef treble \include "./sonata_xii/n_cn2.ily"}
	>>
	}
}
\bookpart {
 \header { instrument = "Clarino 1mo" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./sonata_xii/layout.ily"}
		\new Voice {\global \clef treble \include "./sonata_xii/n_tr1.ily"}
	>>
	}
}
\bookpart {
 \header { instrument = "Clarino 2do" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./sonata_xii/layout.ily"}
		\new Voice {\global \clef treble \include "./sonata_xii/n_tr2.ily"}
	>>
	}
}
\bookpart {
 \header { instrument = "Trombone 1" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./sonata_xii/layout.ily"}
		\new Voice {\global \clef alto \include "./sonata_xii/n_tb1.ily"}
	>>
	}
}
\bookpart {
 \header { instrument = "Trombone 2do" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./sonata_xii/layout.ily"}
		\new Voice {\global \clef tenor \include "./sonata_xii/n_tb2.ily"}
	>>
	}
}
\bookpart {
 \header { instrument = "Trombone 3" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./sonata_xii/layout.ily"}
		\new Voice {\global \clef bass \include "./sonata_xii/n_tb3.ily"}
	>>
	}
}
\bookpart {
 \header { instrument = "Continuo" }
 \score { \new Staff 
	<< 
		\new Voice {\include "./sonata_xii/layout.ily"}
		\new Voice {\include "./sonata_xii/n_fig.ily" }
		\new Voice {\global \clef bass \include "./sonata_xii/n_bc.ily"}
	>>
	}
}
