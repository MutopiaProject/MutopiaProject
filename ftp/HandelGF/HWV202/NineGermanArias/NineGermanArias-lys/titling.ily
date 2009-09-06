%% vertical space skip
#(define-markup-command (vspace layout props amount) (number?)
  "This produces a invisible object taking vertical space."
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))
%%
\header {
	title=""
	composer = ""
	tagline = ##f
}

\paper{
	oddFooterMarkup = \markup {
	\column {
		\on-the-fly #first-page 
		\fill-line { \fontsize #2 \override #'(baseline-skip . 3) {
						\column { "©2009 Martin Straeten"  "martin.straeten@gmx.de" \vspace #4 }
								{ "Creative Commons Attribution-ShareAlike 3.0" }}
  		}				
  		\on-the-fly #not-first-page 
  		\fill-line { \tiny {
  					{"published using lilypond"}
					\line {\fromproperty #'header:composer " - " \fromproperty #'header:title }
					\epsfile #X #10 #"by-sa.eps"} 
		}
	}}
}

\markup \override #'(baseline-skip . 4) \column {
  \fill-line { \column { \vspace #10
                         \fill-line { \abs-fontsize #26  \smallCaps "G e o r g e   F r i d e r i c   H a n d e l" }
                         \fill-line { " " \postscript #"-60 0 moveto 120 0 rlineto stroke" " " }
                        }}
  \fill-line { \column { \vspace #9.5
                         \fill-line { \abs-fontsize #26 \bold \smallCaps "Nine German Arias"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #18 \italic "for Soprano, obbligato instrument and Basso Continuo"  }
                         \vspace #2
                         \fill-line { \abs-fontsize #18 "HWV 202 - 210" }
                         \vspace #4
                         \fill-line { \abs-fontsize #14 \italic "based on the Autograph, British Library RM 20 f 13" }
  						}}
}
