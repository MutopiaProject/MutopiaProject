\version "2.11.36"

\header {
	title = "Semiramide riconosciuta"
	composer = "N. Porpora (1686-1768)"
	mutopiatitle = "Semiramide riconosciuta"
	mutopiapoet = "Pietro Metastasio"
	mutopiacomposer = "PorporaN"
	mutopiainstrument = "Dramatis personae (Voice: 2 Soprano Castratos, Soprano, Alto Castrato, Contralto, Tenor) and Orchestra (2 Flutes, 2 Oboes, 2 Trumpets, 2 Horns, Strings, Basso Continuo)"
	date = "1729"
	source = "Copy of various copyists, 1710-1740"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/03/10-1365"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

#(set-global-staff-size 14)
#(define page-breaking ly:minimal-breaking)

Sem = {\set Staff.forceClef = ##t \clef treble \mark \markup {\smallCaps Sem:}}
Tam = {\set Staff.forceClef = ##t \clef treble \mark \markup {\smallCaps Tam:}}
Scit = {\set Staff.forceClef = ##t \clef treble \mark \markup {\smallCaps Scit:}}
Mir = {\set Staff.forceClef = ##t \clef treble \mark \markup {\smallCaps Mir:}}
Sib = {\set Staff.forceClef = ##t \clef treble \mark \markup {\smallCaps Sib:}}
Irc = {\set Staff.forceClef = ##t \clef "G_8" \mark \markup {\smallCaps Irc:}}

\paper {
	tocTitle = "TABLE OF CONTENTS"
}

\include "book-titling.ily"

\bookTitle "Semiramide riconosciuta"

\useRehearsalNumbers ##f

\pageBreak
\markuplines \table-of-contents


\chapter "(Sinfonia)"

\score {
	<<
		\include "Sinfonia-1/TrombaI.ly"
		\include "Sinfonia-1/TrombaII.ly"
		\include "Sinfonia-1/CornoI.ly"
		\include "Sinfonia-1/CornoII.ly"
		\include "Sinfonia-1/OboeI.ly"
		\include "Sinfonia-1/OboeII.ly"
		\include "Sinfonia-1/ViolinoI.ly"
		\include "Sinfonia-1/ViolinoII.ly"
		\include "Sinfonia-1/Viola.ly"
		\include "Sinfonia-1/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "Sinfonia-2/Violini.ly"
		\include "Sinfonia-2/Viola.ly"
		\include "Sinfonia-2/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "Sinfonia-3/TrombaI.ly"
		\include "Sinfonia-3/TrombaII.ly"
		\include "Sinfonia-3/CornoI.ly"
		\include "Sinfonia-3/CornoII.ly"
		\include "Sinfonia-3/Violini.ly"
		\include "Sinfonia-3/Viola.ly"
		\include "Sinfonia-3/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}


\chapter "Atto I"

\section "Scena 1"

\piece \markup Recitativo

\markup {\fill-line {\null \line{\smallCaps Semiramide creduta Nino con guardie poi \smallCaps Sibari} \null}}

\score {
	<<
		\include "I-1-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-1-Rec/Verse.ly" }
		
		\include "I-1-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 2"

\markup {\fill-line {\null \line{\smallCaps Tamiri con seguito e detti} \null}}

\score {
	<<
		\include "I-2-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-2-Rec/Verse.ly" }
		
		\include "I-2-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup Marchia

\score {
	<<
		\include "I-2-Marchia/Corni.ly"
		\include "I-2-Marchia/Trombe.ly"
		\include "I-2-Marchia/ViolinoI.ly"
		\include "I-2-Marchia/ViolinoII.ly"
		\include "I-2-Marchia/Viola.ly"
		\include "I-2-Marchia/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 25
	}
}

\section "Scena 3"

\markup {\fill-line {\null \line{\smallCaps Mirteo, \smallCaps Ircano, \smallCaps Scitalce e detti} \null}}

\score {
	<<
		\include "I-3-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-3-Rec/Verse.ly" }
		
		\include "I-3-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "I-3-Aria/ViolinoI.ly"
		\include "I-3-Aria/ViolinoII.ly"
		\include "I-3-Aria/Viola.ly"
		\include "I-3-Aria/Semiramide.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "I-3-Aria/Verse.ly" }
		
		\include "I-3-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 4"

\markup {\fill-line {\null \line{\smallCaps Tamiri, \smallCaps Mirteo, \smallCaps Ircano e \smallCaps Scitalce} \null}}

\score {
	<<
		\include "I-4-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-4-Rec/Verse.ly" }
		
		\include "I-4-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Moderato"

\score {
	<<
		\include "I-4-Aria/ViolinoI.ly"
		\include "I-4-Aria/ViolinoII.ly"
		\include "I-4-Aria/Viola.ly"
		\include "I-4-Aria/Scitalce.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-4-Aria/Verse.ly" }
		
		\include "I-4-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Moderato"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 5"

\markup {\fill-line {\null \line{\smallCaps Tamiri, \smallCaps Mirteo e \smallCaps Ircano} \null}}

\score {
	<<
		\include "I-5-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-5-Rec/Verse.ly" }
		
		\include "I-5-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "I-5-Aria/ViolinoI.ly"
		\include "I-5-Aria/ViolinoII.ly"
		\include "I-5-Aria/Viola.ly"
		\include "I-5-Aria/Tamiri.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-5-Aria/Verse.ly" }
		
		\include "I-5-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 6"

\markup {\fill-line {\null \line{\smallCaps Ircano e \smallCaps Mirteo} \null}}

\score {
	<<
		\include "I-6-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-6-Rec/Verse.ly" }
		
		\include "I-6-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Staccato"

\score {
	<<
		\include "I-6-Aria/ViolinoI.ly"
		\include "I-6-Aria/ViolinoII.ly"
		\include "I-6-Aria/Viola.ly"
		\include "I-6-Aria/Ircano.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "I-6-Aria/Verse.ly" }
		
		\include "I-6-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Staccato"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 7"

\markup {\fill-line {\null \line{\smallCaps Mirteo} \null}}

\score {
	<<
		\include "I-7-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-7-Rec/Verse.ly" }
		
		\include "I-7-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Vivace"

\score {
	<<
		\include "I-7-Aria/ViolinoI.ly"
		\include "I-7-Aria/ViolinoII.ly"
		\include "I-7-Aria/Viola.ly"
		\include "I-7-Aria/Mirteo.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-7-Aria/Verse.ly" }
		
		\include "I-7-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Vivace"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 8"

\markup {\fill-line {\null \line{\smallCaps Scitalce e \smallCaps Sibari} \null}}

\score {
	<<
		\include "I-8-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-8-Rec/Verse.ly" }
		
		\include "I-8-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Presto"

\score {
	<<
		\include "I-8-Aria/CornoI.ly"
		\include "I-8-Aria/CornoII.ly"
		\include "I-8-Aria/ViolinoI.ly"
		\include "I-8-Aria/ViolinoII.ly"
		\include "I-8-Aria/Viola.ly"
		\include "I-8-Aria/Sibari.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "I-8-Aria/Verse.ly" }
		
		\include "I-8-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Presto"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 9"

\markup {\fill-line {\null \line{\smallCaps Scitalce poi \smallCaps Tamiri} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "I-9-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-9-Rec/Verse.ly" }
		
		\include "I-9-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 10"

\markup {\fill-line {\null \line{\smallCaps Semiramide e detti} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "I-10-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-10-Rec/Verse.ly" }
		
		\include "I-10-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 11"

\markup {\fill-line {\null \line{\smallCaps Tamiri e detti} \null}}

\score {
	<<
		\include "I-11-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-11-Rec/Verse.ly" }
		
		\include "I-11-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Vivace"

\score {
	<<
		\include "I-11-Aria/ViolinoI.ly"
		\include "I-11-Aria/ViolinoII.ly"
		\include "I-11-Aria/Viola.ly"
		\include "I-11-Aria/Scitalce.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-11-Aria/Verse.ly" }
		
		\include "I-11-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Vicace"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 12"

\markup {\fill-line {\null \line{\smallCaps Semiramide e \smallCaps Tamiri} \null}}

\score {
	<<
		\include "I-12-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-12-Rec/Verse.ly" }
		
		\include "I-12-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Vivace"

\score {
	<<
		\include "I-12-Aria/ViolinoI.ly"
		\include "I-12-Aria/ViolinoII.ly"
		\include "I-12-Aria/Viola.ly"
		\include "I-12-Aria/Tamiri.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-12-Aria/Verse.ly" }
		
		\include "I-12-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Vivace"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 13"

\markup {\fill-line {\null \line{\smallCaps Semiramide poi \smallCaps Ircano e \smallCaps Mirteo} \null}}

\score {
	<<
		\include "I-13-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-13-Rec/Verse.ly" }
		
		\include "I-13-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup Aria

\score {
	<<
		\include "I-13-Aria/ViolinoI.ly"
		\include "I-13-Aria/ViolinoII.ly"
		\include "I-13-Aria/Viola.ly"
		\include "I-13-Aria/Semiramide.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "I-13-Aria/Verse.ly" }
		
		\include "I-13-Aria/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 14"

\markup {\fill-line {\null \line{\smallCaps Mirteo ed \smallCaps Ircano} \null}}

\score {
	<<
		\include "I-14-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-14-Rec/Verse.ly" }
		
		\include "I-14-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup Aria

\score {
	<<
		\include "I-14-Aria/CornoI.ly"
		\include "I-14-Aria/CornoII.ly"
		\include "I-14-Aria/OboeI.ly"
		\include "I-14-Aria/OboeII.ly"
		\include "I-14-Aria/ViolinoI.ly"
		\include "I-14-Aria/ViolinoII.ly"
		\include "I-14-Aria/Viola.ly"
		\include "I-14-Aria/Ircano.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "I-14-Aria/Verse.ly" }
		
		\include "I-14-Aria/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent=25
	}
}

\section "Scena 15"

\markup {\fill-line {\null \line{\smallCaps Mirteo} \null}}

\score {
	<<
		\include "I-15-Rec/ViolinoI.ly"
		\include "I-15-Rec/ViolinoII.ly"
		\include "I-15-Rec/Viola.ly"
		\include "I-15-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-15-Rec/Verse.ly" }
		
		\include "I-15-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "I-15-Aria/Violino.ly"
		\include "I-15-Aria/Viola.ly"
		\include "I-15-Aria/Mirteo.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "I-15-Aria/Verse.ly" }
		
		\include "I-15-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\markup {\fill-line {\null \fontsize #2 \line{Fine dell'Atto I} \null}}


\chapter "Atto II"

\section "Scena 1"

\markup {\fill-line {\null \line{\smallCaps Sibari poi \smallCaps Ircano} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "II-1-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-1-Rec/Verse.ly" }
		
		\include "II-1-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 2"

\markup {\fill-line {\null \line{\smallCaps Semiramide, \smallCaps Tamiri, \smallCaps Mirteo, \smallCaps Scitalce e detti} \null}}

\score {
	<<
		\include "II-2-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-2-Rec/Verse.ly" }
		
		\include "II-2-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "(Menuetto)"

\score {
	<<
		\include "II-2-Menuetto/TrombaI.ly"
		\include "II-2-Menuetto/TrombaII.ly"
		\include "II-2-Menuetto/CornoI.ly"
		\include "II-2-Menuetto/CornoII.ly"
		\include "II-2-Menuetto/Violini.ly"
		\include "II-2-Menuetto/Viola.ly"
		\include "II-2-Menuetto/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "II-2-Rec-2/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-2-Rec-2/Verse.ly" }
		
		\include "II-2-Rec-2/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Presto"

\score {
	<<
		\include "II-2-Aria/ViolinoI.ly"
		\include "II-2-Aria/ViolinoII.ly"
		\include "II-2-Aria/Viola.ly"
		\include "II-2-Aria/Tamiri.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-2-Aria/Verse.ly" }
		
		\include "II-2-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Presto"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 3"

\markup {\fill-line {\null \line{\smallCaps Semiramide, \smallCaps Scitalce, \smallCaps Mirteo, \smallCaps Ircano e \smallCaps Sibari} \null}}

\score {
	<<
		\override Score.VerticalAxisGroup #'remove-first = ##t
		\include "II-3-Rec/ViolinoI.ly"
		\include "II-3-Rec/ViolinoII.ly"
		\include "II-3-Rec/Viola.ly"
		\include "II-3-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-3-Rec/Verse.ly" }
		
		\include "II-3-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		\context { \RemoveEmptyStaffContext }
		indent = 0
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "II-3-Aria/ViolinoI.ly"
		\include "II-3-Aria/ViolinoII.ly"
		\include "II-3-Aria/Viola.ly"
		\include "II-3-Aria/Scitalce.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-3-Aria/Verse.ly" }
		
		\include "II-3-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 4"

\markup {\fill-line {\null \line{\smallCaps Semiramide, \smallCaps Ircano e \smallCaps Mirteo} \null}}

\score {
	<<
		\include "II-4-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-4-Rec/Verse.ly" }
		
		\include "II-4-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup Aria

\score {
	<<
		\include "II-4-Aria/ViolinoI.ly"
		\include "II-4-Aria/ViolinoII.ly"
		\include "II-4-Aria/Viola.ly"
		\include "II-4-Aria/Ircano.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "II-4-Aria/Verse.ly" }
		
		\include "II-4-Aria/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 5"

\markup {\fill-line {\null \line{\smallCaps Semiramide e \smallCaps Mirteo} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "II-5-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-5-Rec/Verse.ly" }
		
		\include "II-5-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 6"

\markup {\fill-line {\null \line{\smallCaps Semiramide} \null}}

\score {
	<<
		\include "II-6-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-6-Rec/Verse.ly" }
		
		\include "II-6-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Moderato"

\score {
	<<
		\include "II-6-Aria/CornoI.ly"
		\include "II-6-Aria/CornoII.ly"
		\include "II-6-Aria/FlautoI.ly"
		\include "II-6-Aria/FlautoII.ly"
		\include "II-6-Aria/ViolinoI.ly"
		\include "II-6-Aria/ViolinoII.ly"
		\include "II-6-Aria/Viola.ly"
		\include "II-6-Aria/Semiramide.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "II-6-Aria/Verse.ly" }
		
		\include "II-6-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Moderato"
	}
	
	\midi {
	}

	\layout  {
		indent=25
	}
}

\section "Scena 7"

\markup {\fill-line {\null \line{\smallCaps Sibari poi \smallCaps Ircano} \null}}

\score {
	<<
		\include "II-7-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-7-Rec/Verse.ly" }
		
		\include "II-7-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "II-7-Aria/ViolinoI.ly"
		\include "II-7-Aria/ViolinoII.ly"
		\include "II-7-Aria/Viola.ly"
		\include "II-7-Aria/Sibari.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "II-7-Aria/Verse.ly" }
		
		\include "II-7-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 8"

\markup {\fill-line {\null \line{\smallCaps Ircano poi \smallCaps Tamiri indi \smallCaps Mirteo} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "II-8-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-8-Rec/Verse.ly" }
		
		\include "II-8-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 9"

\markup {\fill-line {\null \line{\smallCaps Tamiri e \smallCaps Mirteo} \null}}

\score {
	<<
		\include "II-9-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-9-Rec/Verse.ly" }
		
		\include "II-9-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Allegretto"

\score {
	<<
		\include "II-9-Aria/ViolinoI.ly"
		\include "II-9-Aria/ViolinoII.ly"
		\include "II-9-Aria/Viola.ly"
		\include "II-9-Aria/Mirteo.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-9-Aria/Verse.ly" }
		
		\include "II-9-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegretto"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 10"

\markup {\fill-line {\null \line{\smallCaps Tamiri poi \smallCaps Semiramide} \null}}

\piece \markup Recitativo

\score {
	<<
		\override Score.VerticalAxisGroup #'remove-first = ##t
		\include "II-10-Rec/ViolinoI.ly"
		\include "II-10-Rec/ViolinoII.ly"
		\include "II-10-Rec/Viola.ly"
		\include "II-10-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-10-Rec/Verse.ly" }
		
		\include "II-10-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		\context { \RemoveEmptyStaffContext }
		indent = 0
	}
}

\section "Scena 11"

\markup {\fill-line {\null \line{\smallCaps Sibari e detti} \null}}

\score {
	<<
		\include "II-11-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-11-Rec/Verse.ly" }
		
		\include "II-11-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "II-11-Aria/ViolinoI.ly"
		\include "II-11-Aria/ViolinoII.ly"
		\include "II-11-Aria/Viola.ly"
		\include "II-11-Aria/Tamiri.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-11-Aria/Verse.ly" }
		
		\include "II-11-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 12"

\markup {\fill-line {\null \line{\smallCaps Semiramide poi \smallCaps Scitalce} \null}}

\score {
	<<
		\override Score.VerticalAxisGroup #'remove-first = ##t
		\include "II-12-Rec/ViolinoI.ly"
		\include "II-12-Rec/ViolinoII.ly"
		\include "II-12-Rec/Viola.ly"
		\include "II-12-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-12-Rec/Verse.ly" }
		
		\include "II-12-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		\context { \RemoveEmptyStaffContext }
		indent = 0
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "II-12-Aria/ViolinoI.ly"
		\include "II-12-Aria/ViolinoII.ly"
		\include "II-12-Aria/Viola.ly"
		\include "II-12-Aria/Semiramide.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "II-12-Aria/Verse.ly" }
		
		\include "II-12-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 13"

\markup {\fill-line {\null \line{\smallCaps Scitalce} \null}}

\score {
	<<
		\include "II-13-Rec/ViolinoI.ly"
		\include "II-13-Rec/ViolinoII.ly"
		\include "II-13-Rec/Viola.ly"
		\include "II-13-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-13-Rec/Verse.ly" }
		
		\include "II-13-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "II-13-Aria/ViolinoI.ly"
		\include "II-13-Aria/ViolinoII.ly"
		\include "II-13-Aria/Viola.ly"
		\include "II-13-Aria/Scitalce.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "II-13-Aria/Verse.ly" }
		
		\include "II-13-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}
\markup {\fill-line {\null \fontsize #2 \line{Fine dell'Atto II\super o} \null}}

\chapter "Atto III"

\section "Scena 1"

\markup {\fill-line {\null \line{\smallCaps Ircano con seguito di sciti armati, parte su le navi e parti su la riva del fiume} \null}}

\piece \markup Reciativo

\score {
	<<
		\include "III-1-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-1-Rec/Verse.ly" }
		
		\include "III-1-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 2"

\markup {\fill-line {\null \line{\smallCaps Sibari con spada nuda e detti} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "III-2-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-2-Rec/Verse.ly" }
		
		\include "III-2-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 3"

\markup {\fill-line {\null \line{\smallCaps Mirteo con spada nuda e detti} \null}}

\score {
	<<
		\override Score.VerticalAxisGroup #'remove-first = ##t
		\include "III-3-Rec/ViolinoI.ly"
		\include "III-3-Rec/ViolinoII.ly"
		\include "III-3-Rec/Viola.ly"
		\include "III-3-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-3-Rec/Verse.ly" }
		
		\include "III-3-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		\context { \RemoveEmptyStaffContext }
		indent = 0
	}
}

\titledPiece \markup "Aria Presto"

\score {
	<<
		\include "III-3-Aria/CornoI.ly"
		\include "III-3-Aria/CornoII.ly"
		\include "III-3-Aria/TrombaI.ly"
		\include "III-3-Aria/TrombaII.ly"
		\include "III-3-Aria/OboeI.ly"
		\include "III-3-Aria/OboeII.ly"
		\include "III-3-Aria/ViolinoI.ly"
		\include "III-3-Aria/ViolinoII.ly"
		\include "III-3-Aria/Viola.ly"
		\include "III-3-Aria/Ircano.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "III-3-Aria/Verse.ly" }
		
		\include "III-3-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Presto"
	}
	
	\midi {
	}

	\layout  {
		indent = 25
	}
}

\section "Scena 4"

\markup {\fill-line {\null \line{\smallCaps Mirteo poi \smallCaps Sibari} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "III-4-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-4-Rec/Verse.ly" }
		
		\include "III-4-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 5"

\markup {\fill-line {\null \line{\smallCaps Sibari} \null}}

\score {
	<<
		\include "III-5-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-5-Rec/Verse.ly" }
		
		\include "III-5-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Con Spirito"

\score {
	<<
		\include "III-5-Aria/Violini.ly"
		\include "III-5-Aria/Viola.ly"
		\include "III-5-Aria/Sibari.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "III-5-Aria/Verse.ly" }
		
		\include "III-5-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Con Spirito"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 6"

\markup {\fill-line {\null \line{\smallCaps Semiramide poi \smallCaps Scitalce} \null}}

\score {
	<<
		\include "III-6-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-6-Rec/Verse.ly" }
		
		\include "III-6-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Presto"

\score {
	<<
		\include "III-6-Aria/ViolinoI.ly"
		\include "III-6-Aria/ViolinoII.ly"
		\include "III-6-Aria/Viola.ly"
		\include "III-6-Aria/Semiramide.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "III-6-Aria/Verse.ly" }
		
		\include "III-6-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Presto"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 7"

\markup {\fill-line {\null \line{\smallCaps Scitalce e poi \smallCaps Tamiri} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "III-7-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-7-Rec/Verse.ly" }
		
		\include "III-7-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 8"

\markup {\fill-line {\null \line{\smallCaps Mirteo e detti} \null}}

\score {
	<<
		\include "III-8-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-8-Rec/Verse.ly" }
		
		\include "III-8-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Moderato"

\score {
	<<
		\include "III-8-Aria/ViolinoI.ly"
		\include "III-8-Aria/ViolinoII.ly"
		\include "III-8-Aria/Viola.ly"
		\include "III-8-Aria/Scitalce.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-8-Aria/Verse.ly" }
		
		\include "III-8-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Moderato"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 9"
\markup {\fill-line {\null \line{\smallCaps Tamiri e \smallCaps Mirteo} \null}}

\score {
	<<
		\include "III-9-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-9-Rec/Verse.ly" }
		
		\include "III-9-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "III-9-Aria/ViolinoI.ly"
		\include "III-9-Aria/ViolinoII.ly"
		\include "III-9-Aria/Viola.ly"
		\include "III-9-Aria/Tamiri.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-9-Aria/Verse.ly" }
		
		\include "III-9-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 10"

\markup {\fill-line {\null \line{\smallCaps Mirteo} \null}}

\score {
	<<
		\include "III-10-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-10-Rec/Verse.ly" }
		
		\include "III-10-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup "Aria Allegro"

\score {
	<<
		\include "III-10-Aria/ViolinoI.ly"
		\include "III-10-Aria/ViolinoII.ly"
		\include "III-10-Aria/Viola.ly"
		\include "III-10-Aria/Mirteo.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-10-Aria/Verse.ly" }
		
		\include "III-10-Aria/Basso.ly"
	>>
	
	\header {
		piece = "Allegro"
	}
	
	\midi {
	}

	\layout  {
	}
}

\section "Scena 11"

\markup {\fill-line {\null \line{\smallCaps Ircano, \smallCaps Sibari e \smallCaps Semiramide} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "III-11-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-11-Rec/Verse.ly" }
		
		\include "III-11-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena 12"

\markup {\fill-line {\null \line{\smallCaps Mirteo, \smallCaps Scitalce e detti} \null}}

\piece \markup Recitativo

\score {
	<<
		\include "III-12-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-12-Rec/Verse.ly" }
		
		\include "III-12-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\section "Scena Ultima"

\markup {\fill-line {\null \line{\smallCaps Tamiri e detti} \null}}

\score {
	<<
		\include "III-13-Rec/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-13-Rec/Verse.ly" }
		
		\include "III-13-Rec/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\titledPiece \markup Coro

\score {
	<<
		\include "III-13-Coro/CornoI.ly"
		\include "III-13-Coro/CornoII.ly"
		\include "III-13-Coro/TrombaI.ly"
		\include "III-13-Coro/TrombaII.ly"
		\include "III-13-Coro/ViolinoI.ly"
		\include "III-13-Coro/ViolinoII.ly"
		\include "III-13-Coro/Viola.ly"
		\include "III-13-Coro/Soprano.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-13-Coro/Verse.ly" }
		
		\include "III-13-Coro/Alto.ly"
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \include "III-13-Coro/Verse.ly" }
		
		\include "III-13-Coro/Tenore.ly"
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \include "III-13-Coro/Verse.ly" }
		
		\include "III-13-Coro/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\include "III-13-Rec-2/Voices.ly"
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \include "III-13-Rec-2/Verse.ly" }
		
		\include "III-13-Rec-2/Basso.ly"
	>>
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\markup {\fill-line {\null \line{Si replica il coro e finisce} \null}}
\markup {\fill-line {\null \fontsize #2 \line{Il Fine} \null}}
