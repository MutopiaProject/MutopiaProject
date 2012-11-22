\version "2.16.0"

IIILute = \relative c'' {
  \key f \major
  \time 3/8
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 16) . (6))
      ((1 . 32) . (4 4 4))
    )))

  \set Score.skipBars = ##t

  \set Score.currentBarNumber = #196
  R4.*21 |
  d32 e f g a16 d, e cis |
  % 218
  d4 r8 |
  % 219
  d32 e f g a16^\trill g32 f g16^\trill f32 e |
  % 220
  f4 r8 |
  % 221
  d'32 d d d d d d d d c bes a |
  % 222
  g16 g g g g a32 bes |
  % 223
  c c c c c c c c c bes a g |
  % 224
  f16 f f f f g32 a |
  % 225
  bes bes bes bes bes bes bes bes bes a g f |
  % 226
  g g g g g g g g g bes a g |
  % 227
  a a a a a a a a a c bes a |
  % 228
  g16 g32 a bes16 g32 a bes16 g32 a |
  % 229
  bes16 g f a bes g |
  % 230
  a g f a bes g |
  % 231
  f8 r r |
  % 232
  R4.*16 |
  % 248
  a,16 c32 bes a16 a'32 g f16 a, |
  % 249
  bes d32 c bes16 g'32 f e16 bes |
  % 250
  a f a c f c |
  % 251
  f,4 r8 |
  % 252
  R4. |
  % 253
  a16 c32 bes a16 ees'32 d c16 bes32 a |
  % 254
  bes16 g bes d g8 |
  % 255
  R4. |
  % 256
  <g d >16.<g d >32<g d >16.<g d >32<a d, >16.<g d >32|
  % 257
  <fis d >16.<fis d >32<fis d >16.<fis d >32<g d >16.<a d, >32|
  % 258
  <bes d, >8<g d > r |
  % 259
  R4.*3 |
  % 262
  bes,16 d g32 f ees d g f ees d |
  % 263
  ees16 c ees g ees c |
  % 264
  fis a32 g fis16 e32 d c16 bes32 a |
  % 265
  bes16 d g bes, a fis' |
  % 266
  g4 r8 |
  % 267
  R4.*14 |
  % 281
  d32 cis d e d cis d e f e f g |
  % 282
  a16 f d a f d |
  % 283
  f'32 e f g f e f g f e f g |
  % 284
  a g a bes a g a bes a16^\trill r |
  % 285
  g32 f g a g f g a g16^\trill r |
  % 286
  f32 e f g f e f g f e f g |
  % 287
  e4 r8 |
  % 288
  R4. |
  % 289
  r32 a32 a a f d d d f a a a |
  % 290
  bes16 g bes g d g |
  % 291
  r32 g g g e c c c e g g g |
  % 292
  a16 f a f c f |
  % 293
  r32 f f f d bes bes bes d f f f |
  % 294
  g16 e g e bes e |
  % 295
  e32 cis cis cis e cis cis cis e cis cis cis |
  % 296
  d f f f d f f f d a' a a |
  % 297
  cis, e e e cis a' a a e cis cis cis |
  % 298
  d4 r8 |
  % 299
  f16 d32 e f16 f32 g a8 |
  % 300
  R4.*4 |
  % 304
  <d, f a>4._\markup{\italic "Arpeggio"} |
  <cis e a> | <d f a> | <cis e a> |
%{
  d,16 f a f d f |
  % 305
  cis e a e cis e |
  % 306
  d f a f d f |
  % 307
  cis e a e cis e |
%}
  % 308
  d8 r r |
  % 309
  R4. |
  %310
  d32 cis d e f e f g a8 |
  % 311
  f16 g e8.^\trill d16 |
  % 312
  d32 a d f d a d f d a d f |
  % 313
  e cis e a e cis e a e cis e a |
  % 314
  a a, d f d a d f d a d f |
  % 315
  e cis e a e cis e a e cis e cis |
  % 316
  d32 cis d e d cis d e d cis d e |
  % 317
  f16. g32 f16. g32 f16. g32 |
  % 318

  f16 e32 d cis8.\startTrillSpan a'16\stopTrillSpan  |
  % 319
  f32 e f g f e f g f e f g |
  % 317
  a16. bes32 a16. bes32 a16. bes32 |
  % 321
  a16 g32 f e8.\startTrillSpan d16\stopTrillSpan |
  % 322
  d4 r8 |
  % 323
  R4.*6 |
  % 329
  R4.^\fermataMarkup \bar "|."
}
