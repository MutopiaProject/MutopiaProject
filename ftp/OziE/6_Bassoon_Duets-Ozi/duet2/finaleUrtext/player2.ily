
part = \relative c' {
  \clef bass
  \key bes \major
  \time 2/4
  %% 01
  \finaleFirstBar  
  | R2*3
  | bes,4\F f8 d'
  %% 05
  | c8 f d bes
  | a8 c f, g16 a
  | bes8 bes16 c d8 e
  | f4 c8 a'
  %% 09
  | g8 c a f
  | e8 g c, d16 e
  | f8 a16 g a8 f' ~
  | f8 ees \cAccOn c4  ~ \cAccOff
  %% 13
  | c8 d16 c bes8 c16 bes
  | a4 r
  | r8 bes16 a g8 f
  | e8 g a bes  
  %% 17
  | a8 a16 g f8 e8
  | d8 f g a
  | g8 g16 f e8 d
  | c8 e f g
  %% 21
  | f8 a16\prall g a8 c
  | f2 ~
  | f8 g16 f e8 d
  | e2 ~
  %% 25
  | e8 f16 e d8 cis
  | d2 ~
  | d8 e16 d c8 b
  | c2 ~
  %% 29
  | c8 c4 f8
  | e8 c4 f8
  | e8 c c c
  | c4 r
  %% 33
  | f,2\P (
  | e2 | d | c
  %% 37
  | bes )
  | a4 ( g | f8 g a b ) | c4 r
  %% 41
  | r f (
  | e4 ees | d des | c c
  | b bes 
  %% 45
  | a4 g ) | f4 f' | e8\F ( c' b bes )
  %% 49
  | a4. bes16 a
  | g4 c | f,4. g16 f | e8 ( c b c )
  %% 53
  | \grace cis16 ( d4 ) \grace dis16 ( e4 )
  | \grace e16 ( f4 ) \grace fis16 ( g4 )
  | a2\tr
  | g8 ( e f g )
  %% 57
  | a4. bes16 a
  | g4 c
  | f,4. g16 f
  | e8 c b c
  %% 61
  | \grace cis16 ( d4 ) \grace dis16 ( e4 )
  | \grace e16 f4 bes8 g
  | f4 e\prall
  | f8\F ( c f a )
  %% 65
  | g8 ( bes ) r bes
  | a8 ( g f e )
  | f8 ( c f a )
  | g8 ( bes ) r bes
  %% 69
  | a8 ( g f e )
  | f8 f'16 e d c bes a
  | g16 a bes c d c d e
  | f8 a,16 g bes a g f
  %% 73
  | e16 f g a bes c bes g
  | a4 r8 g | a8 g a g | a4 r8 e
  %% 77
  | f8 e f e
  | f8 f c a
  | f4 r
  \bar ":|.|:"
  | f'4\F c8 a'
  %% 81
  | f4 r | d\F a8 f' | d4 r | bes4 f8 d'
  %% 85
  | bes4 r | g'4 d8 bes' | g4 r | bes4 g8 d'
  %% 89
  | \cAccOn ees4 \cAccOff d | c bes | a g
  | fis8 d16 e \cAccOn fis \cAccOff g a fis
  %% 93
  | g8 d c16 d a d
  | bes16 d e fis g a bes c
  | d8 d4 c8 | bes4 a
  %% 97
  | g4. a16 g | fis8 d r4
  | bes'4\dolce a8 g | fis2
  %% 101
  | c'4 bes8 a | g2 | d'4 c8 bes | ees2 ~
  %% 105
  | ees8  c bes a | d2 ~ | d8 bes a g | c2 ~ (
  %% 109
  | c2  | bes2\Cresc ) ~ | bes4. c16 bes | a4 r 
  %% 113
  \override TupletBracket.bracket-visibility = ##t
  | \tuplet 3/2 4 {
    r8 a, c a c a
  }
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  | f4 r
  | \tuplet 3/2 {
    r8 bes d bes d bes
  }
  | f8 r \tuplet 3/2 { a8\F c a }
  %% 117
  | f8 r \tuplet 3/2 { bes8 d bes }
  | f8 r \tuplet 3/2 { a8 c a }
  | f8 r \tuplet 3/2 { bes8 d bes }
  | f4 r
  %% 121
  | \tuplet 3/2 {
    r8 d' ees f g a
    | bes f ees d c bes
    | f'8 c' a f c a
  }
  | f4 r
  %% 125
  | d''4.\dolce ees16 d
  | c4 f
  | bes,4. c16 bes
  | a8 ( f e f )
  %% 129
  | \grace fis16 ( g4 ) \grace gis16 ( a4 )
  | \grace a16 ( bes4 ) \grace b16 ( c4 )
  | d2\tr
  | c8 a bes c
  %% 133
  | d4. ees16 d
  | c4 f
  | bes,4. c16 bes
  | a8 f e f
  %% 137
  | \grace fis16\CrescMark g4 \grace gis16 a4
  | \grace a16 bes4 \grace b16 c4
  | \grace cis16 ( d4 ) \grace ees16 ( e4 )
  | f4 r
  %% 141
  | bes,2\dolce ( | a | g | f
  %% 145
  | ees2 | d4 c ) | bes8 ( c d ees ) | f4 r
  %% 149
  | r4 bes ( | a aes | g ges | f f 
  %% 153
  | e4\Cresc ees )
  | d4 ees | f\F f, | bes8 f' bes d | c ( ees ) r ees
  %% 157
  | d8 c bes a | bes f bes d | c ees r ees | d c bes a
  %% 161
  | bes8 bes16 a g f ees d
  | c16 d ees f g f g a
  | bes8 d,16 c ees d c bes
  | a bes c d ees f ees c
  %% 165
  | d4 r8 a' | bes8 a bes a | bes4 r8 c, | d c d c
  %% 169
  | d8 bes' f d | bes4 r 
  \closingRepeatBar
}
