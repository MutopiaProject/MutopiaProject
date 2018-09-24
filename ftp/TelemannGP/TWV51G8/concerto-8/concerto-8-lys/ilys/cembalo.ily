mySharp = \markup \tiny { \sharp }
cembaloFirstMov = <<
\new FiguredBass {
  \figuremode {
      R1
    | <_>2. <6 5>8 < \mySharp >
    | <_>4 < \mySharp > <6> <6 4>
    | <_> <6 4> <_> <6>
    | <_> <\mySharp> <_> <5->
    | <_>2 <6>
    | <_> <6>
    | <_>4 <6> <_> <6>
    | <6 4> <5> <_>2
    | <_>1
    | <_>2 <6>
    | <6> <_>
    | R1*3
    | <6>4 <6> <\mySharp> <_>
    | <6> <6+> <_>2
    | <6 4>4 <5> <6 5> <_>
    | <\mySharp>1
    | <\mySharp>1
    | <\mySharp>1
    | <\mySharp>4 <6+> <5> <6>
    | <5+> <6> <_>2
    | <_> <6>
    | <6 5>4 <_>8 <\mySharp> <_>2 % check the first figure
    | <_>1 <_>2. <6 5>8 <_>
    | <\mySharp>4 <\mySharp> <6> <6 4>
    | <\mySharp> <6 4> <\mySharp> <6>
    | <\mySharp> <\mySharp> <_> <6 5->
    | <_>4. <\mySharp>8 <6>4. <\mySharp>8
    | <_>4. <\mySharp>8 <6>4. <\mySharp>8
    | <_>4 <6>8 <\mySharp> <_>4 <6>
    | <6 4> <5 3+> <_>2
    | R1*10
    | <_>2 <6>8 <\mySharp> <_>4
    | <_>2 <6>
    | <_> <6>
    | R1
    | <6>
    | <6>
    | R1
    | <_>2 <6>
    | <_> <6>
    | <6> <_>4 <6>
    | <_> <6> <_> <6>
    | R1
    | <6>2 <6 5>
    | R1*2
    | <_>2 <_>8 <6> <_>4
    | <_>8 <6> <_>4. <6>8 <_>4
    | R1*4
    | <5 3>2. <6>4
    | <_>8 <6> <_> <6> <_> <6> <_> <6>
    | <_>2 <6>
    | <_> <6>
    | <_>4 <6> <_> <6>
    | <6 4> <5 3>

  } }
\new Voice {
  \relative c {
  \globalFirstMov
  \clef bass
    g8 g g g g g g g
  | g4 r8 g' e d cis a
  | d4 a' fis8 fis16 g a8 b16 cis
  | d8 fis,16 g a8 b16 cis d4 cis
  | d a b fis
  | g8 g g d b b b d
  | g g g d b b b d
  | g4 fis8 d g4 b,8 g
  | d'4 d, g r

  % 10
  | g r g r8 g'
  | c b c a b4 r8 g
  | a g a d, g g, g g
  | g g g g g4 r
  | R1
  | r2 r4 r8 a'
  | b4 g a r8 b
  | cis4 a b r8 g
  | d'4 d, cis d
  | a'8 a, a a a a a a

  % 20
  | a4 r8 a d4 r8 d
  | a4 r8 a d4 r8 d
  | a' a, a' a b b, b' b
  | cis cis, cis' cis d d d d
  | b b b b fis fis fis fis
  | g4 r8 a d g, a a,
  | d d d d d d d d
  | d4 r8 d' b a gis e
  | a4 e cis8 cis16 d e8 fis16 gis
  | a8 cis,16 d e8 fis16 gis a4 gis

  % 30
  | a e fis cis
  | d8 d d a fis fis fis a
  | d d d a fis fis fis a
  | d4 cis8 a d4 fis8 d
  | a'4 a, d r
  | R1*3
  | e4 r r2
  | R1*2

  % 40
  | r2 a,4 r
  | R1*2
  | a8 a a a a a a a
  | a4 r8 a' cis a a, cis'
  | d4 r8 d8 b g g, b'
  | c,4 r8 c c' e c c,
  | fis a fis d g b g g,
  | cis e cis a d4 r8 d

  % 50
  | g4 r8 g, d'4 r8 d
  | e4 r8 e fis4 r8 fis
  | g4 r8 g a4 r8 a
  | b4 r8 b c e c a
  | d, d' gis, e a, a' fis d
  | g g g g e e e e
  | b b b b c4 r8 d
  | g c, d d, g g g g
  | g g g g g4 r
  | g r g'8 b e4

  % 60
  | r8 a, d4 r8 g, c4
  | r8 fis, b4 r8 e, a d,
  | g4 g, d'2~^"tasto solo"
  | d1~
  | d~
  | d
  | g,8 g g g g' a b g
  | d' b c a b g a fis
  | g g g d b b b d
  | g g g d b b b d

  % 70
  | g4 fis8 d g4 b,8 g
  | d'4 d, g2
  \bar "|."
  \pageTurn
} } 

>>

cembaloSecondMov = <<
\new FiguredBass { \figuremode {
      <_>4 <6> <_> <6>
    | <_>8 <6> <7> <7> <_>2
    | <7> <_>4 <6 5>
    | <_>8 <6> <_>2 <\mySharp>4
    | <_>1
    | R1*5
    | <_>4 <6> <_>2
    | <_>4 <6>8 <6> <7 3>2
    | <6 4> <7/ 4 2>
    | <5 3>4 <_>8 <6> <_> <6> <_>4
    | R1
    | <_>2.. <4 2>8
    | <6>4 <_>2.
    | <_>2 <7 3>2
    | <6 4> <7/ 4 2>
    | <5 3> <_>8 <6>
} }
\new Voice {
  \relative {
    \globalSecondMov
    \clef bass
      g,8 a b g c g b g
    | c b a d g, g'16 fis g8 e
    | fis d e e, a a'16 g fis8 d
    | g b,16 c d8 d, g'e a a,
    | d4 r r2
    | R1*5
    | d8 d16 e fis8 d g g, r g'
    | c, c16 d e8 c d d d d
    | d d d d d d d d
    | d4 r8 fis g b,16 c d8 d,
    | g4 r8 g' d4 r8 g
    | d4 r8 g d4 r8 c
    | b4 r c r
    | a r d8 d d d
    | d d d d d d d d
    | d4 r8 d g,16 a b c d8 d,
    | g2 r2
    \bar "|."
  }
}
>>

cembaloThirdMov = <<
\new FiguredBass { \figuremode {
    R2.
  | <6>2.
  | <7>2 <\mySharp>4
  | R2.
  | <4 2>2.
  | <_>2.
  | <6 4>4 <5 3>2
  | R2.*2
  | <6>2.
  | <6\\>
  | R2.
  | <4 2>
  | <6>
  | R2.
  | <6 4>4 <5 3>2
  | R2.*2
  | <6>2.
  | <7>4 <6\\>2
  | R2.*3
  | <5>2.
  | <_>4 <6>2
  | <\mySharp>2.
  | R2.
  | <6>2.
  | <7>4 <6\\>2
  | <\mySharp>4 <_> <6>
  | <_> <\mySharp> <_>
  | <_> <\mySharp> <_>
  | <_> <6> <\mySharp>
  | R2.
  | <6>2.
  | <7>2 <6\\>4
  | <\mySharp>2.
  | <\mySharp>
  | <6>
  | R2.
  | <6 4>4 <5 \mySharp>2
  | <_>4 <\mySharp>2
  | R2.*5
  | <6>2.
  | <6\\>2 <6>4
  | R2.
  | <6\\>2.
  | <\mySharp>
  | R2.*2
  | <_>4 <6> <\mySharp>
  | R2.
  | <6>2.
  | <_>2 <6>4
  | <\mySharp>2.
  | <\mySharp>4. <\mySharp>
  | <\mySharp>2.
  | R2.*2 
  | <_>2 <6>4
  | <\mySharp>2 <6>4
  | R2.*4
  | <6>2.
  | <7>2 <\mySharp>4
  | R2.
  | <6>2.
  | R2.
  | <6>
  | R2.*2
  | <6>
  | <7>2 <\mySharp>4
  | R2.
  | <4 2>2.
  | <6>
  | R2.*5
  | <6>2.
  | R2.
  | <6 4>4 <5 3>2

} }
\new Voice {
  \relative g {
    \globalThirdMov
    \clef bass
      g8 g16 g g8 g g g
    | fis fis16 fis fis8 fis fis fis
    | e e16 e e8 e a a,
    | d d16 d d8 d d d
    | c c16 c c8 c c c
    | b4 r r
    | c r r
    | d8 d16 d d8 d d d
    | g c, d4 d,
    | g' r r
    | fis r r
    | e r r
    | d8 d16 d d8 d d d
    | c c16 c c8 c c c
    | b4 r r
    | c r r
    | d8 d16 d d8 d d d
    | g c, d4 d,
    | g' r r
    | fis r r
    | e r r
    | d r r
    | g, d' r
    | g, d' r
    | g e a
    | d,8 d16 e fis8 d fis d
    | a' a16 b cis8 a cis a
    | d4 r r
    | cis r r
    | b r r
    | a b cis
    | d, a' r
    | d, a' r
    | d,8 d16 e fis8 g a a,
    | d8 d16 d d8 d d d
    | cis8 cis16 cis cis8 cis cis cis
    | b8 b16 b b8 b b b
    | a8 a16 a a8 a a a
    | g8 g16 g g8 g g g
    | fis4 r r
    | g r r
    | a8 a16 a a8 a a a
    | d g a4 a,
    | d r r
    | d8 d16 d d8 d d d
    | g4 r r
    | g,8 g16 g g8 g g g
    | c4 r r
    | b r r
    | a2 b4
    | c r r
    | a r r
    | b r r
    | R2.*2
    | e8 e16 fis g8 a b b,
    | e8 e16 e e8 e e e
    | d8 d16 d d8 d d d
    | c8 c16 c c8 c c c
    | b4 r r
    | e r8 e16 e e8 e
    | a,4 r r
    | d r8 d16 d d8 d
    | g,4 r r
    | c r cis
    | d r dis
    | e r r
    | R2.*2
    | g8 g16 g g8 g g g
    | fis fis16 fis fis8 fis fis fis
    | e e16 e e8 e a a,
    | d d16 d d8 d d d
    | b4 r r
    | c r r
    | cis r r
    | d r r
    | g8 g16 g g8 g g g
    | fis fis16 fis fis8 fis fis fis
    | e e16 e e8 e a a,
    | d d16 d d8 d d d
    | c c16 c c8 c c c
    | b8 b16 c d8 d d d
    | g c, d4 d,
    | g r r
    | g r r
    | g r r
    | g r r
    | b8 b16 b b8 b b b
    | c8 c16 c c8 c c c
    | d d16 d d8 d d d
    | g c, d4 d,
    | g2 r4
    \bar "|."
  }
}
>>
