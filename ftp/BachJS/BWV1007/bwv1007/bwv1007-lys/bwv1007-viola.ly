\version "2.18.2"

\header {
	title = "Suite 1 for Cello Solo"
        subtitle = "Transposed for viola"
	opus = "BWV 1007"
	composer = "Johann Sebastian Bach"
	enteredby = "Andreas Scherer"

	mutopiatitle = "Suite 1 for Cello Solo, transposed for viola"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV1007"
	mutopiainstrument = "Viola"
	source = "Schirmer, 1916"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Andreas Scherer"
	maintainerEmail = "andreas_mutopia@freenet.de"
	lastupdated = "2017/Nov/05"

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

\score { { \clef "alto" \prelude }
	\layout {  }
	\header { piece = "Prélude" }
	\midi {\tempo 4 = 80}
}
\pageBreak

\score { { \clef "alto" \allemande }
	\layout { system-count = #11 }
	\header { piece = "Allemande" }
	\midi {\tempo 4 = 70}
}
\pageBreak

\score { { \clef "alto" \courante }
	\layout {  }
	\header { piece = "Courante" }
	\midi {\tempo 4 = 80}
}
\pageBreak

\score { { \clef "alto" \sarabande }
	\layout { system-count = #5 }
	\header { piece = "Sarabande" }
	\midi {\tempo 4 = 60}
}

\score { { \clef "alto" \menuetI }
	\layout { system-count = #5 }
	\header { piece = "Menuet 1" }
	\midi {\tempo 2 = 60}
}
\pageBreak

\score { { \clef "alto" \menuetII }
	\layout {  }
	\header { piece = "Menuet 2" }
	\midi {\tempo 2 = 60}
}

\score { { \clef "alto" \gigue }
	\layout {  }
	\header { piece = "Gigue" }
	\midi {\tempo 2 = 60}
}

}
