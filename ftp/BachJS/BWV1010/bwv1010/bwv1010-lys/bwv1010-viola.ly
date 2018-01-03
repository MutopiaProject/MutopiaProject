\version "2.18.2"
% Note - Character set converted to UTF-8 for source repository consistency
% For correct compilation with LilyPond 2.4 this change may need to be reverted

\header {
	title = "Suite 4 for Cello Solo"
        subtitle = "Transposed for viola"
	opus = "BWV 1010"
	composer = "Johann Sebastian Bach"
	enteredby = "Andreas Scherer"

	mutopiatitle = "Suite 4 for Cello Solo, transposed for viola"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV1010"
	mutopiainstrument = "Cello"
	source = "Schirmer, 1916"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Andreas Scherer"
	maintainerEmail = "andreas_mutopia@freenet.de"
	lastupdated = "2005/Jan/15"

	footer = "Mutopia-2005/01/15-518"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "bwv1010_prelude.ly"
\include "bwv1010_allemande.ly"
\include "bwv1010_courante.ly"
\include "bwv1010_sarabande.ly"
\include "bwv1010_bourree_i.ly"
\include "bwv1010_bourree_ii.ly"
\include "bwv1010_gigue.ly"

\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "alto" \prelude }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Präludium" }
	\midi { \tempo 2 = 55}
}
\pageBreak

\score { { \clef "alto" \allemande }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Allemande" }
	\midi {\tempo 4 = 90 }
}
\pageBreak

\score { { \clef "alto" \courante }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Courante" }
	\midi {\tempo 4 = 96 }
}
\pageBreak

\score { { \clef "alto" \sarabande }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Sarabande" }
	\midi {\tempo 4 = 100}
}

\score { { \clef "alto" \bourreeI }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Bourrée 1" }
	\midi {\tempo 2 = 60 }
}

\score { { \clef "alto" \bourreeII }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Bourrée 2" }
	\midi {\tempo 2 = 65}
}
\pageBreak

\score { { \clef "alto" \gigue }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
	\midi {\tempo 4. = 120}
}

}
