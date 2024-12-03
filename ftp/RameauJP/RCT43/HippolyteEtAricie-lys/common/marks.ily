#(define-markup-command (characteri paper props name) (markup?)
  (interpret-markup paper props
   (markup #:huge #:smallCaps name)))

#(define-markup-command (character paper props name) (markup?)
  (interpret-markup paper props
   (markup #:null #:translate  (cons -4 2) #:characteri name)))

#(define-markup-command (character-text paper props name text) (markup? markup?)
  (interpret-markup paper props
   (markup #:null #:translate  (cons -4 2)
    #:line (#:characteri name #:huge " " #:huge #:italic text))))

#(define-public (make-character-mark clefs name)
  #{ << { \set Staff.forceClef = ##t \clef #$clefs
          \once \override Staff . Clef #'full-size-change = ##t }
        s1*0 ^\markup \character $name >> #})


markUpBegin = {
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #UP
  \once \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score . RehearsalMark #'padding = #3
}

markDownBegin = {
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #DOWN
  \once \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score . RehearsalMark #'padding = #3
}

markDownEnd = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #DOWN
  \once \override Score . RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score . RehearsalMark #'padding = #3
}
segnoMark = { 
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #1
  \once \override Score . RehearsalMark #'self-alignment-X = #0
  \mark \markup \musicglyph #"scripts.segno"
}

fineMark = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #-1
  \once \override Score . RehearsalMark #'self-alignment-X = #1
  \once \override Score . RehearsalMark #'padding = #2
  \mark \markup \right-align \italic Fin.
}

dalSegnoMark = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #-1
  \once \override Score . RehearsalMark #'self-alignment-X = #1
  \once \override Score . RehearsalMark #'padding = #2
  \mark \markup \right-align \italic "Dal Segno."
}

dacapoMark = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #-1
  \once \override Score . RehearsalMark #'self-alignment-X = #1
  \once \override Score . RehearsalMark #'padding = #2
  \mark \markup \right-align \italic "Da Capo."
}
