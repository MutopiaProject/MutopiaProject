st = \staccato
part = \relative c' {
  \clef bass
  \time 3/4
  \key c \major
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  \time 6/8 \partial 4.
  \tempo "Allegretto"
  e,8\dolce d e
  \bar ".|:"
  \repeat segno 2 {
    | f4 e8 \grace e16 d8 c d | d4 ( e8 ) e f d
    | e8 g f e d c
    | g4. e'8 d e
    | f4 e8 \grace e16 d8 c d
    | d4 ( e8 ) e4.
    | f8 a g f e d
    | d4 ( c8 ) c'\F b c
    | d4 c8 \grace c16 b8 a b | b4 ( c8 ) g a b | c b a g f e
    | e4 d8 c' b c
    | d4 c8 \grace c16 b8 a b
    | b4 c8 g c b
    | a8 f' e d c b
    | c8 c c c4 r8
    \volta 2 \fine
    \volta 1 {
      | c,8\F g e c4 r8 | g''8 d b g4 r8 | d'8 a fis d4 fis'8
      | g8 r g8 b a g
      | fis d e fis g a
      | g8 b b b a g
      | fis d e fis g a
      | g8 r gis a r fis | g r gis a r fis | g8 d c b a g
      | d'8 d d d r d'
      | b4 b8 g8.\prall fis16 g8
      | a4 fis8 d4 d'8
      | b4 b8 g8.\prall fis16 g8
      | a4. r8 a b
      | c4. e8 d c
      | b8 b c d c b
      | a8 b c a g fis
      | g4 d'8 c d, c'
      | b8 g, d'' c d, c'
      | b16 g a b c d e8 c, c'
      | a a, c' d b, b'
      | g8 e, b'' c a, a'
      | fis8 d, a'' b c d
      | e4. fis\prall
      | g8 d [ b ] r d b
      | r8 e ( c ) r e ( c)
      | r8 b ( d ) c b a
      | g4\P r8 fis4 r8 | g4 r8 fis4 r8 | g r r8 c4. ~
      | c4.b4. ~ | b4. a4. ~
      | a4. g8 a b
      | c16\F e d b a g fis e d c b a
      | b4\P r8 b4 r8
      | c4 r8 c4 r8 | d8\F g b a g fis
      | g8\P fis [ ( g ] ) g,4 r8
      | r8 fis' ( g ) g,4 r8
      | r8 fis' ( g ) g, d'' [ ( c ] )
      | \fl b8 b ( a ) \fl g\cresc g ( a ) | \fl b b ( a ) \fl g g ( a )
      | \fl b b ( c ) \fl d b ( c )
      | \fl d8\F b ( c ) \fl d b ( c )
      | d4. r4.
      | b,8\P c d e d e
      \bar ":|."
      \partial 8. \tempo "mineur"
      \time 6/8
      s16 \caesura r8 \bar "||"
      | a,8\P c e a, c e
      | b d e b d e | gis, b e gis, b e | a,8 c e a,4 r8
      | r8 a'\rinf ( g ) f4  r8
      | r8 g ( f ) e4 r8
      | r8 f e d4 dis8
      | e8 e e e r g
      | c4\F c8 \grace d16 c8 b c | d4 b8 g4 g8
      | d'4 d8 \grace e16 d8 c d | e4.  c8 c ( b )
      | \fl a8 d8 c \fl b e d
      | \fl c f e \fl d g f
      | e d c \grace d16 d8 c b
      | c8 r e e c a
      | gis4 a8 b4 c8
      | \grace c16 b4 e8 f16 e d c b a
      | gis4 a8 b4 c8
      | b4. r4 b8\dolce
      | d4 ( c8 ) r4 a8
      | c4 ( b8 ) r4 b8
      | d4 ( c8 ) r4 a8
      | c8 ( b ) e e e e
      | f2.\cresc ~ | \fl f8 b, c \fl d d e
      | f2. ~ | \fl f8 b, ( c ) \fl d d ( e )
      | \fl f8 f e \fl d8 d\F ( c )
      | \fl b8 b ( a ) \fl g g ( a )
      | \fl b8\dolce b ( c ) \fl d b ( c )
      | d8 \caesura  r4 r4.
      | b,8\P c d e d e
      \bar "||"
    }
  }

}