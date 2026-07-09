
part = \relative c' {
  \clef bass
  \key d \minor
  \time 3/4
  \allegroTempo
  \partial 4.
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  \override Beam.auto-knee-gap = #1.5
  r4 r8
  \allegroFirstBar
  %% 01
  | r8\F a, [ d e ] f fis
  | g8 d g,4 r
  | r8 a cis e cis a
  | d8 \bmOn a \bmOff d, a' b cis
  %% 05
  | d4 r8 f,8 g a
  | bes4 r8 e,8 f g
  | a8 r r a\F d e
  | f4. e8 d fis
  %% 09
  | g4 g,8 g bes d
  | e4. c8 d e
  | f4 f, r8 f'
  | g8 f e4 r8 g8
  %% 13
  | a8 g f4 r8 a
  | bes8 a g4 r8 bes
  | c8 bes a f, g a
  | bes8 c d a bes c
  %% 17
  | d e f c d e
  | f8 g a f e ees
  | d8 c bes a g a
  | bes c d c bes b
  %% 21
  | c4 c, r
  | R2.*1
  | f'2\dolce ees4
  | des4 c b
  %% 25
  | c8 ( d \cAccOn e \cAccOff f g aes )
  | bes8 ( aes g f ees g )
  | aes8 ( g f ees des f )
  | g8 ( f \cAccOn e \cAccOff d c e ) 
  %% 29
  | f8 ( e f ees des c )
  | des ( c \cAccOn bes \cAccOff c des b )
  | c8\F c d \cAccOn e \cAccOff f g
  | \cAccOn a2 \cAccOff c4
  %% 33
  | g4 r g8 a
  | bes2 c4
  | bes4 a8 a bes c
  | d2 c4
  %% 37
  | bes8 [ a ] g g a bes
  | c2 bes4
  | a8\F ( c d e f e )
  | f2. ~
  %% 41
  | f4 e2 ~ | e4 d2 ~ | d4 c2 ~ | c4 b2 (
  %% 45
  | bes2. )
  | a8 bes c d e f
  | g fis g f e d
  | \tuplet 3/2 { c8 d bes } a4 g
  %% 49
  | f4\P r f
  | e r e
  | f r f,
  | bes4\staccato g\staccato e\staccato
  %% 53
  | c4 r e
  | f4  r a
  | bes4 c c
  \tuplet 3/2 {
    | f8\F a c c\prall b c c\prall b c
  %% 57
    | g8 b c c\prall b c c\prall b c
    | f,8 a c c\prall b c c\prall b c
    | g8 b c c\prall b c c\prall b c
    | f,8 a c c\prall b c c\prall b c
    %% 61
    | g8 b c c\prall b c c\prall b c
    | a8 c a f a bes c d ees
    | d \cAccOn e \cAccOff f bes, c d g, a bes
    | e, f g c, e f g a bes
  %% 65
    | a8 g a c d e f c a
    | d8 bes g c a f bes g e
  }
  \allegroFagotTwoFirstRepeat 
  %% 69
  | f,4 r r
  | r8\P a' f c a f
  | c4 r r
  | r8 g''8 e c f g
  %% 73
  | a g f g a f
  | bes8 f bes, bes' g f
  | e8 c e g e c
  | f4 f, r
  %% 77
  | r8\cresc a' bes f d bes
  | bes,4 r r
  | r8 b'' c g e c
  | c,4 c''\F \cAccOn bes \cAccOff
  %% 81
  | a8 ( f g a bes a )
  | bes8 ( g a b c b )
  | c8 a \cAccOn bes \cAccOff c d ees
  | d8 c a fis d c
  %% 85
  | bes8 d g d bes g
  | d'8 c' a fis d c
  | bes8 d g d bes g
  | d'8 a' fis a bes g
  %% 89
  | d4 r r
  | bes'2\dolce
  <<
    { \voiceTwo c4\tr }
    \\
    { \voiceOne s8. \cadenzaOn \grace {bes16 c } \cadenzaOff s16 }
  >>
  | d2. ~
  | d8 d e d c bes
  %% 93
  | c2 r4
  | a2
  <<
    { \voiceTwo bes4\tr }
    \\
    {
      \voiceOne s8. \cadenzaOn \grace { a16 bes } \cadenzaOff s16
    }
  >>
  | c2. ~
  | c8 c d c bes a
  %% 97
  | bes4 d2 ~
  | d4 ees c ~
  | c4 d bes ~
  | bes c a
  %% 101
  | bes d2 ~
  | d4 ees c ~
  | c4 d bes ~
  | bes4 c a
  %% 105
  | bes8 r bes4.\F a16 g
  | a8 r b4. a16 b
  | c8 r cis4. b16 cis
  | d4 r g,
  %% 109
  | fis4 f2
  | e4 fis2 | g4 g, g'8 fis
  | e8 ( d c bes' \cAccOn a \cAccOff g )
  %% 113
  | fis8 ( e d c' bes \cAccOn a ) \cAccOff 
  | g8 ( \cAccOn f \cAccOff e d' c bes )
  | a8\F ( \cAccOn bes \cAccOff a g \cAccOn f \cAccOff e )
  | d8 ( cis d f g gis )
  %% 117
  | a8 gis a f g gis
  | a gis a f g gis
  | a4 a,8\dolce a' a a
  | a4. f8 bes a
  %% 121
  | a4 ( g8 ) g g g
  | g4. e8 a g
  | g4 ( f8 ) a g a
  | bes2. ~
  %% 125
  | bes4 a2 ~
  | a4 g2 ~ | g4 ( f8 ) g a bes
  | a8\F bes16 g f4 e
  %% 129
  | d4 r r
  \tuplet 3/2 {
    | a8 cis e a bes a bes a g
  }
  | f4 r r
  \tuplet 3/2 {
    | a,8 cis e a bes a bes g e
    %% 133
    | d f a a\prall g a a\prall g a
    | e g a a\prall g a a\prall g a
    | d, f a a\prall g a a\prall g a
    | e g a a\prall g a a\prall g a
    %% 137
    | f a f d fis g a \cAccOn bes \cAccOff c
    | bes c d g, a bes e, f g
    | cis, d e a, cis d e f g
    | f8 d f a b cis d a f
  %% 141
    | bes8 g e a f d g e cis
    | d f e f a gis a f d
  }
  | cis4 r r
  \tuplet 3/2 {
   | d8 f e f a gis a f d
  }
  %% 145
  | cis4\P r cis
  | d r d
  | cis r cis
  | d r d
  %% 149
  | cis4 r cis
  | d4 r d
  | g4\staccato e\staccato cis\staccato
  | a\staccato r cis\staccato
  %% 153
  | d4\staccato r f,\staccato
  | g4\staccato\F a\staccato a\staccato
  | d4\staccato d,\staccato r
  \bar ":|."

  %% 153

  %% 157
  %% 161
  %% 165
  %% 169
  %% 173
  %% 177
  %% 181
  %% 185
  %% 189
  %% 193
  %% 197
  %% 201
  %% 205
  %% 209
  %% 213
  %% 217
}