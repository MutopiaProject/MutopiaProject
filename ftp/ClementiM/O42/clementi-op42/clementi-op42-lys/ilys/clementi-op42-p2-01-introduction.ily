\version "2.16.0"

%\include "definitions.ily"

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))
   
partTwoIntroduction = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{ 
    	    To preserve the order of keys, some of the difficult are intermixed with the
    	    easy lessons: but the pupil must practise the easiest first.  Viz: No.1, 2, 3,
    	    7, 8, 9, 12, 15, 17, 18, 19, 20, 21, 22, 23, 25, 26, 29, 30, 31, etc.
    }
    \paragraph{  }
  }
}
