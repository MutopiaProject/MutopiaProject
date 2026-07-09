sectionA = \relative c' {
  \set Timing.beamExceptions=\beamExceptions {
    32 [ 32 32 32] 32 [ 32 32 32] 32 [32 32 32] 32 [ 32 32 32]
    | \tuplet 3/2 { 16 [ 16 16] 16 [ 16 16] 16 [16 16 ] 16 [ 16 16] }
    | 16 [ 16 16 16 ] 16 [ 16 16 16 ]
    | 8 [ 8 8 8 ]
  }
  r8
  | r b, c d
  \bentKnee
  | g, [ g' g, ] b'
  | #(if facsimile #{ a4*1/2 #} #{ a8 #} ) a16 b32 c b8 a
  | g [ d e fis  ]
  | g [ d e fis ]
  | \bentKnee g [ a, b c ]
  | c [ c d d ]
  | g, r \tenorClef r d''32 ( e fis g )
  | g,8. ( gis16 ) a16 #(if facsimile #{ ^[ #} #{ [ #} )  c fis, a ]
  | a32 ( g fis g ) #(if facsimile #{g4*1/2#} #{ g8 #} ) g32 ( a b c ) d ( e fis g )
  | g16 fis e d c d32 e d16 c
  | ais4 b32 d cis d e d c b
  | b16 a a4 g16 b
  | d16 c c4 b8 | e16. dis32 e dis e dis e d c b c b a g
  \showUrtextTuplets
  \tuplet 3/2 8 {
    fis16 [g a]  b [c d]
  }
  d,8
  \clef bass fis16 [ b ]
  | b16 cis32 b a4 g8
  | g16 fis #(if facsimile #{ fis8. #} #{ fis8 ~ fis16 #} ) fis16 [ g dis ]
  | fis e cis' b a g fis e
  | e32 ( d g fis ) #(if facsimile #{ ~ #} )  fis4 fis8
  | g2
  | fis4. b16 a
  | a8 g16 fis fis8 e16 d
  \bentKnee
  | a8 [ a' a, ] fis'16 b
  | b c32 b a4 g8
  | g16 fis #(if facsimile #{ fis8. #} #{ fis8 ~ fis16 #} ) fis16 [ g dis ]
  | fis16 e cis' b a g fis e
  | e32 [ ( d #(if facsimile #{  g32 ) ( #} #{ g32 #} ) fis ) fis8 ] fis16 a fis a
  | g a g a fis8 fis16 a
  | g a g a fis8 fis
  | \bentKnee g8 [ g a a, ]
  \tuplet 3/2 8 {
    d16 ( dis ) e\st eis ( fis ) g\st
    \hideTuplets
    gis ( a ) g\st fis ( e ) dis\st
    | cis ( #(if facsimile #{ _[ #} #{ [ #} )  ( d ) dis\st ] e ( eis ) fis \st g ( e ) d\st cis ( b) a\st
    | d ( dis ) e\st eis ( fis ) g\st gis ( a ) g\st fis ( eis ) dis\st
    | cis ( #( if facsimile #{ _[ #} #{ [ #} ) d ) dis\st ] e ( eis ) fis\st g ( e ) d\st cis ( b ) a\st
  }
  | d4 fis | g g
  | \bentKnee fis8 g a a,
  | d8 r \tenorClef fis'8. a16
  | g8 [ e #(if (not facsimile ) #{ ] #} ) cis8. #(if (not facsimile) #{ [ #} ) e16 ]
  | d4 fis8. a16
  | g8 [ e #(if (not facsimile ) #{ ] #} ) cis8. #(if (not facsimile) #{ [ #} ) e16 ]
  \tuplet 3/2 8 {
    d16 [ fis, g ] a [ b cis ]
    d [ cis b ] a #(if facsimile #{ _[ #} #{ [ #} ) g fis ]
    | ais [ b b ] fis [ g g] dis [ e fis ] g #(if facsimile #{ _[ #} #{ [ #} )ais b]
  }
  | a8 #(if facsimile #{ [ #} ) g32 fis e d #(if facsimile #{ ] #} ) e4\trill
  \clef bass
  | d16\st cis\st d \st e\st fis\st g\st a\st fis\st
  | e d cis d e fis g e
  | d cis d e fis g a fis
  | e d cis d e fis g e
  | g4 fis8
}


sectionB= \relative c' {
  a32 ( b cis d )
  | d,8. dis16 e g cis, e
  | e d d8 d32 e fis g a b cis d
  | d16 cis b a g a32 ( b ) a16 g
  | eis8 fis16 a gis ( a ) g ( a)
  | fis8. a16 gis ( a ) g ( a )
  | fis8. d'16 cis ( d ) c ( d )
  \tuplet 3/2 {
    | b16 ( d ) c\st b ( a) g\st fis ( b) a\st g ( fis ) e\st
  }
  g32 ( fis e d ) d16 b a g fis e
  | d8 fis g a
  \bentKnee
  | d,8 [ d' d, d'] | e4 fis
  | r16 g fis g g,8 b
  | cis4 dis | e 16 e dis e \bentKnee e,8 g'
  | a4 g8 r
  | dis4 e8 r
  | a,4. ais8
  \bentKnee
  | b8 b' b,4
  | dis2 | e | dis | e
  | a16 gis a g fis eis fis e
  | \cAccOn d4 \cAccOff fis
  | g b, | c e | c c8 c
  |  #(if facsimile #{ d [ d d ] #} #{ d d d #} ) b'16 e
  | e fis32 e d4 c8
  | c16 b #(if facsimile #{ b8. #} #{ b8 ~ b16 #} ) b16 [ c gis ]
  | b a fis' e d c b a
  | fis4 b8 b | c2
  | b4. e16 d
  | d8 ( c16 ) b b8 ( a16 ) g
  | g4 ( fis 8) b16 [ e ]
  | e fis32 e d4 c8
  | c16 b #(if facsimile #{ b8. #} #{ b8 ~ b16 #} ) b16 [ c gis ]
  | b a fis' e d c b a
  | a32 ( g c b ) b8 b,16 d b d
  | c d c d b8 b16 d
  | c d c d b8 b
  | c c d d
  | \tuplet 3/2 8 {
    g16 ( #(if facsimile #{ aes ) #} #{ gis ) #} ) a\st
    #(if facsimile #{ bes ( #} #{ ais ( #} ) b ) c\st
    cis ( d ) c\st b ( a ) g \st
    | fis ( g ) gis\st a ( ais ) b\st  c (a ) g\st  fis ( e ) d\st
    | g ( #(if facsimile #{ aes ) #} #{ gis ) #} ) a\st  #(if facsimile #{ bes ( #} #{ ais ( #} ) b ) c\st cis ( d ) c\st b ( a ) g\st
    | fis ( g ) gis\st a (ais ) b\st c ( a) g\st fis( e) d\st
  }
  | g4 b, | c2 | b8 c d d 
  | g, 4 b'8. d16 | c8 [ a fis8. a16 ] | g8 r b8. d16
  | c8 [ a fis8. a16 ]
  \tuplet 3/2 8 {
    | g16 b c d e fis g fis e d c b 
    | dis e e b c c gis a b c d e
  }
  | d8 [ c32 b a g] a4\trill 
  | g16\st fis\st g\st a\st b\st c\st d\st b\st | c d c b a b c a
  | b a g a b c d b
  | c b a b c b c a 
  \partial 4.
  \bentKnee
  | b8 [ b, b ] 
    
}

