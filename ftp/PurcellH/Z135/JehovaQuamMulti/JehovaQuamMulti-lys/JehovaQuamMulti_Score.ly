\version "2.13.13"
mystaffsize = #15
%default settings page,font,layout
\include "style.ily"
\include "common.ily"
\include "titling.ily"

\header {
	title = "Jehova, quam multi sunt hostes mei"
%	subtitle = ""
	composer = "H.Purcell"
	mutopiatitle = "Jehova, quam multi sunt hostes mei"
	mutopiacomposer = "PurcellH"
	mutopiapoet = ""
	mutopiaopus = "Z135"
	mutopiainstrument = "SSATB, Continuo"
	date = ""
	source = "Autograph British Library Add. MS 30930"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Martin Straeten"
	maintainerEmail = "martin.straeten@gmx.de"

 footer = "Mutopia-2010/04/04-1754"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%options
#(ly:set-option 'no-point-and-click #t)
%additional paper settings
\paper{
%	ragged-bottom = ##t
}
%addition Layout Params
\layout{
	\context { \RemoveEmptyStaffContext }
	\context { \Score }
	\context { \Staff \override BassFigureContinuation #'transparent = ##t }
	\context { \Lyrics }
	\context { \FiguredBass }
}

mPageBreak = \pageBreak
mLineBreak = \break
mSBreak = \break

global={\key a \minor }
\bookpart {
\header { 
	title = "Jehova, quam multi sunt hostes mei"
	%subtitle = "" 
	composer = "H.Purcell"
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	page-count = #7
%	system-count = #10
%	indent = .75\cm
}
\score {
\new GrandStaff
<<
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<

			\incipitClef #'"soprano" \markup "Soprano"
			\new Voice {\include "./A/layout.ily"}
			\new Voice = "CantoI" {\global \clef treble \include "./A/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./A/l_c1.ily" }
		>>
		\new Staff 
		<<
			\incipitClef #'"soprano" \markup "Soprano"
			\new Voice = "CantoII" {\global \clef treble \include "./A/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./A/l_c2.ily" }
		>>
		\new Staff 
		<<
			\incipitClef #'"alto" \markup "Alto"
			\new Voice = "Alto" {\global \clef treble \include "./A/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./A/l_a.ily" }
		>>
		\new Staff 
		<<
			\incipitClef #'"tenor" \markup "Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./A/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./A/l_t.ily" }
		>>
		\new Staff 
		<<
			\incipitClef #'"bass" \markup "Basso"
			\new Voice = "Basso" {\global \clef bass \include "./A/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./A/l_b.ily" }
		>> 
	>>
    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\incipitClef #'"bass" \markup "Continuo"
			\new Voice {\include "./A/n_fig.ily" }
			\new Voice {\global \clef bass \include "./A/n_bc.ily"}
		>>
	>>
>>
\layout { \context { \Staff
	\override TimeSignature #'break-visibility = #end-of-line-invisible
	}
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 90 4) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
}%bookpart
