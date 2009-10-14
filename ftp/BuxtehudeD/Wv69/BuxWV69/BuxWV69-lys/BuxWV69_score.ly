\version "2.13.3"
mystaffsize = #16
%default settings page,font,layout
\include "style.ily"
\include "common.ily"
\include "titling.ily"

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

 footer = "Mutopia-2009/10/14-1714"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%options
#(ly:set-option 'delete-intermediate-files #t)
#(ly:set-option 'no-point-and-click #t)
%additional paper settings
\paper{
	ragged-last-bottom = ##f
}
%addition Layout Params
\layout{
	\context { \Score
	\override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
	\context { \Staff
%	\override VerticalAxisGroup #'minimum-Y-extent = #'(-4.0 . 4.0)
	}
	\context { \Lyrics
	\override VerticalAxisGroup #'Y-extent = #'(0 . 0)
	\override VerticalAxisGroup #'minimum-Y-extent = ##f
	}
	\context { \FiguredBass
	}
}

%	first Header (if not present in included bookparts
	\markup \markupWithHeader { \override #'(baseline-skip . 3.5) \column {
		\fill-line {\huge \larger \bold \larger \fromproperty #'header:title }
		\fill-line {\large \smaller \larger \bold \fromproperty #'header:subtitle }
		\fill-line {\null \line { \fromproperty #'header:composer }} }}

\include "scoreA.ily"
