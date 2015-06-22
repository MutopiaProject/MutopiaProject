\version "2.18.2"

\header {
  snippet-title = "shape-tie-column"
  snippet-author = "David Nalesnik"
  snippet-source =
    "http://www.mail-archive.com/lilypond-user%40gnu.org/msg89506.html"
  snippet-description = \markup {
    Adjust the shape of each tie in a chord
  }
  tags = "tie, column, TieColumn, control-points, offset"
  status = "ready"
}

%%%%%%%% function for offsetting control-points of a TieColumn %%%%%%%%%%%%%%%%%
shapeTieColumn =
#(define-music-function (parser location all-offsets) (list?)
   #{
     \once \override TieColumn #'after-line-breaking =
     #(lambda (grob)
        (let ((ties (ly:grob-array->list (ly:grob-object grob 'ties))))
          (for-each
           (lambda (tie offsets-for-broken-pair)
             (let* ((orig (ly:grob-original tie))
                    (siblings (ly:spanner-broken-into orig)))
               (for-each
                (lambda (piece offsets-for-piece)
                  (if (pair? offsets-for-piece)
                      (set! (ly:grob-property piece 'control-points)
                            (map
                             (lambda (x y) (coord-translate x y))
                             (ly:tie::calc-control-points piece)
                             offsets-for-piece))))
                (if (null? siblings)
                    (list orig)
                    siblings)
                offsets-for-broken-pair)))
           ties all-offsets)))
   #})