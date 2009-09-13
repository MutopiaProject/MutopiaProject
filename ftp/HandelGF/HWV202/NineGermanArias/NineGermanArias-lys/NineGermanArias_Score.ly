\version "2.13.3"
mystaffsize = #16

%default settings page,font,layout
\include "style.ily"
\include "common.ily"
\header {
	title = "Neun Deutsche Arien"
	composer = "G.F.Händel"
	tagline = ##f
	mutopiatitle = "Nine German Arias"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "B.H. Brockes"
	mutopiaopus = "HWV 202-210"
	mutopiainstrument = "Soprano, Violin/Oboe/Flute, Basso Continuo"
	date = "1724-26"
	source = "Autograph British Library RM 20f 13"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Martin Straeten"
	maintainerEmail = "martin.straeten@gmx.de"

 footer = "Mutopia-2009/09/13-1699"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%additional paper settings
\paper{
}
%addition Layout Params
\layout{
	\context { \Score
%	\override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
	}
	\context { \Staff
%	\override VerticalAxisGroup #'minimum-Y-extent = #'(-4.0 . 4.0)
	}
	\context { \Lyrics
	}
	\context { \FiguredBass
	}
}

\include "titling.ily"
\include "hwv202.ily"
\include "hwv203.ily"
\include "hwv204.ily"
\include "hwv205.ily"
\include "hwv206.ily"
\include "hwv207.ily"
\include "hwv208.ily"
\include "hwv209.ily"
\include "hwv210.ily"
