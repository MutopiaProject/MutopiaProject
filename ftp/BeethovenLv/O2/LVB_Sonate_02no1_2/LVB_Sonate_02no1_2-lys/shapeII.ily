\version "2.17.26"

\header {
  snippet-title = "Improved \shape"
  snippet-author = "Janek Warchoł, David Nalesnik"
  snippet-source = ""
  snippet-description = \markup {

  }
  % add comma-separated tags to make searching more effective:
  tags = "slurs, ties, bezier curves, shape"
  % is this snippet ready?  See meta/status-values.md
  status = "working, unfinished"
}

% This is a duplication of code introduced for \offset.
% TODO: make that function (in scm/music-functions.scm) define-public
#(define (find-value-to-offset prop self alist)
   "Return the first value of the property @var{prop} in the property
               alist @var{alist} @em{after} having found @var{self}."
(let ((segment (member (cons prop self) alist)))
  (if (not segment)
      (assoc-get prop alist)
      (assoc-get prop (cdr segment)))))

% Return the dir-most head from note-column.
% TODO: implement in C++ with a Scheme interface.
#(define (get-extremal-head note-column dir)
   (let ((elts (ly:grob-object note-column 'elements))
         (init -inf.0)
         (result #f))
     (for-each
      (lambda (idx)
        (let* ((elt (ly:grob-array-ref elts idx)))
          (if (grob::has-interface elt 'note-head-interface)
              (let ((off (ly:grob-property elt 'Y-offset)))
                (if (> (* off dir) init)
                    (begin
                     (set! init off)
                     (set! result elt)))))))
      (reverse (iota (ly:grob-array-length elts))))
     result))

shapeII =
#(define-music-function (parser location all-specs item)
   (list? symbol-list-or-music?)
   (_i "TODO: write description when finished")

   (define (single-point-spec? x)
     (or (number-pair? x)
         (and (not (null? x))
              (or (number? (car x))
                  (symbol? (car x))))))

   (define (shape-curve grob)
     (let* ((orig (ly:grob-original grob))
            (siblings (if (ly:spanner? grob)
                          (ly:spanner-broken-into orig) '()))
            (total-found (length siblings))
            (immutable-props (ly:grob-basic-properties grob))
            (value (find-value-to-offset 'control-points shape-curve immutable-props))
            (default-cpts (if (procedure? value)
                              (value grob)
                              value))
            (slur-dir (ly:grob-property grob 'direction)))

       ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;
       ;; functions for handling various types of specs: ;;;;;;;;;

       ;; flips offset values for right points and downward slurs
       (define (symmetrical-offset coords offs side)
         (cons (+ (car coords)(* -1 side (second offs)))
           (+ (cdr coords) (* slur-dir (third offs)))))

       ;; position a cpt in polar coordinates.
       (define (polar-coords points spec side absolute?)
         (let* ((x-dif (- (car (last points)) (car (first points))))
                (y-dif (- (cdr (last points)) (cdr (first points))))
                (slur-length (sqrt (+ (expt x-dif 2) (expt y-dif 2))))
                (radius (* slur-length (third spec)))
                (ref-slope (if absolute? 0 (atan (/ y-dif x-dif))))
                (angl (+ (degrees->radians (second spec))
                        (* -1 side ref-slope slur-dir)))
                (ref-pt (if (= LEFT side)
                            (first points)
                            (last points)))
                (x-coord (- (car ref-pt) (* side radius (cos angl))))
                (y-coord (+ (cdr ref-pt) (* slur-dir radius (sin angl)))))
           (cons x-coord y-coord)))

       ;; adjust a middle cpt relative to its default polar-coordinates.
       ;; TODO: merge with the function above?
       (define (rel-polar-coords points spec side)
         (let* ((point1 (if (= LEFT side)
                            (first default-cpts)
                            (last default-cpts)))
                (point2 (if (= LEFT side)
                            (second default-cpts)
                            (third default-cpts)))
                (x-dif (- (car point2) (car point1)))
                (y-dif (- (cdr point2) (cdr point1)))
                (dist (sqrt (+ (expt x-dif 2) (expt y-dif 2))))
                (radius (* dist (third spec)))
                (ref-slope (atan (/ y-dif x-dif)))
                (angl (+ (degrees->radians (second spec))
                        (* -1 side ref-slope slur-dir)))

                (x-coord (- (car point1) (* side radius (cos angl))))
                (y-coord (+ (cdr point1) (* slur-dir radius (sin angl)))))
           (cons x-coord y-coord)))

       ;; place slur end relative to the notehead.
       (define (notehead-placement default spec side)
         (let* ((get-name (lambda (x) (assq-ref (ly:grob-property x 'meta) 'name)))
                (bound (ly:spanner-bound grob side))
                (bound-name (get-name bound)))
           (if (not (eq? bound-name 'NoteColumn))
               default
               (let* ((head (get-extremal-head bound slur-dir))
                      (yoff (if (<= 2 (length spec))
                                (third spec)
                                1.2))
                      (xoff (if (<= 3 (length spec))
                                (second spec)
                                0))
                      ;; in case of cross-staff curves:
                      (refp (ly:grob-system grob))
                      (ref-bound (ly:spanner-bound grob LEFT))
                      (ref-y (ly:grob-relative-coordinate ref-bound refp Y))
                      (my-y (ly:grob-relative-coordinate bound refp Y))
                      (cross-staff-correction (- my-y ref-y))
                      ;; UGH!! I have no idea why this is needed, but without this correction
                      ;; the example below renders wrongly:
                      ;; { d''1-\shapeII #'(() (()()()(head))) ( f'' \break a'' g'') }
                      ;; the if clause is necessary because otherwise the 'fix' will
                      ;; break the cross-staff case.  UGH!!
                      (ugh-correction
                       (if (ly:grob-property grob 'cross-staff) ; returns boolean
                           0.0
                           (- (car (ly:grob-property bound 'Y-extent))
                             (car (ly:grob-extent bound refp Y)))))
                      (cross-staff-correction (+ cross-staff-correction ugh-correction))

                      (head-yoff (+ (ly:grob-property head 'Y-offset)
                                   cross-staff-correction))
                      (head-yext (coord-translate
                                  (ly:grob-property head 'Y-extent)
                                  head-yoff))
                      (head-y-mid (+ (* 0.5 (car head-yext))
                                    (* 0.5 (cdr head-yext))))

                      (ref-x (ly:grob-relative-coordinate ref-bound refp X))
                      (head-x (ly:grob-relative-coordinate head refp X))
                      (head-xoff (- head-x ref-x))
                      (head-xext (coord-translate
                                  (ly:grob-property head 'X-extent)
                                  head-xoff))
                      (head-x-mid (+ (* 0.5 (car head-xext))
                                    (* 0.5 (cdr head-xext)))))
                 (cons (+ (* -1 side xoff) head-x-mid)
                   (+ (* slur-dir yoff) head-y-mid))))))

       ;; end of functions for handling specs. ;;;;;;;;;;;;;;;;;;;
       ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;

       ;; does this spec start with specified symbol?
       ;; TODO: check other list elements
       (define (spec-type? spec symbol-list)
         (and (list? spec)
              (symbol? (first spec))
              (member (first spec) symbol-list)))

       (define (calc-one-point current-state specifications which-point)
         (if (null? specifications)
             (list-ref current-state which-point)
             (let ((coords (list-ref current-state which-point))
                   (spec (list-ref specifications which-point))
                   (side (if (< 1 which-point) RIGHT LEFT)))
               (cond
                ((null? spec) coords)
                ((number-pair? spec)
                 (coord-translate coords spec))
                ((number-list? spec) ; 2-elem list -> pair:
                 (coord-translate coords (cons (first spec)(second spec))))
                ((spec-type? spec '(s sym symmetrical))
                 (symmetrical-offset coords spec side))
                ((spec-type? spec '(a abs absolute))
                 (cons (second spec)(third spec)))
                ((spec-type? spec '(p polar))
                 (polar-coords current-state spec side #f))
                ((spec-type? spec '(ap absolute-polar))
                 (polar-coords current-state spec side #t))
                ((spec-type? spec '(rp relative-polar))
                 (rel-polar-coords current-state spec side))
                ((spec-type? spec '(h head))
                 (notehead-placement coords spec side))
                (else (begin
                       (ly:programming-error
                        (_ "unknown control-point instruction type: ~a\nUsing default coordinates for control-point ~a.")
                        spec
                        (+ which-point 1))
                       coords))))))

       (define (calc-one-sibling specs)
         ;; 'specs' is a set of instructions for one sibling.
         (let ((new-cpts default-cpts)
               ;; make \shape #'((foo)) equivalent to \shape #'((foo foo foo foo))
               ;; and \shape #'((foo bar)) to \shape #'((foo bar bar foo)):
               (specs (cond
                       ((= 1 (length specs))
                        (make-list 4 (car specs)))
                       ((= 2 (length specs))
                        (list (first specs)
                          (second specs)
                          (second specs)
                          (first specs)))
                       ((= 3 (length specs))
                        (append specs '(())))
                       (else specs))))

           ;; In some cases (most notably when using polar coordinates),
           ;; middle cpts need to access information that is available
           ;; only after processing outer cpts (e.g. slur length).
           (list-set! new-cpts 0 (calc-one-point new-cpts specs 0))
           (list-set! new-cpts 3 (calc-one-point new-cpts specs 3))
           (list-set! new-cpts 1 (calc-one-point new-cpts specs 1))
           (list-set! new-cpts 2 (calc-one-point new-cpts specs 2))
           new-cpts))

       (define (find-specs-for-current-sibling sibs specs)
         (if (pair? specs)
             (if (eq? (car sibs) grob)
                 (calc-one-sibling (car specs))
                 (find-specs-for-current-sibling (cdr sibs) (cdr specs)))
             default-cpts))

       ;; normalize all-specs:
       (if (or (null? all-specs)
               (any single-point-spec? all-specs))
           (set! all-specs (list all-specs)))

       ;; if there are more siblings than specifications,
       ;; reuse last specification for remaining siblings.
       (if (> (- total-found (length all-specs)) 0)
           (append! all-specs
             (list (last all-specs))))

       (if (>= total-found 2)
           (find-specs-for-current-sibling siblings all-specs)
           (calc-one-sibling (car all-specs)))))

   #{ \tweak control-points #shape-curve #item #})
