st = \staccato
part = \relative c' {
  \clef bass
  \key c \major
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  \time 6/8 \partial 4.
  \tempo "Allegretto"
  c8 b c
  \bar ".|:"
  \repeat segno 2 {
    | d4 c8 \grace c16 b8 a b
    | b4 ( c8 ) g a b | c b a g f e
    | e4 d8 c' b c | d4 c8 \grace c16 b8 a b
    | b4 ( c8 ) g c b | a f' e d c b
    | b4 c8 e,\dolce d e
    | f4 e8 \grace e16 d8 c d | d4 e8 e f d | e g f e d c
    | g4. e'8 d e
    | f4 e8 \grace e16 d8 c d d4 e8 e4. | f8 a g f e d | c8 g' e c4 r8
    \volta 2 \fine
    \volta 1 {
      | e'4.\F c8 d e | d4. b8 c d | c4. \grace d16 c8 b c
      | b8 r d d c b
      | a4. a8 b c | b d d d c b | a4. a8 b c
      | b8 e [ d ] cis d c
      | b8 e [d ] cis d c
      | b8 d c b a g | fis d d d4 r8
      | g,4\P r8 b4 r8
      | d4 r8 d,4 r8 | g4 r8 b4 r8
      | d8 fis a d,4 r8
      | r8 a' g fis4 r8
      | r8 g a b a g
      | c,4 r8 d4 d8 | g4 r8 fis4 r8 |
      | g4 r8 fis4 r8
      | g4 r8 c4.
      | c4. b ~
      | b4. a4. ~
      | a4. g8 a b
      | c16\F d c b a g fis e d c b a
      | b4\P r8 b4 r8
      | c4 r8 c4 r8
      | d8 g b a g fis
      | g8 r d' c d, c'
%%      \override Beam.auto-knee-gap = #3
      | b g, d''
      c d, c'
      | b16 g a b c d
      e8 c, c'
      | a a, c' d b, b'
      | g e, b'' c a, a'
      | fis8 d, a'' b c d
      | e4. fis\prall| g8 d [ ( b ] ) r d ( b )
      | r8 e ( c ) r e ( c )
      | r8 b ( d ) c b a
      | g4 r8 r b8\dolce ( a )
      | g4 r 8 r d' ( c)
      | b4 r8 r \cAccOn f' ( \cAccOff e )
      | d8 d [ ( c ] )  b b [ ( c ] )
      | d8 d [ ( c ] ) b\cresc b [ ( c ] )
      | d8 d [ e ] f d [ e ]
      | f2.\F ~ | f8 d [ ( e ] ) f8\dolce d [ e]
      | f8 e d c b c
      \bar ":|."
      \partial 8. \tempo "mineur"
      | s16 \caesura e,8 \bar "||"
      | a4 a8 c4 e8
      | d4 b8 gis 4 e8
      | b'4 b8 b c d
      | c4 b8 a e' d | cis4.\prall d8 e f
      | b,4.\prall c8 d e
      | a,8 b c c b a | gis8 dis' e e,4 r8
      | c8\P e g c, e g
      | b, d g b, d g
      | b,8 d g b, d g
      | c,8 e g c,4 e8
      | f8 r fis\cresc g r gis
      | a8 r a b r b,
      | c8 d e f g g,

      | c8 c, r r4 e'8
      | e8 c a gis4 a8
      | e'4 r8 r4 e8
      | f16 e d c b a gis4 a8
      | e'8\P gis b e, gis b
      | e,8 a c e, a c
      | e,8 gis b e, gis b
      | e,8 a c e, a c
      | e,4 r8 r4.
      | r8 d'\cresc ( c ) b b[ ( a ] )
      | \cAccOn g4 \cAccOff r8 r4.
      | r8 d' ( c ) b b[ ( a ] )
      | g4  r8 r4.
      | r4. r8 f'8\F ( e )
      | d8 d [ ( c ] ) b b [ ( c ] )
      | d8\dolce d [ ( e ] ) f d [ ( e ] )
      | f8 \caesura r4 r4.
      | f8 e d c b c
      \bar "||"
    }
  }
}