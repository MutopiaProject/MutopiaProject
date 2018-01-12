\version "2.18.2"

\header {
    title = "Cello Suite VI"
    subtitle = "\"Sechs Suiten für Violoncello\""
    piece = "1. Prélude"
    mutopiatitle = "Cello Suite VI - BWV 1012 - Prélude"
    composer = "Johann Sebastian Bach (1685-1750)"
    mutopiacomposer = "BachJS"
    opus = "BWV 1012"
    mutopiainstrument = "Cello"
	arrangement = "Hajo Dezelski"
    style = "Baroque"
    source = "Bach-Gesellschaft Edition 1879 Band 27"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Hajo Dezelski"
	maintainerWeb = "http://www.roxele.de/"
    maintainerEmail = "dl1sdz (at) gmail.com"
	
    footer = "Mutopia-2008/07/30-1494"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "./bwv-1012-1/bwv-1012-1.ly"
\include "./bwv-1012-2/bwv-1012-2.ly"
\include "./bwv-1012-3/bwv-1012-3.ly"
\include "./bwv-1012-4/bwv-1012-4.ly"
\include "./bwv-1012-5-1/bwv-1012-5-1.ly"
\include "./bwv-1012-5-2/bwv-1012-5-2.ly"
\include "./bwv-1012-6/bwv-1012-6.ly"


\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "bass" \transpose c c { \prelude } }
	\layout {  }
	\header { piece = "Prelude" }
	\midi { \tempo 2 = 75}
}
\pageBreak

\score { { \clef "bass" \transpose c c { \allemande } }
	\layout { }
	\header { piece = "Allemande" }
	\midi {\tempo 4 = 40 }
}
\pageBreak

\score { { \clef "bass" \transpose c c { \courante } }
	\layout {  }
	\header { piece = "Courante" }
	\midi {\tempo 4 = 130 }
}
\pageBreak

\score { { \clef "bass" \transpose c c { \sarabande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Sarabande" }
	\midi {\tempo 2 = 55}
}
%\pageBreak

\score { { \clef "bass" \transpose c c { \gavotteI } }
	\layout { system-count = 8 }
	\header { piece = "Gavotte 1" }
	\midi {\tempo 4 = 130 }
}

\score { { \clef "bass" \transpose c c { \gavotteII } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gavotte 2" }
	\midi {\tempo 2 = 65}
}
\pageBreak

\score { { \clef "bass" \transpose c c { \gigue } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
	\midi {\tempo 4. = 80}
}

}
