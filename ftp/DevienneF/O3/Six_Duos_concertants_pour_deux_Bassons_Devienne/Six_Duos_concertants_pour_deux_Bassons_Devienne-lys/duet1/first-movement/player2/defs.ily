sectionA = {
  \clef bass
  \key f \major
  \partial 4
  \relative c' {
    r4
    | r4 f,8. g16 a4 f
    | r4 c d e
    | f2 bes,4 b
    | c4 \cAccOn bes \cAccOff a8 f' c a
    | f1
    | f2 r
    | bes'4 #(if facsimile #{ bes4. #} #{ bes4 ~ bes8 #} ) c16 d c8 bes
    | gis4 a fis2
    | g2 e
    | f2 a,4 a
    | bes bes c c
    | f4 f a, a
    | bes4 bes c c
    \bentKnee
    | f,8 f' f,4 r2
    | e'8 g c bes g4 bes
    | a8 c a f c f a c
    | c2 e8. ( c16 ) e8. ( c16 )
    | f8. c16 c4 a g
    | f4 g a g
    | f g a g
    | f fis g g
    \tupletUp
    \tupletBracketStyle
    \omit TupletNumber
    \override TupletBracket.bracket-visibility = ##f
    \tuplet 3/2 4 {
      | e8 g c e,8 g c e,8 g c e,8 g c
      | f,8 g f f g f f g f f g f
      | e8 g c e,8 g c e,8 g c e,8 g c
      | f, g d f g d f g d f g d
    }
    | e1 | f
    | f,4 f f f
    | g4 r r8 g' a b
    | c4. ( g8 ) b4. ( g8) | c ( g) g4 r8 g a b
    | c4. g8 b4. g8
    | c8 g g4 r8 g a bes
    | c8  d  ( e f g fis g ) f
    | e dis ( e d c \cAccOn bes \cAccOff a ) gis
    | a  gis ( a cis d cis d ) e
    | g  f ( e d cis d f ) d
    | g4 f16 e d c d2\trill
    | c8 g' g2 b,8 d
    | c8 g' g2 d8 f
    | e4 d f e | a g f e
    | d16 e d cis d e d\cAccOn  cis \cAccOff d e f e d c #(if facsimile #{ bes16 #} #{ b16 #} ) a
    | g4 f16 e d c d2\trill
    \tuplet 3/2 4 {
      | c8 e g d f g e d c b a g
      | c e g d f g e d c b a g
      | c' e c b d b a c a g b g | f a f e g e d f d c d e
    }
    | f4 f f f  | e f g g,
    | c8 ( b c d ) e( d  e f )
    | g ( a g a ) f ( g f g )
    | e8 d e f e d e f
    | g a g a  f g f g
  }
}
sectionB= \relative c' {
  \partial 4
  g8. e16
  | c'8 a g4 ( g8 ) c e g
  | g #(if facsimile #{ fis8 #} #{ ges8 #} )  f2 d8 f
  | e4. f16 g f8 e d c
  | b4. c16 d c4 r
  | a #(if facsimile #{ a4.#} #{ a4 ~ a8 #} ) b16 c b8 a
  | g4 g'2 f8 d
  | g8 f e2 d4
  | f16 e d c g8 e c4 r
  | r bes'8-. g-. f ( e ) r4
  | r bes'8 ( g ) f ( e ) e d
  | \once \stemDown cis4 e \once \stemDown cis e
  | d d, d' r
  | r2 r8 d8 e fis
  | g4. bes8 a g \cAccOn f \cAccOff e
  | d4 r r8 d8 e fis
  | g4. bes8 a g \cAccOn f \cAccOff e
  | d4 r d8 cis d e
  | d1 | g,2. gis4
  | a4 ( e' cis e ) | a, ( cis e g ) | f ( a f d ) | a ( cis e g )
  | f a f d | cis1
  | d4 f \once \stemDown cis e | d f \once \stemDown cis e
  | d4 r r2
  | g1
  | f4 g a a,
  | d2 g'8 f e d
  | b8 c c c d16 c b c e d c bes
  | gis4 a8 f' f4. e,8
  | fis8 g bes d \cAccOn c \cAccOff bes a g
  | f2 ( e 8 ) c' d e 
  | f4. c8 e4. c8
  | f8 ( c ) c4 r8 c #(if facsimile #{ b8 #} #{ ces8 #} ) bes8
  | a8 f c' a g bes c bes
  | a c a f e c' d e
  | f8 ( g a g f e d ) c
  | bes a ( g f e f ) a f
  | d ( fis g a bes b c cis )
  | e d ( \cAccOn c \cAccOff bes a g bes ) d
  | c4 bes16 a g f g2\trill
  | f8 c' c2 e,8. g16
  | f8 c' c2 g8 bes 
  | a4 g bes a
  | d c e f
  | g,16 fis g a bes a bes c cis d e d c bes a g
  | b16 c e d bes a g f g2
  \tuplet 3/2 {
    f8 a c g bes c a g f e d c | f a c g bes c a g f e d c
    | f a f e g e d f d c e c
    | bes d bes a c a g bes g f g a
  }
  |bes4 bes bes bes | a bes c c
  | f,8 ( e f g ) a ( g a bes ) | c8 ( d c d ) bes ( c bes c )
  | a ( g a bes ) a ( g a bes )
  | c ( d c d ) bes (c bes c )
  \partial 2.
  | bes2 ( a4 )
}
