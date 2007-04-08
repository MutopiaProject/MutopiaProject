% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

melody = \relative e' {
  \key e \minor
  \time 2/4
  \partial 16*5

  e16 g8 fis
  | e r16 g b8 a
  | g r16 b b8 c16-[-( b-)-]
  | a8 b16-[-( a-)-] g8 a16-[-( g-)-]
  | fis8 r16 fis b8 cis
  | d cis16-[-( b-)-] ais8. b16
  | b8 r16 b b8 b
  | d c!16-[-( b-)-] a8 b
  | b c16 a a8 a
  | c b16-[-( a-)-] g8 a
  | a b d4
  | e,16 fis g a b8 a16.-[-( g32-)-]
  | g8 r16 b c8. d16
  | b8 r16 c a8.-\trill g16
  | g8 r16 d g8 a
  | b c d c16-[-( b-)-]
  | b8 a16 b, e8 fis
  | g a b a16-[-( g-)-]
  | g8 fis c'4
  | b16 a b c g8 fis16.-[-( e32-)-]
  | e8 r16 e' dis8. e16
  | b8 r16 c fis,8.-\trill e16
  | e4 r
  | R2
  | r8 r16

  \bar "|."
}
