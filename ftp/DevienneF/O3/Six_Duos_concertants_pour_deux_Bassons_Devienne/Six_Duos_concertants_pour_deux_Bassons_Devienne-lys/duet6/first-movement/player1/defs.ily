sectionA = \relative c' {
  \tenorClef
  d32 ( e fis g )
  | g,8. gis16 a16. ( c32 ) (fis,16. a32 )
  \set Timing.beamExceptions=\beamExceptions { 
    32 [ 32 32 32] 32 [ 32 32 32] 32 [32 32 32] 32 [ 32 32 32]  
   | \tuplet 3/2 { 16 [ 16 16] 16 [ 16 16] 16 [16 16 ] 16 [ 16 16] }
   | 16 [ 16 16 16 ] 16 [ 16 16 16 ]
   | 8 [ 8 8 8 ]
  }
  | a16 #(if facsimile #{ _[ #} #{ [  #} ) g g8 ] ( g32 a ) b c d e fis g
  | g16 fis e d c d32 e d16 c
  | ais8 b16 ( d ) cis16. [ ( d32 ) c16. ( d 32) ]
  | b8. d16 cis16.[ d32 c16. d32]
  | b8. #(if facsimile #{ ^[ #} #{ [ #} )  g16 ] fis16.[ g32 f16. g32]
  \showUrtextTuplets
  \tuplet 3/2 8 {
    \bentKnee g16 g' fis e d c
    \hideTuplets
    b e d c b a
  }
  | c32 ( b a g ) \stemDown g16 \noBeam \stemNeutral \clef bass e16 d c b a
  | g8 b c d
  | \bentKnee g, g' g, g' | d4 fis
  | r16 g fis g g,8 b
  | c4 b | a g
  | c8 c c c16 cis | d8 d, d \noBeam
  \tenorClef
  a''16 d
  | d16 e32 d cis4 b8
  | b16 [ a  #(if facsimile #{ a8.] #} #{ a8 ] ~ a16 ] #} ) ais16 #(if facsimile #{ _[ #} #{ [ #} ) b fis ]
  | \cAccOn a16 \cAccOff g e' d cis b a g
  | g32 #(if facsimile #{ _[ #} #{ [ #} ) fis b a  a8 ] d16 fis e d
  | d8. b16 b8. d16 | d8 a a d16 cis
  | c8 b16 a a8 g16 fis
  | fis4 e8 a16 d | d16 e32 d cis4 b8
  | b16  a #(if facsimile #{ a8. #} #{ a8 ~ a16 #} ) ais16 #(if facsimile #{ _[ #} #{ [ #} ) b fis ]
  | \cAccOn a16 \cAccOff g e'd cis b a g
  |  #(if facsimile #{ g32 _[ fis b a a8 ] #} #{ g32 fis b a a8 #} )d16 fis e d
  | cis8. [ d32 e]  d16 a fis' d
  | cis8. [ d32 e] d16 a fis' d
  | cis16 b g' e e d d \cAccOn cis \cAccOff
  | d8 r fis8. a16
  | g8 e cis 8. e16
  | d8 r fis8. a16
  | g8 e cis8. e16
  \tuplet 3/2 8 {
    \bentKnee d16 fis, g a b c d c b a g fis
    | ais16 b b fis g g  dis e fis g a b
  }
  a8 [ g32 fis e d ] e4\trill
  \clef bass
  \tuplet 3/2 16 {
    | d16 (  #(if facsimile #{  ees ) #} #{  dis ) #}  ) e\st
    #(if facsimile #{ f16  #} #{ eis16  #} ) ( fis ) g\st gis ( a ) g\st fis ( e ) d\st
    | cis ( d ) dis\st e ( eis ) fis\st g ( e ) d\st cis ( b ) a\st
    | d16 (  #(if facsimile #{  ees ) #} #{  dis ) #}  ) e\st
    #(if facsimile #{ f16  #} #{ eis16  #} ) ( fis ) g\st gis ( a ) g\st fis ( e ) d\st
    | cis ( d ) dis\st e ( eis ) fis\st g ( e ) d\st cis ( b ) a\st
  }
  | d8 r fis4 | g8 e g e 
  | \bentKnee fis8 g a a,
  | d16 [ #(if facsimile #{ a'16*1/2 b ] #} #{ a'32 b ] #} ) a16 a \repeat tremolo 4 a16
  | fis'4. fis32 e d cis 
  | d16 [ a32 b]  a16 a \repeat tremolo 4 a16
  | fis'4. fis32 e d cis | e4 d8
}


sectionB= \relative c' {
  r8 
  | r fis,, g a 
  |\bentKnee d, d' d, fis'								
  | e4 e16 [ fis32 g ] fis16 e
  | d8 a b cis | d a b cis 
  | d d e fis
  | \bentKnee g g a a,
  | d4 r8 a'32 ( b cis d )
  | d,8. dis16 e16. [ ( g32 ) cis,16. ( e32 ) ]
  | e16 d d8 d32 ( e fis g ) a ( b cis d )
  | d16 \cAccOn c \cAccOff b c c d32 e d16 c
  | ais4 ( b8.)  b16 
  | b a fis' e dis c b a
  | a g g8 r16 b e b
  | c8. [ d32 c ] b8. b16
  | a8. [ b32 a ] g16 gis a b 
  | d c b a a \cAccOn g \cAccOff fis e
  | e4 dis 
  | \tuplet 3/2 8 {
    b16 dis fis a b dis fis e \cAccOn dis \cAccOff c b a
    | g e g b g b e b a g fis e
    | b dis fis a b dis fis e \cAccOn dis \cAccOff c b a
    | g e g b g b e b a g fis e
    | c' d b c d b a b gis a b g
    | fis a g fis e d c b c e d c
  }
  b32 d c b c d e fis g a b c d e fis g
  | fis e dis e fis g fis e dis c b c \cAccOn dis \cAccOff e d c
  | b a gis a d c b c e d c b c b a gis
  | g fis e d d8 r \tenorClef d'16 g
  | g8 \grace { a16 g } fis4 e8
  | e16 d #(if facsimile #{ d8. #} #{ d8 ~ d16 #} ) dis16 [ e b ]
  | d c a' g fis e d c
  | c4 b8 g'16 g
  | g8. e16 e8. g16
  | g8. d16 d8 g16 fis
  | fis 8 e16 d d8 c16 b
  | b4 a8 d16 g
  | g8 \grace { a16 g } fis4 e8
  | e16 d #(if facsimile #{ d8. #} #{ d8 ~ d16 #} ) dis16 [ e b ]
  | \cAccOn d16 \cAccOff c a' g fis e d c
  | c32 b e d d8 cis32 d e d c b a g
  | fis8. [ g32 a ] g16 d' b g
  | fis8. [ g32 a]  g16 g' fis f
  | dis32 e fis g fis e d c b8 a
  | g4
  \clef bass b8. d16
  | c8 [ a fis8. a16 ]
  | g4 b8. d16
  | c8 [ a fis8. a16 ]
  \tuplet 3/2 8 {
    g16 b c d e fis g fis e d c b
    | dis e e b c c gis a b c d e
  }
  | d8 [ c32 b a g] a4\trill
  \tuplet 3/2 8 {
    | g16 ( #(if facsimile #{ aes ) #} #{ gis ) #} ) a\st 
    #(if facsimile #{ bes ( #} #{ ais ( #} ) b ) c\st 
    cis ( d ) c\st b ( a ) g\st
    | fis ( g ) gis\st a ( ais ) b\st c ( a ) g\st fis ( e ) d\st
    | g16 ( #(if facsimile #{ aes ) #} #{ gis ) #} ) a\st 
    #(if facsimile #{ bes ( #} #{ ais ( #} ) b ) c\st 
    cis ( d ) c\st b ( a ) g\st
    | fis ( g ) gis\st a ( ais ) b\st c ( a ) g\st fis ( e ) d\st
  }
  | g4 b, | c2
  | b8 c d d,
  | g16 \noBeam \tenorClef d''32 e d16 d \repeat tremolo 4 d16
  | fis4. g32 fis e d
  | g32 d  e16 d16 d \repeat tremolo 4 d16
  | fis4. g32 fis e d 
  | \bentKnee g8 [ g, g ]
    
}

