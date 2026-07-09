uptoFine = \relative c' {
  bes,16 d f d bes d f d ees f d f c f bes, f'
  | a, c f c a c f ees
  | d f c f bes, f' c f
  | d8 [ bes c ees ]
  | d [ bes c ees ]
  | d [ ees f g ]
  |  f f f4
  | \tenorClef d'8 d ees16 d c bes
  | a8  [ bes\trill c ] r
  | ees ees f16 ees d c
  | bes8 [ c\trill d ] r
  \clef bass
  d,8 bes c ees d bes c ees d c16 bes \bentKnee f'8 f,
  | bes f bes, r
}
uptoSegno = \relative c' {
  r8 c ( d ees ) | d ( bes d bes ) | ees ( c ees c )
  | d4 d, | ees2 d
  | c4 a8 bes \bentKnee f8 f' \bentKnee f,8 d''16 bes
  %% 025
  | bes16 a #(if facsimile #{ a8. #} #{ a8 ~ a16 #} ) a16[  bes g ]
  | g16 f  #(if facsimile #{ f8. #} #{ f8 ~ f16 #} ) cis'16 [ d bes ]
  | bes16 a #(if facsimile #{ a8. #} #{ a8 ~ a16 #} ) a16 [ bes g ]
  | g16 f f8 a,4
  %% 24
  | bes8 c d c
  | bes bes bes16 c d c
  | bes8 bes b b
  |  #(if facsimile #{ c8 [ c8 c ] #} #{ c8 c c #} ) a'16 g
  %% 33
  | f8 [ f g g ]
  | a8. bes32 g a8 a
  | bes bes e16 d c bes | a f c a \bentKnee f8 f'
  %% 37
  | g e f a
  | g e f16 a d c
  | c bes bes a a g g f
  |   #(if facsimile #{ 
    \bentKnee c8 [ c' c, ] #} #{ c8 c' c, #} )
  \tenorClef
  c'16 [ bes ] 
  | a8 a bes bes
  | c8. d32 e f8 f16 e
  | d8 d g16 f e d
  | d c c8 r a16 c
  | bes8. c16  #(if facsimile #{ a _[ \grace a8 a32  g ] #} #{ a \grace bes8 a32 g  #} )  a16 c
  | bes8. c16 a c f e
  | e d c bes a8 g\trill
  \set Timing.beamExceptions = \beamExceptions { \tuplet 3/2 8 { 16 [ 16 16 ] 16 [16 16] 16 [16 16] 16 [ 16 16]} }
  \tuplet 3/2 8 {
    \showUrtextTuplets
    f16 a c f e d 
    \hideTuplets
    c b c d c bes
    | a c bes a g f e g f e d c
    | f a c f e d c b c d c bes
    | a c bes a g f e g f e d c
  }
  \bentKnee f16 f' e ees d des c b
  | \cAccOn bes \cAccOff  a g f e d c b
  | \bentKnee \cAccOn bes16 \cAccOff g'' #(if facsimile #{ g8. #} #{ g8 ~ g16 #} ) e16 [ c bes ]
  | a f' d bes a8 g
  | f4 e | f g f e f g f r
  | R2*1
  \clef bass
  | g8 [ e c e ] f [ bes, c c ]
  | f,4 r8 f e [ f g bes ] a [c f f, ]
  | e [ f g bes ]
  | a c f16 ( g ) gis ( a )
  #(if facsimile
       #{
         \tenorClef
          ees'8 r c16 ( d ) dis ( ees )
         | ees8 r c16 ( d ) dis ( ees )
         | ees \cAccOn f (\cAccOff g8 ) r16 f ( g8 )
         | r16 f!16 ( g ) fes ees4
       #}
       #{
         a8 r f16 ( g) gis ( a ) | a8 r f16 ( g) gis ( a )
         | a ( b  c8 ) r16 b ( c8 ) | r16 b ( c ) bes a4 |r16 b ( c ) bes a4
       #} )
}

uptoEnd = \relative c' {
  \clef bass
  g16 ( a bes a ) g ( bes a g )
  | fis ( g a g ) fis ( a g fis )
  | g8 [ bes, c d ] 
  | g,4 r
  | g'16 ( a bes a ) g ( bes a g )
  | fis ( g a g ) fis ( a g fis )
  | g8 [ bes, c d ]
  | \bentKnee g,8 g' g,4
  \tenorClef
  | bes'4 d 
  | f4. g16 f 
  | f ees d ees fis ( g f ees )
  | ees ( d cis d ) d4 
  | d16 ( c b c ) d ( ees d c )
  | c ( bes a bes ) bes8 d16 bes
  | a8 [ ( c ) bes ( c) ]
  | c8. ( ees16) d8 d16 ( bes )
  | a8 [ ( c ) bes ( d ) ]
  | c8. ees16 d8 f16 fis
  | g16 ( ees d c ) b ( c ees g )
  | f ( d c bes ) a ( bes d f )
  | f ( d ees c d bes c a )
  | c4 bes
  \clef bass
  | b,16 \< ( c ) d\st ees\st d ( ees ) f\st g\st 
  | aes \> ( g) f\st g\st f \! ( ees ) d\st c\st
  | b ( c ) d\st ees\st d ( ees ) f\st g\st
  | aes ( g ) f\st g\st f ( ees) d\st c \st
  \override Staff.TimeSignature.stencil=##f
  | b2 c b \repeat tremolo 4 c8
  | c4 d ees d c cis
  | d16 ( cis d cis d cis d cis )
  | d16 ( cis d cis d cis d cis )
  | d16 ( cis d cis d cis d cis )
  | ees ( d) ees\st ees\st ees ( d ) ees\st ees\st
  | d ( ees c d bes c a bes )
  \bentKnee 
  | g ( g' bes a g bes a g )
  | fis ( g a g fis a g fis )
  | \bentKnee g8 [ bes,] c d
  | g,4 r
  | g'16 ( a bes a g bes a g ) 
  | fis ( g a g ) fis ( a g fis)
  | g4 ees
  | d8 fis4 g8
  | fis8 ( g fis g) 
  | fis2\fermata  
}

