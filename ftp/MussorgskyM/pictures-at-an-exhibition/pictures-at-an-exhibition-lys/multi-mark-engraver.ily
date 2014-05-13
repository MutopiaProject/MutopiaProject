%%% Multi mark engraver
%%% by Xavier Scheuer
%%% http://lists.gnu.org/archive/html/lilypond-user/2011-08/msg00157.html

\version "2.18.2"

#(define (multi-mark-engraver ctx)
   (let ((texts '())
         (final-texts '())
         (events '()))

     `((start-translation-timestep
        . ,(lambda (trans)
             (set! final-texts '())))

       (listeners
        (mark-event
         . ,(lambda (trans ev)
              (set! events (cons ev events)))))

       (acknowledgers
        (break-alignment-interface
         . ,(lambda (trans grob source)
              (for-each (lambda (mark)
                          (set! (ly:grob-parent mark X) grob))
                texts))))

       (process-music
        . ,(lambda (trans)
             (for-each
              (lambda (ev)
                (let* ((mark-grob
                        (ly:engraver-make-grob trans 'RehearsalMark ev))
                       (label (ly:event-property ev 'label))
                       (formatter (ly:context-property ctx 'markFormatter)))

                  (if (and (procedure? formatter)
                           (not (markup? label)))
                      (begin
                       (if (not (number? label))
                           (set! label
                                 (ly:context-property ctx 'rehearsalMark)))

                       (if (and (integer? label)
                                (exact? label))
                           (set! (ly:context-property ctx 'rehearsalMark)
                                 (1+ label)))

                       (if (number? label)
                           (set! label (apply formatter (list label ctx)))
                           (ly:warning "rehearsalMark must have integer value"))))

                  (if (markup? label)
                      (begin
                       (set! (ly:grob-property mark-grob 'text) label)
                       (let ((dir (ly:event-property ev 'direction)))
                         (and (ly:dir? dir)
                              (set! (ly:grob-property mark-grob 'direction)
                                    dir))))
                      (ly:warning "mark label must be a markup object"))

                  (set! texts (cons mark-grob texts))))
              (reverse events))))

       (stop-translation-timestep
        . ,(lambda (trans)
             (if (pair? texts)
                 (let ((staves (ly:context-property ctx 'stavesFound))
                       (priority-index 0))
                   (for-each (lambda (grob)
                               (let ((my-priority (ly:grob-property
                                                   grob 'outside-staff-priority 1500)))
                                 (for-each (lambda (stave)
                                             (ly:pointer-group-interface::add-grob grob
                                               'side-support-elements stave)) staves)
                                 (set! (ly:grob-property grob
                                         'outside-staff-priority) (+ my-priority priority-index))
                                 (set! priority-index (1+ priority-index))
                                 (set! final-texts (cons grob final-texts))))
                     (reverse texts))
                   (set! texts '())
                   (set! events '())))))

       (finalize
        . ,(lambda (trans)
             (and (pair? final-texts)
                  (for-each (lambda (grob)
                              (set! (ly:grob-property grob 'break-visibility)
                                    end-of-line-visible))
                    final-texts)))))))