sectionA = {
  \clef bass
  \key f \major
  \partial 4
  \relative c' {
    c8. a16
    | f'8. ( d16 ) c2 a8. c16
    | c8 b bes2 g8. bes16
    | a4. bes16 c bes8 a g f
    | e4. f16 g f4 r
    | bes4 bes4. c16 d c8 bes
    | bes8 ( a ) g f e ( f e f )
    | d'4 d4. e16 ( f) e8 d
    | b4 c r8 c d c
    | a4 bes r8 bes8 c-. bes-.
    \tupletUp
    \tupletBracketStyle
    \override TupletBracket.bracket-visibility = ##t
    | g8 ( a ) a a \tuplet 3/2 4 { f'8 e d c bes a }
    | fis8 g bes d c a g bes
    | gis4 a
    \omit TupletNumber
    \override TupletBracket.bracket-visibility = ##f
    \tuplet 3/2 4 { f'8 e d c bes a }
    | d8 f d bes a c bes g
    | f2 c8 f a c
    | c2 e8. c16 e8. c16
    | f8 c c4 r2
    | e,8 g c bes g4 bes
    | a16 f g a bes c d e f8 f4 e8
    | d8 d4 e8 f8 f4 e8
    | d4 r f8. g16 e8. f16
    | d8. e16 c8. d16 b c a b g a f g
    | e8 g' g g g4 f16 ( e d c )
    | c8 b b4 ~ b8  f'8 d b
    | c8 g' g g g4 f16 e d c
    | c8 b b4. f'8 d b
    | c16 b c d e d e f g f e d c b a g
    | a16 gis a gis a gis a gis a b c b a g f e
    | d16 cis d e f e f g a g f e f e d cis
    | g'4 r r8 g ( fis f )
    | e8 c g' e d f g f
    | e8 g e c b g' #(if facsimile #{ fis f #} #{ ges f #} )
    | e8 c g' e d f g f
    | e8 g e c b g' #(if facsimile #{ fis f #} #{ ges f #} )
    | e1 | e1 | f | f
    | e4 f g g,
    \tuplet 3/2 4 {
      | c8 e g d f g e d c b a g
      | c e g d f g e d c b a g
      | c'8 e c b d b a c a g b g
      | f a f e g e d f d c d e
    }
    | f4 f f f
    | g8 g g g \repeat tremolo 4 g,8
    #(if facsimile #{
    \once \override Beam.auto-knee-gap = #2 #} )
    | c8 g'' g2 b,8 d
    | c8 g' g2 d8 f
    | e4 d f d
    | a'4 g f e
    | d16 e d cis d e d cis d e f e d c b a
    | g8 g' f16 ( e d c ) d2\trill
    | c2 r4 c8 d
    | e4. f8 d4. e8
    | c4 g r c8 d
    | e4. f8 d4. e8
    \partial 2.
    | d2 ( c4 )
  }
}


sectionB= \relative c' {
  \partial 4
  r4
  | r 4 c,8. d16 e4 c
  | r4 g a b
  | c2 f4 fis
  | g 4 f e8 c' g e
  | f1
  | e4 e2 d8 c
  | f4 f g g,
  | c4 c c g''8 e
  | d8 ( c ) c4 r g'8 ( e)
  | d8 cis cis4 r8 cis16 b cis8 d
  | e4. cis8 a4. g8
  | g8 f f4 r8 a8 b cis
  | d4. e8 g f e d
  | d8 cis cis4 r8 a8 b \cAccOn cis \cAccOff
  | d4. e8 g f e d
  | d8 cis cis4 r8 a b \cAccOn cis \cAccOff
  | d8 cis ( d e f e f ) g 
  | gis8 ( a ) e ( f ) cis ( d ) a ( bes )
  | fis8 g bes a g f e d
  | a'4 r r2
  | \grace { f8 } g'2. f16 e d cis
  | d4. f8 a,4 r
  | g'2. f16 e d cis
  | d8 d16 cis d8 f a,4 r
  \tuplet 3/2 4 {
    | g'8 f e d cis bes a g a bes a g
    | f a d \grace { e8} d8 cis d e d cis bes a g
    | f a d \grace { e8 } d8 cis d e d cis bes a g
  }
  f8 a' g f e d cis d
  | \cAccOn c \cAccOff bes a bes a g f e
  | a4. bes16 g f4 e\trill
  | \repeat tremolo 4 d8 \repeat tremolo 4 f8
  | \repeat tremolo 4 e8 \repeat tremolo 4 e8
  | f4 f a, a
  | bes4 bes bes bes8 b
  | c4 c c8 c' b bes
  | a8 f c' a g bes c bes
  | a c a f e c' d e
  | f4. c8 e4. c8
  | f8 c c4 r8 c b bes
  | f1
  | a,1 | bes | bes
  | a4 bes c c
  \tuplet 3/2 4 {
    | f8 a c g bes c a g f e d c
    | f a c g bes c a g f e d c
    | f a f e g e d f d c e c
    | bes d bes a c a g bes g f g a
  }
  | bes4 bes bes bes
  | a bes c c
  | f8. ( c'16 ) c2 e,8. g16
  | f8. ( c'16 ) c2 g8. bes16
  | a4 g bes a
  | d4 c e f
  | g,16\trill fis g a bes\trill a bes c cis d e d c bes a g
  | b16 c d c bes a g f g2\trill
  | f2 r4 f8 g
  | a4. bes8 g4. a8
  |f4 c r f8 g
  | a4. bes8 g4. bes8
  | \partial 2.
  g2 ( f4 )
}

