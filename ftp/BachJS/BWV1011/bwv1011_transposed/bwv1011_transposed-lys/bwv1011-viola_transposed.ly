\version "2.18.2"
% Note - Character set converted to UTF-8 for source repository consistency
% For correct compilation with LilyPond 2.4 this change may need to be reverted

\header {
	title = "Suite 5 for Cello Solo"
	subtitle = "Transposed for Viola"
	opus = "BWV 1011"
	composer = "Johann Sebastian Bach"
	enteredby = "Sébastien Manen"

	mutopiatitle = "Suite 5 for Cello Solo"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV1011"
	mutopiainstrument = "Cello"
	source = "Werner Icking"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Sébastien Manen"
	maintainerEmail = "sebastien(dot)bugzilla(at)gmail(dot)com"
	lastupdated = "2017/Nov/28"

	footer = "Mutopia-2005/01/15-518"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "./bwv-1011-1/bwv-1011-1_transposed.ly"
\include "./bwv-1011-2/bwv-1011-2_transposed.ly"
\include "./bwv-1011-3/bwv-1011-3_transposed.ly"
\include "./bwv-1011-4/bwv-1011-4_transposed.ly"
\include "./bwv-1011-5-1/bwv-1011-5-1_transposed.ly"
\include "./bwv-1011-5-2/bwv-1011-5-2_transposed.ly"
\include "./bwv-1011-6/bwv-1011-6_transposed.ly"


\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "alto" \transpose c c' { \prelude } }
	\layout { system-count = 39 }
	\header { piece = "Präludium" }
	\midi { \tempo 2 = 60}
}
\pageBreak

\score { { \clef "alto" \transpose c c' { \allemande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Allemande" }
	\midi {\tempo 4 = 90 }
}
\pageBreak

\score { { \clef "alto" \transpose c c' { \courante } }
	\layout { system-count = 8 }
	\header { piece = "Courante" }
	\midi {\tempo 4 = 96 }
}

\score { { \clef "alto" \transpose c c' { \sarabande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Sarabande" }
	\midi {\tempo 4 = 50}
}
\pageBreak

\score { { \clef "alto" \transpose c c' { \gavotteI } }
	\layout { system-count = 8 }
	\header { piece = "Gavotte 1" }
	\midi {\tempo 4 = 130 }
}

\score { { \clef "alto" \transpose c c' { \gavotteII } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gavotte 2" }
	\midi {\tempo 2 = 65}
}
%%\pageBreak

\score { { \clef "alto" \transpose c c' { \gigue } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
	\midi {\tempo 4. = 80}
}

}
