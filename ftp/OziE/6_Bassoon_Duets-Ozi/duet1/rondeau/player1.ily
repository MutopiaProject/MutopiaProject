part = \relative c' {
  \clef bass
  \time 3/4
  \key c \major
  \tempo "Tempo di Minuetto grat."
  \relative c' {
    \rondeauFirstBarLine
    %% 01
    | e4. f8 d b
    | \grace d8 c4 g8 g g gis
    | a4. c8 b a
    | g8. f16 e8 c' b c
    %% 05
    | cis4 ( d8 ) d c d
    | dis4 ( e8 ) c b bes
    | a8 cis d e f d
    | c4 ( b8 ) r r4
    %% 09
    | c,8 ( g' e g f e)
    | e8 g e c d e
    | f8 c f a g f
    | e d c e d e
    %% 13
    | f8 e f f e f
    | g8 fis g c, d e
    | f8 a g f e d
    \omit TupletNumber
    \override TupletBracket.bracket-visibility = ##f
    | \tuplet 3/2 {
      c8\F g' fis g a b c g e
    }
    %% 17
    | f4 r g
    | \tuplet 3/2 {
      c,8 g' fis g a b c g e
      | f f e f a g f e d
    }
    | c4 c, r
    \Fin
    \bar "||"
    %% 21
    | g''16 a g f e8 e' d c
    | c4 ( b8 ) r8 r4
    | b16 c b a g8 f' e d
    | d4 ( c8 ) r r4
    %% 25
    | \tuplet 3/2 {
      e8 d c c b a c b a
    }
    | g4 \tuplet 3/2 { fis8 d' c b a g }
    | \cAccOn f4 \cAccOff \tuplet 3/2 {
      e8 c' b a c b
      | a8 e' d c b a g fis e
      %% 29
      | d8 fis a
    }
    d4 r
    \override Beam.auto-knee-gap = #1
    | g,4\P r d
    | g,8 [ g' ]
    \revert Beam.auto-knee-gap 
    g, fis' g a
    | b4. c8 a fis
    %% 33
    | a4 ( g8 ) fis e d
    | c8 ( gis' a\cresc ) g fis e
    | d8 ( ais' b ) a g fis
    | e8  b' ( c ) b a g
    %% 37
    | fis8\F cis' d ( c b a )
    | g8 ( fis e d c b )
    | c4 d d,
    | g4\P r g
    %% 41
    | d'4 r fis
    | g4 r g,
    | d'4 r fis
    | g8 r a r b r
    %% 45
    | c4 r c,
    | b8 c d4 d
    \override Beam.auto-knee-gap = #0.5
    | g8\F d' b, d' g,, d''
    | fis,8 d' a, d' d, c'
    %% 49
    | b8 d b, d' g,, d''
    | fis, d' a, d' d, c'
    | \tuplet 3/2 {
      b8 a g c b a d c b
      | e d c c b a a b c
    }
    %% 53
    | d8 e16 c b4 a\tr
    | g4 r8 g16\dolce b d8 d
    | d4\staccato r8 b16 d \cAccOn f8 \cAccOff  f
    | f4\staccato r8 g,16 b d8 d
    %% 57
    | d4\staccato r8 b16 d f8 g,16 ( b )
    | d8_\Cresc b16 ( d) f8 g,16 ( b ) d8 b16 ( d )
    | f8\dolce ( e d c b a )
    | g8 ( g a b c d)
    \rondeauFirstRepeat 
    \clef bass
    \time 3/4
    \tempo "mineur"
    %% 61
    | c8\dolce b a4 a
    | b4.\prall a16 ( b ) c4
    | d8 c b4 b
    | c4.\prall b16 ( c ) d4
    %% 65
    | e8 d c4 c
    | d4.\prall c16 ( d ) e4
    | d8 e16 d c4 b
    | \grace b8 c2 r4
    %% 69
    | c8\dolce ( bes a g f e )
    | d8 ( f a f d d, )
    | b''8 ( a g f e d )
    | c8 ( e g e c c, )
    %% 73
    | a''8 ( g f e d c )
    | b8 ( d f d b c )
    | d8 ( e f e d dis )
    | e4 e,8 r e''4
    %% 77
    | e2 d8 c
    | c4 ( b8 ) c d e
    | f2 e8 d
    | d4 ( c ) c8 b
    %% 81
    | b8 ( a) gis4 e'8 d
    | d8 c b c d e
    | f4. g16 f e8 e
    | e4. f16 e d8 d
    %% 85
    | d4. e16 d c8 c
    | c4. d16 c b8 b
    | b4. c16 b a8 a
    | a4. b16 c d8 c
    %% 89
    | b4 r8 g16\dolce ( b ) d8 d
    | d4 r8 b16 ( d) f8 f
    | f4\staccato r8 g,16 ( b) d8 d
    | d4\staccato r8 b16 ( d ) f8 g,16 ( b )
    %% 93
    | d8\staccato_\CrescMark b16 ( d ) f8 g,16 ( b ) d8 b16 ( d )
    | f8 ( e\dolce d c b a )
    | g ( g a b c d )
    \rondeauSecondRepeat
  }
}
