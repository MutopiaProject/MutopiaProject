signatures = {
  \clef bass
  \time 2/4
  \key c \major
}
themeA = \relative c' {
  %% 01
  \set Timing.beamExceptions=\beamExceptions { 8 [ 8 8 8] | 16 [ 16 16 16] 16 [ 16 16 16] }
  e,8 e e e | f f f e
  | d4 ~ d16  f e d | f e d e e c d e
  | f8 f f f | e4 ~ e16 e d c
  | b4 c8 fis
  | g g g4
}
themeB = \relative c' {
  g,16 d' b d g, d' b d | a d c d a d c d
  | b8 b b b
  | c4 e
  | f16 f e f \bentKnee f,8 f'
  | g8 g  c e, | \bentKnee f f g g, | c g c,4
}
varOneA = \relative c' {
  \set Timing.beamExceptions=\beamExceptions { \tuplet 3/2  { 16 [16 16] 16 [ 16 16] 16 [16 16] 16 [16 16] } }
  \tuplet 3/2 8 {
    g16 e f g a b 
    \omit TupletNumber
    \override TupletBracket.bracket-visibility=##f
    c g f e d c
    | f, a c f a c f e d e d c
    | b c cis d dis e g f e d c b
    | c g f e f g c,8*3/2 g'
    | a16 c c c b c f e d c b a
    | g e f g a b c e f g f e
    | d cis d f e d e d c c b c
  }
  | e4 ( d )
}
varOneB = \relative c' {
  \tuplet 3/2 8 {
    d16 e c b c a g d' c b a g | fis a g fis a g fis a d d d d
    | d f e d e c b c a g a f
    | f16*3/2 e e8*3/2 c'16 b c e d c
    | b a a a b cis d cis d f e d
    | c e c b d g f e d c b bes
    | a \cAccOn b \cAccOff cis d e f e c e d b d
  }
  d4 c
}
varTwoA = \relative c' {
  e,2 f
  | d4  d16 [ f e d ]
  | \repeat tremolo 4 e8
  | f4 a8 f
  | e4 ~ e16  e d c
  | b4 c8 [ fis ]
  | \bentKnee g8 [ g,] g'4
}
varTwoB = \relative c' {
  \repeat tremolo 4 g,8
  |   \repeat tremolo 4 a8
  |   \repeat tremolo 4 b8
  | c8 [ c ] e4 | f f | g c,8 [ e ] | f4 \bentKnee g8 [  g, ]
  #(if facsimile #{
    \tweak self-alignment-X #CENTER
    \textMark \markup \italic { \hspace #4 au Grazioso Sans reprise }
       #})
  | c [ g ] c,4
}

