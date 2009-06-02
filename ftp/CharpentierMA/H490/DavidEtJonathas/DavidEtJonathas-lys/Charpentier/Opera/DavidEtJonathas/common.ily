saulMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Saül"))

saulMarkText =
#(define-music-function (parser location text) (markup?)
  (make-character-mark "vbasse" (markup #:character-text "Saül" text)))

pythonisseMark =
#(define-music-function (parser location) ()
  (make-character-mark "vhaute-contre" "La Pythonisse"))

ombreMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "L'ombre de Samuel"))

achisMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Achis"))

achisMarkText =
#(define-music-function (parser location text) (markup?)
  (make-character-mark "vbasse" (markup #:character-text "Achis" text)))

jonathasMark =
#(define-music-function (parser location) ()
  (make-character-mark "vdessus" "Jonathas"))

jonathasMarkText =
#(define-music-function (parser location text) (markup?)
  (make-character-mark "vdessus" (markup #:character-text "Jonathas" text)))

davidMark =
#(define-music-function (parser location) ()
  (make-character-mark "vhaute-contre" "David"))

joadabMark =
#(define-music-function (parser location) ()
  (make-character-mark "vtaille" "Joadab"))

#(define-markup-list-command (hshift-lines layout props amount args)
  (number? markup-list?)
  (interpret-markup-list layout props
    (map (lambda (s) (markup #:hspace amount #:stencil s))
         (interpret-markup-list layout props args))))

#(define-markup-list-command (paragraph layout props args) (markup-list?)
  (let* ((indentation (markup #:pad-to-box (cons 0 3) (cons 0 0) #:null))
         (line-width (chain-assoc-get 'line-width props 80))
         (new-line-width (* line-width 0.80))
         (gap (* 0.5 (- line-width new-line-width))))
    (interpret-markup-list layout props
      (make-hshift-lines-markup-list gap
        (make-override-lines-markup-list `(line-width . ,new-line-width)
          (make-justified-lines-markup-list (cons indentation args)))))))
