\version "2.11.62"

\header {
   title             = "Air"
   subtitle          = "From Orchestral Suite Number 3"
   composer          = "J. S. Bach (1685-1750)"
   opus              = "BWV 1068, Mvmt. 2"
   
   mutopiatitle      = "Air"
   mutopiacomposer   = "BachJS"
   mutopiaopus       = "BWV 1068, Mvmt. 2"
   mutopiainstrument = "Orchestra"
   source            = "Bach-Gesellschaft"
   style             = "Baroque"
   copyright         = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer        = "jeff covey"
   maintainerEmail   = "jeff.covey@pobox.com"
   maintainerWeb     = "http://pobox.com/~jeff.covey/"
   lastupdated       = "2006/08/16"
   
 footer = "Mutopia-2008/10/28-242"
 tagline = ""
}

global =  {
   \key d \major
   \time 4/4
   \repeat volta 2 { \skip 1*5 }
   \alternative { { \skip 1*1 } { \skip 1*1 } }
   \repeat volta 2 { \skip 1*12 }
}

violinone =  \relative c'' {
   fis1 ~                                                     | % 1
   fis8 b16 g \acciaccatura {fis8} e16 d cis d cis4
   \acciaccatura {b8} a4                                      | % 2
   a'2 ~ a16 fis c(  b) e( dis) a'(  g)                       | % 3
   g2~ g16 e b( a) d( cis) g'( fis)                           | % 4
   fis4. gis16( a) d,8[ d32 e fis16] ~ fis e e(  d)           | % 5
   cis16[ b b32 cis d16] ~ d8 cis16 b a2                      | % 6
   cis16[ b b32 cis d16] ~ d8 cis16 b a2                      | % 7
   cis4 ~  cis16[ d32 cis b cis a16] a'4. c,8                 | % 8
   b b' ~ b16 a g fis g4 ~  g32[ fis ( e  d) cis!16 b]        | % 9
   ais b cis8 ~ cis16 d e8 ~ e16 fis g8 ~ g fis               | % 10
   e16 d cis b  cis[ ( d32  e) d8] b2                         | % 11
   d4~ d16 fis e d b'4~ b8 a16 gis                            | % 12
   \acciaccatura{fis8} e16 a a,8 b8. ( cis32  d) cis8. b16 a4 | % 13
   d4. fis16(  e) e4. g16(  fis)                              | % 14
   fis4. a16(  g) g2                                          | % 15
   a,4 ~ a16 cis e g g e fis8 ~ fis ~ fis16 g32 a             | % 16
   d,4 ~ d16 fis a c b4. d,8                                  | % 17
   cis!16 e g4 b,8 a e'16 fis32 g ~ g16 fis8 e16              | % 18
   d32[ cis b8 cis16] d8( cis16)^\trill d d2\fermata          | % 19
}

violintwo =  \relative c'' {
   d1 ~                                                       | % 1
   d4 b a2 ~                                                  | % 2
   a8 c16 b c8 a'16 c, b8 r r4                                | % 3
   b8 e16 d e fis g e a,8 r r4                                | % 4
   a2 ~ a8 gis16 a b8 gis                                     | % 5
   a a(  a) gis e2                                            | % 6
   a8 a(  a) gis e2                                           | % 7
   a2 ~ a16 b c8 ~ c16 b a g                                  | % 8
   fis4. dis'8 e2 ~                                           | % 9
   e ~ e16 d! cis b ais b cis8                                | % 10
   b b b ais fis2                                             | % 11
   e4 fis b,8 e16 fis gis a b8 ~                              | % 12
   b a4 gis8 a2 ~                                             | % 13
   a8 b16 c b cis d8 ~ d cis16 b cis dis e8 ~                 | % 14
   e dis16 cis dis e fis8 ~ fis16 dis! e b e,4 ~              | % 15
   e16 cis! e a cis8 a ~ a cis16 d d,4 ~                      | % 16
   d8 e fis4 g2 ~                                             | % 17
   g8 b e4 ~ e16 d cis b a8 b                                 | % 18
   a4 g16^\trill ( fis  g8) fis2\fermata                      | % 19
}

viola =  \relative c'' {
   a2 b                                                       | % 1
   b,4 e e2 ~                                                 | % 2
   e8 dis(  dis) e fis r r4                                   | % 3
   e8 b(  b) e e r r4                                         | % 4
   d4. e8 fis d b e~                                          | % 5
   e8 fis b, e cis2                                           | % 6
   e8 fis b, e cis2                                           | % 7
   e2 ~ e8 dis16 e fis4 ~                                     | % 8
   fis16 g a fis dis8 b' b4 b,                                | % 9
   cis16 ( d! e  fis) g ( fis g  e) fis8 e16 d cis8 fis       | % 10
   fis e16 d g8 fis16 e d2                                    | % 11
   b8 b' a16 gis a8 gis!8. fis16 e4 ~                         | % 12
   e8 e fis e e8. d16 cis d e cis                             | % 13
   a8 d4 b8 ~ b e4 cis8 ~                                     | % 14
   cis fis4 dis8 b4 ~ b16 b' g e                              | % 15
   a8 g fis e d4 a' ~                                         | % 16
   a8 g a4 d,2                                                | % 17
   e16 ( b e  g) b ( a g  fis) e8 a ~ a g                     | % 18
   fis4 e8 a, a2\fermata                                      | % 19
}

continuo =  \relative c {
   d8 d' cis cis, b b' a a,                                   | % 1
   g g' gis gis, a a' g g,                                    | % 2
   fis fis' e e, dis dis' b b'                                | % 3
   e,, e' d! d,! cis cis' a a'                                | % 4
   d, d' cis cis, b b' gis e                                  | % 5
   a d, e e, a16( b cis d e g! fis  e)                        | % 6
   a8 d, e e, a2                                              | % 7
   a8 a' g g, fis fis' e e,                                   | % 8
   dis dis' fis b, e e' d! d,                                 | % 9
   cis cis' b b, ais b cis ais                                | % 10
   b g' e fis b, b' a! a,!                                    | % 11
   gis gis' fis fis, e e' d d,                                | % 12
   cis cis' d e a, a' g! g,!                                  | % 13
   fis fis' g g, gis gis' a a,                                | % 14
   ais ais' b b, e e' d! d,!                                  | % 15
   cis cis' a cis d d, c c'                                   | % 16
   b b, a a' g g, fis fis'                                    | % 17
   e e, d d' cis a d g                                        | % 18
   a g a a, d,2\fermata                                       | % 19
}
