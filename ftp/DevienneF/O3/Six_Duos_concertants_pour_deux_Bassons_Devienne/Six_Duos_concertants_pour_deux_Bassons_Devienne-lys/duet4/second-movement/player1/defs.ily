uptoFine = \relative c' {
  d8 d ees16 d c bes
  | a8 bes c r
  | ees8 ees f16 ees d c
  | bes8 c d r
  \tenorClef
  | e16 f d bes bes a g f
  | e' f d bes bes a g f
  | c' bes d c ees d f ees
  | d4 c
  \clef bass
  | bes,16 d f d bes d f d | ees f d f c f bes, f'
  | a, c f c a c f c
  | d f c f bes,32 [ f'g a ] bes [ c d ees]
  | e16 f d bes bes a g f
  | e' f d bes bes a g f
  | bes b c d f ees c a | \partial 2. c4 bes8\fermata
}
uptoSegno = \relative c' {
  \tenorClef
  \partial 8 f16 g
  | f8 #(if facsimile #{ [ #} ) f f f #(if facsimile #{ ] #} )
  | f f16.g32 f16. g32 f16. g32
  | f8 #(if facsimile #{ [ #} ) f f f #(if facsimile #{ ] #} )
  | f8 f16.g32 f16 f fis fis
  | #(if facsimile #{ f16 #} #{ fis16 #} ) g f ees d c b c
  | e16 f ees d c bes a bes
  | ees8 ees4 d8
  | d16 c c8 r f16 d
  | d [ c #(if facsimile #{ c8.] #} #{ c8 ]~ c16 #} ) cis16 d bes
  | bes a a8 r16 e' f d
  | d [ c #(if facsimile #{ c8. ] #} #{ c8 ] ~ c16 #} ) cis16 d bes
  | bes16a a8 r f'16 e
  | e8 (d16 ) c c8 ( bes16 ) a
  |  #(if facsimile #{ a _[ g g8. ] #} #{ a g g8 ~ g16 #} ) a16 bes c
  | e16 d c bes   #(if facsimile #{ a _[ #} #{ a [ #}  ) g f g ]
  | f4 e8 c'16 bes
  | a8 #(if facsimile #{ [ #} ) a bes bes #(if facsimile #{ ] #} )
  | c8. d32 e f8 f16 e
  | d8 d g16 f e d
  | d16 c c8 r a16. #(if facsimile #{ c16*1/2 #} #{ c32 #} )
  | bes8. c16 a #(if facsimile #{ _[ #} ) a32 gis #(if facsimile #{ ] #} ) a16 c
  | bes8. c16 a c f e
  | ees d d c c bes bes a
  | \stemUp a4 _( g8 ) a16 g \stemNeutral
  | f c f a g e g bes
  | a f bes g a f c' a
  | bes f bes d e d c bes
  | #(if (not facsimile ) #{ \clef bass #} ) a f c a
  \clef bass
  \bentKnee f8 f'
  #(if facsimile #{ \set Timing.beamExceptions = \beamExceptions { 8 [ 8 8 8] } #} )
  | \bentKnee d e f f,
  | \bentKnee d' e f f,
  | bes bes c c
  | f4 e | f g | f e | f g| f r
  | R2*1
  | g8 e c d f bes, c c
  \tenorClef
  \set Timing.beamExceptions = \beamExceptions { \tuplet 3/2 8 { 16 [ 16 16 ] 16 [16 16] 16 [16 16] 16 [ 16 16]} }
  \tuplet 3/2 8 {
    #(if (not facsimile ) #{ \showTuplets #} )
    f16 a c f e d
    \hideTuplets
    c b c d c bes
    | a c bes a g f
    e g f e d c
    | f a c f e d c b c d c bes | a c bes a g f e g f e d c
  }
  \bentKnee
  f16 f' #(if facsimile #{ e16 #} #{ fes16 #} ) ees d des c
  #(if facsimile #{ b16 #} #{ ces16 #} )
  | bes  a g f e d c b
  | \bentKnee \cAccOn bes \cAccOff g'' #(if facsimile #{ g8. e16 [ c bes] #} #{ g8 ~ g16 e16 c bes #} )
  | a16 f' d bes a8 g
  | f4 \clef bass a16 bes b c
  | c8. \grace ees8 d16 c16 bes g e
  | f4 a16 bes b c
  | c8. \grace ees8 d16 c 16 bes g e
  | f8 r a16 bes b c
  | c4 a16 bes b c
  | c4 16 bes b c
  | c d ( es8 ) r16 d ( ees8 )

}
uptoEnd = \relative c' {
  \tenorClef d8 d r d (
  | ees ) ees r ees
  | ees16 d c bes bes a g fis
  | g fis g a bes a bes c
  | d8 d r d | ees ees r ees
  | ees16 d c bes bes a g fis
  | a4 g
  #(if facsimile #{ \set Timing.beamExceptions = \beamExceptions { 8 [ 8 8 8] } #} )
  | bes8 d bes d | a c a c
  | g bes g bes
  | f a f a
  \clef bass
  | ees g ees g | d f d bes
  \override Staff.TimeSignature.stencil=##f
  \time 2/4
  | c16 ees f ees d f d bes | a c a f bes d f d | c ees f ees d f d bes
  | a c a f bes8 d
  | ees r r ees
  | d r r d
  #(if facsimile #{ \set Timing.beamExceptions = \beamExceptions { 8 [ 8 8 8] } #} )
  \bentKnee
  | d ees f f,
  | bes16 d f bes bes,4
  \tenorClef
  | f''4 \grace ees8 d4
  | \grace c8 b2
  | f'4 \grace ees 8 d4
  | \grace c8 b2
  #(if facsimile #{ \set Timing.beamExceptions = \beamExceptions { 8 [ 8 8 8] } #} )
  | g8 b d f
  | ees8 [ g ] f16 ees d c
  | g8 b d f
  | f16 ees d c c4
  | ees8 ees4 d8
  | c c4 bes8
  | bes8 a a g
  | g4 fis
  | d'4 a
  | bes8 g r g
  | r g' ees cis
  | d2
  \time 2/4
  | d8 d r d8 ( | ees ) ees r ees
  | ees16 d c bes bes a g fis
  | g fis g a bes a bes c
  | d8 d r d ( | ees ) ees r ees 
  | ees16 d c bes c bes a g
  | d'4. cis8 | d8 ( cis d cis ) | d2\fermata
}

