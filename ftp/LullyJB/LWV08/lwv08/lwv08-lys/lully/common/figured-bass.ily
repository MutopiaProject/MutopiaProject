
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Custom figured bass
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define (fig-seq->markup-seq seq-music)
  ;;
  (define (alteration->markup alteration)
   (make-teeny-markup
    (make-raise-markup
     (if (= alteration FLAT)
         0.3
         0.6)
     (make-musicglyph-markup
      (string-append "accidentals." (number->string alteration))))))
  ;; BassFigureEvent --> TextScriptEvent and SkipEvent
  (define (fig->markup fig-music)
   (let* ((fig  (ly:music-property fig-music 'figure))
          (acc  (ly:music-property fig-music 'alteration))
          (acc-markup #f)
          (fig-markup (markup #:small
                       (cond ((markup? fig) fig)
                             ((number? fig) (make-simple-markup (number->string fig)))
                             ((not (eq? acc '()))
                              (make-simple-markup ""))
                              (else (make-strut-markup))))))
    (list 
     (make-music 'TextScriptEvent
      'direction -1
      'text (markup (if (number? acc)
                         (markup fig-markup (alteration->markup acc))
                         fig-markup)))
     (make-music 'SkipEvent
      'duration (ly:music-property fig-music 'duration)))))
  ;;
  (if (not (null? seq-music))
   (begin
    (if (ly:music-property seq-music 'element)
     (set! (ly:music-property seq-music 'element)
      (fig-seq->markup-seq (ly:music-property seq-music 'element))))
    (set! (ly:music-property seq-music 'elements)
     (let ((elements (list)))
      (for-each (lambda (mus)
                 (if (eqv? (ly:music-property mus 'name) 'BassFigureEvent)
                  (set! elements (append (fig->markup mus) elements))
                  (set! elements (cons (fig-seq->markup-seq mus) elements))))
       (ly:music-property seq-music 'elements))
      (if (eqv? (ly:music-property seq-music 'name) 'EventChord)
       elements
       (reverse! elements))))))
  seq-music)

markupfigures=#(define-music-function (parser location music) (ly:music?)
            (fig-seq->markup-seq music))
