sectionA = \relative c' {
  \clef bass
  r8
  | bes,4 bes bes bes | a a a a | bes d ees f
  | bes, r r r8 f'8
  | bes4 bes,,2 bes''8 d
  | c4 f,,2 c''8 ees
  | d8 f4 d16 bes c8 ees4 c16 a
  | \tuplet 3/2 4 {
    bes8 f d bes f d
    \hideTuplets
    bes4*3/2 r
    | f'8 a c f c a f4*3/2 r
    | bes8 d f bes f d
  }
  bes4 d
  | \repeat tremolo 4 ees8  \repeat tremolo 4 ees8 
  | \repeat tremolo 4 d8 \repeat tremolo 4 d8 
  | \repeat tremolo 4 c8 \repeat tremolo 4 a8
  | \repeat tremolo 4 bes8 \repeat tremolo 4 bes'8
  | e,4 ( g f a ) | g ( bes a f)
  | e ( g f a ) | g ( bes a f )
  |\bentKnee bes,8 bes' bes2 a4
  | a8 g g2 f4
  | bes,2. b4
  | \repeat tremolo 4 c8 c4 r
  \tenorClef
  | c'2 e8 d c bes
  | bes4 a a 8 bes b c
  | c4. f8 e d c bes
  | bes4 a a8 bes c #(if facsimile #{ c!8 #} #{ cis8 #} )
  | d8 \grace ees8 d16 c d8 e g f e d
  | b4 c8 d16 c bes8 a g f 
  | \bentKnee e d d' c c bes bes a
  | a2 ( g4 ) r
  | a2 c8 bes a g 
  | g4 f f8 g gis a
  | a4. d8 c bes a g
  | g4 f f8 g a a
  | bes8 \grace c8 bes16 a bes 8 c e d c bes
  | gis4 a \clef bass a,2
  | bes4 bes c c | f a g8 e g e
  | f4 a g8 e g e
  | f4 a, bes c | bes bes c c 
  \tuplet 3/2 4 {
    \showUrtextTuplets 
    f8 c' c c b c
    \hideTuplets
    bes g c bes g c
    | a c c c b c bes g c bes g c
    | a f' #(if facsimile #{ ees8 #} #{ e8 #} ) f \cAccOn ees \cAccOff cis d c bes a g fis
    | g bes c d c bes
  }
  a4 g
  | f4. a,8 g bes c bes | a4. a'8 g bes c bes
  | a4 a a r8
}

sectionB= \relative c' {
  r8
  | a1 | g2 f | e1 
  | f4 f, f'8 g gis a
  | a \cAccOn g \cAccOff f e e4. bes'8
  | bes a g f f4. d'8
  | d bes d bes a f e g
  | \cAccOn e4 \cAccOff f f8 g gis a
  | a g f e e4. bes'8
  | bes a g f f4 a, | bes bes c c 
  | f8 c' c c \grace d8 c16 b c d\cAccOn ees8 \cAccOff d
  | c16 bes c d ees8 d c bes a g
  | fis4. a8 d4. a8 | c8 bes a g g' ees d cis
  | d4. a8 d4. c8 
  | c8 bes a g g' ees d cis
  | d4 d d r
  | fis,8 g a bes c bes c a
  | bes4 r r2
  | fis8 g a bes c bes c a
  | bes4 r r2
  | \repeat tremolo 4 c,8 c4 r
  | \repeat tremolo 4 bes8 bes4 b
  | c c \stemUp d d \stemNeutral | g,2 r2
  | \grace { d'4 } d'1 ( 
  | d8 ) d \grace f8 ees8 d g d \grace f8 ees d
  | d1
  | d8 d \grace f8 ees 8 d g d \grace f8 ees8 d
  | ees4. \tuplet 3/2 8 { d16 c bes } a8 a c ees
  | d4. \tuplet 3/2 8 { c16 bes a } g8 g' g g
  | g8 \cAccOn f \cAccOff f4 fis8 g8 ees4
  | ees2 d8 bes c d 
  | d8 ees ees2 d4 
  | d8 c c2 bes4
  | ees,2. e4
  | \bentKnee f8 f, f f f4 r
  | d'2 f8 ees d c
  | c4 bes bes8 c cis d
  | d4. g8 f ees d c
  | c4 bes bes8 c d d 
  | ees ees16 d ees8 f a g f ees
  | \bentKnee cis8 d d' d ees d c bes
  | ees,2. e4 | f2 f8 g16 a bes c d ees f2 f8 ees c ees
  | ees 4 d d8 ees e f
  | f4. g8 f ees c ees
  | ees4 d bes,8 #(if facsimile #{ _[ #} #{ [ #} ) c d d ] 
  | ees8 ees16 d ees8 f a g f ees
  | cis d d d ees d c bes
  | ees2 f4 f,
  | bes1 c d c d ~ d2 ees4 a
  | bes4 ees, f f,
  \tuplet 3/2 4 {
    \showUrtextTuplets \bentKnee bes8 d' bes f d bes \hideTuplets
    d f bes d f d
    | ees d c bes a g f g f ees d c
    | \bentKnee bes d' bes f d bes d f bes d f d
    | ees d c bes a g f g f ees d c
  }
  | bes8 c16 d ees f g a bes a bes c d c d ees
  \tuplet 3/2 4 {
    f8 ees d c bes aes \grace aes8 g8 a b c d ees
    | d f ees d c bes
  }
  c2 
  | bes4. d,8 c ees f ees | d2 c8 ees f ees
  | d4 d d #(if facsimile #{ r4 #} #{ r8*2 #} )

}

