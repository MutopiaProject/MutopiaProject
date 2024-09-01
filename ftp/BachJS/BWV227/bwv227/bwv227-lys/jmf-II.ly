\version "2.25.19"
\include "english.ly"

sopranoOneII = \relative {
  \tocItem \markup { \bold "Teil II" " — " \italic "Es ist nun nichts Verdammliches" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #20
  %20
  \mark #3 b'2 e ds |
  e r2 r |
  d!^\p r r |
  r c^\f c |
  c2. c4 b a |
  %25
  g fs g a b2 ~ |
  b4 g' e2. ds4 |
  ds2 r r | %<<bis
  b2^\p e ds |
  e r r |
  %30
  d!^\pp r r |
  r c^\p c |
  c2. c4 b a |
  g fs g a b2 ~ |
  b4 g' e2. ds4 |
  %35
  ds2 r r | %bis>>
  \mark \default ds^\f fs b, ~ |
  b4 d! d( c) c( b) |
  b a8[ gs] a4 e' ds e |
  fs2 b, r |
  %40
  b4 b b b cs d! |
  e as,2 b cs4 |
  d1. ~ %|
  d4 b gs gs a b |
  c2 b a4 b |
  %45
  g b e( fs) g2 |
  \mark \default fs4 e2 ds4 e fs |
  b, cs8[ d!] e1 ~ %|
  e4 fs8[ g] fs4 e d cs |
  b1. ~ %|
  %50
  b4 cs8[ d] cs4 b2 as8[ gs] |
  as4 fs b1 ~ |
  b2 as r |
  r fs' d |
  b4( e) cs1 |
  %55
  b r2 |
  \mark \default d fs g |
  fs r r |
  fs^\p r r |
  r e4^\f( fs) g2 |
  %60
  g2. g4 fs e |
  d cs d e fs2 ~ |
  fs4 fs, b2.^\mordent cs4 |
  as2 r r |
  fs^\p b as |
  %65
  b r r |
  b^\pp r r |
  r b^\p as4( b) |
  cs2. cs4 cs as |
  fs2. cs'4 b as |
  %70
  b d8[ cs] d4( e) e8([ d] e4) |
  fs2 r r |
  \mark \default cs^\f fs e |
  d r d |
  d1. ~ |
  %75
  d4 c! b f'!2 e4 |
  d4 c d b c2 ~ |
  c4 b c a d c |
  b a b1 ~ |
  b4 b e fs g e |
  %80
  f!1. ~ |
  f!4 e f! ds e2 ~ |
  e4 d! c b a2 ~ |
  a4 b g( fs) g2 |
  \mark \default fs2 r r |
  %85
  r1. |
  e'4 b b b b c |
  d gs,2 a b4 |
  c d c b a g! |
  fs a g fs e ds |
  %90
  e b'2 e d!4 |
  cs g'2 f! e4 |
  d2. f!4 e d |
  c b a2 r |
  \mark \default r1. |
  %95
  r2 r r4 fs' ~ |
  fs b, b b cs ds |
  e1. ~ |
  e4 fs8[ g] fs4 e2 ds8[ cs] |
  ds4 b e1 ~ |
  %100
  e2 ds r |
  r e b |
  e2.( fs4) ds2 |
  e1.^\fermata \bar "|."
}

sopranoOneWordsII = \lyricmode {
  %20
  Es ist nun |
  nichts, |
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  %25
  de -- nen, die in Chri -- %|
  sto Je -- su |
  sind, | %<<bis
  es ist nun |
  nichts, |
  %30
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  de -- nen, die in Chri -- %|
  sto Je -- su |
  %35
  sind, | %bis>>
  die nicht nach __ %|
  dem Flei -- sche |
  wan -- _ _ _ _ _ |
  _ deln, |
  %40
  die nicht nach dem Flei -- sche |
  wan -- _ _ _ |
  _ %|
  deln, nach dem Flei -- sche |
  wan -- deln, die nicht |
  %45
  nach dem Flei -- sche |
  wan -- _ _ _ _ |
  _ _ _ %|
  _ _ _ _ _ |
  _ %|
  %50
  _ _ _ _ |
  _ _ _ %|
  deln, %|
  son -- dern |
  nach __ dem |
  %55
  Geist. |
  Es ist nun |
  nichts, |
  nichts, %|
  nichts __ Ver -- |
  %60
  damm -- li -- ches an |
  de -- nen, die in Chri -- %|
  sto Je -- su |
  sind, |
  es ist nun |
  %65
  nichts, |
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  de -- nen, die in |
  %70
  Chri -- sto Je -- su __ |
  sind, |
  es ist nun |
  nichts Ver -- |
  damm -- %|
  %75
  _ _ _ _ |
  _ li -- ches an de -- %|
  nen, die in Chri -- sto |
  Je -- su sind, __ %|
  es ist nun nichts Ver -- |
  %80
  damm -- %|
  li -- ches an de -- %|
  nen, die in Chri -- %|
  sto Je -- su |
  sind, |
  %85
   |
  die nicht nach dem Flei -- sche |
  wan -- _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ _ _ _ |
  %90
  _ _ _ _ |
  _ _ _ _ |
  _ _ _ _ |
  _ _ deln, %|
   %|
  %95
  die __ %|
  nicht nach dem Flei -- sche |
  wan -- %|
  _ _ _ _ |
  _ _ _ %|
  %100
  deln, %|
  son -- dern |
  nach __ dem |
  Geist. |
}

sopranoTwoII = \relative {
  %20
  g'2 b a |
  b r2 r |
  b^\p r r |
  r a^\f a |
  a2. a4 b fs |
  %25
  e2. ds4 e fs |
  b, b' b2 a |
  b r r | %<<bis
  g2^\p b a |
  b r2 r |
  %30
  b^\pp r r |
  r a^\p a |
  a2. a4 b fs |
  e2. ds4 e fs |
  b, b' b2 a |
  %35
  b r r | %bis>>
  b^\f fs ds |
  e b'4( a) a( gs) |
  e'2. e,4 c'2 ~ %|
  c4 b b c b a |
  %40
  g fs e b' as b |
  cs2 fs, r |
  r1. |
  e4 e e e fs gs |
  a ds,2 e fs4 |
  %45
  g! a b a g fs8[ e] |
  b'2 fs r4 fs4 |
  g e'2 d4 cs b |
  as e' d cs b cs |
  d1. ~ %|
  %50
  d4 e8[ fs] e1 ~ |
  e4 d8[ cs] d1 ~ |
  d4 b cs2 r |
  r b as |
  b1 as2 |
  %55
  b1 r2 |
  fs b as |
  b r r |
  b^\p r r |
  r b^\f as4( b) |
  %60
  cs2. cs4 cs as |
  fs2. cs'4 b as |
  b d8[ cs] d4( e) e8([ d] e4) |
  fs2 r r |
  d^\p fs g |
  %65
  fs r r |
  fs^\pp r r |
  r e4^\p( fs) g2 |
  g2. g4 fs e |
  d cs d e fs2 ~ |
  %70
  fs4 fs, b2. cs4 |
  as2 r r |
  r4 fs as gs as fs |
  b fs b2 a! |
  gs4 e b'2 b |
  %75
  b4( a gs2.) gs4 |
  a2. gs4 a2 ~ |
  a4 g! a2 a ~ |
  a g4 fs e ds |
  e g b2 e |
  %80
  c4 b c e d2 ~ |
  d4 c a2. b4 |
  c2. e4 ds e |
  fs2( e4 ds) e2 |
  ds r r |
  %85
  r1. |
  r2 r d! |
  f! e4( d) c( b) |
  a e e e fs! g |
  a ds,2 e fs4 |
  %90
  g1. ~ |
  g4 e cs cs d e |
  f!2 e4 d' c b |
  e2 e,4 fs! gs a |
  b c d f! e d |
  %95
  c2 b c |
  b4 ds, e( fs) g( a) |
  b1. ~ |
  b4 a8[ g] a4 e a2 ~ |
  a4 g8[ fs] g1 ~ |
  %100
  g4 e fs2 r |
  r g4( a) b2 |
  a4( b c2) b |
  b1.^\fermata |
}

sopranoTwoWordsII = \lyricmode {
  %20
  Es ist nun |
  nichts, |
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  %25
  de -- nen, die in |
  Chri -- sto Je -- su |
  sind, | %<<bis
  es ist nun |
  nichts, |
  %30
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  de -- nen, die in |
  Chri -- sto Je -- su |
  %35
  sind, | %bis>>
  die nicht nach |
  dem Flei -- sche __ |
  wan -- deln, die __ %|
  nicht nach dem Flei -- sche |
  %40
  wan -- _ _ _ _ _ |
  _ deln, |
   |
  die nicht nach dem Flei -- sche |
  wan -- _ _ _ |
  %45
  _ _ _ _ _ _ |
  _ deln, die |
  nicht nach dem Flei -- sche |
  wan -- _ _ _ _ _ |
  _ %|
  %50
  _ _ %|
  _ _ %|
  _ deln, %|
  son -- dern |
  nach dem |
  %55
  Geist. |
  Es ist nun |
  nichts, |
  nichts, %|
  nichts Ver -- |
  %60
  damm -- li -- ches an |
  de -- nen, die in |
  Chri -- sto __ Je -- su __ |
  sind, |
  es ist nun |
  %65
  nichts, |
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  de -- nen, die in Chri -- %|
  %70
  sto Je -- su |
  sind, %|
  es ist nun nichts Ver -- |
  damm -- li -- ches an |
  de -- nen, nichts Ver -- |
  %75
  damm -- li -- |
  ches an de -- %|
  nen, die in __ %|
  Chri -- sto Je -- su |
  sind, es ist nun |
  %80
  nichts Ver -- damm -- li -- ches __ %|
  an de -- nen, |
  die in Chri -- sto |
  Je -- su |
  sind, %|
  %85
   %|
  die |
  nicht nach __ dem __ |
  Flei -- sche, nach dem Flei -- sche |
  wan -- _ _ _ |
  %90
  _ %|
  deln, nach dem Flei -- sche |
  wan -- deln, nicht nach dem |
  Flei -- sche, nicht nach dem |
  Flei -- sche wan -- _ _ _ |
  %95
  _ deln, nicht |
  nach dem Flei -- sche __ |
  wan -- %|
  _ _ _ _ %|
  _ _ %|
  %100
  _ deln, %|
  son -- dern |
  nach __ dem |
  Geist. |
}

altoII = \relative {
  %20
  e'2 e fs |
  e r2 r |
  e^\p r r |
  r e^\f ds4( e) |
  fs2. fs4 fs ds |
  %25
  b2. fs'4 e ds |
  e b e( g) fs( e) |
  fs2 r r | %<<bis
  e2^\p e fs |
  e r2 r |
  %30
  e^\pp r r |
  r e^\p ds4( e) |
  fs2. fs4 fs ds |
  b2. fs'4 e ds |
  e b e( g) fs( e) |
  %35
  fs2 r r | %bis>>
  fs^\f ds fs |
  b e, e |
  e4 e e e fs g |
  a ds,2 e fs4 |
  %40
  g a g fs e d! |
  cs e d cs b as |
  b fs'2 b a!4 |
  gs d'2 c b4 |
  a2 g! r4 fs4 |
  %45
  b,2 b4 cs ds e |
  fs g a c! b a |
  g2 fs g |
  fs4 as, b2. fs'4 |
  fs1. ~ %|
  %50
  fs4 g8[ a] g4 fs e d |
  cs4 b8[ as] b[ cs d e] fs[ g e fs] |
  g[ fs] g4 cs,2 r |
  r d d |
  d4( b g'2) fs |
  %55
  fs1 r2 |
  b fs e |
  fs r r |
  a^\p r r |
  r g4^\f( fs) e( d) |
  %60
  cs2. cs4 fs fs |
  fs as b g fs( e) |
  d2 d4( cs) b( g') |
  cs,2 r r |
  b'^\p fs e |
  %65
  fs r r |
  a^\pp r r |
  r g4^\p( fs) e( d) |
  cs2. cs4 fs fs |
  fs as b g fs( e) |
  %70
  d2 d4( cs) b( g') |
  cs,2 r r |
  r1. |
  r4 b d cs d b |
  e1. ~ |
  %75
  e2 d4 c! b2 |
  a2. d4 e2 |
  d d d |
  d2. a'4 g fs |
  g2 g4( fs) e2 |
  %80
  a2. c,4 g' g |
  g2 a4( b) e,2 ~ |
  e2 fs4( g) a g |
  fs2 g4( a) b2 |
  b4 fs fs fs fs g |
  %85
  a ds,2 e fs4 |
  g fs gs a b2 ~ |
  b e, f! |
  e4 gs( a) g! fs! e |
  ds c' b a g fs |
  %90
  e f! e d! cs b |
  a cs e a( a8)[ g] a4 ~ |
  a b8[ c!] b2 e,4 gs |
  a c,2 d4 e fs |
  gs a b d c b |
  %95
  a2. g!8[ fs] g4 a |
  b a g ds e fs |
  g1. ~ |
  g4 fs8[ e] ds4 e c'2 |
  b2. a4 g fs |
  %100
  e2 b' r |
  r b4( a) g( fs) |
  e2( a) fs |
  gs1.^\fermata |
}

altoWordsII = \lyricmode {
  %20
  Es ist nun |
  nichts, |
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  %25
  de -- nen, die in |
  Chri -- sto Je -- su __ |
  sind, | %<<bis
  es ist nun |
  nichts, |
  %30
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  de -- nen, die in |
  Chri -- sto Je -- su __ |
  %35
  sind, | %bis>>
  die nicht nach |
  dem Flei -- sche, |
  die nicht nach dem Flei -- sche |
  wan -- _ _ _ |
  %40
  _ _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ _ |
  _ _ _ _ |
  _ deln, die |
  %45
  nicht nach dem Flei -- sche |
  wan -- _ _ _ _ _ |
  _ deln, nicht |
  nach dem Flei -- sche |
  wan -- %|
  %50
  _ _ _ _ _ |
  _ _ _ _ |
  _ _ deln, %|
  son -- dern |
  nach __ dem |
  %55
  Geist. |
  Es ist nun |
  nichts, |
  nichts, %|
  nichts Ver -- |
  %60
  damm -- li -- ches an |
  de -- nen, die in Chri -- |
  sto Je -- su __ |
  sind, |
  es ist nun |
  %65
  nichts, |
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  de -- nen, die in Chri -- |
  %70
  sto Je -- su __ |
  sind, %|
   %|
  es ist nun nichts Ver -- |
  damm -- %|
  %75
  _ _ li -- |
  ches an de -- |
  nen, die in |
  Chri -- sto Je -- su |
  sind, nichts __ Ver -- |
  %80
  damm -- li -- ches an |
  de -- nen, __ die __ %|
  in __ Chri -- sto |
  Je -- su __ sind, |
  die nicht nach dem Flei -- sche |
  %85
  wan -- _ _ _ |
  _ _ _ _ _ %|
  deln, die |
  nicht nach __ dem Flei -- sche |
  wan -- _ _ _ _ _ |
  %90
  _ _ _ _ _ _ |
  _ _ _ _ _ %|
  _ _ deln, die |
  nicht nach dem Flei -- sche |
  wan -- _ _ _ _ _ |
  %95
  _ deln, nach dem |
  Flei -- sche wan -- _ _ _ |
  _ %|
  _ _ _ _ |
  _ _ _ _ |
  %100
  _ deln, %|
  son -- dern __ |
  nach __ dem |
  Geist. |
}

tenorII = \relative {
  %20
  b2 b c |
  b r2 r |
  b^\p r r |
  r c4(^\f b) a( g) |
  fs2. fs4 fs b |
  %25
  b ds e( c) b( a) |
  g2 g a8[ b] c4 |
  fs,2 r r | %<<bis
  b2^\p b c |
  b r2 r |
  %30
  b^\pp r r |
  r c4(^\p b) a( g) |
  fs2. fs4 fs b |
  b ds e( c) b( a) |
  g2 g a8[ b] c4 |
  %35
  fs,2 r r | %bis>>
  b4^\f b b b b c |
  d! gs,2 a b4 |
  c d c b a g! |
  fs a g fs g a |
  %40
  b cs8[ ds] e4 d! cs! b |
  as fs fs' e d cs |
  b d8[ cs] b4 a! gs fs |
  e gs b e2 e,4 |
  a b2 c4 cs ds |
  %45
  e, fs g a b cs |
  ds e fs a g fs |
  e2 cs r2 |
  fs,4 fs fs fs gs as |
  b1. ~ %|
  %50
  b4 e, e' fs g2 |
  fs2. e4 d cs |
  b2 fs' r |
  r b, g |
  b( e4 d) cs2 |
  %55
  d1 r2 |
  d d e |
  d r r |
  fs^\p r r |
  r b,^\f cs4( d) |
  %60
  e2. e4 cs cs |
  b2. as4 b cs |
  fs, b b( as) b2 |
  fs' r r |
  fs^\p d e |
  %65
  d r r |
  fs^\pp r r |
  r b,^\p cs4( d) |
  e2. e4 cs cs |
  b2. as4 b cs |
  %70
  fs, b b( as) b2 |
  fs' r r |
  r1. |
  r |
  r4 gs, b a b gs |
  %75
  a2 b4 c d b |
  e2. d4 c b |
  a2. g4 a fs |
  b2. c4 b a |
  g2 r r4 b |
  %80
  c d c a d b |
  c2 r r4 d |
  c b a b c2 ~ |
  c4 b b2 b |
  b r b |
  %85
  c b4 a g fs |
  e e' d c b a |
  gs d' c b a gs |
  a2. b4 c2 ~ |
  c4 b8[ a] b1^\mordent |
  %90
  e,2 r r |
  e'4 a, a a b cs |
  d gs,2 a b4 |
  c e2 d c4 |
  b a gs2 a4( b) |
  %95
  c fs, fs'( e8[ ds] e4) a, |
  g fs g a g fs |
  e1. ~ |
  e4 a8[ b] c4 b a g |
  fs e8[ ds] e[ fs g a] b[ c a b] |
  %100
  c[ b] c4 b2 r |
  r b e |
  a,( fs) b |
  b1.^\fermata
}

tenorWordsII = \lyricmode {
  %20
  Es ist nun |
  nichts, |
  nichts, %|
  nichts __ Ver -- |
  damm -- li -- ches an |
  %25
  de -- nen, die __ in __ |
  Chri -- sto Je -- su |
  sind, | %<<bis
  es ist nun |
  nichts, |
  %30
  nichts, %|
  nichts __ Ver -- |
  damm -- li -- ches an |
  de -- nen, die __ in __ |
  Chri -- sto Je -- su |
  %35
  sind, | %bis>>
  die nicht nach dem Flei -- sche |
  wan -- _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ _ _ _ |
  %40
  _ _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ _ deln, |
  nicht nach dem Flei -- sche |
  %45
  wan -- _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ deln, |
  die nicht nach dem Flei -- sche |
  wan -- %|
  %50
  _ _ _ _ |
  _ _ _ _ |
  _ deln, %|
  son -- dern |
  nach dem |
  %55
  Geist. |
  Es ist nun |
  nichts, |
  nichts, %|
  nichts Ver -- |
  %60
  damm -- li -- ches an |
  de -- nen, die in |
  Chri -- sto Je -- su |
  sind, |
  es ist nun |
  %65
  nichts, |
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  de -- nen, die in |
  %70
  Chri -- sto Je -- su |
  sind, %|
   %|
   %|
  es ist nun nichts Ver -- |
  %75
  damm -- _ _ _ _ |
  _ li -- ches an |
  de -- nen, die in |
  Chri -- sto Je -- su |
  sind, es |
  %80
  ist nun nichts Ver -- damm -- li -- |
  ches an |
  de -- nen, die in Chri -- %|
  sto Je -- su |
  sind, die |
  %85
  nicht nach dem Flei -- sche |
  wan -- _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ %|
  _ _ |
  %90
  deln, |
  die nicht nach dem Flei -- sche |
  wan -- _ _ _ |
  _ _ _ _ |
  _ deln, die nicht __ |
  %95
  nach dem Flei -- sche |
  wan -- _ _ _ _ _ |
  _ %|
  _ _ _ _ _ |
  _ _ _ _ |
  %100
  _ _ deln, %|
  son -- dern |
  nach __ dem |
  Geist. |
}

bassII = \relative {
  %20
  e2 g fs |
  g r2 r |
  gs^\p r r |
  r a4(^\f g!) fs( e) |
  ds2. ds4 ds b |
  %25
  e2. fs4 g fs |
  g e c2. c4 |
  b2 r r | %<<bis
  e2^\p g fs |
  g r2 r |
  %30
  gs^\pp r r |
  r a4(^\p g!) fs( e) |
  ds2. ds4 ds b |
  e2. fs4 g fs |
  g e c2. c4 |
  %35
  b2 r r | %<<bis
  b^\f b' a |
  gs e' e, |
  a4 b a g! fs e |
  ds b b' a g fs |
  %40
  e2 e r2 |
  r1. |
  r |
  r |
  r |
  %45
  r |
  b4 b b b cs ds |
  e as,2 b cs4 |
  d1. ~ %|
  d4 cs8[ b] c4 d e fs |
  %50
  g cs,2 d e4 |
  fs b,2 cs d4 |
  e d e2 r |
  r d fs |
  g( e) fs |
  %55
  b,1 r2 |
  b d cs |
  d r r |
  ds^\p r r |
  r e4^\f( d!) cs( b) |
  %60
  as2. as4 as fs |
  b2. cs4 d cs |
  d b g'2. g4 |
  fs2 r r |
  b,^\p d cs |
  %65
  d r r |
  ds^\pp r r |
  r e4^\p( d!) cs( b) |
  as2. as4 as fs |
  b2. cs4 d cs |
  %70
  d b g'2. g4 |
  fs2 r r |
  r1. |
  r |
  r4 e gs fs gs e |
  %75
  a1. ~ |
  a2. b4 a g! |
  fs2. e4 fs d |
  g( fs) g( a) b8[ a] b4 |
  e,2 e'4( d) c( b) |
  %80
  a( gs) a( c) b d |
  c2. b4 c gs |
  a2.( g!4) fs( e) |
  ds2 e1 |
  b2 r r |
  %85
  r1. |
  r |
  r |
  r |
  r |
  %90
  r |
  r |
  r |
  r |
  b'4 e, e e fs gs |
  %95
  a ds,2 e fs4 |
  g1. ~ |
  g4 fs8[ e] fs4 g a b |
  c fs,2 g a4 |
  b e,2 fs g4 |
  %100
  a g a2 r |
  r g4( fs) e( d) |
  c( b a2) b |
  e1.^\fermata |
}

bassWordsII = \lyricmode {
  %20
  Es ist nun |
  nichts, |
  nichts, %|
  nichts __ Ver -- |
  damm -- li -- ches an |
  %25
  de -- nen, die in |
  Chri -- sto Je -- su |
  sind, | %<<bis
  es ist nun |
  nichts, |
  %30
  nichts, %|
  nichts __ Ver -- |
  damm -- li -- ches an |
  de -- nen, die in |
  Chri -- sto Je -- su |
  %35
  sind, | %bis>>
  die nicht nach |
  dem Flei -- sche |
  wan -- _ _ _ _ _ |
  _ _ _ _ _ _ |
  %40
  _ deln, |
   |
   |
   |
   |
  %45
   |
  die nicht nach dem Flei -- sche |
  wan -- _ _ _ |
  _ %|
  _ _ _ _ _ |
  %50
  _ _ _ _ |
  _ _ _ _ |
  _ _ deln, %|
  son -- dern |
  nach __ dem |
  %55
  Geist. |
  Es ist nun |
  nichts, |
  nichts, %|
  nichts Ver -- |
  %60
  damm -- li -- ches an |
  de -- nen, die in |
  Chri -- sto Je -- su |
  sind, |
  es ist nun |
  %65
  nichts, |
  nichts, %|
  nichts Ver -- |
  damm -- li -- ches an |
  de -- nen, die in |
  %70
  Chri -- sto Je -- su |
  sind, %|
   %|
   %|
  es ist nun nichts Ver -- |
  %75
  damm -- %|
  li -- ches an |
  de -- nen, die in |
  Chri -- sto __ Je -- su |
  sind, nichts Ver -- |
  %80
  damm -- li -- ches an |
  de -- nen, die in |
  Chri -- sto __ |
  Je -- su |
  sind, |
  %85
   |
   |
   |
   |
   |
  %90
   |
   |
   |
   |
  die nicht nach dem Flei -- sche |
  %95
  wan -- _ _ _ |
  _ %|
  _ _ _ _ _ |
  _ _ _ _ |
  _ _ _ _ |
  %100
  _ _ deln, %|
  son -- dern __ |
  nach __ dem |
  Geist. |
}

keyStuff = {
  \key g \major
  \time 3/2
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil II"
    copyright = ""
  }
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Sopran I"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "cantus" << \clef violin \keyStuff \sopranoOneII >>
        \new Lyrics \lyricsto "cantus" \sopranoOneWordsII
      >>
      \new Staff \with {
        instrumentName = "Sopran II"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "soprano" << \clef violin \keyStuff \sopranoTwoII >>
        \new Lyrics \lyricsto "soprano" \sopranoTwoWordsII
      >>
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoII >>
        \new Lyrics \lyricsto "alto" \altoWordsII
      >>
      \new Staff \with {
        instrumentName = "Tenor"
        midiInstrument = #"cello"
        autoBeaming = ##f
      } <<
        \new Voice = "tenor" << \clef "G2_8" \keyStuff \tenorII >>
        \new Lyrics \lyricsto "tenor" \tenorWordsII
      >>
      \new Staff \with {
        instrumentName = "Baß"
        midiInstrument = #"contrabass"
        autoBeaming = ##f
      } <<
        \new Voice = "bass" << \clef "F" \keyStuff \bassII >>
        \new Lyrics \lyricsto "bass" \bassWordsII
      >>
    >>
    %%\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #3
  }
}

