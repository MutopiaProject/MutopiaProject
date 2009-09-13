\version "2.13.3"
mystaffsize = #16
%default settings page,font,layout
\include "style.ily"
\include "common.ily"
\header {
	title = "Gloria in Excelsis Deo"
	subtitle = "HWV deest"
	composer = "G.F.Händel"
	tagline = ##f
	mutopiatitle = "Gloria in Excelsis Deo"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV deest."
	mutopiainstrument = "Soprano, 2 Violins, Basso Continuo"
	source = "manuscript, Royal Academy of Music MS 139, foils 111-122"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Martin Straeten"
	maintainerEmail = "martin.straeten@gmx.de"

 footer = "Mutopia-2009/09/13-1698"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
%additional paper settings
\paper{
	ragged-last-bottom = ##f
}
%addition Layout Params
\layout{
	\context { \Score
%	\override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
	}
	\context { \Staff
%	\override VerticalAxisGroup #'minimum-Y-extent = #'(-4.0 . 4.0)
	}
}
\include "titling.ily"
\pageBreak
%
\markup { \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {\huge \larger \bold \larger "Gloria in Excelsis Deo" }
 %     \fill-line {\large \smaller \larger \bold "HWV deest." }
      \fill-line {\null "G.F.Händel" }
    }
}
\include "scoreA.ily"
\include "scoreB.ily"
\include "scoreC.ily"
\include "scoreD.ily"
\include "scoreE.ily"
\include "scoreF.ily"

