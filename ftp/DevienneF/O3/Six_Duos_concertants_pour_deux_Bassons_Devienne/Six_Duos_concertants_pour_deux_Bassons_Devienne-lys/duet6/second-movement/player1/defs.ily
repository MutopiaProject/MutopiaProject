uptoFine = \relative c' {
  \tenorClef
  d8. e32 ( d ) b8 c
  | d8. e32 ( d ) b 8 c | d [ g fis e ]
  | d #(if facsimile #{ cis8 #} #{ des8 #} ) c4
  | b8 [ ( g ) c ( a ) ]
  | d [ ( c ) c ( b ) ]
  | a16 d, e fis g a b c
  | d8. e32 d b8 c
  | d8. e32 d  b8 c
  | d [ g fis e ]
  | d #(if facsimile #{ cis8 #} #{ des8 #} ) c4
  | b8 [ c d dis ]
  | \tuplet 3/2 4 {
    \showUrtextTuplets
    e8 g fis e d c
  }
  \hideTuplets
  | b4. a32 g a b
  | a4 g
}
uptoSegno = \relative c' {
  \tenorClef
  a8. b32 a fis8 g
  | a8. b32 a fis8 g
  | a [ c b d ]
  | d4 c
  | b8 [ g c a ] | d [ b e d] | d [c c b] | b4 a
  | a2
  | a8 d16 c d8 e
  | fis16 e d cis b a g fis
  | a g fis g g4
  | g8 cis16 b cis8 d
  | e e16 d e8 fis
  | g16 fis e d cis b a g
  | g8 fis fis4 ~ | fis8 a d fis
  | fis b, b4
  | g'8 [ e d cis ] | d [ fis e d]
  | #(if facsimile #{ cis8 #} #{ des8 #} ) [ c8 b ais ]
  \tuplet 3/2 4 {
    \showUrtextTuplets
    | b8 d cis b a g
  }
  | fis 4 e | d r
  \clef bass
  | e8 [ cis e cis ] | d4 r | e8 [cis e cis]
  | d4 fis, | g a
  | b2 | cis | d4 g | a a,
  \tuplet 3/2 4 {
    | d8 fis b d a fis
    \hideTuplets
    g8 a e g a e | d fis a d a fis
    | g a e g a e
    | d fis a
    \tenorClef
    d cis d
    | e d e fis e fis | g fis e d cis b
    | a #(if facsimile #{ _[ #} #{ [ #} ) gis a ] b a g
  }
  fis8 [a d fis ] | fis[ e d cis]
  | d2 ( | d | d | d)
}
uptoEnd = \relative c' {
  \tenorClef
  e2 | #(if facsimile #{ dis ( #} #{ ees ( #}  ) \cAccOn d  ) \cAccOff | #(if facsimile #{  cis2 ( #} #{ des2 ( #} )  | \cAccOn c ) \cAccOff
  | b4 a ~ | a  g
  | fis8 [ b, b b ]
  | e'2 ( | #(if facsimile #{ dis2 #} #{ ees2 #} ) | \cAccOn d \cAccOff
  | #(if facsimile #{ cis2 #} #{ des2 #} ) | \cAccOn c ) \cAccOff
  | b4 a | g fis
  | e8 e e4
  \clef bass \key g \major
  | g4. a8 b4 b | b2 | c8 [b a g ]
  | fis \grace g8 fis16 e fis8 g | a4 a | a2 | b8 [ a g fis]
  | g, [b d g ]
  | fis4 a
  | g,8 [ b d g ]
  | fis4 a
  | b8 [ g e' d ] | c [b a g]
  | d2
  \tuplet 3/2 4 {
    d8 e \cAccOn fis \cAccOff g a b
    | c b a e' d c | b a g d' c b
    | c b a e' d c
    | b d c b a g
    | e' dis e g fis e
    | \cAccOn d8 \cAccOff g fis e d c
    | b e d c b a
  }
  | a4 g | b4. c8
  | c [ b a g ]| g[ fis b a] | a[ g fis e]
  | c'4. b8
  | b4 a8 g | g [fis fis e]
  | e4 dis
  | b8 [dis fis a]
  | g4 r
  | b,8 [dis fis a]
  | g4 r
  | dis2 | e | c | b ( | b' )
  | a4 a | fis fis | g g | b b | a a
  | fis fis | g8 [ g d b ]
  | \bentKnee g16 ( d'' cis d e d c b )
  | gis8 ( a ) r b
  | r c r b
  | gis ( a ) r b | r c r b
  | a [ c e d  ]| c [b a g ]
  | fis ( [ g gis a ]| ais [ b c cis )]

}
