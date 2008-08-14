\layout {
  indent = \smallindent
}

#(define-markup-list-command (hshift-lines layout props amount args)
  (number? markup-list?)
  (interpret-markup-list layout props
    (map (lambda (s) (markup #:hspace amount #:stencil s))
         (interpret-markup-list layout props args))))

#(define-markup-command (verseTitle layout props args) (markup-list?)
  (interpret-markup layout props
    (markup #:column
     (#:strut
      #:fontsize 1 #:italic (make-fill-line-markup (list (make-line-markup args)))
      #:null))))

#(define-markup-command (verses layout props args) (markup-list?)
  (interpret-markup layout props
    (markup #:hspace 40 (make-column-markup args))))

#(define-markup-list-command (verse-lines layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-column-lines-markup-list
    (make-hshift-lines-markup-list 40 args))))

#(define-markup-list-command (avant-propos layout props args) (markup-list?)
  (let* ((line-width (chain-assoc-get 'line-width props))
         (new-line-width (* line-width 0.70))
         (gap (/ (- line-width new-line-width) 2)))
    (interpret-markup-list layout props
      (append!
        (cons (markup #:column (#:fill-line (#:title "Avant-propos")
                                #:hspace 1))
              (make-hshift-lines-markup-list gap
                (make-override-lines-markup-list `(line-width . ,new-line-width)
                  (make-paragraph-markup-list args))))
       (list (markup #:column
              (#:hspace 1 #:separation-line 20)))))))

#(define-markup-list-command (paragraph layout props args) (markup-list?)
  (let* ((indentation (markup #:pad-to-box (cons 0 3) (cons 0 0) #:null))
         (line-width (chain-assoc-get 'line-width props 80))
         (new-line-width (* line-width 0.80))
         (gap (* 0.5 (- line-width new-line-width))))
    (interpret-markup-list layout props
      (make-hshift-lines-markup-list gap
        (make-override-lines-markup-list `(line-width . ,new-line-width)
          (make-justified-lines-markup-list (cons indentation args)))))))

tocJournee =
#(define-music-function (parser location title) (string?)
  (increase-rehearsal-major-number)
  (add-page-break parser)
  (add-toc-item parser 'tocActMarkup title)
  (add-even-page-header-text parser (string-upper-case (*opus-title*)) #f)
  (*act-title* title)
  (add-odd-page-header-text
    parser
    (format #f "~a." (string-upper-case (*act-title*)))
    #f)
  (make-music 'Music 'void #t))

tocSpectacle =
#(define-music-function (parser location title) (string?)
  (add-toc-item parser 'tocSceneMarkup title)
  (add-odd-page-header-text
    parser
    (format #f "~a, ~a."
           (string-upper-case (*act-title*))
           (string-upper-case title))
    #t)
  (make-music 'Music 'void #t))

tocPartie =
#(define-music-function (parser location title) (string?)
  (add-toc-item parser 'tocBoldPieceMarkup title)
  (make-music 'Music 'void #t))

tocPiece =
#(define-music-function (parser location title) (string?)
  (add-toc-item parser 'tocPieceMarkup title)
  (make-music 'Music 'void #t))

%%%
%%% Pour la comédie
%%%

#(define-markup-command (personnage layout props markp) (markup?)
  (interpret-markup layout props
   (markup #:pad-markup 2 #:fill-line (#:fontsize 2 markp))))

#(define-markup-list-command (didascalie layout props args) (markup-list?)
  (map (lambda (stil)
        (interpret-markup layout props
         (markup #:fill-line (#:stencil stil))))
   (interpret-markup-list layout props
    (make-override-lines-markup-list '(line-width . 80)
     (make-wordwrap-center-lines-markup-list 
      (map (lambda (arg) (markup #:italic arg))
       args))))))

#(define-markup-list-command (texte layout props args) (markup-list?)
  (let* ((line-width (chain-assoc-get 'line-width props))
         (new-line-width (* line-width 0.80))
         (gap (* 0.5 (- line-width new-line-width))))
    (interpret-markup-list layout props
      (make-hshift-lines-markup-list gap
        (make-override-lines-markup-list `(line-width . ,new-line-width)
          (make-justified-lines-markup-list args))))))

#(define-markup-command (invisible layout props arg) (markup?)
  (interpret-markup layout props (make-with-color-markup white arg)))

satyreMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Satyre"))

moronMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Moron"))
