\version "2.24.1"

#(define-syntax-rule (whenscore stmt stmt* ...)
  (if (and (defined? 'score-type) (string=? score-type "score"))
   (begin stmt stmt* ...)))
