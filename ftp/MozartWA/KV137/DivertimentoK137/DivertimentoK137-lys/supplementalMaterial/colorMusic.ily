colorGrob =
#(define-music-function (parser location my-grob my-color color-on)
	(symbol? color? boolean?)
	(if color-on
	#{
	\temporary \override #my-grob #'color = #my-color
	#}
	#{
	\revert #my-grob #'color
	#}))

colorGrobs =
#(define-music-function (parser location my-grob-list my-color color-on)
	(symbol-list? color? boolean?)
	(if (null? my-grob-list)
	  #{ #}
	#{
	\colorGrob #(car my-grob-list) #my-color #color-on
	\colorGrobs #(cdr my-grob-list) #my-color #color-on
	#}))
allGrobNames =
#(define-scheme-function (parser location)()
	(map (lambda (gd) (car gd)) all-grob-descriptions))

colorMusic =
#(define-music-function (parser location my-color music)
	(color? ly:music?)
	#{
	\colorGrobs \allGrobNames #my-color ##t

	#music

	\colorGrobs \allGrobNames #my-color ##f
	#})

