\version "2.10.12"

%\markup \override #'(font-name . "Verdana")

\header {
	title = \markup { \fontsize #3 "12-tone blues" }
	composer = "Radan Papežík"
	dedication = \markup { \pad-around #5 "For Vít Reichel" }
	mutopiatitle = "12-tone blues"
	mutopiacomposer = "PapezikR"
	mutopiainstrument = "Clarinet, Guitar"
	date = "2006"
	source = "Original Composition"
	style = "Modern"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Karel"
	moreInfo = "Theme of this piece is free for recomposing your own variations."
 footer = "Mutopia-2007/08/07-1018"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


\include "deutsch.ly"
#(set-global-staff-size 19)


music = \relative c' {
\time 6/4
#(override-auto-beam-setting '(end * * * *) 1 2 'Staff)
#(override-auto-beam-setting '(end * * * *) 2 2 'Staff)
#(override-auto-beam-setting '(end * * * *) 3 2 'Staff)
\override TextScript #'padding = #3 
\repeat volta 2 {
c!8^\markup {Swingy} b' h g a f gis dis d e fis cis
c'! b' h g a f gis dis d e fis cis \break
c,! b' h g a f gis dis d e fis cis
c'! d,cis' eis dis g! e a b gis fis h \break
f,! dis' e c'! d! b, cis gis' g,! a h'! fis, 	%5
f! dis' e c'! d! b, cis gis' g,! a h,! fis' \break
c! b' h g' a f,! gis dis' d,! e fis' cis,
c! b' h g'! a f,! gis dis d'! e fis, cis' \break
g! f'! fis d' e c,! dis b' a, h! cis' gis,
f! dis' e c'! d! b, cis gis' g,! a h'! fis, \break	%10
c! b' h g'! a f,! gis dis d'! e fis, cis'
g,! f'! fis d' e c! dis b a, h! cis' gis } \break
c,! b'' h g,! a f'! gis dis, d e' fis cis,
c! b h g! a' f! gis' dis d'! e fis cis'~
cis r r4 r2 r\bar "|."
}

\paper {
	%#(set-paper-size "a4")
	%indent = 0\mm
}	

\score {
	\context Staff <<
		\set Staff.midiInstrument = #"clarinet"
%		\transposition c
		
		\new Voice { \music }

	>>

	\midi {
	
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}

	\layout {
  
	}
}
