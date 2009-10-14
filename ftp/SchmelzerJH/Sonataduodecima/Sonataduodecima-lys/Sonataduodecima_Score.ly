\version "2.13.3"
mystaffsize = #15
%default settings page,font,layout
\include "style.ily"
\include "common.ily"
\include "titling.ily"

\header {
	title = "Sacro-Profanus Concentus, Sonata XXII"
	subtitle = "a sette"
	composer = "J.H.Schmelzer"
	tagline = ##f
	mutopiatitle = "Sacro-Profanus Concentus, Sonata XXII"
	mutopiacomposer = "SchmelzerJH"
	mutopiapoet = ""
	mutopiaopus = "Sacro-Profanus Concentus"
	mutopiainstrument = "2 Cornettinos, 2 Trumpets,3 Trombones, Continuo"
	date = ""
	source = "manuscript of parts, Duben Collection"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Martin Straeten"
	maintainerEmail = "martin.straeten@gmx.de"
 footer = "Mutopia-2009/10/14-1715"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%options
#(ly:set-option 'delete-intermediate-files #t)
#(ly:set-option 'no-point-and-click #t)
%additional paper settings
\paper{
	ragged-bottom = ##t
}
%addition Layout Params
\layout{
	\context { \Score
	\override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
	}
	\context { \Staff
%	\override VerticalAxisGroup #'minimum-Y-extent = #'(-4.0 . 4.0)
	}
	\context { \Lyrics
	}
	\context { \FiguredBass
	}
}

\include "sonata_xii.ily"
