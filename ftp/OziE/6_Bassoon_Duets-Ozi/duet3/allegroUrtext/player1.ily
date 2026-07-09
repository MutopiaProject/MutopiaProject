
part = \relative c'' {
  \clef bass
  \key d \minor
  \time 3/4
  \allegroTempo
  \partial 4.
  a,8\F d e
  \allegroFirstBar
  %% 01
  | f4. e8 d c
  | c4 ( \autoBeamOff bes8 ) \autoBeamOn    g bes d
  | cis4 e8 \cAccOn cis \cAccOff a g
  | g4 ( \autoBeamOff f8 ) \autoBeamOn  a b cis
  %% 05
  | d8 cis d f, g a
  | bes8 a bes e, f g
  | a8 gis a g f e
  | d8 cis'\dolce [ d c bes a ]
  %% 09
  | c8 bes bes4 r
  | r8 b c bes a g
  | bes8\F ( [ a ] ) a a bes a
  | g4. bes8 c bes
  %% 13
  | a4. c8 d c
  | bes4. d8 e d
  | c4. a,8 bes c
  | d8 e f c d e
  %% 17
  | f8 g a e f g
  | a8 bes c f, g a
  | bes8 a g a bes c
  | d8 c bes a g f
  %% 21
  | c'4 c, r
  | c'2\dolce
  \cAccOn
  bes4
  \cAccOff
  | aes4 aes ( g )
  | f4 f'2
  %% 25
  \cAccOn
  | e4 ( \cAccOff c ) c
  | des2. ~
  | des4 c2 ~
  | c4 bes2 ~
  %% 29
  | bes4 aes2 ~
  | aes4 g f
  \cAccOn
  | e4 r r
  \cAccOff
  | f,4 f'2
  %% 33
  | \cAccOn e8 \cAccOff d c d e f
  | g8 f e c d e
  | f4 f,8 f'8 g a
  | bes2 a4
  %% 37
  | g8 f e e f g
  | a2 g4
  | f4 r r
  | r8 f8\F ( g a bes a )
  %% 41
  | g8 ( b c bes a g )
  | f8 a bes a g f
  | e8 g a g f e
  | d8 f g f e d
  %% 45
  | c8 d e f g e
  | f8 g a bes c d
  | e8 dis e d c bes
  | a8 bes, c4 c,4
  %% 49
  \tupletUp
  \override TupletBracket.bracket-visibility = ##t
  \tuplet 3/2  4 {
    | f8 a' c 
      \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
c\prall b c c\prall b c
    | g8 b c c\prall b c c\prall b c
    | f, a c c\prall b c c\prall b c
    | g8 b c c\prall b c c\prall b c
    %% 53
    | a8 c a f a bes c d ees
    | d8 \cAccOn  e \cAccOff f bes, c d g, a bes
    | e,8 f g c, e f g a bes
    | a8 f a c d e f c a
    %% 57
    | d8 bes g c a f bes g e
  }
  | f4\P r f
  | e4 r e
  | f4 r f
  %% 61
  | e4 r e
  | f4 r a,
  | bes4 g e
  | c r e
  %% 65
  | f4 r a
  | bes4 c c,
  \allegroFagotOneFirstRepeat
  | a''4.\dolce c8 a g
  %% 69
  | f4 r r
  | g4. bes8 g f
  | e4. g8 a bes
  | c4 f4. e8
  %% 73
  | e4 ( d ) bes8 a
  | g4 c4. bes8
  | bes8\Cresc a f a c ees
  | d4 r r
  %% 77
  | r8 d g, b d f
  | \cAccOn e2.\F ~ \cAccOff 
  | e8 c b c d e
  | f2. ~
  %% 81
  | f2. | f2. | fis2. | g2 g4
  %% 85
  | fis2. | g2 g4 | fis2 g4 | fis4 r r
  %% 89
  | R2.*1
  | g,2\dolce a4\trill \grace { g16 a } 
  | bes2. ~
  | bes8 bes c bes a g
  %% 93
  | fis4 r r
  | fis2 g4\trill  \grace { fis16 g }
  | a4. a8 g fis
  | g4 r g
  %% 97
  | ees4 c f
  | d4 bes ees
  | c4 a d
  | g,4 r g'
  %% 101
  | ees4 c f | d4 bes ees | c4 a d | g, r g\cresc
  %% 105
  | fis4 r f
  | e4 r ees
  | d4 b''2
  | a2 a8 b
  %% 109
  | c4. d16 e d8 c
  | c4 b b8 a
  | g4 r c8 b
  | a4 r d8 c
  %% 113
  | b4 r\F e8 d
  | cis2 d8 e
  | f2 e8 d
  | d4 ( cis8 ) f e d
  %% 117
  | d4 cis8 f e d
  | d4 cis r
  | r8\P f, e d g f
  | f4 ( e8 ) r r4
  %% 121
  | r8 e d cis f e
  | e4 ( d8 ) r r4
  | g8 f e d c e
  | f e d c bes d 
  %% 125
  | e d cis bes a cis
  | d cis d e f g
  | \tuplet 3/2 { f8 g g, } a4 a
  | \tuplet 3/2 { d8 f e f a gis a f d }
  %% 129
  | cis4 r r
  | \tuplet 3/2 { d8 f e f g gis a f d }
  |  cis4\P r cis
  | d4 r d
  %% 133
  | cis4 r cis
  | d4 r d
  | cis4 r cis
  | d4 r d
  %% 137
  | g4 e cis
  | a r cis
  | d4 r f,
  | g4 a a 
  %% 141
  | d4 r r
  \tuplet 3/2 {
    | a8\F cis e a bes a bes a g
  }
  | f4 r r
  \tuplet 3/2 {
    | a,8 cis e a bes a bes a g
    %% 145
    | d8 f a a\prall g a a\prall g a
    | e8 g a a\prall g a a\prall g a
    | d,8 f a a\prall g a a\prall g a
    %% 149
    | e8 g a a\prall g a a\prall g a
    | f8 a f d fis g a \cAccOn bes \cAccOff c
    | bes8 c d g, a bes e, f g
    | cis,8 d e a, cis d e f g
    %% 153
    | f8 d f a \cAccOn bes \cAccOff cis d a f
    | bes8 g e a f d g e cis
  }
  | d4 d r
    \allegroSecondRepeatBarLine

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