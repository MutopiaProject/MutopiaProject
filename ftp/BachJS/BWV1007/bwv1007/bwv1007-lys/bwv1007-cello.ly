\version "2.18.2"

\header {
	title = "Suite 1 for Cello Solo"
	opus = "BWV 1007"
	composer = "Johann Sebastian Bach"
	enteredby = "Andreas Scherer"

	mutopiatitle = "Suite 1 for Cello Solo"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV1007"
	mutopiainstrument = "Cello"
	source = "Schirmer, 1916"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Andreas Scherer"
	maintainerEmail = "andreas_mutopia@freenet.de"
	lastupdated = "2011/Sep/18"

 footer = "Mutopia-2011/09/21-517"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "bwv1007_prelude.ly"
\include "bwv1007_allemande.ly"
\include "bwv1007_courante.ly"
\include "bwv1007_sarabande.ly"
\include "bwv1007_menuet_i.ly"
\include "bwv1007_menuet_ii.ly"
\include "bwv1007_gigue.ly"

\book {

\score { { \clef "bass" \transpose c c, { \prelude } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Prélude" }
}

\score { { \clef "bass" \transpose c c, { \allemande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Allemande" }
}

\score { { \clef "bass" \transpose c c, { \courante } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Courante" }
}

\score { { \clef "bass" \transpose c c, { \sarabande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Sarabande" }
}

\score { { \clef "bass" \transpose c c, { \menuetI } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Menuet 1" }
}

\score { { \clef "bass" \transpose c c, { \menuetII } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Menuet 2" }
}

\score { { \clef "bass" \transpose c c, { \gigue } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
}

% MIDI output of all parts
\score { { \transpose c c, {
	\tempo 4 = 80 \prelude
	\tempo 4 = 70 \allemande
	\tempo 4 = 80 \courante
	\tempo 4 = 60 \sarabande
	\tempo 2 = 60 \menuetI
	\tempo 2 = 60 \menuetII
	\tempo 2 = 60 \gigue } }
	\midi { %{ Use explicit \tempo specifications %} }
}

}
