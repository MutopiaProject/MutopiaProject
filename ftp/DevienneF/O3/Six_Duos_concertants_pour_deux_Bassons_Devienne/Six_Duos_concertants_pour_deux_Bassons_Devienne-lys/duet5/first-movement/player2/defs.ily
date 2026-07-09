sectionA = \relative c' {
  \clef bass
  %% 01
  f,,16 f' e f a f e f c f e f a, f' e f
  | f, a c f a f c a f4 r
  | r8 a' a a \grace bes8 a g16 a bes8 fis
  | a g g g g16 a bes  a g f e d
  | c, c' b c d c b c g c b c e, c' b c
  | c, c' bes c d c bes c c,4 r
  | r8 g''8 g g g a16 bes a8 g
  | e2 f8 #(if facsimile #{ _[ #} #{ [ #} ) d c bes ]
  | a4 a a a | bes bes bes'2
  | a4. c16 bes a8 g fis g | g \cAccOn f \cAccOff bes a a f c bes
  | a1
  | bes4 bes bes8 a bes c
  | bes4 bes bes bes
  | c c, c g''8. g16
  | c2 c8 b16 c d c b a
  | a8 g g4 g8 fis16 g a g f e
  | d8 f'4 d b f8
  | f e e4 r8 g g g
  | gis a a a a16 gis a b c8 c
  | c4 d16 c b c g4. g8
  | gis8 a a a a16 gis a b c8 c
  | c4 d16 c b c g4. g8
  | f8 b d c b a g f
  | e g' f e d c b c
  | b 16 a d c b a g f e4 d
  \tuplet 3/2 4 {
    \showUrtextTuplets
    c8 e d\trill c #(if facsimile #{ _[ #} #{ [ #})  b c ]
    \hideTuplets
    d f e d\trill #(if facsimile #{ _[ #} #{ [ #} ) c d ]
    | e g f e d c b d c b a g
    c8 e d\trill c #(if facsimile #{ _[ #} #{ [ #})  b c ]
    d f e d\trill #(if facsimile #{ _[ #} #{ [ #} ) c d ]
    | e g f e d c b d c b a g
  }
  c4 r r16 c b c g8 e
  | c4 r r16 c' bes c g8 e
  | c4 r e16 f g f b c d e | f4 f f f | e f g g,
  | c2 e | a, b | c e
  | f4 a8 f g4 g, | c c c r
}

sectionB= \relative c' {
  g2 a8 g f e | e d d2 e4
  | f4. g16 a a8 g g f | f e a g g4 r
  | c16\trill bes c d e d e f g8 e d c
  | b2 a8 c16 b d c b a | g a b c b a g f e4 d\trill
  | f16 #(if facsimile #{ ^[ #} #{ [ #} ) e d c ] g8 e c4 r | R1*1
  | g''2 g8 f f e
  | e2 \tuplet 3/2 4 { e8 g f e d cis }
  | e16 d g f f4 r2
  | f2 d | e e8 f e d | cis1
  | d8 f a d d,4 f8 fis
  | g4. e8 f4 d
  | g4. e8 f 4 d
  | bes4 g8 a bes a g gis | a4 a a r
  | R1*1
  | \tuplet 3/2 4 {
    g8 bes a g bes d
    \bentKnee fis g g, e' f g,
  }
  e'2 r4 c,
  | \tuplet 3/2 4 {
    f8 a g f a c \bentKnee e f f, \bentKnee d' ees f,
  }
  | \stemUp d'2.  c4 | bes c d c | bes c d c \stemNeutral
  | bes bes bes b
  | c c c c'8. c16
  | f2 f8 e16 f g f e d
  | \grace d8 c2 c8 b16 c d c bes a
  | g8 g'4 e c \cAccOn bes8 \cAccOff
  | bes8 a a4 r8 \tenorClef c8 c c
  | cis d d d d16 cis d e f8 f
  | f4 g16 f e f c4. c8
  | cis8 d d d d16 cis d e f8 f
  | f4 g16 f e f c4.c8
  | bes8 e g f e d c bes
  | a c f e d c bes a
  | cis16 d e f e d c bes a4 g\trill
  |\tuplet 3/2 4 {
    f8 a g f\trill e f 
    g #(if facsimile #{ ^[ #} #{ [ #} ) bes a]  g\trill f g 
    | a #(if facsimile #{ ^[ #} #{ [ #} ) c bes ]  a g f e g f e d c
    | f a g f\trill e f g #(if facsimile #{ ^[ #} #{ [ #} ) bes a ]  g\trill f g 
    | a #(if facsimile #{ ^[ #} #{ [ #} ) c bes ] a g f e g f e d c
  }
  | \clef bass f4 r r16 f e f c f a, c
  | f,4 r r16 f'16 e f c f a, c
  | f,2 a | bes4 bes bes bes | a bes c c,
  | f'2 a | d, e | f a,
  | bes c4 c
  | f, f f r

}

