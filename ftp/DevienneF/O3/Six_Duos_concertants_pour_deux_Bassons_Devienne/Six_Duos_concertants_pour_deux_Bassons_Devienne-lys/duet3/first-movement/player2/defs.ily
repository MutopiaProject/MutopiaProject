sectionA = {
  \clef bass
  \relative c' {
    \clef bass
    r8 c, e g c4 r
    | r8 g, b d g4 r
    | c,2 e | g4 f e8 c g f | e4 e' e e | d f f8 e d c
    | b4 d b d
    | c c c8 a g f
    | e1
    | f2. d'4 | e f g g,
    \bentKnee
    | c8 c' b a g f e d
    | c2 c' | b4. d16 c b4 gis
    | a2 fis
    | g8 g d b g4 r
    | b2 b
    | c4 c c c
    | c e c cis | d d d r
    \tenorClef
    | d'2 e8 d c b | b a g2 a4
    | b8 g c a d b f' e
    | d4. \tuplet 3/2 { e16 d c } b4 r
    | e2 ~ e8 fis16 g fis8 e
    | d8 #(if facsimile #{ cis8 #} #{ des8 #} ) c2 b4
    | gis8 a b c dis e c a
    | g2 fis8 fis g a
    \clef bass
    | g,4 g' g, g'
    | g, g' g, fis'
    | g a b c
    | b4. \tuplet 3/2 { c16 b a } \bentKnee g8 g, a b
    | c4 e g c
    | e,2 fis4 g
    | c,4 c d d | g fis g a | b a g d | g fis g a
    | b a g d
    | \repeat tremolo4 g8 \repeat tremolo4 g,8
    | e2 fis | g4 c \stemUp d d \stemNeutral
    \tuplet 3/2 4 {
      g8 a b g a b
    }
    \omit TupletNumber
    \override TupletBracket.bracket-visibility=##f
    \tuplet 3/2 4 {
      b c d c d e
      | d b d c a c b g b a fis a
      | g a b a b c b c d c d e
      | d b d c a c b g b a fis a
    }
    | g8 a16 b c d e #(if facsimile #{ f16 #} #{ fis16 #} ) g4 b,,,
    | c4 fis''8 g \cAccOn fis \cAccOff e d c
    | b16 c cis d c b a g a2*1/2\trill s8. \grace { g8 a } s16
    | b,8 ( c)  c ( d) d ( e ) e-. e-.
    | e ( d)  d ( c ) c ( b ) b ( a)
    | b ( c ) c ( d)  d ( e) e-. e-.
    | e (d ) d (c) c (b) b (a)
    | c2( b4) r
  }
}


sectionB= \relative c' {
  g2. b8 a
  | a2. c8 b
  | b8. c32 d c8 b a g fis g
  | fis4 e d r
  | d'2 g4. b,8
  | b c gis a a4 r
  | c8 b c d fis e d c
  | c b e d d4 r
  | cis8 d e d
  \cAccOn c \cAccOff b a g
  | fis8 e g' #(if facsimile #{ f8 #} #{ fis8 #} ) g e d c
  | b16 d cis d c b a g a2\trill
  | g2 \cAccOn f \cAccOff
  | e d
  | d8 c c c c d16 e f g a b
  | c2 b
  | \bentKnee
  a8 a, c e a e c a
  | d4 d d dis
  | e2 ( gis | a f )
  | e ( gis | a f )
  | e8\pp ( f d e c d b c | a gis a b c b c d )
  | e ( d f e d c b a | b a b c d c d e | f e d e d c b a )
  | gis8 ( a gis a b c b c | d e f f e d c b)
  | a8 ( b c d e d c b )
  | a4 r r2
  | a8 ( gis a gis a gis a b )
  | c ( b c b c b c cis )
  | d ( cis d cis d cis d cis )
  | d ( e f e d c b a )
  | gis ( a b c d c b a )
  | gis ( a b c  \bentKnee d dis e e,)
  | a8\f c c c c4 r
  | r8 a a a a4 r
  | r8 f f f f4 f'
  | e e e e | f f f e | f f f fis | g b, b r
  | g'2 a8 g f e
  | e d c2 d4
  | e8 c f d g e c' a
  #(if (not facsimile) #{
  \undo \omit TupletNumber
  \override TupletBracket.bracket-visibility=##t #} )
  | g4. \tuplet 3/2 { a16 g f } e4 r
  | a2 ~ a8 b16 c b8 a
  | g8 #(if facsimile #{ fis8 #} #{ ges8 #} ) f2 e4
  | cis8 d e f gis a f d
  | c2 b8 b c d
  | c,4 c' c, c' | c, c' c, b'
  | c d e f
  | e4. \tuplet 3/2 { f16 e d } c8 c, d e
  | f4 a c f | a,2 b4 c
  | f,4 f g g
  | c2 r4 e
  | d r f d
  | e2 r4 e
  | d2 f4 d
  | \repeat tremolo 4 e8 g,2
  | a b
  | c4 f g g,
  | c8 d16 e f g a b c d e d c b a g
  | f g a g f e d c b g b d f g f d
  | c8 d16 e f g a b c d e d c b a g
  | f g a g f e d c b g b d f g f d
  | c8 d16 e f g a b c d e f \bentKnee g8 e,,
  | f4 \grace e''8 c4 \grace b8 a4 \grace g8 f4
  | e16 f fis g f e d c d2\trill
  | e8 ( f) f (g) g (a) a-. a-. | a (g) g (f) f( e) e (d) | e( f) f ( g) g (a ) a-. a-.
  | a (g ) g ( f) f( e) e ( d)
  | e2 (e4) r
}
