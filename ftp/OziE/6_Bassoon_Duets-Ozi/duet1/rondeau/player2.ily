part = \relative c' {
  \clef bass
  \time 3/4
  \key c \major
  \tempo "Tempo di Minuetto grat."
  \relative c' {
    \rondeauFirstBarLine
    %% 01
    | c,8\P g' e g f g
    | e8 g e c d e
    | f8 c f a g f
    | e8 d c e d e
    %% 05
    | f8 e f f e f
    | g8 fis g c, d e
    | f4 f f
    \omit TupletNumber
    \override TupletBracket.bracket-visibility = ##f
    \override Beam.auto-knee-gap = #1
    | g4 \tuplet 3/2 {
      g,8\F g' a b c d
    }
    %% 09
    | e4. f8 d b
    | b4 ( c8 ) g g ( gis )
    | a4. c8 b a
    | g8. f16 e8 c' b c
    %% 13
    | cis4 ( d8 ) d c d
    | dis4 ( e8 ) c b bes
    | a8 f' e d c b
    | c4 r r
    %% 17
    | \tuplet 3/2 { r8 d cis d8 e f d cis \cAccOn b \cAccOff }
    | c4 r r
    | \tuplet 3/2 { r8 d cis d8 e f d cis b }
    | c4 c, r
    \Fin
    \bar "||"
    %% 21
    | c4 r r
    | f16 g f e d8 g d b
    | g4 r r
    | g'16 a g f e8 c' g e
    %% 25
    | c4 r r
    | cis4 ( d8 ) r r4
    | b4 ( c8 ) r r4
    | c4 \tuplet 3/2 {
      c'8 b a g fis e
      %% 29
      | d8 fis a
    }
    d,4 r
    | b'4.\dolce c8 a fis
    | a4 ( g8 ) a b c
    | d4. e8 c a
    %% 33
    | c4 b8 r g8. ( a32 b )
    | a8 r r4 a8.\cresc  b32 c
    | b8 r r4 b8. ( c32 d )
    | c8 r r4 c8. ( d32 e )
    %% 37
    | d4 r8 fis8\F ( g fis )
    | e8 ( d c b a gis )
    | a8 e'16 c b4 a\prall
    | g8 d' b, d' g,, d''
    %% 41
    | fis,8 d' a, d' d, c'
    | b8 d b, d' g,, d''
    | fis,8 d' a, d' d, c'
    \tuplet 3/2 {
      | b8 a g c b a d c b
      %% 45
      | e8 d c c b a a b c
    }
    | d8 e16 c b4 a\prall
    | g4\P r g,
    | d'4 r fis
    %% 49
    | g4 r g,
    | d'4 r fis
    | g8 r a r b r
    | c4 r c,
    %% 53
    | b8 c d4 d,
    | g8 d'16\P b g4 r
    | r8 \cAccOn f'16  ( \cAccOff d ) b4\staccato r
    | r8 d16 ( b ) g4\staccato r
    %% 57
    | r8 f'16 ( d ) b4\staccato r8 f'16 ( d )
    | b8\cresc d16 ( b ) g8 f'16 ( d ) b8 f'16 ( d )
    | b8\P ( c d e f fis )
    | g4 r r
    \dcSegnoBarDCNoDots
    \clef bass
    \time 3/4
    \tempo "mineur"
    %% 61
    | a,8 ^( b c d e fis )
    \override Beam.auto-knee-gap = #0.5
    | gis8 ( e fis gis a ) a,
    | b8 ( c d e f g )
    | a8 ( f g a b ) b,
    %% 65
    | c8 ( d e f g a )
    | b8 ( g a b c c, )
    | f8 d e f g g,
    \override Beam.auto-knee-gap = #1
    | c8 g c, r r4
    %% 69
    | e''8\MZF d cis4\prall d8 e
    | f4 d8 d d4\prall
    | d8 c b4\prall c8 d
    | e4 c8 c c4\prall
    %% 73
    | c8 b a4\prall b8 c
    | d4 b8 b\prall b a
    | b8 c d c b a
    | a4 gis8 r c4\F
    %% 77
    | c2 b8 a
    | a4 ( gis8 ) a b c
    | d2 c8 b
    | b4 a e8 d
    %% 81
    | d8 ( c b4 ) c'8 b
    | b8 a gis a b c
    | d8 d d4. e16 d
    | c8 c c4. d16 c
    %% 85
    | b8 b b4. c16 b
    | a8 a a4. b16 a
    | g8 g g4. a16 g
    | f8 f16 e f8 f16 e f8 fis
    %% 89
    | g8 d16 ( b g4 ) r
    | r8 f'16\P ( d ) b4\staccato r
    | r8 d16 ( b ) g4\staccato r
    | r8 f'16 ( d ) b4 r8 f'16 ( d )
    %% 93
    | b8\crescMark d16 ( b ) g8 f'16 ( d b8 ) f'16 ( d )
    | b8 ( c d e f fis )
    | g4 r r
    \dcSegnoBar
  }
}
