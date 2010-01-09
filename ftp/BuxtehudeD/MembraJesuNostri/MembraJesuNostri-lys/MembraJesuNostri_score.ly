\version "2.13.9"
mystaffsize = #15
%default settings page,font,layout
\include "style.ily"
\include "common.ily"
\include "titling.ily"

\header {
	title = "Membra Jesu nostri"
	subtitle = ""
	composer = "D.Buxtehude"
	tagline = ##f
	mutopiatitle = "Membra Jesu nostri"
	mutopiacomposer = "BuxtehudeD"
	mutopiapoet = ""
	mutopiaopus = ""
	mutopiainstrument = "SSATB, 2 Violini, 5 Viole da gamba, Violone e Basso Continuo"
	date = "1680"
	source = "manuscript voices and tabulatura Duben Collection"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Martin Straeten"
	maintainerEmail = "martin.straeten@gmx.de"
 footer = "Mutopia-2010/01/08-1729"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%options
#(ly:set-option 'no-point-and-click #t)
%additional paper settings
\paper{
}
%addition Layout Params
\layout{
	\context { \RemoveEmptyStaffContext	}
	\context { \Score }
	\context { \Staff \override BassFigureContinuation #'transparent = ##t }
	\context { \Lyrics }
	\context { \FiguredBass }
	\context { \ChoirStaff }
}

mPageBreak = \pageBreak
mLineBreak = \break
mSBreak = \break

\include "A_ad_pedes.ily"
\include "B_ad_genua.ily"
\include "C_ad_manus.ily"
\include "D_ad_latus.ily"
\include "E_ad_pectus.ily"
\include "F_ad_cor.ily"
\include "G_ad_faciem.ily"
