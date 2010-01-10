\version "2.13.9"

\include "defs.ily"

clarinetIAllegro = \relative c'''
{
  \clef treble
  \key f \major
  \transposition bes
  r4 |
  R1*4 |
  aes2\f g |
  f8 bes a gis a4 g8 fis |
  g4 f8 e f2 |
  e8 r bes'4. bes8 a a |
  g4 c, r2 |
  R1*8 |
  \crescTextCresc
  r4 r8 g'\< a a bes bes |
  c2\f f,~ |
  f bes4 d |
  c2 a4 g |
  f1~ |
  f2 bes4 d |
  c2 a4 g |
  f r r2 |
  R1 |
  r4 a8-.\p a-. bes-. bes-. g-. g-. |
  f r a r f r r4 |
  R1*7 |
  r8 f\p f f f4 r |
  R1*2 |
  r4 bes r e, |
  f r r2 |
  R1*22 |
  e1\p |
  bes'(\f |
  a8) r r4 r2 |
  R1*3 |
  e4.\f fis8 g4 gis |
  a4 g8 fis e2 |
  f4 e8 d g2 |
  fis f |
  e g |
  a1 |
  g2 e4 d |
  g1 |
  a1 |
  g2 e4 d |
  c r r2 |
  R1 |
  r4 e8-.\p e-. f-. f-. d-. d-. |
  c4 r r2 |
  R1 |
  r4 aes'8-.\p aes-. g-. g-. f-. f-. |
  ees4 r r2 |
  R1*18 |
  r4 e(\p a) r |
  r d,( gis) r |
  r e( a) r |
  r d,( gis) r |
  r e( a) r |
  r e( b') r |
  r e,( bes') r |
  r bes-.( bes-.) r |
  R1*4 |
  aes2\f g |
  f8 bes a gis a4 g8 fis |
  g4 f8 e f2 |
  e8 r bes'4. bes8 a a |
  g4 c, r2 |
  R1*7 |
  r8 f\p f f f4 r |
  R1*2 |
  r4 bes r e, |
  f r r2 |
  R1*16 |
  a,8-.\p a-. r a-. a( bes) r bes-. |
  b( c) r4 r2 |
  R1*3 |
  a'1(\f |
  bes8) r r4 r2 |
  R1 |
  a1\p |
  g |
  f4 r r e( |
  f) r r e( |
  f) r r2 |
  R1 |
  f1~ |
  f~ |
  f4 r r2 |
  r e\f |
  f4 aes g2 |
  f4 bes a2 |
  g4 e f2~ |
  f4 f2 a4 |
  a2 r\fermata |
  f1~ |
  f2 bes4 d |
  c2 a4 g |
  f1~ |
  f2 bes4 d |
  c2 a4 g |
  f r r2 |
  R1 |
  r4 a8-.\p a-. bes-. bes-. g-. g-. |
  f4\f f8. f16 f4 f |
  f4 f8. f16 f4 f |
  f2 r |
}

clarinetIRomanze = \relative c''
{
  \clef treble
  \key bes \major
  \transposition bes
  R1*8 |
  d1\f |
  ees |
  R1*2 |
  d1\f |
  ees |
  R1 |
  f8\p r ees r d4 r |
  R1*2 |
  e1(\f |
  f4) r r2 |
  R1*2 |
  e1(\f |
  f4) r r2 |
  R1*2 |
  r4 ees2\f ees4 |
  d1 |
  ees |
  R1*2 |
  d1\f |
  ees |
  R1 |
  f8\p r ees r d4 r |
  R1*13 |
  r4 ges2.\sfp |
  r4 a2.\sfp |
  r4 bes2.\sfp |
  r4 c2.\sfp |
  des2\f e, |
  \repeat unfold 2 {f4 f8. f16 f4 e |}
  f4 r r2 |
  R1*2 |
  d1\p |
  ees |
  d8 r ees r f r ees4 |
  d2( c4) r |
  R1*7 |
  d4.(\p ees16 d) c4 r |
  ees4.( f16 ees) d8-. r ees-. r |
  d r c r bes4 r |
  R1*2 |
  ees4.( f16 ees) d8-. r ees-. r |
  d r c r bes4 r |
  R1*2 |
  f'8 r a r bes r r4 |
}

clarinetIRondo = \relative c''
{
  \clef treble
  \key f \major
  \transposition bes
  r8 |
  R2.*7 |
  r4 r8 r4 c8\f |
  f f f f f f |
  f4( fis8) g r c, |
  g' g g g g g |
  g4( gis8) a r r |
  ees4.(\p d8) r r |
  bes'4.( a8) r r |
  g r r e r r |
  f4 a8\f g4( a8) |
  g4( a8) g4( a8) |
  bes4 r8 r4 r8 |
  R2. |
  r8 r a\f g4( a8) |
  g4( a8) g4( a8) |
  bes4\fermata r8 r4 r8 |
  R2.*3 |
  f2.~\f |
  f8 f f f f f |
  f4 f8 f4 c8 |
  c a a a f f |
  f r c' f r c |
  f r c f r c |
  f4 r8 a4 r8 |
  f4 r8 r4 r8 |
  R2.*8 |
  f4.(\p e |
  f8) r r r4 r8 |
  a4.( g |
  a8) r r r4 r8 |
  R2.*13 |
  r8 c, c f a c, |
  f a c, f a c, |
  f4 r8 r4 r8 |
  R2.*9 |
  r8 c'\f c c c c |
  c c c c c c |
  c4 r8 r4 r8 |
  R2.*10 |
  r4 r8 r4 c,8\f |
  f f f f f f |
  f4( fis8) g r c, |
  g' g g g g g |
  g4( gis8) a r r |
  ees4.(\p d8) r r |
  bes'4.( a8) r r |
  g r r e r r |
  f r r r4 r8 |
  r4 r8 bes r r |
  a r r r4 r8 |
  r4 r8 g r r |
  d-.\f cis-. d-. ees-. f-. g-. |
  f-. ees-. d-. c-. bes-. a-. |
  bes4 r8 r4 r8 |
  R2.*7 |
  d2.~\p |
  d |
  ees~ |
  ees |
  d4 r8 ees4 r8 |
  f4 r8 r4 r8 |
  R2.*17 |
  f2.~ |
  f~ |
  f~ |
  f~ |
  f8 r r r4 r8 |
  R2. |
  r8 c c f a c, |
  f a c, f a c, |
  f4 r8 r4 r8 |
  R2.*4 |
  bes2.(\f |
  aes4) r8 r4 r8 |
  R2.*2 |
  bes2.(\f |
  aes4) r8 r4 r8 |
  R2.*3 |
  bes8\f bes bes bes bes bes |
  bes8 bes bes bes bes bes |
  bes4 r8 r4 r8 |
  R2.*8 |
  r4 r8 r4 c,8\f |
  f f f f f f |
  f4( fis8) g r c, |
  g' g g g g g |
  g4( gis8) a r r |
  ees4.(\p d8) r r |
  bes'4.( a8) r r |
  g r r e r r |
  f r r r4 r8 |
  R2.*3 |
  c'8-.\p c-. r c-. c-. r |
  c-. c-. r c-. c-. r |
  bes-. bes-. r bes-. bes-. r |
  bes-. bes-. r bes-. bes-. r |
  a r r r4 r8 |
  r4 r8 r r c, |
  \repeat unfold 4 {f a c,} |
  f4 r8 r4 r8 |
  R2.*3 |
  a,2.~ |
  a~ |
  a4 r8 r4 r8 |
  R2. |
  r8 r a'\f g4( a8) |
  g4( a8) g-. g( a) |
  bes4 r8 r4 r8 |
  R2. |
  r8 r a\f g4( a8) |
  g4( a8) g-. g( a) |
  bes4\fermata r8 r4 r8 |
  R2.*3 |
  f2.~\f |
  f8 f f f f f |
  f4 f8 f4 c8 |
  c a a a f f |
  f r c' f r c |
  f r c f r c |
  f f f f f f |
  f4 r8 f4 r8 |
  f4 r8 r4 r8 |
}

