\version "2.16.1"

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneFingering = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{
    	    To produce the \caps "best effect," by the \caps "easiest means," is the great basis of 
    	    the art of fingering.  The \caps effect, being of the highest importance, is \caps first 
    	    consulted; the \caps way to accomplish it is then devised; and \caps "that mode" of 
    	    fingering is \caps preferred which gives the \caps "best effect," tho' not always the 
    	    easiest to the performer.  But the combinations of notes being almost infinite, the 
    	    art of fingering will best be taught by examples.
    }
    \paragraph{" "}
  }
}
