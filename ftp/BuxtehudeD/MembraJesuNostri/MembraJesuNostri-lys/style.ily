#(define is-letter? (string=? (ly:get-option 'paper-size ) "letter"))
#(set-global-staff-size (if is-letter? (- mystaffsize 1) (* mystaffsize )))

\paper{
%size
	#(set-default-paper-size "a4" )
%margin
	twoside = ##t
	inner-margin = 10 \mm
	outer-margin = 20 \mm
	top-margin = 10 \mm
	bottom-margin = 10 \mm
%	left-margin = 15 \mm
%	right-margin = 15 \mm
%linewidth
	line-width = #(- paper-width (+ inner-margin outer-margin))
%	line-width = #(- paper-width (+ left-margin right-margin))
%fonts
	#(define fonts
		(make-pango-font-tree "Georgia"
		"Trebuchet"
		"Courier"
		(/ mystaffsize 20)))
%footer
	oddFooterMarkup = \markup {
  		\fill-line { \tiny {
  					{"published using lilypond"}
					\line {\fromproperty #'header:composer " - " \fromproperty #'header:title }
					\epsfile #X #10 #"by-sa.eps"} }}
}%paper

%global Layout Params
\layout{
	\context { \Score
%	beamSettings = #(cons '(
%	((2 . 2) end) . (((1 . 16) . (4 4 4 4)))
%	) default-beam-settings ) 

	%	bass figures settings
%	\override BassFigure #'font-size = #+1
	\override BassFigure #'font-name = #'"Georgia"
 	alignBassFigureAccidentals = ##t
	figuredBassAlterationDirection = #RIGHT
	figuredBassPlusDirection = #RIGHT
	ignoreFiguredBassRest = ##f
	}
	\context { \Staff }
	\context { \Lyrics }
	\context { \FiguredBass }
}
