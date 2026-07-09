st=\staccato
part = \relative c' {
  \override TupletBracket.tuplet-slur = ##t
  \clef bass
  \key c \major
  \time 4/4
  \tempo "Allegro"
  \override TupletBracket.bracket-visibility = ##t
  \tupletUp
  | r8\F c, e g c,4 r
  | r8 c e g c,4 r
  | r8 g b d g b c d | d g, a b c c, d e
  | \repeat tremolo 4 f8 \repeat tremolo 4 f8
  | e4 r c e | f r d f | g8 g fis g g,2 ~ | g1
  | g4 r b r | c'2\F e4 s8 d8 | \grace e8 d8 c c4 r8 c e c
  | g4 d'4 ~ d8 d e f
  | f2 e4 r
  | a,2 d8 c b a | \grace a8 g4 c8 d e d c b | a8 cis d cis
  \tuplet 3/2 4 { d8 e d cis b cis } | c2 b4 r
  | R1*1
  | c4.\F a8 fis d e fis
  | g4 r r2
  | c4 ~ c16 b a g fis8 d e fis
  | g4. a16 g fis4 e
  | fis8 ( g ) gis ( a ) a4 r
  | a4. b16 a g4 fis
  | g8 ( a) ais ( b) b g a b
  | c b a g fis e fis gis
  | a8 ( \cAccOn g \cAccOff fis e fis d e fis )
  | g a b b g a b b
  | c8 b c b c b a g
  | c,4 r d d,
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 4 {
    | g8 b c d e fis g4*3/2 r
    | r8 d e fis fis g a4*3/2 r
    | r8 b, c d e fis g4*3/2 r
    | r8 d e fis fis g a a g a g fis
  }
  | g4\P r d r | g r d r | g, r r2
  \tuplet 3/2 4 {
    | c8 e g c g e c4*3/2 r
    | g8 b d g d b g8*3/2 r g'8 a b
  }
  | a4\st r a,\st g\st
  | fis4\st r fis\st e\st
  | d4 r fis fis' | g4 r \repeat tremolo 4 d8\F
  | g,4 r \tuplet 3/2 4 {
    r8 d''8 c b a g
    | fis4*3/2 r r8 c' b c b a
    | g4*3/2 r r8 d' c b a g
    | fis4*3/2 r r8 c' b c b a
    | b d c b a g fis a b c b a
    | b d c b a g fis a b c b a
    | b fis g a b c d g, a b c d
    | e4*3/2 r e,8 c e g  c  e
    | d4*3/2 r b,8 d g b c d
    | c8 a b c\prall b c a b [ c\prall ] g b[ c ]
    | fis,8 a b c\prall b c fis, b [ c ] e, b' [ c ]
    | d,8 e fis g a b c e d c b a
    | b8 d c b a g
  }
  a2\prall
  | g4 r d'4 ~ d16 c b a
  | g4 r d' ~ d16 c b a
  | g4 g g r
  \bar ":|.|:"
  | g,8\P g' fis g g,4 r
  | d8 d' cis d d,4 r
  | d8 d' cis d d,4 r
  | g8\cresc d' e fis g4 g8 fis
  | e d c b a gis' a g
  | fis8\F e d cis d ais' b a
  | g8 fis e d c b a g
  | fis4 a'4. b16 c b8 a
  | g4 d, d' d,
  | g4 r r d''8 b
  | a8 g g2 b8 b
  | \cAccOn f \cAccOff e e4 r e'8 c
  | b8 a a2 c8 a
  | g8 \cAccOn f \cAccOff f4 r f'8 ( e )
  | e8 ( d ) d ( c ) c ( b ) b ( a )
  | gis4 r e'4. d8
  | c4. e8 d c b a
  | gis4 r e'4. d8
  | c4. e8 d c b a
  | gis4 e'4 r2
  | R1*1
  | f,4.\dolce g16 f e4 d
  | d2 ( c4 ) b
  | a8 e' fis gis a a b cis
  | d8 e d c b2
  | c8 d c b a2
  | b8 c b a gis2
  | a4 r8 e\F fis gis a b
  | c4 c, d dis
  | e8 dis e dis e4 r
  | c'4.\dolce d16 c b4 a
  | a2 ( gis4 ) r
  | b4. c16 d e8 f e d
  | c4. b8 a c d e
  | f2 ~ f8 b, c d
  | e2 ~ e8 a, b c | d2 ~ d8 g, a b
  | c1\cresc ~ | c\F
  | b8 ( g a g ) f\P e f d
  | e4.\dolce f16 e d4 c
  | d8 e e f f4 r
  | f4. g16 f e4 d
  | e8 f fis g g c, d e
  | f e d c b ( a b cis ) | d ( \cAccOn c \cAccOff b a ) b ( g a b )
  | c8\cresc d e e c d e e | f e f e f e d c
  | f,4 r g\F g
  \tuplet 3/2 4 {
    | c8 e f g a b c4*3/2 r
    | r8 b, c d e f g4*3/2 r
    | r8 e f g a b c4*3/2 r
    | r8 b, c d e f g b c d c b
  }
  | c4 r g,\P b
  | c4 r g b
  | c r e, r
  \tuplet 3/2 4 {
    | f8 a c g c a f4*3/2 r
    | e8 g c e c g c,4*3/2 c'
  }
  | b4 r d\st c\st | b\st r b\st a\st
  | g4 r f2 | e4 r f fis g4 r \repeat tremolo 4 g8\F
  \tuplet 3/2 4 {
    c8 g' f e d c b d e f e d
    | e g f e d c b d e f e d
    | e b c d e f g c, d e f g
    | a4*3/2 r f8 a b c b a
    | g4*3/2 r e8 g b c g e
    | f8 d e f cis'd f, fis g e fis g
    | d d e f cis' d d, fis g c, fis g
    | b, c d e f g a b a g a b
    | c8 b a g f e d e d c b a
    | g8 g' f e d c
  }
  d2\prall
  | c4 r g'' ~ g16 f e d
  | c4 s g' ~ g16 f e d
  | c4 c c r
  \parenthesizedDoubleRepeat
}