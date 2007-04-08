\version "2.10.0"

 cello = {
 \set Staff.instrumentName = "Cello"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key a \major
 \time 4/4
 a,4\f\staccato r4 r2 R1 gis,4\f\staccato r r2 R1 g,4\f\staccato r r2 R1 fis,4\f\staccato r fis4\p r f r e r
 f4_\markup { \italic "dimin." } r4 r f16 f f f e2:16\pp e2:16 e4 r r2 e2:16 e2:16 e4 r r2
 e2:16_\markup { \italic "cresc." } e2:16 a,16\ff a, b, cis d e fis gis a b cis' d' e' fis' gis' a' a,4 r r2
 gis,16 gis, a, b, cis d e fis gis a b cis' d' e' fis' gis' g,4 r r2 fis,16 fis, g, a, b, cis d e fis g a b cis' d' e' fis'
 f,4 r r2 f,16 f, g, a, b, c d e f g a b c' d' e' f' e,4_\markup { \italic "dimin." } r4 c4:16 e4:16 g4\p r r2 R1
 R1 R1 R1 R1 b,2:16\pp b,8 r r4 c,2:16 c,8 r r4 b,2:16 b,8 r r4
 c,2:16 e,8_\markup { \italic "cresc." } r8 r4 f,4:16 fis,8 r fis,4:16 g,8 r
 gis,!16\ff gis, a, b, cis! d e fis! gis! a b cis'! d' e' fis' gis' gis,4 r r2
 ais,16\ff ais, b, cis d e fis gis ais b cis' d' e' e fis gis ais4 r r2
 b,16\ff b, cis dis e fis g a! b b cis' dis' e' fis g a b4 r r2 c,16\ff c, d, e, f, g, a, b, c d e f g a b c'
 c,4_\markup { \italic "dimin." } r c4:16 c'4:16 c'4\p r r2 f4^\markup { \italic "pizz." } r a r c' r r2
 f4 r a r bes, r bes r c4 r c r e,2:16\pp^\markup { \italic "arco" } e,8 r r4
 f,2:16_\markup { \italic "cresc." } f,8 r r4 f,2:16 f,8 r r4 f,4:16 f,8 r f,4:16 f,8 r f,4:16 f,8 r f,4:16 f,8 r
 \new Voice { \stemDown e'16\fp[ \stemUp e, e, e,] } e,4:16 e,8 r r4 r2 e4\p( b,)
 \new Voice { \stemDown e'16\fp[ \stemUp e, e, e,] } e,4:16 e,8 r r4 r2 e4\p( b, e,) r r2 R1 R1 R1 R1 R1

 \time 6/8
 \repeat volta 2 {
 R2. R2. R2. r4 r8 r8 r8. a,16\p a,4 r8 r4 r8 r4 r8 r8 r8. a,16 a,4 r8 r4 r8 r4 r8 r8 r8. a,16
 a,4 r8 r4 r8 r4 r8 r8 r8. a,16 a,8 r cis e8 r e a,4 r8 r4 r8 r4 r8 r8 r8. a,16 a,4 r8 r4 e8 fis\sf( e) cis\staccato a,4 r8
 r4 r8 r8 r8. a,16 a,4 r8 r4 e8 fis8\sf( e) cis\staccato a,4 r8 r4 r8 r8 r8. e16
 e4.\f\> ~ e4\!\p r8 r4 r8 r8 r8. e16 e4.\f ~ e8. cis16\staccato a,8\staccato e4.\sf ~ e8. cis16\staccato ais,8\staccato
 e8\sf[ r16 d16 b,8] gis8\sf[ r16 e d8] b8\sf[ r16 gis e8] d'8\sf[ r16 b16 gis8]
 e4.^\fermata r4 r8 a,8.\ff a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8
 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8
 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 cis8 e8. e16 e,8 a,8. a,16 a,8 a,8. a,16 a,8
 a,4 r8 r4 a,8 a,4 a,8 a,8. cis16\staccato e8\staccato g8( fis) d\staccato a,4 a,8
 a,4 a,8 a,8. cis16\staccato e8\p\staccato a8_\markup { \italic "cresc." }( cis') e'\staccato
 a,8. cis16\staccato e8\staccato a8( d') fis'\staccato a,8. d16\staccato fis8\staccato
 a8( b) d'\staccato a,8. b,16\staccato d8\staccato a( cis') e' a,8. cis16\staccato e8\staccato
 a8\staccato_\markup { \italic "stacc." } cis'\staccato e'\staccato a,\staccato cis\staccato e\staccato
 a8\staccato d'\staccato fis'\staccato a,\staccato d\staccato fis\staccato
 a\staccato b\staccato d'\staccato a,\staccato b,\staccato d\staccato
 a\staccato cis'\staccato e'\staccato a,\staccato cis\staccato e\staccato cis16\ff cis' cis' cis' cis' cis' cis'4.:16
 b4.:16 b16 b b\p b b b a4.:16 a4.:16 gis4 r8 gis4 r8 gis4 r8 gis4 r8 gis4 r8 gis4 r8
 cis4.:16_\markup { \italic "cresc." } e4.:16 ees4\f r8 ees4\p r8 ees4 r8 ees4 r8 dis4 r8 dis4 r8
 gis2._\markup { \italic "cresc." } fis,4\f fis,8 fis4 fis8 fis8( e4) ~ e4. dis,4 dis,8 dis4 dis8 dis8( cis4) ~ cis4 c8
 b,4\staccato r8 b,4\staccato r8 b,4\staccato r8 b,4\staccato r8
 b,4\staccato r8 b,4\staccato r8 b,4\staccato r8 b,4\staccato r8
 cis4.( ~ cis4 c8) b,4.\p( ~ b,4 cis!16 dis) e4 r8 r4 r8 R2. e4._\markup { \italic "dolce" }( gis4. b4. b,4.)
 e4.\f e8. e16 e8 e8. e16 e8 e8. e16 d!8 c8. c'16 g8 e8. e16 c8 g,8. g,16 e,8 c,8. c16 g,8
 c4 r8 r8. g,16_\markup { \italic "dimin." } g,8 c4 r8 r8. g,16 g,8 c4\p r8 r4 r8 c4\pp r8 r4 r8
 r8 r dis,16\pp( e, fis,4\staccato) r8 R2. r8 r dis,16\pp( e, fis,4\staccato) r8 R2.
 r8 r dis,16_\markup { \italic "cresc. poco a poco" }( e, fis,8) r8 e,16( fis, gis,8) r8 e,16( fis, gis,8) r8 fis,16( gis,
 a,8) r fis,16( gis, a,8) r gis,16( a, b,8) r gis,16( a, b,8) r a,16( b, cis8) r a,16( b, cis8) r b,16( cis
 dis8) r b,16( cis dis8) r cis16( dis e8.\ff) e'16 b8 gis8. gis16 e8 b,8. b,16 gis,8 e,4 r8
 a'8. a'16 fis'8 cis'8. cis'16 a8 fis8. fis16 cis8 a,4 r8 a,2.:16\pp
 b,4.:16_\markup { \italic "cresc." } b,16 b, b, a, gis, fis,
 \new Voice { \stemUp e,8.\ff[ \stemDown e'16 b8] } gis8. gis16 e8 b,8. b,16 gis,8 e,4 r8
 a'8. a'16 fis'8 cis'8. cis'16 a8 fis8. fis16 cis8 a,4 r8
 a,2.\pp b,2._\markup { \italic "cresc." } e4\ff r8 gis4 r8 b4 r8 r8. b16 b8
 b4.\sf ~ b8. a16\staccato gis8\staccato \appoggiatura gis32 a4.\sf ~ a8. cis16\staccato dis8\staccato
 e4 r8 r8. b16 b8 b4\sf^\markup { \italic "ten." } gis8 \appoggiatura gis32 a8. cis16\staccato dis8\staccato
 e4 r8 r8. b16 b8 \appoggiatura dis32 e4\ff\staccato r8 \appoggiatura e,32 fis,4\staccato r8
 \appoggiatura fis,32 gis,4\staccato r8 \appoggiatura gis,32 a,4\staccato r8
 \appoggiatura a,32 b,4\staccato r8 \appoggiatura b,32 cis4\staccato r8
 \appoggiatura cis32 d4\staccato r8 dis4\staccato r8 R2. R2.
 }

 \appoggiatura dis,32 e,4\ff\staccato r8 \appoggiatura e,32 f,4\staccato r8
 \appoggiatura f,32 fis,4\staccato r8 \appoggiatura fis,32 g,4\staccato r8 R2. R2. R2. R2. R2.
 r4 r8 g,8.\pp g,16 g,8 g,4. ~ g,8. f,16\staccato e,8\staccato f,8.\staccato g,16\staccato a,8\staccato
 b,8.\staccato c16\staccato d8\staccato e8. f16 g8 a8. b16 c'8 d'8. c'16 b8 a8. g16 f8 e8. d16 c8 c4 r8
 b,8. a,16 g,8 g,4 r8 c4 r8 r8. c16 c8
 c4 r8 r8. c16 c8 c4 r8 r8. c16 c8 c4 r8 r8. c16 c8
 c8._\markup { \italic "cresc." } c16 c8 c8. c16 c8 c8. c16 c8 c8. c16 c8
 c8. c16 c8 c8. c16 c8 c8. c16 c8 c8. c16 c8 c8. c16 c8 c8. c16 c8 c8. c16 c8 c8. c16 c8
 c4\f r8 c'8. c'16\staccato g8\staccato g4. ~ g8. g16\staccato e8\staccato e4 r16 c' g4 r16 g e4 r16 e c4 r16 c
 g,4\ff r8 r4 r8 R2. g,4 r8 \new Voice { \stemUp g,8.[ \stemDown f'16 d'8] } d'4. ~ d'8. d'16 b8 b4 r16 f' d'4 r16 d'
 b4 r16 b g4 r16 g, gis,!4 r8 r4 r8 R2. gis,4 r8 gis8. e'16 b8 b4. ~ b8. b16 gis8 gis4 r16 e' b4 r16 b
 gis4 r16 gis e4 r16 e e8.\f e16 e8 r4 r8
 cis,8.\sf cis,16 cis,8 r4 r8 cis,8.\sf cis,16 cis,8 r4 r8 R2. R2. R2. R2. r8. d16\pp e8 f8[ r16 a, b,8] c4 r8 r4 r8 R2.
 r8. a,16 a,8 c8[ r16 e fis!8] g4 r8 r4 r8 R2. r8. e16 fis!8 g8[ r16 bes, c8] d4 r8 r4 r8 R2. r8. b,16 cis!8 d8[ r16 f, g,8]
 a,4 r8 r4 r8 r8. b,16 cis8 d8[ r16 f, g,8] a,8[ r16 a,_\markup { \italic "cresc. poco a poco" } b,8] cis!8[ r16 b, cis8]
 d8[ r16 cis d8] e8[ r16 d e8] f2. ~ f2. ~ f8[ r16 bes, c8] d8[ r16 c d8] e8[ r16 d e8] f8[ r16 e f8]
 g2. ~ g2. ~ g8[ r16 c d8] e8[ r16 d e8] f8[ r16 e f8] g8[ r16 f g8] a2. ~ a2. ~
 a8[ r16 d e8] fis!8[ r16 e fis8] g8[ r16 fis g8] a8[ r16 g a8] bes8.\f bes16 a8 bes4 r8 b8[ r16 b ais8] b4 r8
 c'8[ r16 c' b8] c'4 r8 cis'!8[ r16 cis' bis8] cis'4 r8 d8\ff[ r16 d cis8] d8[ r16 d cis8]
 d8[ r16 d cis8] d8[ r16 d cis8] d2. ~ d4. d8. c16 b,8 c8[ r16 c b,8] c8[ r16 c b,8] c8[ r16 c b,8] c8[ r16 c b,8]
 c2. ~ c4. c8. b,16 a,8 b,8[ r16 b, ais,8] b,8[ r16 b, ais,8] b,8[ r16 b, ais,8] b,8[ r16 b, ais,8]
 b,4 r8 r8. b16 c'8 d'4 r8 r8. gis!16 a8 b4 r8 r8. d16 e8 f4 r8 r8. gis,!16 a,8
 b,8[ r16 gis, a,8] b,8[ r16 a, b,8] c8[ r16 a, b,8] c8[ r16 b, cis8] d8[ r16 b, cis8] d8[ r16 cis dis8]
 e8[ r16 cis dis8] e8[ r16 cis dis8] e8[ r16 cis d8] e8[ r16 cis d8]
 e8[ r16 cis d8] e8[ r16 cis d8] e4 r8 r4 r8
 r4 r8 e16_\markup { \italic "piu f" }( fis gis a \times 2/3 { b16[ cis' d']) } e'4 r8 r4 r8
 r4 r8 e16( fis gis a \times 2/3 { b16[ cis' d']) }
 \new Voice { \stemDown e'8[ \stemUp g,16\rest a,16 a,8] } a,8[ r16 b, cis8] b,8[ r16 cis d8] e8[ r16 e d8]
 cis8[ r16 e d8] cis8[ r16 b, a,8] gis,8[ r16 fis, e,8] d8[ r16 cis b,8]
 a,8[ r16 a, gis,8] a,8[ r16 b, cis8] b,8[ r16 cis d8] e8[ r16 e d8]
 cis8[ r16 b, a,8] e8[ r16 e, e,8] a,8[ r16 cis e8] a8[ r16 cis' e'8] fis'8[ r16 d' a8] fis8[ r16 d a,8]
 a,8[ r16 cis e8] a8[ r16 cis' e'8] a,8[ r16 e g8] cis'8[ r16 e' g'8] fis'8[ r16 d' a8] fis8[ r16 d a,8]
 a,8[ r16 cis e8] a8[ r16 cis' e'8] a,8[ r16 cis e8] a8[ r16 b cis'8]
 d'8[ r16 b gis8] cis'8[ r16 a e8] e8[ r16 gis b8] e8[ r16 a cis'8]
 d'8[ r16 b gis8] cis'8[ r16 a e8] e8[ r16 gis b8] e8[ r16 a cis'8]
 e8[ r16 a cis'8] e8[ r16 ais cis'8] e8[ r16 b d'8] e8[ r16 gis b8] b,8[ r16 e gis8] gis,8[ r16 b, e8]
 e,4.^\fermata r4 r8 a,4^\markup { "pizz." } r8^\fermata r4 r8
 <d, a,>2.\p^\fermata^\markup { "arco." } ~ <d, a,>2. ~ <d, a,>2. ~ <d, a,>2. ~ <d, a,>2. ~ <d, a,>2. ~ <d, a,>4
 f,8 a,4 a,8 d,4. g,4. g,2.\pp( d2. bes,2. f2. d2.) a2. ~ a2._\markup { \italic "pp sempre" } ~ a2. ~ a2. ~ a4. ~ a4 a8
 a,8_\markup { \italic "cresc." }( a) a\staccato a,( a) a\staccato a,8( a) a\staccato a,8( a) a\staccato
 a,8( a) a\staccato a,8( a) a\staccato a,8( a) a\staccato a,8( a) a\staccato
 a,16\ff a a a a a a4.:16 g4.:16 g4.:16 f4.:16 f4.:16 e4\p r8 e4 r8 e4 r8 e4 r8 e4 r8 e4 r8 e4 r8 e4 r8
 e4_\markup { \italic "cresc." } r8 e4 r8 a,4.\f ~ a,4 a,8 gis,4 gis,8 gis4 gis8 gis8( fis4) ~ fis4 fis,8
 e,4 e,8 e4 e8 e8( d) d\staccato dis dis dis e4 r8 e4 r8 e4 r8 e4 r8 e4 r8 e4 r8 e4 r8 e4 r8
 fis,4.\sf( ~ fis,4 f,8) e,4.\p( ~ e,4 fis,!16 gis,) a,4 r8 r4 r8 R2. a,4._\markup { \italic "dolce" }( cis4. e4. e,4.)
 a,4.\ff a8. a16 a8
 a8. a16 a8 a8. a16 g8 f8. f'16 c'8 a8. a16 f8 c8. c16 a,8 f,8. f,16 c,8
 f,4 r8 r8. c,16_\markup { \italic "dimin." } c,8 f,4 r8 r8. c,16 c,8 f,4\p r8 r4 r8 f,4\pp r8 r4 r8
 r8 r gis,16\pp( a, b,4\staccato) r8 R2. r8 r gis,16( a, b,4\staccato) r8 R2.
 r8 r gis,16_\markup { \italic "cresc. poco a poco" }( a, b,8\staccato) r8 a,16( b, cis8\staccato) r8
 a,16( b, cis8\staccato) r8 b,16( cis d8\staccato) r8 b,16( cis d8\staccato) r8 cis16( d
 e8\staccato) r8 cis16( d e8\staccato) r8 d16( e fis8\staccato) r8 d16( e fis8\staccato) r8 e16( fis gis8\staccato)
 r8 e16( fis gis8\staccato) r8 fis16( gis a8.\ff) fis'16 cis'8 cis'8. cis'16 a8 e8. e16 cis8 a,4 r8
 \new Voice { \stemUp d,8.[ \stemDown d'16 a8] } fis8. fis16 d8 a,8. a,16 fis,8 d,4 r8 d,2.:16\pp
 e,4._\markup { \italic "cresc." } e,16 e e d cis b,
 \new Voice { \stemUp a,8.\ff[ \stemDown a'16 e'8] } cis'8. cis'16 a8
 e8. e16 cis8 a,4 r8 d'8. d'16 a8 fis8. fis16 d8 a,8. a,16 fis,8 d,4 r8 d,2.\pp e,2._\markup { \italic "cresc." }
 a,4\ff r8 cis4 r8 e4 r8 r8. e16 e8 e4.\sf ~ e8. d16\staccato cis8\staccato
 \appoggiatura cis32 d4.\sf ~ d8. fis,16\staccato gis,8
 a,4 r8 r8. e16 e8 e4\sf^\markup { \italic "ten." } cis8 \appoggiatura cis32 d8. fis,16\staccato gis,8\staccato
 a,4 r8 r8. e16 e8
 \appoggiatura gis,32 a,4\ff r8 \appoggiatura a,32 b,4 r8 \appoggiatura b,32 cis4 r8 \appoggiatura cis32 d4 r8
 \appoggiatura d32 e4 r8 \appoggiatura e32 fis4 r8 \appoggiatura fis32 gis4 r8 \appoggiatura gis32 a4 r8 R2. R2.
 \appoggiatura g32 aes4\p r8 r4 r8 R2. aes,8.\pp aes,16 aes,8 aes,8. aes,16 aes,8
 aes,8. aes,16 aes,8 aes,8. aes,16 aes,8 aes,8. aes,16 aes,8 aes,8. aes,16 aes,8
 aes,8. aes,16 aes,8 aes,8. aes,16 aes,8 g,8. g,16 g,8 g,8. g,16 g,8
 g,8._\markup { \italic "sempre p" } g,16 g,8 g,8. g,16 g,8 f,8. f,16 f,8 f,8. f,16 f,8 f,8. f,16 f,8 f,8. f,16 f,8
 e,8. e,16 e,8 e,8. e,16 e,8 e,8. e,16 e,8 e,8. e,16 e,8
 d,4. ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4. d,4. ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4.
 d,4. ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4. d,4. ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4.
 d,4._\markup { \italic "cresc." } ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4. d,4. ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4.
 d,4. ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4. d,4. ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4.
 d,4. ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4. d,4. ~ d,8( cis, bis,,) bis,,8( cis,4) ~ cis,4.
 d,4._\markup { \italic "piu cresc." } ~ d,8( cis, bis,,) d,8( cis, bis,, d, cis, bis,,)
 cis,8.\ff cis16 cis8 cis8. cis16 cis8 cis8. cis16 cis8 cis8. cis16 cis8
 d,8. d16 d8 d8. d16 d8 d8. d16 d8 d8. d16 d8 e4 r8 r8. a16\staccato e8 e4 r8 r8. e'16\staccato cis'8
 cis'4\staccato r16 a' e'4\staccato r16 e' cis'4 r16 cis' a4 r16 a fis4 r16 fis e4 r16 e,
 dis,4 r8 r8. dis,16 dis,8 dis,4 r8 r8. dis,16 dis,8
 d,!4 r8 r8. d,16 d,8 d,4 r8 r8. d,16 d,8 cis,4 r8 r8. d,16 d,8 e,4 r8 r8. eis,16 eis,8
 fis,8[ r16 d, d,8] d,8[ r16 e, e,8] e,8[ r16 eis, eis,8] eis,8[ r16 fis, fis,8]
 fis,8[ r16 d, d,8] d,8[ r16 e, e,8] e,8[ r16 e e8] e8[ r16 a, a,8]
 a,4\ff r8 r4 r8 e8[ r16 e e8] e8[ r16 e e8] a,4 r8 r4 r8 e8[ r16 e e8] e8[ r16 e e8]
 a,8[ r16 a a8] a8[ r16 a a8] a8[ r16 a, a,8] a,8[ r16 a, a,8]
 a,4 r8 r4 r8 e4 r8 r4 r8 a,4 r8 r4 r8 \bar "|."
}