\version "2.16.0"

IIAmore = \relative c'' {
  \key f \major
  \time 4/4
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 8) . (2 2 2 2))
    )))
  % end beams on quarters by default

  \repeat "volta" 2 {
  \partial 8 c8 |
  \set Score.currentBarNumber = #183
  f16 g a4 f8 g16 e c8^\trill r c8 |
  % 184
  e ~ e32 f g a bes8 g a16. g32 f8 r16 f \acciaccatura f8 g16. a32 |
  % 185
  g8 c g e f bes f d |
  % 186
  e16 d c8 r16 g' \acciaccatura g8 a16. bes32 cis,8 ~ cis16 g' a g a e |
  % 187
  f16 e d8 r16 <<{a16 \acciaccatura a8
  bes16. c32 bes8^\trill a} \\ {f16 f f f8 f}>> r16
  <<{a16 \acciaccatura a8 bes16. c32} \\ {f,16 f f}>> |
  <<{bes8^\trill a} \\ {f8 f}>> r16 a'( f  d) cis16. d32 a16. g'32 f4\startTrillSpan |
  e16\stopTrillSpan cis a g' e4\startTrillSpan d\stopTrillSpan
  }
  \repeat "volta" 2 {
  r16 a' a16. g32 |
  % 190
  fis16. fis32 g16. a32 d,16. ees32 c16. d32 bes16 a g8 r16 g' g16. f?32 |
  % 191
  e16. e32 f16. g32 c,16. d32 bes16. c32 a16 g f8 r8 c' |
  % 192
  f16 g a4 f8 e16 f g8 r16 c, e g |
  % 193
  f g a4 f8 e16 f g4 c,8 |
  % 194
  <<{a16. bes32 c8~ c16. g'32 c,16. bes32 a16. bes32 c8 ~ c16. g'32 c,16. bes32} \\ {f8 f g r f f g r}>> |
  % 195
  a16. c32 f16. g32 g8. f16 f2^\fermata
  }
}
