\version "2.18.0"

extendLV = #(define-music-function (parser location further) (number?)
#{
	\once \override LaissezVibrerTie #'X-extent = #'(0 . 0)
	\once \override LaissezVibrerTie #'details #'note-head-gap = #(/ further -2.1)
	\once \override LaissezVibrerTie #'extra-offset = #(cons (/ further 2) 0)
#})
	
 guitartwo = \relative c''' {
 \set Staff.instrumentName = "Gtr2 "

    g4. ~ | % 1

 \repeat volta 2 {
    \stemDown
    g8 [ fis16 e16 d16 c16 ] | % 2
    b4. ~ | % 3
    b8 [ a16 g16 fis16 e16 ] | % 4
    \TDna d4. ~ | % 5
    d8 [ c16 b16 a16 g16 ] | % 6
    a4. ~ | % 7
    a16 [ g16 b16 a16 g16 fis16 ] | % 8
    g8 g'4 ~ | % 9
    g8 [ fis16 e16 d16 c16 ] | % 10
    b16 [ d16 g16 a16 bes8 ~ ] | % 11
    bes8 [ a16 g16 fis16 e16 ] | % 12
    \TDna d4. ~ | % 13
    d16 [ cis16 b16 d16 cis16 b16 ] | % 14
    cis16 [ b16 a16 g16 fis16 e16 ] | % 15
  }

    \alternative {
	    { \stemUp fis8 r8 r8 | % 16
	 \stemDown \extendLV #13.0 g''4. \laissezVibrer }
	    { \stemUp fis,,4. | \stemDown a''4. ~ }
    }
     
 \repeat volta 2 {
    a8 [ g16 fis16 e16 d16 ] | % 20
    cis8 c4 ~ | 
    c8 [ b16 a16 g16 fis16 ] | % 22
    \TUp e4. ~ | 
    e16 [ dis16 cis16 e16 dis16 cis16 ] | % 24
    dis16 [ cis16 b16 a16 g16 fis16 ] |
    g8 r8 r8 | % 26
    c4. ~ | 
    c16 [ a16 b16 g16 b16 d16 ] | % 28
    \TUpo e4. ~ | 
    e16  [ cis16 d16 b16 d16 fis16 ] | % 30
    g4. ~ | 
    g16 [ fis16 e16 g16 fis16 e16 ] | % 32
    fis16 [ e16 d16 c16 b16 a16 ] |
    }

    \alternative {
	    { \stemUp g8 r8 r8 | % 32
	 \stemDown \override LaissezVibrerTie #'direction = #UP \extendLV #17.0 a''4. \laissezVibrer }
	    { b,,4.}
    }
}
