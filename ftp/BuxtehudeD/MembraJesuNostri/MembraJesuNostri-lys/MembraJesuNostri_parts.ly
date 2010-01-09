\version "2.13.9"
mystaffsize = #18
%default settings page,font,layout
\include "style.ily"
\include "common.ily"
\header {
	title = "Membra Jesu nostri"
%	subtitle = ##f
	composer = "D.Buxtehude"
	instrument = ##f
	tagline = ##f
}

%options
#(ly:set-option 'no-point-and-click #t)
%additional paper settings
\paper{
	print-all-headers = ##t
	ragged-last-bottom = ##f
	indent = #0
	systems-per-page = #11

%	#(define page-breaking ly:page-turn-breaking)
}
%addition Layout Params
\layout{	
	\context { \Staff
	\override TimeSignature #'break-visibility = #end-of-line-invisible
	}
}

mPageBreak = \break
mLineBreak= \break
mSBreak = {}

globalA={
	\key c \dorian 
	\set Score.skipBars = ##t
}
globalB={
	\key b \major 
	\set Score.skipBars = ##t 
}
globalC={
	\key g \dorian 
	\set Score.skipBars = ##t
}
globalD={
	\key d \minor 
	\set Score.skipBars = ##t
}
globalE={
	\key a \minor 
	\set Score.skipBars = ##t
}
globalF={
	\key e \minor 
	\set Score.skipBars = ##t
}
globalG={
	\key c \dorian 
	\set Score.skipBars = ##t
}

\bookpart {
 \header { instrument = "Violino 1" }
 \score { \new Staff 
	<< 
			\new Voice {\include "./A_ad_pedes/layout.ily"}
			\new Voice {\globalA \clef treble \include "./A_ad_pedes/n_v1.ily"}
	>>
	\header { title = "No.1 - Ad pedes" composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./B_ad_genua/layout.ily"}
			\new Voice {\globalB \clef treble \include "./B_ad_genua/n_v1.ily"}
	>>
	\header { title = "No.2 - Ad Genua"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./C_ad_manus/layout.ily"}
			\new Voice {\globalC \clef treble \include "./C_ad_manus/n_v1.ily"}
	>>
	\header { title = "No.3 - Ad Manus"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./D_ad_latus/layout.ily"}
			\new Voice {\globalD \clef treble \include "./D_ad_latus/n_v1.ily"}
	>>
	\header { title = "No.4 - Ad Latus"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./E_ad_pectus/layout.ily"}
			\new Voice {\globalE \clef treble \include "./E_ad_pectus/n_v1.ily"}
	>>
	\header { title = "No.5 - Ad Pectus" composer = ##f }
	}
\pageBreak
\markup \markupWithHeader { \override #'(baseline-skip . 5) \column {
		\fill-line {\huge \larger \bold \larger "No.6 - Ad Cor - tacet" } }}

 \score { \new Staff 
	<< 
			\new Voice {\include "./G_ad_faciem/layout.ily"}
			\new Voice {\globalG \clef treble \include "./G_ad_faciem/n_v1.ily"}
	>>
	\header { title = "No.7 - Ad Faciem"  composer = ##f }
	}
}

\bookpart {
 \paper { first-page-number = #1 }
 \header { instrument = "Violino2" }
 \score { \new Staff 
	<< 
			\new Voice {\include "./A_ad_pedes/layout.ily"}
			\new Voice {\globalA \clef treble \include "./A_ad_pedes/n_v2.ily"}
	>>
	\header { title = "No.1 - Ad pedes" composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./B_ad_genua/layout.ily"}
			\new Voice {\globalB \clef treble \include "./B_ad_genua/n_v2.ily"}
	>>
	\header { title = "No.2 - Ad Genua"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./C_ad_manus/layout.ily"}
			\new Voice {\globalC \clef treble \include "./C_ad_manus/n_v2.ily"}
	>>
	\header { title = "No.3 - Ad Manus"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./D_ad_latus/layout.ily"}
			\new Voice {\globalD \clef treble \include "./D_ad_latus/n_v2.ily"}
	>>
	\header { title = "No.4 - Ad Latus"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./E_ad_pectus/layout.ily"}
			\new Voice {\globalE \clef treble \include "./E_ad_pectus/n_v2.ily"}
	>>
	\header { title = "No.5 - Ad Pectus" composer = ##f }
	}
\pageBreak
\markup \markupWithHeader { \override #'(baseline-skip . 5) \column {
		\fill-line {\huge \larger \bold \larger "No.6 - Ad Cor - tacet" } }}

 \score { \new Staff 
	<< 
			\new Voice {\include "./G_ad_faciem/layout.ily"}
			\new Voice {\globalG \clef treble \include "./G_ad_faciem/n_v2.ily"}
	>>
	\header { title = "No.7 - Ad Faciem"  composer = ##f }
	}
}

\bookpart {
 \header { instrument = "Violon" }
 \score { \new Staff 
	<< 
			\new Voice {\include "./A_ad_pedes/layout.ily"}
			\new Voice {\globalA \clef bass \include "./A_ad_pedes/n_vn.ily"}
	>>
	\header { title = "No.1 - Ad pedes" composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./B_ad_genua/layout.ily"}
			\new Voice {\globalB \clef bass \include "./B_ad_genua/n_vn.ily"}
	>>
	\header { title = "No.2 - Ad Genua"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./C_ad_manus/layout.ily"}
			\new Voice {\globalC \clef bass \include "./C_ad_manus/n_vn.ily"}
	>>
	\header { title = "No.3 - Ad Manus"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./D_ad_latus/layout.ily"}
			\new Voice {\globalD \clef bass \include "./D_ad_latus/n_vn.ily"}
	>>
	\header { title = "No.4 - Ad Latus"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./E_ad_pectus/layout.ily"}
			\new Voice {\globalE \clef bass \include "./E_ad_pectus/n_vn.ily"}
	>>
	\header { title = "No.5 - Ad Pectus" composer = ##f }
	}
\pageBreak
\markup \markupWithHeader { \override #'(baseline-skip . 5) \column {
		\fill-line {\huge \larger \bold \larger "No.6 - Ad Cor - tacet" } }}

 \score { \new Staff 
	<< 
			\new Voice {\include "./G_ad_faciem/layout.ily"}
			\new Voice {\globalG \clef bass \include "./G_ad_faciem/n_vn.ily"}
	>>
	\header { title = "No.7 - Ad Faciem"  composer = ##f }
	}
}



%Gambenconsort f. ad Cor
\bookpart {
 \header { instrument = "Viola (da gamba) 1" }
 \score { \new Staff 
	<< 
			\new Voice {\include "./F_ad_cor/layout.ily"}
			\new Voice {\globalF \clef treble \include "./F_ad_cor/n_vg1.ily"}
	>>
	\header { title = "No.6 - Ad Cor"  composer = ##f }
	}
}
\bookpart {
 \header { instrument = "Viola (da gamba) 2" }
 \score { \new Staff 
	<< 
			\new Voice {\include "./F_ad_cor/layout.ily"}
			\new Voice {\globalF \clef alto \include "./F_ad_cor/n_vg2.ily"}
	>>
	\header { title = "No.6 - Ad Cor"  composer = ##f }
	}
}
\bookpart {
 \header { instrument = "Viola (da gamba) 3" }
 \score { \new Staff 
	<< 
			\new Voice {\include "./F_ad_cor/layout.ily"}
			\new Voice {\globalF \clef alto \include "./F_ad_cor/n_vg3.ily"}
	>>
	\header { title = "No.6 - Ad Cor"  composer = ##f }
	}
}
\bookpart {
 \header { instrument = "Viola (da gamba) 4" }
 \score { \new Staff 
	<< 
			\new Voice {\include "./F_ad_cor/layout.ily"}
			\new Voice {\globalF \clef bass \include "./F_ad_cor/n_vg4.ily"}
	>>
	\header { title = "No.6 - Ad Cor"  composer = ##f }
	}
}
\bookpart {
 \header { instrument = "Viola (da gamba) 5" }
 \score { \new Staff 
	<< 
			\new Voice {\include "./F_ad_cor/layout.ily"}
			\new Voice {\globalF \clef bass \include "./F_ad_cor/n_vg5.ily"}
	>>
	\header { title = "No.6 - Ad Cor"  composer = ##f }
	}
}


\bookpart {
 \header { instrument = "Continuo" }
 \score { \new Staff 
	<< 
			\new Voice {\include "./A_ad_pedes/layout.ily"}
			\new Voice {\include "./A_ad_pedes/n_fig.ily" }
			\new Voice {\globalA \clef bass \include "./A_ad_pedes/n_bc.ily"}
	>>
	\header { title = "No.1 - Ad pedes" composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./B_ad_genua/layout.ily"}
			\new Voice {\include "./B_ad_genua/n_fig.ily" }
			\new Voice {\globalB \clef bass \include "./B_ad_genua/n_bc.ily"}
	>>
	\header { title = "No.2 - Ad Genua" composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./C_ad_manus/layout.ily"}
			\new Voice {\include "./C_ad_manus/n_fig.ily" }
			\new Voice {\globalC \clef bass \include "./C_ad_manus/n_bc.ily"}
	>>
	\header { title = "No.3 - Ad Manus" composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./D_ad_latus/layout.ily"}
			\new Voice {\include "./D_ad_latus/n_fig.ily" }
			\new Voice {\globalD \clef bass \include "./D_ad_latus/n_bc.ily"}
	>>
	\header { title = "No.4 - Ad Latus" composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./E_ad_pectus/layout.ily"}
			\new Voice {\include "./E_ad_pectus/n_fig.ily" }
			\new Voice {\globalE \clef bass \include "./E_ad_pectus/n_bc.ily"}
	>>
	\header { title = "No.5 - Ad Pectus" composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./F_ad_cor/layout.ily"}
			\new Voice {\include "./F_ad_cor/n_fig.ily" }
			\new Voice {\globalF \clef bass \include "./F_ad_cor/n_bc.ily"}
	>>
	\header { title = "No.6 - Ad Cor"  composer = ##f }
	}
\pageBreak
 \score { \new Staff 
	<< 
			\new Voice {\include "./G_ad_faciem/layout.ily"}
			\new Voice {\include "./G_ad_faciem/n_fig.ily" }
			\new Voice {\globalG \clef bass \include "./G_ad_faciem/n_bc.ily"}
	>>
	\header { title = "No.7 - Ad Faciem" composer = ##f }
	}

}
