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
                         \fill-line { \abs-fontsize #26  \smallCaps "J o h a n n   H e i n r i c h   S c h m e l z e r" }
                         \fill-line { " " \postscript #"-60 0 moveto 120 0 rlineto stroke" " " }
                        }}
  \fill-line { \column { \vspace #8
                         \fill-line { \abs-fontsize #18  \smallCaps "Sacro-Profanus Concentus"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #26 \bold \smallCaps "Sonata duodecima"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #18 \italic "a7  2 Corn: 2 Clarini 3 Tromb:"  }
                         \vspace #2
                         \fill-line { \abs-fontsize #18 "" }
                         \vspace #4
                         \fill-line { \abs-fontsize #14 \italic "based on the manuscript parts in the Düben collection" }
  						}}
	}%titling
}%bokkpart
%\pageBreak

