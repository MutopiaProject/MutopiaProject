%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Semi-automatic vertical spacement
%%
%% -d write-tweaks to write the tweaks file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(use-modules (srfi srfi-39) (ice-9 format))

#(define *write-tweaks* (make-parameter (ly:get-option 'write-tweaks)))

scoreInit = 
#(define-music-function (parser location) ()
   (let ((tweak-music (ly:parser-lookup parser (string->symbol (*current-piece*)))))
     (if (ly:music? tweak-music)
         (begin ;(format #t "Using tweak \\~a~%" (*current-piece*))
          tweak-music)
         (make-music 'SequentialMusic))))

spacingTweaks = 
#(define-music-function (parser location props) (list?)
   (define (get-prop prop)
     (cdr (assoc prop props)))
   (let ((page-number (get-prop 'page-number))
         (space-left (get-prop 'page-space-left))
         (index (get-prop 'this-system-index))
         (system-count (get-prop 'system-count))
         (system-heights (get-prop 'system-heights))
         (system-paddings (get-prop 'system-paddings))
         (music-systems (get-prop 'music-systems)))
  (let* ((music-system-count (length (remove not music-systems)))
            (total-music-height (loop for music? in music-systems
                                      for height in system-heights
                                      if music? sum height))
            (sorted-data (sort (loop for i from 0
                                     for h in system-heights
                                     for m? in music-systems
                                  collect (list i h m?))
                               (lambda (e1 e2) (< (cadr e1) (cadr e2)))))
            (sorted-stretches (loop for rest-height = total-music-height 
                                      then (if music?
                                               (- rest-height height)
                                               rest-height)
                                    for left = space-left then (- left real-stretch)
                                    for i-h-m in sorted-data
                                    for i = (car i-h-m)
                                    for height = (cadr i-h-m)
                                    for music? = (caddr i-h-m)
                                    for stretch = (if (and music? (> rest-height 0))
                                                      (/ (* height left) 
                                                            rest-height)
                                                      0.0)
                                    for real-stretch = (if music?
                                                           (min stretch (* height 
                                                                           (/ height 100.0)))
                                                           0.0)
                                 collect (list i real-stretch)))
            (stretches-theo (map cadr (sort sorted-stretches
                                            (lambda (e1 e2)
                                              (< (car e1) (car e2))))))
            (stretches (if (< (apply + stretches-theo)
                              (- space-left 5.0))
                           stretches-theo
                           (map (lambda (s) (max 0.0 (- s 1.0)))
                                stretches-theo))))
       #{
         \overrideProperty #"Score.NonMusicalPaperColumn"
           #'line-break-system-details
           #$(list (cons 'alignment-extra-space (list-ref stretches index))
                   (cons 'next-padding (list-ref system-paddings index)))
       #})))

includeTweaks = 
#(define-music-function (parser location) ()
  (if (not (*write-tweaks*))
   (let ((tweak-filename (format #f "~a-page-layout.ly" (ly:parser-output-name parser))))
     (if (access? tweak-filename R_OK)
        (begin
          (format #t "Including tweak file ~a~%" tweak-filename)
          (ly:parser-parse-string parser
            (format #f "\\include \"~a\"" tweak-filename))))))
   (make-music 'SequentialMusic 'void #t))
