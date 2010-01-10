% tremolo functions
#(define (tremolo-repeat-count dur music)
  (let* ((elements (ly:music-property music 'elements))
         (music-dur (ly:music-property (car elements) 'duration))
         (length (ly:duration-log music-dur))
         (dots (ly:duration-dot-count music-dur))
         (beats (* (- 2 (/ 1 (expt 2 dots))) (/ 4 (expt 2 length)))))
      (* beats (/ dur 4))))

#(define (make-tremolo dur music)
  (make-music
    'TremoloRepeatedMusic
    'tremolo-type
    dur
    'elements
    '()
    'repeat-count
    (tremolo-repeat-count dur music)
    'element
    music))

#(define (tremoloize dur music)
  (if (eq? (ly:music-property music 'name) 'EventChord)
    (make-tremolo dur music)
    music))

%dur is 8, 16, 32, etc.
tremolos = #(define-music-function (parser location dur mus) (integer? ly:music?)
  (music-map (lambda (x) (tremoloize dur x)) mus))

#(define (unfold-tremolos mus)
  (if (eq? (ly:music-property mus 'name) 'TremoloRepeatedMusic)
    (unfold-repeats mus)
    mus))

unfoldTremolos = #(define-music-function (parser location mus) (ly:music?)
  (music-map unfold-tremolos mus))

