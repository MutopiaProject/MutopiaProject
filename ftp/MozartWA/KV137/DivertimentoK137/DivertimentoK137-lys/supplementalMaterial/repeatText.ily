% Format for repeat text such as "DC al Fine" and "Fine"
repeatText = #(define-music-function (parser loation my-text)
               (markup?)
               #{
                 \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
                 \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
                 \mark #my-text
               #}
               )
repeatTextUp = #(define-music-function (parser loation my-text)
               (markup?)
               #{
	       \once \override Score.RehearsalMark.direction = #UP
                 \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
                 \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
                 \mark #my-text
               #}
               )
repeatTextDown = #(define-music-function (parser loation my-text)
               (markup?)
               #{
	       \once \override Score.RehearsalMark.direction = #DOWN
                 \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
                 \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
                 \mark #my-text
               #}
               )
