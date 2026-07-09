
part = \relative c' {
  \clef bass
  \key d \minor
  \time 4/4
  \allegroModeratoTempo
  \omit TupletNumber
  \partial 2.
  \override TupletBracket.bracket-visibility = ##f
  r8 c8\dolce c c c c
  %% 001
  | c2 ~ c8 c c e
  | f4 r8 a, a a a a
  | a2 ~ a8 a a cis
  | d4 r8 f, ~ f f f f
  %% 005
  | f2\cresc ~ f8 f f a
  | bes8 d d d d e f e
  | d8 c bes bes bes a g f
  | e4 r4 r8\F d'8 d d
  %% 009
  | d8 cis d c bes a g f
  | g4 r r8 c8 c c
  | c b c bes a g f g
  | a4 r r8 a a a
  %% 013
  | a2 ~ a8 b b b
  | b2 ~ b8 c c c
  | c2 ~ c8 c c c
  | c2 ~ c8 c c c
  %% 017
  | bes4 r8 bes c c4 c8
  | bes4 r8 bes c c4 c8
  | bes4 r8 bes bes bes bes bes
  | bes4 r4 r8 r4 s8
  %% 021
  | r8 g\P e4 r8 e c4
  | r8 f8 d4 r8 d bes4
  | r8 bes g4. f'8 e d
  | e4. d8 c\cresc e d e
  %% 025
  | f8 ( e f e ) f f e f
  | g8 fis g fis g c, d e
  | f4 r f8 g a f
  | g8\F fis g fis g g a bes
  %% 029
  | c4. g8 ees'4. c8
  | \cAccOn bes4. \cAccOff aes8 f4. b8
  | d4. bes8 f'4. f,8
  | ees8 f g4 ees'4. d8
  %% 033
  | d8 c b c ees4. d8
  | d8 c b c d ees f f
  | f2 ~ f8 ees d c
  | c4 b r8\P c, ees g
  %% 037
  | aes2 r8 c,8 ees g
  | aes2 f8 g aes aes
  | aes8 g f g aes2
  | g4 r\dolce
  \tuplet 3/2 {
    g8 fis g a b c
  }
  %% 041
  | d4 r
  \tuplet 3/2 {
    d8 c b a g f
  }
  | e4 r \tuplet 3/2 {
    fis8 g a b c d
  }
  | e4 r \tuplet 3/2 {
    e8 d c b\cresc a g
  }
  | f4 r \tuplet 3/2 {
    g8 a b c d e
  }
  %% 045
  | f4 r \tuplet 3/2 {
    d8 c b a\F g f
    | e8 e f g a b c\prall b c d\prall c d
    | e8 g, a b c d e d e f e f
  }
  | g1
  %% 049
  | r8 g ( fis f ) e ( d c b )
  | a8 f' e d \grace { e16 } d8 c c b
  | c4\P r r c,
  | d4 r r b
  %% 053
  | c4 r r c
  | d4 r r b
  | c8 r e r e r e r
  | f r f r f r f r
  %% 057
  | fis8\cresc r fis r fis r fis r
  | g4\F r g\P r
  | g4 r f8\F [ f ] g, [ g ]
  | c8 d16 e f g a bes c8 e16 d c bes a g
  %% 061
  | f8 g16 a b c d e f8 d b f
  | e16 c d e f g a b c8 e16 d c b a g
  | f8 g16 a b c d e g8 d b f
  | e8 g'4 e c bes8
  %% 065
  | a8 f'4 c a f8
  | fis8 ees'4 ees ees ees8
  | r16 c b c e!  c b c e d c b c d e f
  | g8 g4 c,8 d2\tr
  %% 069
  | c4 c c r
  \bar ":|.|:"
  | ees4.\F d8 c \cAccOn bes \cAccOff a g
  | fis8 a d4 r2
  | d4. c8 bes a g f
  %% 73
  | \cAccOn e8 \cAccOff g bes4 r2
  | c4. bes8 aes g f ees
  | des8 f bes4 r2
  | ees4. des8 c bes aes g
  %% 77
  | f8 aes des4 r2
  | g4. f8 \cAccOn e \cAccOff des c bes
  | aes8 f aes c f2 ~
  | f8 \cAccOn e \cAccOff f ees
  \accidentalStyle no-reset
  des2 ~
  %% 81
  \set Staff.extraNatural = ##f
  | des8 c des \accidentalStyle default
  c bes2 ~
  | bes8 \cAccOn a \cAccOff bes a bes aes g f
  | \cAccOn e4 \cAccOff r8 c' f,8 f'4 f8
  | \cAccOn e4 \cAccOff r8 c f, f'4 f8
  %% 85
  | e4 r r2
  | r8\P aes, ( bes aes g f \cAccOn e \cAccOff des )
  | c8 ( des c b ) c4 r
  | r8 bes'8 ( c bes aes g f \cAccOn e ) \cAccOff
  %% 89
  | f4 s4 r8 f g f
  | ees2 ~ ees8 ees f ees
  | des8\cresc des \cAccOn e \cAccOff f g \cAccOn a \cAccOff bes a
  | bes aes g g g f e des
  %% 93
  | c8\F c' c c c c c c
  | c2 ~ c8 c c e
  | f4 r8 a, a a a a
  | a2 ~ a8 a a cis
  %% 97
  | d4 r8 f, f f f f
  | f2 ~ f8 f f a
  | bes8 d d d d e f d
  | c8 c\prall d bes a4 g\tr
  %% 101
  | f4 r r f,\P
  | c'4 r r c,
  | f4 r r f
  | c' r r c,
  %% 105
  | f8\PP r a r c r f, r
  | e8 r e r g r e r
  | f8 r a r c r f, r
  | e8 r e r g r e r
  %% 109
  | f8 r a r a r a r
  | bes8 r bes r bes r bes r
  | b8\cresc r b r b r b r
  | c4\F r c\P r
  %% 113
  | c4 r \repeat tremolo 4 c8\F
  | f,8 g16 a bes c d e f8 a16 c bes a g f
  | e16 d c d e f g a bes8 g e c
  | f,8 g16 a bes c d e f8 a16 c bes a g f
  %% 117
  | e16 d c d e f g a bes8 g e c
  | r8 c'4 a,8 f c''4 a,8
  | g8 c'4 g,8 e c''4 g,8
  | a8 c'4 a,8 f c''4 a,8
  %% 121
  | g8 c'4 g,8 e c''4 g,8
  | a8 c'4 a f ees8
  | d8 bes'4 f d bes8
  | b8 aes'4 aes aes aes8
  | r16 f e f a f e f c' bes a bes c d e f
  | c8-. d-. e-. f-. g,2\trill
  | f4 f f r
    \parenthesizedDoubleRepeat
  
  %% 073
  %% 077
  %% 021
  %% 025
  %% 029
  %% 033
  %% 037
  %% 021
  %% 025
  %% 029
  %% 033
  %% 037
  %% 021
  %% 025
  %% 029
  %% 033
  %% 037
  %% 021
  %% 025
  %% 029
  %% 033
  %% 037
  %% 021
  %% 025
  %% 029
  %% 033
  %% 037
  %% 021
  %% 025
  %% 029
  %% 033
  %% 037
  %% 021
  %% 025
  %% 029
  %% 033
  %% 037
  %% 021
  %% 025
  %% 029
  %% 033
  %% 037
  %% 021
  %% 025
  %% 029
  %% 033
  %% 037
}
