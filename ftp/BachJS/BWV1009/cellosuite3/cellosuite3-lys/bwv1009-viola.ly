\version "2.18.2"

\header {
	title = "Suite No. 3 in C Major"
	subtitle = "Transposed for viola"
    composer = "Johann Sebastian Bach"
    mutopiatitle = "Suite No. 3 in C Major"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Cello"
    mutopiaopus = "BWV 1009"
    date = "18th Century"
    source = "Bach Gesellschaft"
    style = "Baroque"
    copyright = "Public Domain"
    maintainer = "Stelios Samelis"
    lastupdated = "2017/November/20"
    version = "2.18.2"

   footer = "Mutopia-2011/09/21-517"
   tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "cellosuite3_1_prelude.ly"
\include "cellosuite3_2_allemande.ly"
\include "cellosuite3_3_courante.ly"
\include "cellosuite3_4_sarabande.ly"
\include "cellosuite3_5_bourree.ly"
\include "cellosuite3_6_gigue.ly"

\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "alto" \transpose c c' { \prelude } }
	\layout { }
	\header { piece = "Prélude" }
	\midi {\tempo 4 = 120}
}
\pageBreak

\score { { \clef "alto" \transpose c c' { \allemande } }
	\layout { system-count = #12  }
	\header { piece = "Allemande" }
	\midi {}
}
\pageBreak

\score { { \clef "alto" \transpose c c' { \courante } }
	\layout { system-count = #12 }
	\header { piece = "Courante" }
	\midi {\tempo 2. = 70}
}
%\pageBreak

\score { { \clef "alto" \transpose c c' { \sarabande } }
	\layout {  }
	\header { piece = "Sarabande" }
	\midi {}
}

\score { { \clef "alto" \transpose c c' { \bourree } }
	\layout { }
	\header { piece = "Bourrée" }
	\midi {\tempo 4=150}
}
%\pageBreak

%\score { { \clef "alto" \transpose c c' { \menuetII } }
%	\layout { }
%	\header { piece = "Menuet 2" }
%	\midi {}
%}

\score { { \clef "alto" \transpose c c' { \gigue } }
	\layout { }
	\header { piece = "Gigue" }
	\midi {\tempo 4.=65}
}

}
