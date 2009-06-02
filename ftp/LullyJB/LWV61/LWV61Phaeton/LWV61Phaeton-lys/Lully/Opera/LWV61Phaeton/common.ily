\opusPartSpecs #`(
  (dessus1 "Dessus I" () (#:notes "dessus"))
  (dessus2 "Dessus II" () (#:notes "dessus"))
  (haute-contre "Haute-contre" () (#:notes "haute-contre" #:clef "treble"))
  (taille "Taille" () (#:notes "taille" #:clef "alto"))
  (quinte "Quinte" () (#:notes "quinte" #:clef "alto"))
  (basse "Basse" () (#:notes "basse" #:clef "bass"))
  (voix "Parties vocales" () (#:score "score-voix"))
  (basse-continue "Basse continue" ()
   (#:notes "basse" #:clef "bass" #:score-template "score-basse-continue")))


theoneMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Théone"))

libyeMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Libye"))

phaetonMark =
#(define-music-function (parser location) ()
  (make-character-mark "vhaute-contre" "Phaéton"))

clymeneMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbas-dessus" "Clymène"))

proteeMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse-taille" "Protée"))

tritonMark =
#(define-music-function (parser location) ()
  (make-character-mark "vhaute-contre" "Triton"))

epaphusMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse-taille" "Épaphus"))

meropsMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Merops"))

soleilMark =
#(define-music-function (parser location) ()
  (make-character-mark "vhaute-contre" "Le Soleil"))

jupiterMark =
#(define-music-function (parser location) ()
  (make-character-mark "vbasse" "Jupiter"))