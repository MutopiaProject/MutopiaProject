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
}

\paper{
	oddFooterMarkup = \markup {
		\on-the-fly #first-page 
		\fill-line { \fontsize #2 \override #'(baseline-skip . 3) {
						\column { "©2009 Martin Straeten"  "martin.straeten@gmx.de" \vspace #4 }
								{ "Creative Commons Attribution-ShareAlike 3.0" }}
  		}				
	}
}

\markup \override #'(baseline-skip . 4) \column {
  \fill-line { \column { \vspace #10
                         \fill-line { \abs-fontsize #26  \smallCaps "G e o r g e   F r i d e r i c   H a n d e l" }
                         \fill-line { " " \postscript #"-60 0 moveto 120 0 rlineto stroke" " " }
                        }}
  \fill-line { \column { \vspace #9.5
                         \fill-line { \abs-fontsize #26 \bold \smallCaps "Gloria in Excelsis Deo"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #18 \italic "for Soprano, 2 Violins and Basso Continuo"  }
                         \vspace #2
                         \fill-line { \abs-fontsize #18 "HWV deest." }
                         \vspace #4
                         \fill-line { \abs-fontsize #14 \italic "based on the manuscript, Royal Academy of Music MS 139, foils 111-122" }
  						}}
}
}
\pageBreak
\markup{ \vspace #2 \abs-fontsize #12 
	%\override #'(line-width . 100)	
	\column {
		\wordwrap-string #"
			The Gloria for Soprano, Violins and Basso Continuo 
			is contained in a collection
			of handwritten copies of opera arias of Handel:
			
			
			score: & Royal Academy of Music MS 139, foils 111-122
			
			parts: & Royal Academy of Music MS 288


			The score manuscript of the Gloria itself does not contain an
			indication of Handels authorship.
			But the title page of the first part of violino primo has
			an addition from another hand: "
		\vspace #2 
		\line{ \italic {"Instrumental parts to Gloria in Excelsis Deo "
						{\abs-fontsize #14" }"} "for a treble voice" 
						\underline{Handel}} }
		\vspace #2 
		\wordwrap-string #"The microfilmed manuscript of the score was 
			taken as basis for this edition.
			
			
			Corrections were made using the instrumental parts."
	}
}
