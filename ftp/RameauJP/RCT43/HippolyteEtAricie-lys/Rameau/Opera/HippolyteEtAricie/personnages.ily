#(define-markup-command (characteri paper props name) (markup?)
  (interpret-markup paper props
   (markup #:huge #:smallCaps name)))

#(define-markup-command (character paper props name) (markup?)
  (interpret-markup paper props
   (markup #:null #:translate  (cons -4 2) #:characteri name)))

#(define-markup-command (character-text paper props name text) (markup? markup?)
  (interpret-markup paper props
   (markup #:null #:translate  (cons -4 2)
    #:line (#:characteri name #:huge " " #:huge #:italic text))))

hippolyteMark =
#(define-music-function (parser location) ()
  (make-character-mark "vhaute-contre" "Hippolyte"))

aricieMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Aricie"))

phedreMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Phèdre"))

dianeMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Diane"))

dianeMarkText =
#(define-music-function (parser location text) (markup?)
  (make-character-mark "vbas-dessus"
   (markup #:character-text "Diane" text)))

theseeMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Thésée"))

theseeMarkText =
#(define-music-function (parser location text) (markup?)
  (make-character-mark "vbasse"
   (markup #:character-text "Thésée" text)))

tisiphoneMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Tisiphone"))

plutonMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Pluton"))

mercureMark =
#(define-music-function (parser location) ()
  (make-character-mark "vtaille" "Mercure"))

oenoneMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Œnone"))

oenoneMarkText =
#(define-music-function (parser location text) (markup?)
  (make-character-mark "vbas-dessus"
   (markup #:character-text "Œnone" text)))
