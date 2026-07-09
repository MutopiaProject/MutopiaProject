st=\staccato
part = \relative c' {
  \clef bass
  \key c \major
  \time 4/4
  \allegroTempo
  | c2 e4. d8 | \grace e8 d8 c c4 r8 c e c
  | g4 d'4 ~ d8 d e f
  | f2 e4 r
  | a,2 d8 c b a
  | \grace a8 g4 c8 d e d c b
  | b8 a d e f e d c
  | b4 r8 d g ( fis f e )
  | d8 ( c b a g fis g a )
  | g8 gis a g f e f d
  | r8\P c e g c,4 r
  | r8\P c e g c,4 r
  | r8 g b d g b c d
  | d8 g, a b c c, d e
  | \repeat tremolo 4 f8 \repeat tremolo 4 f8
  | e4 r c d
  | f4 r f fis
  | g4 g, g' r
  | d'4. \F b8 g4 g | a4. fis8 d4 r
  | d'4 ~ d16 e d c b8 b g g
  | a4 ~ a16 g fis e d8 fis g a
  | b4. c16 b a4 g
  | a8 ( b ) b ( c ) c4 r
  | c4. d16 c b4 a
  | b8 ( c ) cis ( d ) d b c d
  | e2. d4
  | cis2 ( c )
  | b8 c d d b c d dis | e dis e dis e d c b
  | b8 a c a a g g fis
  \tupletUp
  \override TupletBracket.bracket-visibility = ##t
  | g4 r \tuplet 3/2 4 { r8 d' c b a g }
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  | fis4 r \tuplet 3/2 { r8 c' b c b a }
  | g4 r \tuplet 3/2 { r8 d' c b a g }
  | fis4 r \tuplet 3/2 {
    r8 c' b c b a
    | b8 d c b a g fis a b c b a
    | b d c b a g fis a b c b a
    | b fis g a b c d g, a b c d
  }
  | e4 r \tuplet 3/2 {e,8 c e g c e }
  | d4 r \tuplet 3/2 {
    b,8 d g b c d
    | c a b c\prall b c a  b [ ( c] ) g  b [ ( c ] )
    | fis,8 a b c\prall b c fis, b [ ( c] ) e, b' [ ( c ] )
    | d,8 e fis g a b c e d c b a
    | b8 d c b a g
  }
  a2\prall
  \tuplet 3/2 {
    | g8 b, c d e fis
  }
  g4 r
  \tuplet 3/2 {
    | r8 d e fis fis g
  }
  a4 r
  \tuplet 3/2 {
    | r8 b, c d e fis
  }
  g4 r
  \tuplet 3/2 {
    | r8 d e fis fis g a a g a g fis
  }
  | g4\P r d r
  | g r d r | g, r r2
  | \tuplet 3/2 { c8 e g c g e } c4 r
  | \tuplet 3/2 { g8 b d g d b } g4
  \tuplet 3/2 { g'8 [ a b ] }
  | a4\st r a,\st g\st
  | fis4\st r fis\st e\st
  | d4 r fis fis'
  | g4 r \repeat tremolo 4 d8\F
  | g,8 a b c d e fis d | g,8 a b c d e fis d | g8 g d b g4 r
  \bar ":|.|:"
  %% 061
  | d''4.\F b8 g4 g 
  | fis4. a8 b c d c
  | c4. a8 fis d e fis
  | g4. a8 b4 b8 a
  %% 065
  | \grace a8 g4 g4 ~ g8 b8 c b
  | \grace b8 a4 a4 ~ a8 cis8 d c
  | b8 a g fis e d c b
  | a4 c'4 ~ c8 d16 e d8 c
  %% 069
  | b8 g b d d c b a
  | g8\st \P [  b\st ] g\st r g\st [ b\st ] g\st r
  | b,8\st[  d\st]  b\st r b\st [ d\st ] b\st r
  | c8\st [ e\st ] c\st r c\st [ e\st ] c\st r
  | c8\st  [ e\st ] c\st r c\st [ e\st ] c\st r
  | d8 [ \cAccOn  f ] \cAccOff d8 r d f d c
  | b4 c d dis
  | e8\cresc gis e fis gis a b gis
  | a8 e c a b c d dis
  | e8\F gis e fis \cAccOn gis \cAccOff a b gis
  | a8 e c a b c d dis
  | e4 e, r2
  | c''4.\dolce d16 c b4 a
  | a2 gis4 r
  | b4. c16 d e8 f e d
  | c4. b8 a cis d e
  | f2 ~ f8 f g f
  | e2 ~ e8 e f e
  | d2 ~ d8 d e d
  | c8\F e, fis gis a b c d
  | e8 e e e f d b a
  | a2 gis4 r
  | R1*1
  | f4.\dolce g16 f e4 d
  | d2 c4 ( b )
  | a8 e' fis gis a2 ~
  | a8 a b a g2 ~
  | g8 g a g f2 ~
  | f8 f g f e2 ~
  | e8 \cresc e f e d e f e
  | e8 f g e fis\F g a fis
  | g4 r r2
  | c4.\dolce d16 c b4 a
  | b8 c cis d d4 r
  | d4. e16 d c4 b
  | c8 d dis e e e, f g
  | a2. g4
  | fis2 f2
  | e8 f g g e\cresc f g gis
  | a8 gis a gis a g f e
  | d8\F d' f d d2\prall
  | c4 r \tuplet 3/2 { r8 c d e d c }
  | b4 r \tuplet 3/2 { r8 d e f e d }
  | c4 r \tuplet 3/2 { r8 c d e d c }
  | b4 r \tuplet 3/2 {
    r8 d e f e d
    | c g f e d c b d e f e d
    | e g f e d c b d e f e d
    | e b c d e f g c, d e f g
  }
  | a4 r \tuplet 3/2 {
    a8 a b c b a
  }
  | g4 r \tuplet 3/2 {
    e8 g b c g e
    | f d e f cis' d f, fis g e fis g
    | d d e f cis' d   d, fis g c, fis g
    | b, c d e f g a b a g f b
    | c b a g f e d e d c b a
    | g g'  f e d c
  }
  d2\prall| c4 r g\P b
  | c r g b | c4 r r e, 
  \tuplet 3/2 {
    | f8 a c f c a 
  }
  f4 r
  | \tuplet 3/2 { e8 g c e c g } c,4 c'
  | b4 r d\st c\st | b\st r b\st a\st | g4 r f2
  | e4 r f fis
  | g4 r \repeat tremolo 4 g8\F 
  | c8 d e f g a b g 
  | c,8 d e f g a b g
  | c8 c g e c4 r \bar ":|.|:"
}