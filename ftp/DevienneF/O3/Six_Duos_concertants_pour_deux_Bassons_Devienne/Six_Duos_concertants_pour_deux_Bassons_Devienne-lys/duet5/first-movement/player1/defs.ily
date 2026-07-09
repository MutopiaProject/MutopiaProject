sectionA = \relative c' {
  \clef bass
  f,2 a | c d16 c bes a bes c d e
  | f8 c c c c bes16 c d8 a
  | c bes bes bes bes4 r
  | e,2 g  | bes bes16 g a bes c d e f
  | g8 bes, bes bes bes c16 d c8 bes
  | gis2 a4 r
  | f4. c'8 bes a g f
  | e4. d8 g' f e d
  | c4. e16 d c8 bes a bes
  | bes a d c c4 r
  | f,16 e f g a g a bes c bes a bes c d e f
  | e8 d #(if facsimile #{ d4. #} #{ d4 ~ d8 #} ) c8 bes a
  | fis8 g a bes cis d bes g
  | \cAccOn f2 \cAccOff e4 r
  | e e2 f4
  | f8 e e2 f16 e d c
  | g2 b
  | c8 c b c c,4 r
  | f'1
  | e2 e8 c e c
  | f1
  | e2 e8 c e c | d f b a g f e d
  | c2 e | f4 f g g,
  \tenorClef
  | g''2 b,
  | c4. e8 d4. f8
  | \grace e8 g2 b,
  | c4. e8 d4. f8
  | e16 c, d e f g a bes
  c4 r
  | e,8 f16 g a bes c d e4 r
  | g,8 a16 b c d e f g4 \clef bass g,,4
  | a16 f g a bes c d e f g a bes\tenorClef c d e f
  | g4 f16 e d c d2\trill
  | c4 ~ c16 d e d c8 b a g
  | g f #(if facsimile #{ f4. #} #{ f4 ~ f8 #} ) g16 a g8 f
  | e8 c'32 d e d c8 b a g f e
  | \bentKnee e d f' d e c d b
  | c4 c c r \clef bass

}


sectionB= \relative c' {
  e,2 f8 e d c | c b b2 c4
  | #(if facsimile #{ d4 s8 #} #{ d4. #} ) e16 f f8 e e d
  | d c f e e c f d
  | e1
  | f4 f f8 a16 g b a g f
  | e4 f g g, | c c c \tenorClef g'
  | g'2 g8 f f e
  | e2 e8 d d #(if facsimile #{ cis8 #} #{ des8 #} )
  \tuplet 3/2 4 {
    \showUrtextTuplets c8 e d c bes a
    \hideTuplets
    g #(if facsimile #{ ^[ #} #{ [ #} ) bes bes ] g f e
  }
  g16 #(if facsimile #{ _[ #} #{ [ #} ) f bes a ] a4 r8 a a a
  | d4. a8 f' f g16 f e d
  | d8 cis #(if facsimile #{ cis 4. #} #{ cis4 ~ cis8 
                #} ) a8 a a
  | e'8 \showUrtextTuplets \tuplet 3/2 8 { f16 e dis } \hideTuplets e8 a, g'4. f16 e
  | e8 d d4 r8 a a a
  | bes \grace c8 bes16 a bes8 cis d a r a
  | bes bes16 a bes8 cis d a r a
  | a #( if facsimile #{ ^[ #} #{ [ #} )  g bes a ] g f e d
  | d2 cis4 \clef bass a4
  \tuplet 3/2 4 {
    d8 ( f ) e\st d ( f ) a\st cis ( d) d,\st b' ( c ) d,\st
    | bes'2*3/2 r4*3/2 g, 
    | c8 ( e) d \st c ( e ) g\st \bentKnee  b ( c ) c,\st \bentKnee a' ( bes ) c,\st
    | a'2*3/2 r4*3/2 f,
    | bes8 ( d ) c\st bes d f a ( bes ) bes, \bentKnee gis' a a,
  }
  | \cAccOn  g'4. \cAccOff a8 bes8. ( g16 ) a 8. ( fis16 )
  | g4. a8 bes8. g16 a8. fis16
  | g f g a bes a bes c d c d e f8 f
  | e c g e c4 r
  | a' a2 bes4
  | bes a #(if facsimile
               #{ a2
                  | bes16*4 [ a g f ]
               #}
               #{ a4 bes16 a g f
               #}
               )
  | \stemDown c2 \stemNeutral e | f8 f e f f,4 r
  | bes'1
  | a2 a8 f a f
  | bes1
  | a2 a8 f a f
  | g c e d c bes a g | f2 a, | bes4 bes c c,
  | \grace b''8 c2 e,
  | f4. a8 g4. bes8
  | \grace bes8 c2 e,
  | f4. a8 g4. bes8
  | a16 f g a bes c d e f4 r
  | a,,8 bes16 c d e f g a4 r
  | c,8 d16 e f g a bes c d e f e f e f
  | e d cis d c bes a bes a g fis g a bes cis d
  | b c d c bes a g f g2\trill
  | f4 f'16 e f g f8 e d c
  | c bes #(if facsimile #{ g4. #} #{ g4 ~ g8 #} ) c16 d c8 bes
  | a c\trill f e d c bes a
  | a g bes g a f g e 
  | f4 f f r
}

