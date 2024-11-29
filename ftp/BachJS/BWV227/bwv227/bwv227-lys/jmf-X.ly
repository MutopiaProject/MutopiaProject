\version "2.18.0"
\include "english.ly"

sopranoOneX = \relative {
  \tocItem \markup { \bold "Teil X" " — " \italic "So nun der Geist" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #406
  \mark #36 b'2 e ds |
  e r2 r |
  d! r r |
  c c4 c c c |
  %410
  c2. c4 b a |
  g fs g a b2( ~ |
  b4 g') e2.( ds4) |
  ds2 r r |
  \mark \default b4 d! g2 fs |
  %415
  g2. fs8[ e] d4 e |
  f!2. f4 f f |
  f!2. f4 e d |
  c2. b4 a( b) |
  cs b cs( ds) cs ds |
  %420
  e( ds) e g fs2 ~ |
  fs4 e d!2( cs) |
  b r r |
  \mark \default r d f! |
  e4 d d( c) c( b) |
  %425
  b( a8[ gs] a4) e' ds( e) |
  fs2 b, r |
  b4 b b b cs d! |
  e as,2( b) cs4 |
  d1. ~ |
  %430
  d4 b gs2 a4 b |
  c2 b a4 b |
  g( b) e( fs) g2 |
  \mark \default fs4 e2 ds4 e fs |
  b, cs8[ d!] e1 ~ |
  %435
  e4 fs8[ g] fs4 e d cs |
  b1. ~ |
  b4 b b b cs ds |
  e1. ~ |
  e4 fs8[ g] fs4 e2 ds8[ cs] |
  %440
  ds4 e8[ fs] e1 ~ |
  e2 ds r |
  \mark \default r e2. d!4 |
  c b c a e'8([ ds cs b] |
  g'[ fs e ds] e2) e ~ |
  %445
  e4 cs ds2.( e4) |
  e1.^\fermata \bar "|."
}

sopranoOneWordsX = \lyricmode {
  So nun der |
  Geist |
  des, |
  der Je -- sum von den |
  %410
  To -- ten auf -- er -- |
  we -- cket hat, in euch __ %|
  woh -- |
  net, |
  so wird auch der -- |
  %415
  sel -- bi -- ge, der |
  Chri -- stum von den |
  To -- ten auf -- er -- |
  wek -- ket hat, __ |
  eu -- re sterb -- li -- chen |
  %420
  Lei -- ber le -- ben -- %|
  dig ma -- |
  chen, %|
  um des |
  wil -- len, daß __ sein __ |
  %425
  Geist __ in euch __ |
  woh -- net,
  um des wil -- len, daß sein |
  Geist in __ euch |
  woh -- %|
  %430
  _ net, um des |
  wil -- len, daß sein |
  Geist __ in __ euch |
  woh -- _ _ _ _ |
  _ _ _ %|
  %435
  _ _ _ _ _ |
  _ %|
  net, sein Geist in euch |
  woh -- %|
  _ _ _ _ |
  %440
  _ _ _ %|
  net, %|
  um des |
  wil -- len, daß sein Geist __ %|
  in __ %|
  %445
  euch woh -- |
  net.
}

sopranoTwoX = \relative {
  g'2 b a |
  b r2 r |
  b r r |
  a a4 a a a |
  %410
  a2. a4 b fs |
  e2. ds4 e( fs) |
  b, b' b2( a) |
  b r r |
  d!2. b4 c a |
  %415
  b2. c4 d a |
  a d, d'2 d |
  d2. d4 e b |
  a2. gs4 a2 |
  e4 d e( fs) e fs |
  %420
  g( a) b e e2 |
  d4( cs) b2( as) |
  b r r |
  r b b |
  b4 e, b'( a) a( gs) |
  %425
  e'2. e,4 c'2 ~ |
  c4 b2( c4) b( a) |
  g fs e b' as b |
  cs2 fs, r |
  r1. |
  %430
  e4 e e e fs gs |
  a ds,2( e) fs4 |
  g a b a g fs8[ e] |
  b'2 fs r4 fs |
  g e'2 d4( cs) b |
  %435
  as e' d cs b cs |
  d1. ~ |
  d4 fs, g a g fs |
  e1. ~ |
  e4 a8[ b] c4 b a g |
  %440
  fs e8[ ds] e[ fs g a] b[ c a b] |
  c[ b] c4 b2 r |
  r b4 a b gs |
  a gs a2 r |
  r r fs |
  %445
  g4( a) fs2.( e4) |
  e1.^\fermata |
}

sopranoTwoWordsX = \lyricmode {
  So nun der |
  Geist |
  des, |
  der Je -- sum von den |
  %410
  To -- ten auf -- er -- |
  we -- cket hat, __ |
  in euch woh -- |
  net, |
  so wird auch der -- |
  %415
  sel -- bi -- ge, der |
  Chri -- stum von dem |
  To -- ten auf -- er -- |
  wek -- ket hat, |
  eu -- re sterb -- li -- chen |
  %420
  Lei -- ber le -- ben -- |
  dig __ ma -- |
  chen, %|
  um des |
  wil -- len, daß __ sein __ |
  %425
  Geist, sein Geist __ %|
  in __ euch |
  woh -- _ _ _ _ _ |
  _ net, |
   |
  %430
  um des wil -- len, daß sein |
  Geist in __ euch |
  woh -- _ _ _ _ _ |
  _ net, daß |
  sein Geist in __ euch |
  %435
  woh -- _ _ _ _ _ |
  _ %|
  net, sein Geist in euch |
  woh -- %|
  _ _ _ _ _ |
  %440
  _ _ _ _ |
  _ _ net, %|
  um des wil -- len, |
  daß sein Geist %|
  in |
  %445
  euch woh -- |
  net. |
}

altoX = \relative {
  e'2 e fs |
  e r2 r |
  e r r |
  a, e'4 e ds e |
  %410
  fs2. fs4 fs ds |
  b2. fs'4 e( ds) |
  e b e( g fs e) |
  fs2 r r |
  b2. g4 a d, |
  %415
  d2. d4 g g |
  f! a gs( a) gs( a) |
  b2. b4 b gs |
  e2. d4 c2 |
  a'2. a4 a a8 a |
  %420
  g4( fs) e b' cs( as) |
  b( g) fs2.( e4) |
  d2 r r |
  r fs4( gs2) a4 |
  b2 e, e ~ |
  %425
  e4 e e e fs g |
  a ds,2( e) fs4 |
  g a g fs e d! |
  cs d8[ e] d4 cs b as |
  b fs'2 b a!4 |
  %430
  gs4 d'2 c b4 |
  a2 g! r4 fs |
  b,2 b4 cs ds( e) |
  fs g a c b a |
  g2 fs g |
  %435
  fs4 as, b2. fs'4 |
  fs1. ~ |
  fs4 ds e fs g a |
  b1. ~ |
  b4 a8[ g] a4 e a2 ~ |
  %440
  a4 g8[ fs] g1 ~ |
  g4 e fs2 r |
  r e4 a gs b |
  a f! e2 r |
  r r fs! |
  %445
  b b( a) |
  gs1.^\fermata |
}

altoWordsX = \lyricmode {
  So nun der |
  Geist |
  des, |
  der Je -- sum von den |
  %410
  To -- ten auf -- er -- |
  we -- cket hat, __ |
  in euch woh -- |
  net, |
  so wird auch der -- |
  %415
  sel -- bi -- ge, der |
  Chri -- stum von __ den __ |
  To -- ten auf -- er -- |
  wek -- ket hat, |
  eu -- re sterb -- li -- chen |
  %420
  Lei -- ber le -- ben -- |
  dig __ ma -- |
  chen, %|
  um __ des |
  wil -- len, um __ %|
  %425
  des wil -- len, daß sein |
  Geist in __ euch |
  woh -- _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ _ |
  %430
  _ _ _ _ |
  _ net, daß |
  sein Geist in euch __ |
  woh -- _ _ _ _ _ |
  _ net, daß |
  %435
  sein Geist in euch |
  woh -- %|
  net, sein Geist in euch |
  woh -- %|
  _ _ _ _ %|
  %440
  _ _ %|
  _ net, %|
  um des wil -- len, |
  daß sein Geist %|
  in |
  %445
  euch woh -- |
  net. |
}

tenorX = \relative {
  b2 b c |
  b r2 r |
  b r r |
  e4( d) c b a g |
  %410
  fs2. fs4 fs b |
  b( ds e) c b a |
  g2 g( a8[ b] c4) |
  fs,2 r r |
  g2. d'4 fs a |
  %415
  g2 d b4 e |
  d2. c4 d c |
  b2. b4 b e |
  e( d) c( d) e2 |
  e2. a,4 a a8 a |
  %420
  b4( a) g b as( cs) |
  b( cs) d( e fs2) |
  fs r r |
  b,4 b b b b c |
  d gs,2( a) b4 |
  %425
  c d c b a g! |
  fs a g fs g a |
  b cs8[ ds] e4 d! cs! b |
  as fs fs' e d cs |
  b d8[ cs] b4 a! gs fs |
  %430
  e gs b e2 e,4 |
  a b2 c4 cs ds |
  e, fs g a b cs |
  ds e fs a g fs |
  e2 cs r |
  %435
  fs,4 fs fs fs gs as |
  b1. ~ |
  b4 a! g! ds e fs |
  g1. ~ |
  g8[ g' fs e] ds4 e c2 ~ |
  %440
  c4 b8[ a] b2. e,4 |
  e'2 b r |
  r b4 c b e |
  e d c2 r |
  r r cs |
  %445
  b b1 |
  b1.^\fermata |
}

tenorWordsX = \lyricmode {
  So nun der |
  Geist |
  des, |
  der Je -- sum von den |
  %410
  To -- ten auf -- er -- |
  we -- cket hat, in |
  euch woh -- |
  net, |
  so wird auch der -- |
  %415
  sel -- bi -- ge, der |
  Chri -- stum von den |
  To -- ten auf -- er -- |
  wek -- ket hat, |
  eu -- re sterb -- li -- chen |
  %420
  Lei -- ber le -- ben -- |
  dig __ ma -- |
  chen, |
  um des wil -- len, daß sein |
  Geist in __ euch |
  %425
  woh -- _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ _ _ _ |
  %430
  _ _ _ _ net, |
  daß sein Geist in euch |
  woh -- _ _ _ _ _ |
  _ _ _ _ _ _ |
  _ net, |
  %435
  um des wil -- len, daß sein |
  Geist, __ %|
  daß sein Geist in euch |
  woh -- %|
  _ _ _ %|
  %440
  _ _ _ |
  _ net, %|
  um des wil -- len, |
  daß sein Geist %|
  in |
  %445
  euch woh -- |
  net.
}

bassX = \relative {
  e2 g fs |
  g r2 r |
  gs r r |
  a2 a4 g! fs e |
  %410
  ds2. ds4 ds b |
  e2. fs4 g fs |
  g( e) c1 |
  b2 r r |
  g'2. b4 a c |
  %415
  b( a) g( a) b cs |
  d c! b( d b) a |
  gs2. gs4 gs e |
  a2. a4 a2 |
  g!4 a g( fs) g fs |
  %420
  e( fs) g e as( fs) |
  b( e,) fs1 |
  b,2 r r |
  r b' a |
  gs e e'4 e, |
  %425
  a( b) a( g!) fs( e) |
  ds b b' a g fs |
  e2 e2 r |
  r1. |
  r |
  %430
  r |
  r |
  r |
  b4 b b b cs ds |
  e as,2( b) cs4 |
  %435
  d1. ~ |
  d4 cs8[ b] cs4 d e fs |
  g1. ~ |
  g4 fs8[ e] fs4 g a b |
  c fs,2 g a4 |
  %440
  b e,2 fs g4 |
  a g a2 r |
  r gs4 fs gs e |
  a a, a'2 r |
  r r as |
  %445
  b b,1 |
  e1.^\fermata |
}

bassWordsX = \lyricmode {
  So nun der |
  Geist |
  des, |
  der Je -- sum von den |
  %410
  To -- ten auf -- er -- |
  we -- cket hat, in |
  euch woh -- |
  net, |
  so wird auch der -- |
  %415
  sel -- bi -- ge, der |
  Chri -- stum von den |
  To -- ten auf -- er -- |
  wek -- ket hat, |
  eu -- re sterb -- li -- che |
  %420
  Lei -- ber le -- ben -- |
  dig __ ma -- |
  chen %|
  um des |
  wil -- len, daß sein |
  %425
  Geist __ in __ euch __ |
  woh -- _ _ _ _ _ |
  _ net, |
   |
   |
  %430
   |
   |
   |
  um des wil -- len, daß sein |
  Geist in __ euch |
  %435
  woh -- %|
  _ _ _ _ _ |
  _ %|
  _ _ _ _ _ |
  _ _ _ _ |
  %440
  _ _ _ _ |
  _ _ net, %|
  um des wil -- len, |
  daß sein Geist %|
  in |
  %445
  euch woh -- |
  net. |
}

keyStuff = {
  \key g \major
  \time 3/2
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil X"
    copyright = ""
  }
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Sopran I"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "cantus" << \clef violin \keyStuff \sopranoOneX >>
        \new Lyrics \lyricsto "cantus" \sopranoOneWordsX
      >>
      \new Staff \with {
        instrumentName = "Sopran II"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "soprano" << \clef violin \keyStuff \sopranoTwoX >>
        \new Lyrics \lyricsto "soprano" \sopranoTwoWordsX
      >>
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoX >>
        \new Lyrics \lyricsto "alto" \altoWordsX
      >>
      \new Staff \with {
        instrumentName = "Tenor"
        midiInstrument = #"cello"
        autoBeaming = ##f
      } <<
        \new Voice = "tenor" << \clef "G2_8" \keyStuff \tenorX >>
        \new Lyrics \lyricsto "tenor" \tenorWordsX
      >>
      \new Staff \with {
        instrumentName = "Baß"
        midiInstrument = #"contrabass"
        autoBeaming = ##f
      } <<
        \new Voice = "bass" << \clef "F" \keyStuff \bassX >>
        \new Lyrics \lyricsto "bass" \bassWordsX
      >>
    >>
    %%\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #3
  }
}

