signatures = {
  \clef bass
  \time 2/4
  \key c \major
}
themeA = \relative c' {
  %% 01
  | g4 c16 b a g
  | gis4 a8 c | b16 c d e f d c b | d c b c g4
  | a8. f16 d' c b a
  | g8. a32 b c16 c d e
  | g f e d f e d c
  | e4 ( d )
}
themeB = \relative c' {
  d8. b16 g8 g
  | #(if facsimile #{ g16 [ fis fis8. ] d'16 d d   #} #{ g16 fis fis8 ~ fis16 d'16 d d #} )
  | d16 b \cAccOn f' \cAccOff d b a g f
  | #(if facsimile #{ e16 [ e e8. ] c'16 e c   #} #{ e16 e e8 ~ e16 c'16 e c #} )
  | #(if facsimile #{ b16 [ a a8. ] d16 f d   #} #{ b16 a a8 ~ a16 d16 f d #} )
  | c8 b16 g' f e d c
  | b a f' d e c d b
  | b4 c
}
varOneA = \relative c' {
  \clef bass
  \time 2/4
  | e,4 e 
  | f f | g g 
  | c, \tuplet 3/2 8 { c16 [ c d ] e 
                       #(if facsimile #{ ^[ #} #{ [ #} ) d c] }
  | \bentKnee f8 f, r f'8
  | \bentKnee e8 e, r e'
  | b4 c8 fis
  | \bentKnee g8 g, g'4
}
varOneB = \relative c' {
  | \repeat tremolo 4 g,8
  | \repeat tremolo 4 a8
  | \repeat tremolo 4 b8
  | c8 c e4 | f f | g8 g c, e
  | f4 \bentKnee g8 g, | c8 g c,4
}
varTwoA = \relative c' {
  \clef bass
  \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 1,1,1,1
  g32 a g f e f e d c d e f g a b c
  | b32 a gis a  gis a gis a a b c cis d e f d
  | b\trill a b c d\trill c d e f16  d c b 
  | \grace d8 c16 b32 a g f e d c8 [ g' ]
  | a32 f g a b c d e f e f e f16 a,
  | g32 e f g \grace a8 a32 g a b \grace d8 c32 b c d e f fis g
  | g16 [ f e d ] f [ e d c ]
  | e4 d
}
varTwoB = \relative c' {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 1,1,1,1
  cis32 d e d c b a g fis g a g d' b a g
  | #(if facsimile #{ fis32 [ g a g fis8. ] d'16 [ d d ] #} #{ fis32 g a g fis8 ~ fis16 d' [ d d ] #} )
  | d32 c b c d c d e f e d c b a g f
  | f16 [ e e8]  c'32 b c d f e d c
  | b a gis a a b c cis d cis d e g f e d
  | a8 [ b16 g' ] f32 e d e d c b c
  a b c cis d e f d e f e cis d e d b
  #(if facsimile #{
  \tweak self-alignment-X #CENTER
  \tweak direction #DOWN
  \textMark \markup \italic { \hspace #4 au Grazioso Sans reprise }
       #})
  | d4 c
}

