
#(define-markup-command (characteri paper props name) (markup?)
  (interpret-markup paper props (markup #:huge #:smallCaps name)))

#(define-markup-command (character paper props name) (markup?)
  (interpret-markup paper props (markup " " #:translate  (cons -4 2) #:characteri name)))

psycheMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character Psyche
        \basDessus $music 
     >> #})

aglaureMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character Aglaure
        \basDessus $music 
     >> #})

cidippeMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character Cidippe
        \basDessus $music 
     >> #})

lycasMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character Lycas
        \voixBasseTaille $music 
     >> #})
lycasMarkNoClef =
#(define-music-function (parser location music) (ly:music?)
  #{ << s1*0 ^\markup \character Lycas
        \voixBasseTaille $music 
     >> #})

roiMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character "Le Roi"
        \voixBasseTaille $music 
     >> #})

vulcainMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character "Vulcain"
        \voixHauteContre $music 
     >> #})

zephirMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character "Zephir"
        \voixHauteContre $music 
     >> #})

venusMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character Venus
        \basDessus $music 
     >> #})

nympheMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character "Nymphe"
        \voixDessus $music 
     >> #})

amourMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character "L'Amour"
        \basDessus $music 
     >> #})

fleuveMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << s1*0 ^\markup \character "Le Fleuve"
        \basse $music 
     >> #})

furieMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << s1*0 ^\markup \character "Une Furie"
        \basse $music 
     >> #})

mercureMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << \set Staff.forceClef = ##t
        s1*0 ^\markup \character "Mercure"
        \voixHauteContre $music 
     >> #})

jupiterMark =
#(define-music-function (parser location music) (ly:music?)
  #{ << s1*0 ^\markup \character "Jupiter"
        \basse $music 
     >> #})
