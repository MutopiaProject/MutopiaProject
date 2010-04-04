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
						\column { "©2010 Martin Straeten"  "martin.straeten@gmx.de" \vspace #4 }
								{ "Creative Commons Attribution-ShareAlike 3.0" }}}}
	} %paper

%titling
\markup \override #'(baseline-skip . 4) \column {
  \fill-line { \column { \vspace #10
                         \fill-line { \abs-fontsize #26  \caps "H e n r y   P u r c e l l" }
                         \fill-line { " " \postscript #"-60 0 moveto 120 0 rlineto stroke" " " }
                        }}
  \fill-line { \column { \vspace #8
                         \fill-line { \abs-fontsize #18  ""  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #26 \bold \caps "Jehova, quam multi sunt hostes mei"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #18 \italic "SSATB & Organo"  }
                         \vspace #2
                         \fill-line { \abs-fontsize #18 "Z.135" }
                         \vspace #4
                         \fill-line { \abs-fontsize #14 \italic "based on the Autograph British Library Add. MS 30930" }
                         \fill-line { \abs-fontsize #14 \italic "and J.Blows copy Christ Church Oxford MS 628" }
  						}}
	}%titling
}%bookpart

