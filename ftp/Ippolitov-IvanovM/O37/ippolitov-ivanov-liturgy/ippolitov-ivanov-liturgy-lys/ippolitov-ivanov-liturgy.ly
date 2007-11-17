\version "2.11.26"

#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

\paper {
	% Note: we need fonts that contains "yat" (Unicode 0x0463), hence Times Ten Cyrillic.
	% Yat is a character that was removed from Russian orthography in 1918.
	% Some fonts (incl. Linux Libertine) include this character, but don't handle the
	% italic form well (it looks completely different from the roman glyph).
	% For an example image, see http://en.wikipedia.org/wiki/Yat .
	% Good serif choices:
	%   Palatino Linotype (WinXP), Constantia (Office2007), Times Ten Cyrillic (Adobe), Times New Roman (WinVista)
	% The Lazov font (an early-Cyrillic display font) is available here:
	%   http://clover.slavic.pitt.edu/~repertorium/resources/fonts/lazov04.ttf

	%#(define fonts (make-pango-font-tree "Times Ten Cyrillic" "Myriad Pro" "Lazov" 0.9))
	#(define fonts (make-pango-font-tree "DejaVu Serif" "DejaVu Sans" "Lazov" 0.9))
	%#(define page-breaking optimal-page-breaks)
	ragged-last-bottom = ##f
	between-system-padding = 0\in
	between-system-spacing = 0\in
	print-page-number = ##t
	print-first-page-number = ##f

	bookTitleMarkup = ##f
	scoreTitleMarkup = \markup {
		\column {
			" "
			\fill-line { \override #'(font-size . 4) \bold \fromproperty #'header:piece }
			" "
		}
	}
}

\header {
	mutopiatitle = "Divine Liturgy of St. John Chrysostom"
	mutopiacomposer = "Ippolitov-IvanovM"
	mutopiapoet = ""
	mutopiaopus = "Op. 37, No. 1"
	mutopiainstrument = "Voice (SATB)"
	date = "19th century"
	source = "P. Jurgenson, 1903"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2007/Nov/10"
 footer = "Mutopia-2007/11/17-1162"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\markup {
	\column {
		" " " " " " " " " " " "
		" " " " " " " " " " " "
		\fill-line { \override #'(font-size . 15) \typewriter "ЛИТѸРГІѦ" }
		" " " "
		\fill-line { \override #'(font-size . 10) "СВ. ІОАННА ЗЛАТОУСТА" }
		" " " "
		\fill-line { \override #'(font-size . 5)  "для четырехголоснаго смѣшаннаго хора." }
		" " " "
		\fill-line { \override #'(font-size . 3) "МУЗЫКА" }
		" "
		\fill-line { \override #'(font-size . 9) \sans \bold "М. Ипполитова-Иванова." }
		" "
		\fill-line { \override #'(font-size . 3)  "Op. 37" }
	}
}
\pageBreak
\include "ippolitov-ivanov-liturgy/01-great-litany.ly"
\pageBreak
\include "ippolitov-ivanov-liturgy/02-bless-the-lord-o-my-soul.ly"
\include "ippolitov-ivanov-liturgy/03-little-litany.ly"
\include "ippolitov-ivanov-liturgy/04-only-begotten.ly"
\include "ippolitov-ivanov-liturgy/05-little-litany.ly"
\include "ippolitov-ivanov-liturgy/06-beatitudes.ly"
\include "ippolitov-ivanov-liturgy/07-little-entrance.ly"
\markup { \column { " " " " " " " " " " } }
\include "ippolitov-ivanov-liturgy/08-at-epistle.ly"
\pageBreak
\include "ippolitov-ivanov-liturgy/09-at-gospel.ly"
\pageBreak
\include "ippolitov-ivanov-liturgy/10-cherubic.ly"
\include "ippolitov-ivanov-liturgy/11-after-cherubic.ly"
\include "ippolitov-ivanov-liturgy/12-nicene-creed.ly"
\include "ippolitov-ivanov-liturgy/13-a-mercy-of-peace.ly"
\include "ippolitov-ivanov-liturgy/14-we-praise-thee.ly"
\include "ippolitov-ivanov-liturgy/15-it-is-truly-meet.ly"
\pageBreak
\include "ippolitov-ivanov-liturgy/16-lords-prayer.ly"
\include "ippolitov-ivanov-liturgy/17-communion-verse.ly"
\include "ippolitov-ivanov-liturgy/18-blessed-is-he.ly"

