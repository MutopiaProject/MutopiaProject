\version "2.18.0"
violinISecondMov =  \relative e' {
  \key c \major
  \clef violin

  \noTupletBracket

  e4-(-\markup { \italic {a mezza voce} } d-)
  | c8.-( cis16 d8 e-)
  | f-(-[ a g f-)-]
  | f-(-[ e d8. dis16-)-]
  | e4-( d!-)
  | c!4-( d8 e-)
  | f8-( \tuplet 3/2 { a16 f d-) } c8-( \tuplet 3/2 { b16 d g-) }
  | f4-( e8-) r
  | e'4-( d-)

  % 10
  | c8.-( cis16 d8 e-)
  | f8-(-[ a g f-)-]
  | f-[-( e d8. e16-)-]
  | f4-( e-)
  | d8-(-[ e f fis-)-]
  | g4 ~ g16  f-.-( e-. d-.-)
  | c4 r
  | r32 g-. a-. b-. c-. d-. e-. fis-. g-( fis g a g bes a g-)
  | f!8 r r4
  | r32 a,-. b!-. cis-. d-. e-. f!-. gis-. a-( gis a gis a bes a g-)

  % 20
  | f8 r16 d'-. a-( bes f g-)
  | a8 r r4
  | r32 a-( gis a-) e-( f! cis d-) gis,-( a cis d-) e-( f gis a-)
  | c,!8-[-( b32-) fis g b-] d f! g b d-( b g f-)
  | f16-( e-) r32 e'-( dis e-) b-( c gis a-) b-( c d e-)
  | g,!-( fis-) r e'-. r d-. r c-. r b-. r a-. r g-. r fis-.
  | r a-. r g-. r e'-. r d-. r c-. r b-. r a-. r g-.
  | r gis-. r gis-. r gis-. r gis-. r a-. r a-. r a-. r a-.
  | r bes-. r bes-. r bes-. r bes-. r bes16 bes32 r bes16 bes32
  | r <bes, bes'>16\cresc q q q32 r q16 q q q32

  % 30
  | r32 <b! b'>16\! <b b'> <b b'> <b b'>32
  r g'-.-[ d-. b'-.-] g-. b-. g-. d'-.
  | b d b g' d-\markup { \italic dim. } g d b' g b g d b d g d
  | b'8-\p r fis,, r
  | b4-(-\markup { \italic m.v. } a-)
  | g-( gis-)
  | a4.-( ais8-)
  | \stemUp \slurDown b4-( ~ b16 d, g b-) \slurNeutral \stemNeutral
  | d4-( dis
  | e8-) f4-\fz-( e8-)
  | d4 ~ d16  c-.-( b-. a-.-)

  % 40
  | g8 r r4
  | r32 d-. e-. fis-. g-. a-. b-. cis-. d-( cis d e d f e d-)
  | c!8 r r4
  | r32 e,-. fis-. gis-. a-. b-. c!-. dis-. e-( dis e dis e f! e d-)
  | cis4 c32-( b c b c e d c-)
  | b4 c32-( b c b c g' f e-)
  | d-(\cresc cis d cis-) d-( a' g f-) e-( dis e dis-) e-( g f e-)
  | d!-(\! e f e-) g-( f a g-) f-( e a g-) f-( e a g-)
  | f-( gis-) a-( gis-) a-(-\> gis-) a-. g-. f-. e-. d-. c-. b-. a-. g-. f-.-\!
  | e4-(-\p d-)

  % 50
  | c8.-( cis16 d8 e-)
  | f-(-[ a g f-)-]
  | f-[-( e d8. e16-)-]
  | f4-( e-)
  | d8-[-( e f fis-)-]
  | g4 ~ g16  f!-.-( e-. d-.-)
  | c8 r16 c'-. g-( as es f-)
  | g8 r r4
  | r8. d'16-. a-( bes f g-)
  | a8 r r4

  % 60
  | r8. f'16-. cis-( d e! d-)
  | c!32-( a'-) r g r f r e r dis r e r f r g
  | r a r g r f r e r dis r e r f r g
  | r a-\markup { \italic dim. } r g r f r e r es r d! r e r d
  | r a'-\pp r es r d r a' r es r d r es r d
  | r f'-\f r e! r d r c r b r a r g r f
  | e16-. e-. e-. e-. e-. e-. e-. e-.
  | <f, c' a'>8 r r r16. d'32-.-\p
  | g8-. r r r16. c,32-.
  | f8-. r16. f32 as8-. r16. as32

  % 70
  | g8 r16. f32 e16 r d-. r
  | c8-. r b-. r
  | e,4-( d-)
  | c8.-( cis16 d8 e-)
  | f-(-[ a g f-)-]
  | f-[-( e d8. dis16-)-]
  | e4-( d!-)
  | c-( d8-[ e-]-)
  | f-( \tuplet 3/2 { a16 f d-) } c8-( \tuplet 3/2 { b16 d f-) }
  | e8 r r r32 g-(-[_\markup { \italic { più } \dynamic f } e c-)-]

  % 80
  | g8 r r r32 d''-[-( b f-)-]
  | e8 r r r32 e'-[-(-\> cis g-)-]-\!
  | f-\p-( a' gis a-) e-( f cis d-) gis,-( a cis d-) e-( f g a-)
  | c,!-( b-) r a' r g! r f r e r d r c r b
  | r d r c r a' r g r f r e r d r c
  | r cis r cis r cis r cis r d r d r d r d
  | r es r es r es r es r es16-[ es32-] r es16-[ es32-]
  | r <es, es'>16-[\cresc q q q32-] r q16-[ q q q32-]
  | r <e! e'!>16-[-\f <e e'> <e e'> <e e'>32-]
  r c'-.-[ g-. e'-.-] c-. g'-. e-. c'-.
  | g e' c e c-\markup { \italic dim. } g' e g e g c g c g c g

  % 90
  | c8-\p r b,, r
  | c r r32 a'-(-[ e f-] cis d g, b-)
  | c!8 r r32 a'-[-( e f-] cis d g, b-)
  | c!8-\markup { \italic dim. } r c r
  | c-[-\pp  <g, e'>-. <g e'-.> <g e'>-]-.
  | <g e'-\fermata>2

  \bar "|."
}
