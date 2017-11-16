% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.19.49"

melody = \relative g' {
  \key c \minor
  \time 4/4

  r2 r4 r8 g
  | es'8. d32[( c)] b16 b c d c8 r16 c c8 c
  | b8. b16 c8 g bes16[( as)] as c c8. bes32[( as])
  | as8 g r g16. c32 c8 b r b16. d32
  | d8 c r c16[( es)] es4( d16[ c]) bes![( as)]
  | as8 g g fis g4 r
  | r r16 es g as bes8. g16 es8. es'16
  | d4 r16 d es f bes,8. c16 f,8. as16
  | as8 g r16 es g bes es8. c16 a8. c16
  | c8 fis, r a16[( d]) d4 r
  | r8 bes as! es' g,4 fis8.[( g16])
  | g4 r8 g as8. as16 as8 r16 as
  | b4 r8 b c c r16 d d d
  | es8. c16 es8. c16 b4 r
  | r r8 d es4 r8 c
  | b bes as g as as r c
  | des2 ~ des8 b16[( c]) c8 c
  | c( es4) d!8 c f, g as
  | \appoggiatura as16 g8. g16 g8. g16 c,4 r
  | R1

  \bar "|."
}
