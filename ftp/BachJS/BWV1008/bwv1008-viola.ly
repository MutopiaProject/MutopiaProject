\version "2.18.2"

\header {
    title = "Cello Suite II"
    opus = "BWV 1008"
    composer = "Johann Sebastian Bach (1685-1750)"
    subtitle = "\"Sechs Suiten für Violoncello\""
    subsubtitle = "Transposed for viola"
    mutopiatitle = "Cello Suite II - BWV 1008 - Prélude"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Cello"
	arrangement = "Hajo Dezelski"
    style = "Baroque"
    source = "Bach-Gesellschaft Edition 1879 Band 27"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Hajo Dezelski"
	maintainerWeb = "http://www.roxele.de/"
    maintainerEmail = "dl1sdz (at) gmail.com"
	
    footer = "Mutopia-2009/10/13-1487"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "bwv-1008-1/bwv-1008-1.ly"
\include "bwv-1008-2/bwv-1008-2.ly"
\include "bwv-1008-3/bwv-1008-3.ly"
\include "bwv-1008-4/bwv-1008-4.ly"
\include "bwv-1008-5-1/bwv-1008-5-1.ly"
\include "bwv-1008-5-2/bwv-1008-5-2.ly"
\include "bwv-1008-6/bwv-1008-6.ly"

\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "alto" \transpose c c { \prelude } }
	\layout { }
	\header { piece = "Prélude" }
	\midi {}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \allemande } }
	\layout { } %system-count = #11 
	\header { piece = "Allemande" }
	\midi {}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \courante } }
	\layout { }
	\header { piece = "Courante" }
	\midi {}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \sarabande } }
	\layout {  } %system-count = #5
	\header { piece = "Sarabande" }
	\midi {}
}
\pageBreak

\score { { \clef "alto" \transpose c c { \menuetI } }
	\layout { }
	\header { piece = "Menuet 1" }
	\midi { \tempo 4 = 140}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \menuetII } }
	\layout { }
	\header { piece = "Menuet 2" }
	\midi { \tempo 4 = 140}
}
\pageBreak

\score { { \clef "alto" \transpose c c { \gigue } }
	\layout { }
	\header { piece = "Gigue" }
	\midi {\tempo 8 = 160}
}

}
