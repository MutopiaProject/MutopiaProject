%% vertical space skip
#(define-markup-command (vspace layout props amount) (number?)
  "This produces a invisible object taking vertical space."
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))
%%
\bookpart {
\header {
	title=##f
	subtitle=##f
	composer =##f
	tagline = ##f
	} %header

\paper{
	oddFooterMarkup = \markup { \on-the-fly #first-page 
		\fill-line { \fontsize #2 \override #'(baseline-skip . 3) {
						\column { "©2009 Martin Straeten"  "martin.straeten@gmx.de" \vspace #4 }
								{ "Creative Commons Attribution-ShareAlike 3.0" }}}}
	} %paper

%titling
\markup \override #'(baseline-skip . 4) \column {
  \fill-line { \column { \vspace #10
                         \fill-line { \abs-fontsize #26  \smallCaps "D i e t e r i c h   B u x t e h u d e" }
                         \fill-line { " " \postscript #"-60 0 moveto 120 0 rlineto stroke" " " }
                        }}
  \fill-line { \column { \vspace #8
                         \fill-line { \abs-fontsize #18  "Chiaccona"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #26 \bold \smallCaps "Laudate pueri Dominum"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #18 \italic "a8 doi Sopran: 6 Viol: digamb: e B.C."  }
                         \vspace #2
                         \fill-line { \abs-fontsize #18 "BuxWV 69" }
                         \vspace #4
                         \fill-line { \abs-fontsize #14 \italic "based on the manuscript, Duben Collection" }
  						}}
	}%titling
}%bokkpart
\pageBreak

