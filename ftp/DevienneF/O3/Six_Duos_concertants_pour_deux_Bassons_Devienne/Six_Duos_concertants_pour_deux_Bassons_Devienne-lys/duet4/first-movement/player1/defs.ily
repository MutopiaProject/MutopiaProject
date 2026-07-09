sectionA = \relative c' {
  \clef bass
  f,8
  | bes4 bes,,2 bes''8 d
  | c4 f,,2 c''8 ees
  | d8 f4 d16 bes c8 ees4 c16 a
  | bes4 c16 bes a g f8 ees d c
  | bes4 bes bes bes
  | a a a a
  | bes d ees f
  | bes,2
  \override TupletBracket.direction = #UP
  \tuplet 3/2 4 {
    r8  f'' ees d c bes
    \hideTuplets
    | a2*3/2 r8 ees' d c bes a
    | \grace c8 bes2*3/2 r8 f' ees d c bes
  }
  g'4. ees8 bes4. g'8
  | g f f4 r8 bes, d f
  | ees4. c8 f,4. ees'8
  | #(if facsimile #{ f8 #} #{ ees8 #} ) d d4 r d
  | c8 c \grace ees8 d c c4 c
  | #(if facsimile #{ e4 s8 #} #{ e4. #} ) c8 f4 r
  | c8 c \grace ees8 d8 c c4 c
  | e4. c8 f4 c8 cis
  | e8 d d2 c4
  | c 8 bes bes 2 a4
  \tuplet 3/2 8 {
    | g8 f g \hideTuplets bes a bes d  c bes a g f
  }
  | f2 e4 r
  | a2 c8 bes a g | g4 f f8 g gis a
  | a4. d8 c bes a g
  | g4 f f8 g a a
  | bes bes16 a bes 8 c e d c bes
  | gis4 a a,2 | bes4 bes8 c d4 bes
  | c2 c8 d16 e f g a bes
  \tenorClef
  | c2 e8 d c bes
  | bes8 a a4 a8 bes b c
  | c4. f8 e d c bes
  | bes4 a a8 bes c cis
  | d \grace e8 d16 cis d8 e g f e d
  | b4 ( c8 ) d16 c bes 8 a g f
  | \bentKnee e d d' bes \stemUp  a4 g \stemNeutral
  \tuplet 3/2 4 {
    f8 c' c c b c bes g c bes g c
    | a c c c b c bes g c bes g c
    | a f' e f ees cis d c bes a g fis
    | g bes c d c bes
  }
  a4 g
  | f a g8 e g e
  | f4 a g 8 e g e
  | f4 \clef bass a, bes c
  | bes bes c c
  | f8 c' a f e4. g8
  | f8 a c f e4. g8 f4 f f  #(if facsimile #{ s8 #} #{ r8 #} )


}


sectionB= \relative c' {
  c8
  | f2 g8 f e f
  | f8 e e2 d4
  | c4. \grace ees8 d8 c bes a bes | bes4 a a 8 bes b c
  | c  \cAccOn bes \cAccOff a g g4. d'8
  | d8 c bes a a4. f'8
  | f8 d f d c a g bes
  | gis4 a a8 bes b c
  | c bes a g g4. d'8
  | d c bes a a4. f'8
  | f d f d c bes a g | f \cAccOn ees \cAccOff es es ees16 f ees d c8 d
  | ees16 f ees d c8 d ees d c cis
  | d2 fis | g ees | d fis | g ees
  | d4 fis fis r
  | d'1 ~
  | d8 d \grace f ees d  g d \grace f ees d
  | d1 ~
  | d8 d \grace f ees d  g d \grace f ees d
  | ees4. #(if (not facsimile) #{ \showTuplets #} ) \tuplet 3/2 8 { d16 c bes }
  \hideTuplets a8 a c ees
  |d4.\tuplet 3/2 8 { c16 bes a } g8 g' d f
  | f ees d c bes 4 a
  | g16\trill fis g a bes\trill a bes c
   cis d e d c bes a g
  | fis8 g a bes c bes c a 
  | bes2 r
  | fis8 g a bes c bes c a
  | bes2 r
  | \repeat tremolo 4 c,8 c4 r
  | \repeat tremolo 4 bes8 bes4 bes'
  | \repeat unfold 2 \repeat tremolo 4 a8
  | bes8 bes a bes \bentKnee bes, d' ees f
  | fis g g2 f4
  | f8 ees ees2 d4
  | c 16 b c d ees d ees d 
  \tuplet 3/2 4 { 
    g8 f ees d c bes
  }
  | bes2 a4 r
  | f2 a8 g f ees
  | ees4 d d 8 ees e f
  | f4. bes8 a g f ees
  | ees4 d d8 ees f fis
  | g \grace a8 g16 fis g8 a c bes a g
  | e8 f f' f g f ees d | d c g' f f ees ees d 
  | d2 c4 r d2 d8 c a c | c4 bes bes8 c cis d
  | d4. ees8 d c a c
  | c4 bes d,8 ees f fis
  | g8 \grace a8 g16 fis g8 a c bes a g
  | e8 f f' f g f ees d
  | f8 ees d2 c4
  \tuplet 3/2 4 {
    bes8 d bes f d bes d f bes d f d | ees d c bes a g f g f ees d c
    | \bentKnee bes d' bes f d bes d f bes d f d 
    | ees d c bes a g f g f ees d c
  }
  | bes8 c16 d ees f g a bes a bes c d c d ees
  \tuplet 3/2 8 {
    | f8 ees d c bes aes g a b c d ees
    | d f ees d c bes
  }
  c2\trill | bes bes, | c1 | d | c | d 
  | d2 ees4 a, | bes ees f f
  | bes8 f' d bes a4. c8
  | bes8 f' d bes a4. c8
  | bes4 bes bes #(if facsimile #{ r4 #} #{ r8*2 #} )
                                           

}

