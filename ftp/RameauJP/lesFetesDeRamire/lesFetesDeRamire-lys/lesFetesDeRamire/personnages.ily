
#(define-markup-command (characteri paper props name) (markup?)
  (interpret-markup paper props (markup #:huge #:smallCaps name)))

#(define-markup-command (character paper props name) (markup?)
  (interpret-markup paper props (markup " " #:translate  (cons -4 2) #:characteri name)))

fatimeMark =
#(define-music-function (parser location) ()
  #{ << { \set Staff.forceClef = ##t \utUn }
        s1*0 ^\markup \character Fatime >> #})

isbeMark =
#(define-music-function (parser location) ()
  #{ << { \set Staff.forceClef = ##t \utUn }
        s1*0 ^\markup \character Isbe >> #})

ramireMark =
#(define-music-function (parser location) ()
  #{ << { \set Staff.forceClef = ##t \utTrois }
        s1*0 ^\markup \character Ramire >> #})

premierGuerrierMark =
#(define-music-function (parser location) ()
  #{ << { \set Staff.forceClef = ##t \utTrois }
        s1*0 ^\markup { \concat { P \super er } \smallCaps Guerrier } >> #})

deuxiemeGuerrierMark =
#(define-music-function (parser location) ()
  #{ << { \set Staff.forceClef = ##t \faQuatre }
        s1*0 ^\markup { \concat { 2 \super e } \smallCaps Guerrier } >> #})
