\version "2.18.2"

#(define (make-text-script x)
   (make-music 'TextScriptEvent
               'direction UP
               'text x))

#(define (add-text-script m x)
   (cond ((music-is-of-type? m 'event-chord)
          (set! (ly:music-property m 'elements)
                 (cons (make-text-script x)
                       (ly:music-property m 'elements))))
         ((music-is-of-type? m 'note-event)
          (set! (ly:music-property m 'articulations)
                 (cons (make-text-script x)
                       (ly:music-property m 'articulations))))
         (else (let ((es (ly:music-property m 'elements))
                     (e (ly:music-property m 'element)))
                 (map (lambda (y) (add-text-script y x)) es)
                 (if (ly:music? e)
                     (add-text-script e x))
                     )))
   m)

addScript =
#(define-music-function (parser location script music) (markup? ly:music?)
   (add-text-script music script))
