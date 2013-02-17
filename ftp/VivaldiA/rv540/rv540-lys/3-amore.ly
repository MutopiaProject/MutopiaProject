\version "2.16.0"

IIIAmore = \relative c'' {
  \key f \major
  \time 3/8 
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 16) . (6))
      ((1 . 32) . (4 4 4))
    )))
  \set Score.skipBars = ##t

  \set Score.currentBarNumber = #196
  R4.*20 |
  d32 e f g a16 d, e cis |
  % 217
  d4 r8 |
  % 218
  d32 e f g a16^\trill g32 f g16^\trill f32 e |
  % 219
  f4 r8 |
  % 220
  a32 a a a a a a a a g f e |
  % 221
  d16 d d d d e32 f |
  % 222
  g g g g g g g g g f e d |
  % 223
  c16 c c c c d32 e |
  % 224
  f f f f f f f f f e d c |
  % 225
  bes16 bes bes bes bes c32 d |
  % 226
  e e e e e e e e e g f e |
  % 227
  f f f f f f f f f a g f |
  % 228
  e16 e32 f g16 e32 f g16 e32 f |
  % 229
  g16 bes a f g e |
  % 230
  f a a f g e |
  % 231
  f8 r r |
  % 232 |
  R4.*13
  % 245
  f16 c32 bes a16 a'32 g f16 a, |
  % 246
  bes d32 c bes16 g'32 f e16 bes |
  % 247
  a f a c f c |
  % 248
  f,4 r8 |
  % 249
  R4.*2 |
  % 251
  a16 c32 bes a16 ees'32 d c16 bes32 a |
  % 252
  bes16 g bes d g8 |
  % 253
  R4. |
  % 254
  <g, d >16.<g d >32<g d >16.<g d >32<a d, >16.<g d >32|
  % 255
  <fis d >16.<fis d >32<fis d >16.<fis d >32<g d >16.<a d, >32|
  % 256
  <bes d, >8<a d, > r8 |
  % 257
  R4. |
  % 258 
  bes16 d g32 f ees d g f ees d |
  % 259
  ees16 c ees g ees c |
  % 260
  fis a32 g fis16 e32 d c16 bes32 a |
  % 261
  bes16 d g bes, a fis' |
  % 262
  g4 r8 |
  % 263 
  R4.*17 |
  % 280
  d32( cis d  e) d( cis d  e) f( e f  g) |
  % 281
  a16 f d a f d |
  % 282
  f'32( e f  g) f( e f  g) f( e f  g) |
  % 283
  a4 r8 |
  % 284
  f32 e f g f e f g f16^\trill r |
  % 285
  e32 d e f e d e f e16^\trill r |
  % 286
  d32 cis d e d cis d e d cis d e |
  % 287
  <cis a >16a' a <cis, a ><cis a ><d a >|
  % 288
  <d a >a' a <d, a ><d a ><cis a >|
  % 289
  <cis a >8 r8 r |
  % 290
  r32 d32 d d g d d d bes' d, d d |
  % 291
  e16 c e c g' c, |
  % 292
  r32 c c c f c c c a' c, c c |
  % 293
  d16 bes d bes g' bes, |
  % 294
  r32 bes bes bes e bes bes bes g' e e e |
  % 295
  cis a a a cis a a a g' e e e |
  % 296
  f a a a f d d d a f' f f |
  % 297
  e a a a e cis cis cis a e' e e |
  % 298
  f16 d32 e f16 f32 g a16 r |
  % 299
  R4. |
  % 300
  <f, a d f>4._\markup{\italic "Arpeggio"} |
  <a cis e> | <f a d f> | <a cis e> |
%{
  f,16 a d f d a |
  % 301
  a cis e cis a8 |
  % 302
  f16 a d f d a |
  % 303
  a cis e cis a8 |
%}
  % 304
  R4.*4 |
  %308
  d32 cis d e f e f g a8 |
  % 309
  <<{f16 g e8.^\trill d16} \\ {a8 a4}>> |
  % 310
  <d a d, f>4 r8 |
  % 311
  R4.
  % 312
  f32 d f a f d f a f d f a |
  % 313
  cis, a cis e cis a cis e cis a cis e |
  % 314
  f d f a f d f a f d f a |
  % 315
  cis, a cis e cis a cis e cis a cis e |
  % 316
  f( e  f) g f( e  f) g f( e  f) g |
  % 317
  a16. bes32 a16. bes32 a16. bes32 |
  % 318
  a16 g32 f e8.\startTrillSpan d16\stopTrillSpan |
  % 319
  d32( cis  d) e d( cis  d) e d( cis  d) e |
  % 320
  f16. g32 f16. g32 f16. g32 |
  % 321
  f16 e32 d cis8.\startTrillSpan d16\stopTrillSpan |
  % 322
  d4 r8 |
  % 323
  R4.*6 |
  % 329
  R4.^\fermataMarkup \bar "|."
}
