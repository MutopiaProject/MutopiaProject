% http://lsr.di.unimi.it/LSR/Snippet?id=639 :
% http://lists.gnu.org/archive/html/lilypond-user/2007-08/msg00539.html
% http://lists.gnu.org/archive/html/lilypond-user/2009-09/msg00495.html
% By Dmytro O. Redchuk, incorporating a function written by David Nalesnik
% Thanks, Neil, for your help!!

#(define ((alter-curve offsets) grob)
   ;; get default control-points
   (let ((coords (ly:slur::calc-control-points grob)))
     ;; add offsets to default coordinates
     (define (add-offsets coords offsets)
       (if (null? coords)
       '()
       (cons
         (cons (+ (caar coords) (car offsets))
               (+ (cdar coords) (cadr offsets)))
         (add-offsets (cdr coords) (cddr offsets)))))

     (if (null? offsets)
         coords
         (add-offsets coords offsets))))


#(define ((shape-slur offsets) grob)
   (let* (
          ;; have we been split?
          (orig (ly:grob-original grob))
          ;; if yes, get the split pieces (our siblings)
          (siblings (if (ly:grob? orig)
                        (ly:spanner-broken-into orig) '() ))
          (total-found (length siblings)))
     (if (>= total-found 2)
         ;; shape BROKEN
         ;; walk through siblings, find index in list
         ;; and apply offsets from list of offsets:
         (let loop ((n 0))
                   (if (eq? (list-ref siblings n) grob)
                       ;; return altered:
                       ((alter-curve (list-ref offsets n)) grob)
                       (if (< n total-found)
                           (loop (1+ n))
                           ;; end of list -- none found?!
                           ;; return defaults:
                           ((alter-curve '()) grob))))
         ;;
         ;; shape UNBROKEN
         ((alter-curve offsets) grob))))

shapeSlur =
#(define-music-function (parser location offsets)
                        (list?)
  #{
    \once \override Slur.control-points = #(shape-slur offsets)
  #})