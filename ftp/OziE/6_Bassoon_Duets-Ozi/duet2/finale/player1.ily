
part = \relative c' {
  \clef bass
  \key bes \major
  \time 2/4
  %% 01
  | bes4\F f8 d'
  | c8 f d bes
  | a8 c f, g16 a
  | bes8 d16 c d8 bes
  %% 05
  | a8 f f'4 ~
  | f4 ees ~
  | ees8 d16 c bes8 c16 bes
  | a4 r
  %% 09
  | R2*2
  | f4 c8 a'
  | g8 c a f
  %% 13
  | e8 g c, d16 e
  | f8 [  a bes c ]
  | d2 ~
  | d2
  %% 17
  | c2 ~
  | c2
  | bes2 ~ bes2
  %% 21
  | a4 r
  | r8 a16\prall g a8 c
  | d2 ~
  | d8 g,16\prall fis g8 bes
  %% 25
  | c2 ~
  | c8 f,16 e f8 a
  | bes2 ~
  | bes8 e,16 d e8 g
  %% 29
  | a16 g f e f g a b
  | c16 bes a g f g a b
  | c8 [ c g ees ]
  | c4 r
  %% 33
  | a'4.\dolce bes16 a
  | g4 c
  | f,4. g16 f
  | ees8 [ ( c b c ] )
  %% 37
  | \grace cis16 ( d4 ) \grace dis16 ( e4 )
  |  \grace  e16^( f4 ) \grace  fis16^( g4 ) 
  | a2\trill
  | g8 [ e f g ]
  %% 41
  | a4. bes16 a
  | g4 c
  | f,4. g16 f
  | e8 [ c b c ]
  %% 45
  | \grace cis16\Cresc ( d4 ) \grace dis16^( e4 )
  |  \grace  e16 f4  \grace fis16^( g4 )
  | \grace gis16^(  a4 )  \grace bes16^( b4 ) 
  | c4 r
  %% 49
  | f,2\dolce ( | e2 | d2 | c2 )
  %% 53
  | bes2 | a4 g | f8 [ g a b ]
  | c4 r
  %% 57
  | r4 f ( | e ees | d4 des )
  | c c
  %% 61
  | b4 bes | a bes | c c,
  | f8 r r c'\F
  %% 65
  | e8 [ ( g c d ] ) | c [ ( bes a g ] ) | f8 r r c | e [ ( g c d ] )
  %% 69
  | c8\staccato [ ( bes a g  ] )
  | f8 a16 g bes a g f
  | e16 f g a bes c bes g
  | a8 f'16 e d c bes a
  %% 73
  | g16 a bes c d c d ees
  | f4 r8 e
  | f8 [ e f e ]
  | f4 r8 g,
  %% 77
  | a8 [ g a g ]
  | f8 [ f' f f ]
  | f4 r
  \bar ":|.|:"
  | f,4 r
  %% 81
  | c'4\F a8 f' | f4 r | a,4 f8 d' | d4 r
  %% 85
  | f,4 d8 bes' | bes4 r | d4 bes8 g' | g4 r
  %% 89
  | r8 g4 fis8 ~
  | fis8 \cAccOn ees4 \cAccOff d8 ~ | d c4 bes8 | a8 d4 c8
  %% 93
  | bes4 a
  | g4. a16 g
  | fis8 d16 e \cAccOn fis \cAccOff g a fis
  %% 97
  | g8 d c16 d a d
  | bes16 d e fis g a bes cis\staccato 
  | d8\staccato d, r4
  | R2*1
  %% 101
  | d4\P c8 bes | a2
  \override Beam.auto-knee-gap = #1
  | ees'4 d8 c
  | bes8 [ bes' a g ] | c,8 [ d ees c ]
  | f2
  %% 105
  | bes,8 [ c d bes ]
  | ees2
  | a,8 [ bes c a ]
  | d8 [ e fis d ]
  %% 109
  | g8\Cresc [ a bes a ]
  | g8 [ f  \cAccOn ees \cAccOff e ]
    \omit TupletNumber
    \override TupletBracket.bracket-visibility = ##f
  | \tuplet 3/2 { f8 \cAccOn a \cAccOff c a c a }
  | f4 r
  %% 113
  | \tuplet 3/2 { f8 bes d bes d bes }
  | f4 r
  | \tuplet 3/2 { f8 a c a\F c a }
  | \tuplet 3/2 { f8 bes d bes d bes }  
  %% 117
  | \tuplet 3/2 { f8 a c a c a }
  | \tuplet 3/2 { f8 bes d bes d bes }  
  | \tuplet 3/2 {
    f d ees f g a
  %% 121
    | bes f g a bes c
  }  
  \tuplet 3/2 {
    | d8 f ees d c bes
  }
  | f'2 ~
  | f4 r
  %% 125
  | bes,2\P (
  | a2 | g | f
  %% 129
  | ees
  | d4 c )
  | bes8 [ c d ees ]
  | f4 r
  %% 133
  | r4 bes (
  | a4 aes | g ges | f f
  %% 137
  | e ees\Cresc
  | d4 c )
  | bes4 bes'
  \override Beam.auto-knee-gap = #3
  | f8\F [ f' e ees ]
  %% 141
  | d4. ees16\dolce d
  | c4 f
  | bes,4. c16 bes
  | a8 [ f e f ]
  %% 145
  | \grace fis16 ( g4 ) \grace gis16 ( a4 )
  | \grace a16  bes4  \grace b16  c4 
  | d2\trill
  | c8 [ a bes c ]
  %% 149
  | d4. ees16 d
  | c4 f
  | bes,4. c16 bes
  | a8 [ f e f ]
  %% 153
  | \grace fis16 ( g4\Cresc ) \grace gis16 ( a4 )
  | \grace a16\F bes4 ees8 c
  | bes4 a
  | bes4 r8 f
  %% 157
  | a8 [ c f g ]
  | f [ ees d c ]
  | bes4 r8 f
  | a8 [ c f g ]
  %% 161
  | f [ ees d c ]
  | bes8 d,16 c ees d c bes
  | a16 bes c d ees f ees c
  | d8 bes'16 a g f ees d
  | c16 d ees f g f g a
  %% 165
  | bes4 r8 c
  | d8 c d c
  | d4 r8 a
  | bes8 [ a bes a ]
  %% 169
  | bes8 [ bes bes bes ]
  | bes4 r
  \bar ":|.|:"
  s32
  
}

