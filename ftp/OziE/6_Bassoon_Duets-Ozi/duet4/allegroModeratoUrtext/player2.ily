
part = \relative c' {
  \clef bass
  \key d \minor
  \time 4/4
  \allegroModeratoTempo
  \partial 2.
  r4 r2
  \repeat volta 2 {
    %% 001
    | r8\dolce a a a a bes a g
    | f4 r r2
    | r8 f f f f g f e
    | d4 r r2
    %% 005
    | r8\cresc d d d d ees d c
    | bes8\F bes' bes bes bes c d c
    | bes8 a g g g f \cAccOn e \cAccOff d
    | c8 c' c c c c c c 
    %% 009
    | bes a bes a g f e d
    | e8 bes' bes bes bes bes bes bes
    | a8 gis a g f e d e
    | f8\FF g g g g2 ~
    %% 013
    | g8 f f f f2 ~
    | f8 f f f f2 ~
    | f8 e e e e2 ~
    | e8 d d d d fis fis fis
    %% 017
    | g8 a g \cAccOn f \cAccOff e d e fis
    | g8 a g \cAccOn f \cAccOff e d e fis
    | g4 r8 g g g g g
    | g2 r8 g a bes
    %% 021
    | c4. g8 e'4. c8
    | bes4. g8 d'4. bes8
    | f'4. ( d8 bes ) a g f
    | g4. ( f8 e ) c'8 bes c
    %% 025
    | cis2 ( d8 ) d c d
    | dis2 ( e8 ) e d c
    | b a b cis d e f d
    | b  4 r r2
    %% 029
    | r8\P g ees4 r8 ees c4
    | r8 f d4 r8 d8 b4
    | r8 b  g4 r8 d' b  g
    | c8 d ees4 r8 c ees g
    %% 033
    | aes2\rinf r8 c, ees g
    | aes2 f8 g aes aes
    | aes8 ( g aes g ) aes4 f8 fis
    | g4 r ees'4. d8
    %% 037
    | d8 c b c ees4.\F d8
    | d8 c b c d e f f
    | f8 ees d ees d c b c
  \override TupletBracket.bracket-visibility = ##t
  \tupletUp
    \tuplet 3/2 4 {
      | b8\dolce g fis 
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
      g d b
    }
    g4 r
    %% 041
    \tuplet 3/2 {
      | r8 g' fis g d b 
    }
    g4 r
    | \tuplet 3/2 {
      r8 g' fis g e c 
    }
    g4 r
    | \tuplet 3/2 {
      r8 g' fis g e c 
    }
    g4 r
    | \tuplet 3/2 {
      r8 g' fis g e c 
    }
    g4 r
    %% 045
    \tuplet 3/2 {
      | r8 g' fis g d' c b a g f e d
      | c c d e f g g\prall g a b\prall a b
      | c8 e, f g a b c\prall b c d\prall c d
      | e e dis e c b c g fis g e d
    }
    %% 049
    | e1
    | f8 ( a g e ) f ( e ) e ( d )
    | c8 d16 e f g a b c8 e16 d c b a g
    | f8 g16 a b c d e f8 d b f
    %% 053
    | e16 c d e f g a b c8 e16 d c b a g
    | f8 g16 a b c d e f8 d b f
    | e8 g'4 e c \cAccOn bes8 \cAccOff
    | a8 f'4 c a f8
    %% 057
    | fis8 ees'4 ees ees ees8
    | r16 c b c ees c b c ees d c b c d ees f
    | g8 g4 a,8 d2\prall
    | c8 r r4 r c,\P
    %% 061
    | d8 r r4 r b
    | c r r c
    | d4 r r b
    | c8 r e r e r e r
    %% 065
    | f8 r f r f r f r
    | fis8 r fis r fis r fis r
    | g4\F r g\P r
    | g4 r g8\F g g, g
    \alternative {
      {
	%% 069
	| c8 c' g e c4  r4
      }
      {
	| c8 c' g e c4 r4 
      }
    }
  }
  \repeat volta 2 {
    |
    | R1*1
    | a'4.\F g8 fis ees d c
    | \cAccOn bes8 \cAccOff d g4 r2
    %% 73
    | g4. f8 \cAccOn e8 \cAccOff des c \cAccOn bes \cAccOff
    | aes8 c f4 r2
    | bes4. aes8 g f ees des
    | c8 ees aes4 r2
    %% 77
    | des4. c8 bes aes g f
    | \cAccOn e8 \cAccOff g c des c bes aes g
    | f4 r r8 f aes c
    | des4. c8 \cAccOn bes a \cAccOff bes a
    %% 81
    | bes4. aes8 g fis g fis
    | g4. fis8 g f \cAccOn e \cAccOff des
    | c8 c \cAccOn d e \cAccOff f g aes b
    | c8 c, d e f g aes b
    %% 85
    | c4 r r8 c c c
    | c2 bes8 aes g f
    | f2 e8 c' c c
    | c4. des8 c \cAccOn bes \cAccOff aes g
    %% 89
    | aes8 aes bes c des2 ~
    | des8 g, aes bes c2 ~
    | c8 f, g aes bes\cresc c des c
    | des8 c bes bes bes aes g f
    %% 93
    | \cAccOn e4 \cAccOff r r2
    | r8\F bes' bes bes bes bes bes bes
    | a4 r r2
    | r8 g g g g g g g
    %% 97
    | f4 r r2
    | r8 ees ees ees ees ees ees ees
    | d8 bes' bes bes bes c d bes
    | a8 a bes g f4 e
    %% 101
    | f,8 g16 a bes c d e f8 a16 c bes a g f
    | e16 d c d e f g a bes8 g e c
    | f,8 g16 a bes c d e f8 a16 c bes a g f
    | e d c d e f g a bes8 g e c
    %% 105
    | r8 c'4 a,8 f8 c''4 a,8
    | g8 c'4 g,8 e c''4 g,8
    | a8 c'4 a,8 f c''4 a,8
    | g8 c'4 g,8 e c''4 g,8
    %% 109
    | a8 c'4 a f ees8
    | d8 bes'4 f d bes8
    | b8\crescMark aes'4 aes aes aes8
    | r16 f e f a f e f c' bes a bes c d e f
    %% 113
    | c8-. d-. e-. f-. g,2\prall
    | f4 r r f,\P
    | c'4 r r c,
    | f4 r r f
    %% 117
    | c' r r c,
    | f8\PP r a r c r f, r
    | e8 r e r g r e r
    | f8 r a r c r a r
    %% 121
    | e8 r e r g r e r
    | f8 r a r a r a r
    | bes8 r bes r bes r bes r
    | b8\cresc r b r b r b r
    %% 125
    | c4\F r c\P r
    | c r \repeat tremolo 4 c8\F
    | f,8 f' c a f4 r
    \bar ":|."
  }
  
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
