\version "2.10.0"

 viola = {
 \set Staff.instrumentName = "Viola"
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key a \major
 \time 4/4
 <a e' a'>4\f\staccato r4 r2 a1\p <gis b e'>4\f\staccato r r2 gis1\p
 <g e' a'>4\f\staccato r4 r2 g1\p <fis a d'>4\f\staccato r a4\p r g4 r g r a4_\markup { \italic "dimin." } r4 r f16 f f f
 e4\pp r4 d'16\staccato e'\staccato fis'!\staccato gis'!\staccato a'\staccato b'\staccato cis''\staccato b'\staccato
 a'4 r r2 e4 r4 e'16\staccato fis'\staccato gis'\staccato a'\staccato b'\staccato cis''\staccato d''\staccato cis''\staccato
 b'4 r r2 e4_\markup { \italic "cresc." } r4 <b d'>16 <cis' e'> <d' fis'> <e' gis'> <fis' a'> <gis' b'> <a' cis''> <b' d''>
 <a' cis''>16\ff <a cis'> <a cis'> <a cis'> <a cis'>4:16 <a cis'>2:16 <a cis'>2:16 <a cis'>2:16
 <gis' b'>16 <gis b> <gis b> <gis b> <gis b>4:16 <gis b>2:16 <g a>2:16 <g a>2:16
 <fis' a'>16 <fis a> <fis a> <fis a> <fis a>4:16 <fis a>2:16 <f a>2:16 <f a>2:16 <f g>2:16 <f g>2:16
 <e g>2:16_\markup { \italic "dimin." } <e g>2:16 <d g>4\p r r2
 g4 g8 r16 g g4 g8 r16 g g4 r r2 g4 g8 r16 g g4 g8 r16 g f4 r r2 R1 d1\pp e4 e8 r16 e e4( g8) r16 e d1
 e4 e8 r16 e c4_\markup { \italic "cresc." }( e8) r16 e c4( fis!8) r16 fis c4( g8) r16 b
 <gis'! b'>16\ff <gis b> <gis b> <gis b> <gis b>4:16 <gis b>2:16 <gis b>2:16 <gis b>2:16
 <ais' cis''>16\ff <ais cis'> <ais cis'> <ais cis'> <ais cis'>4:16 <ais cis'>2:16 <ais cis'>2:16 <ais cis'>2:16
 <b b'>16\ff <e g>16[ <e g> <e g>] <e g>4:16 <e g>2:16 <e g>2:16 <e g>2:16
 <e' g'>16\ff <e g> <e g> <e g> <e g>4:16 <e g>2:16 <e g>2:16_\markup { \italic "dimin." } <e g>2:16 <e g>1\p
 <f a>4 <f a>8 r16 <f a> <f a>4 <f a>8 r16 <f a> <e g>1 <f a>4 <f a>8 r16 <f a> <f a>4 <f a>8 r16 <f a>
 <f g>4 <f g>8 r16 <f g> <f g>4 <f g>8 r16 <f g> <f a>4 <f a>8 r16 <f a> <e g>4 <e g>8 r8 g1\pp
 a4_\markup { \italic "cresc." }( f8) r16 f c4( f8) r16 f a4( f8) r16 f c4( f8) r16 f
 c'4( a8) r16 a f4( a8) r16 a f'4( c'8) r16 c' a4( f8) r16 f
 e8\ff r r4 r2 r2 e'4\p( b) e16\fp e' e e e4:16 e8 r r4 r2 e'4\p( b e) r4 r2 R1 R1 R1 R1 R1

 \time 6/8
 \repeat volta 2 {
 R2. R2. R2. r4 r8 r8 r8. a16\p a4 r8 r4 r8 r4 r8 r8 r8. a16 a4 r8 r4 r8 r4 r8 r8 r8. a16
 a4 r8 r4 r8 r4 r8 r8 r8. a16 a8 r cis e8 r e a4 r8 r4 r8 r4 r8 r8 r8. a16 a4 r8 r4 e8 fis\sf( e) cis\staccato a4 r8
 r4 r8 r8 r8. a16 a4 r8 r4 e8 fis8\sf( e) cis\staccato a4 r8 r4 r8 r8 r8. e16
 e4.\f\> ~ e4\!\p r8 r4 r8 r8 r8. e16 e4.\f ~ e8. cis'16\staccato a8\staccato e'4.\sf ~ e'8. cis'16\staccato ais8\staccato
 e'8\sf[ r16 d'16 b8] gis'8\sf[ r16 e' d'8] b'8\sf[ r16 gis' e'8] d''8\sf[ r16 b'16 gis'8]
 <b gis'>4.^\fermata e16\ff( fis gis a \times 2/3 { b16[ cis' d']) }
 e'16\sf a b cis' cis' cis' a( b) cis' cis' cis' cis' fis( g) a a a a fis( g) a a b b
 a16( b) cis' cis' cis' cis' cis( e) a a a a e( a) b b b b b( cis') d' d' d' d' cis'( d') e' e' e' e' cis'( d') e' e' e' e'
 fis'( g') a' a' a' a' d'( e') fis' fis' d' d' cis'( d') e' e' e' e' cis'( d') e' e' d' d' cis'( d') e' a b cis' d'4.:16
 d'16( e') fis' fis' fis' fis' fis( a) d' d' d' d' a( b) cis' cis' cis' cis' cis'( d') e' e' e' e'
 d'( e') fis' fis' fis' fis' d'( e') fis' fis' fis' fis' a( b) cis' cis' cis' cis' a( b) cis' cis' cis'\p cis'
 a_\markup { \italic "cresc." }( b) cis' cis' cis' cis' cis'4.:16 d'16( e') fis' fis' fis' fis' fis'4.:16
 b16( cis') b d' d' d' d'4.:16 cis'16( d') cis' e' e' e' e'4.:16 cis'16( d') cis' e' e' e' e'4.:16
 fis'16( g') a' a' a' a' a'4.:16 gis'!16( a') gis' b' b' b' b'4.:16 a'16( b') a' cis'' cis'' cis'' cis''4.:16 ais'2.:16\ff
 b'4.:16 b'16 b' dis'\p dis' dis' dis' cis'4.:16 cis'4.:16 dis'8[ r bis] r r bis r r cis' r r cis' r r bis r r bis
 cis'4.:16_\markup { \italic "cresc." } gis4.:16 g8\f[ r <ees g>\p] r r <ees g>
 r8 r <ees aes> r r <ees aes> r r <ees g> r r <ees g> b!4.:16_\markup { \italic "cresc." }
 b16 b' b' b' b' b' a'8.\f( gis'16 fis' e' dis' e' dis' cis' b a) gis4.:16 gis16 gis' gis' gis' gis' gis'
 fis'8.\sf( e'16 dis' cis' b cis' b ais gis fis) e16 a! a a a a e' e e e e e
 dis4\staccato r8 b4\staccato r8 b4\staccato r8 b4\staccato r8
 b4\staccato r8 b4\staccato r8 b4\staccato r8 b4\staccato r8
 cis4.( ~ cis4 c8) b4.\p( ~ b4 cis'!16 dis') e'4 r8 r4 r8 R2. e4._\markup { \italic "dolce" }( gis4. b4. b4.)
 e4.\f e'8. b16 b8 fis'8. b16 b8 g'8. g16 <f g>8
 \new Voice { \stemUp <e g>8.[ \stemDown c''16 g'8] } e'8. e'16 c'8
 g8. g16 e8 c8. c16 g8 c4 r8 r8. g16_\markup { \italic "dimin." } g8 c4 r8 r8. g16 g8 c4\p r8 r4 r8 c4\pp r8 r4 r8
 <dis' fis'>2.:16\pp <dis' fis'>2.:16 <dis' fis'>2.:16 <dis' fis'>2.:16
 <dis' fis'>16_\markup { \italic "cresc." } b b b gis a b4.:16 a16 gis gis gis gis a b4.:16
 b16 a a a a b cis'4.:16 cis'16 b b b b cis' dis'4.:16 dis'16 cis' cis' cis' cis' dis' e'4.:16
 e'16 dis' dis' dis' dis' e' fis'4.:16 gis'16\ff <gis' b'> <gis' b'> <gis' b'> <gis' b'> <gis' b'> <gis' b'>4.:16
 <gis' b'>2.:16 <a' cis''>2.:16 <a' cis''>2.:16 c2.:16\pp
 fis!16_\markup { \italic "cresc." } fis fis b b b b b b a gis fis
 \new Voice { \stemUp e16\ff[ \stemDown <gis' b'> <gis' b'> <gis' b'> <gis' b'> <gis' b'>] } <gis' b'>4.:16
 <gis' b'>2.:16 <a' cis''>2.:16 <a' cis''>2.:16
 f'4.\pp( c'4. dis4._\markup { \italic "cresc." }) dis8( b) b\staccato
 b8\ff <e gis>16 <e gis> <e gis> <e gis> <e gis>8 <e gis>16 <e gis> <e gis> <e gis>
 <fis a>8 <fis a>16 <fis a> <fis a> <fis a> <fis a>8 <fis a>16 <fis a> <fis a> <fis a>
 <e gis>8 <e gis>16 <e gis> <e gis> <e gis> <e gis>8 <e gis>16 <e gis> <e gis> <e gis>
 <fis a>8 <fis a>16 <fis a> <fis a> <fis a> <fis a>8 <fis a>16 <fis a> <fis a> <fis a>
 <e gis>8 <e gis>16 <e gis> <e gis> <e gis> <fis a>8 <fis a>16 <fis a> <fis a> <fis a>
 <e gis>8 <e gis>16 <e gis> <e gis> <e gis> <fis a>8 <fis a>16 <fis a> <fis a> <fis a>
 <e gis>8 <e gis>16 <e gis> <e gis> <e gis> <fis a>8 <fis a>16 <fis a> <fis a> <fis a>
 \appoggiatura dis32 e4\ff\staccato r8 \appoggiatura e32 fis4\staccato r8
 \appoggiatura fis32 gis4\staccato r8 \appoggiatura gis32 a4\staccato r8
 \appoggiatura a32 b4\staccato r8 \appoggiatura b32 cis'4\staccato r8
 \appoggiatura cis'32 d'4\staccato r8 dis'4\staccato r8 R2. R2.
 }

 \appoggiatura dis32 e4\ff\staccato r8 \appoggiatura e32 f4\staccato r8
 \appoggiatura f32 fis4\staccato r8 \appoggiatura fis32 g4\staccato r8 R2. R2. R2. R2. R2.
 r4 r8 <e g>8.\p <e g>16 <e g>8 <e g>2. ~ <e g>2. ~ <e g>2. <f g>2.
 g4. ~ g8. f16\staccato e8\staccato f8.\staccato g16\staccato a8\staccato
 b8.\staccato c'16\staccato d'8\staccato e'8. f'16 g'8 a'8. b'16 c''8 d''8. c''16 b'8 a'8. g'16 f'8 e'8. d'16 c'8 c'4 r8
 b8. a16 g8 g4 r8 c'8._\markup { \italic "cresc." } g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8
 fis'!8. fis'16 fis'8 fis'8. fis'16 fis'8 fis'!8. fis'16 fis'8 fis'8. fis'16 fis'8
 f'!8. f'16 f'8 f'8. f'16 f'8 f'8. f'16 f'8 f'8. f'16 f'8 e'8.\f c''16\staccato g'8\staccato g'4. ~
 g'8.\staccato g'16\staccato e'8\staccato e'4. ~ e'8. e'16 c'8 ~ c'8. c'16 g8 ~ g8. g16 e8 ~ e8. e16 c8
 b4\ff r8 r4 r8 R2. b8. f'16 d'8 d'4. ~ d'8. d''16 b'8 b'4. ~ b'8. g'16 f'8 ~ f'8. f'16 d'8 ~
 d'8. d'16 b8 ~ b8. g16 f8 e4 r8 r4 r8 R2. <e b e'>8. e''16 b'8 b'4. ~ b'8. b'16 gis'8 gis'4. ~
 gis'8. gis'16 e'8 ~ e'8. e'16 b8 ~ b8. b16 gis8 ~ gis8. gis16 e8 e8.\ff e16 e8 r4 r8
 cis8.\sf cis16 cis8 r4 r8 cis8.\sf cis16 cis8 r4 r8 R2. R2.
 c'8.\sf d'16 e'8 f'8. e'16 f'8 g'8. g'16 g'8 f'8[ r16 d'16 d'8] c'8[ r16 bes16 bes8] a8[ r16 f16 f8] e4 r8 r4 r8
 r8. f'16 f'8 e'8[ r16 cis'16 cis'8]
 b4 r8 r4 r8 d'8. e'16 fis'!8 g'8. fis'16 g'8 a'8. a'16 a'8 g'8[ r16 d'16 d'8] d'8[ r16 c' c'8] bes8[ r16 g g8]
 f4 r8 r4 r8 r8. g'16 g'8 f'8[ r16 f' f'8] e'8[ r16 g g8] f8[ r16 d d8]
 \new Voice { \stemUp cis!8[ g'16\rest \stemDown g'16 g'8] } f'8[ r16 f' f'8] e'8[ r16 g g8] f8[ r16 d d8]
 cis!8[ r16 cis_\markup { \italic "cresc. poco a poco" } d8] e8[ r16 d e8] f8[ r16 e f8] g8[ r16 f g8]
 b2. ~ b2. ~ b8[ r16 d e8] f8[ r16 e f8] g8[ r16 f g8] a8[ r16 g a8]
 bes2. ~ bes2. ~ bes8[ r16 e f8] g8[ r16 f g8] a8[ r16 g a8] bes8[ r16 a bes8] c'2. ~ c'2. ~
 c'8[ r16 fis! g8] a8[ r16 g a8] bes8[ r16 a bes8] c'8[ r16 bes c'8]
 d'8.\f <g g'>16 <g g'>8 <g g'>4 r8 <g g'>8[ r16 <g g'> <g g'>8] <g g'>4 r8
 <g g'>8[ r16 <g g'> <g g'>8] <g g'>4 r8 <a a'>8[ r16 <a a'> <a a'>8] <a a'>4 r8 d'8\ff[ r16 d' cis'8] d'8[ r16 d' cis'8]
 d'8[ r16 d' cis'8] d'8[ r16 d' cis'8] d'4 r8 r4 r8 f8. e16 d8 d4. <c c'>8[ r16 c' b8] c'8[ r16 c' b8]
 c'8[ r16 c' b8] c'8[ r16 c' b8] <c c'>4 r8 r4 r8 e8. d16 c8 c4.
 b8[ r16 b ais8] b8[ r16 b ais8] b8[ r16 b ais8] b8[ r16 b ais8]
 b4 r8 r8. b'16 c''8 d''4 r8 r8. gis'!16 a'8 b'4 r8 r8. d'16 e'8 f'4 r8 r8. gis!16 a8
 b8[ r16 gis a8] b8[ r16 a b8] c'8[ r16 a b8] c'8[ r16 b cis'8] d'8[ r16 b cis'8] d'8[ r16 cis' dis'8]
 e'8[ r16 cis' dis'8] e'8[ r16 cis' dis'8] e'8[ r16 cis' d'8] e'8[ r16 cis' d'8]
 e'8[ r16 cis' d'8] e'8[ r16 cis' d'8] e'4 r8 r4 r8
 r4 r8 e16_\markup { \italic "piu f" }( fis gis a \times 2/3 { b16[ cis' d']) } e'4 r8 r4 r8
 r4 r8 e16( fis gis a \times 2/3 { b16[ cis' d']) }
 e'16\ff e e e e e e e d d e e d d e e fis fis e b b b e e e e e' e' e e e e e' e' e e
 e e e' e' e e e e' e e d d cis e e e d d cis cis d d e e d d e e fis fis e e b b e e
 e e d d cis cis cis cis e e d d cis cis e e a a a a cis' cis' a a a d' d' d' d' d' a d' d' d' d' d'
 a cis' cis' cis' cis' cis' a cis' cis' cis' cis' cis' a cis' cis' cis' cis' cis' a cis' cis' cis' cis' cis'
 a d' d' d' d' d' a d' d' d' d' d' a cis' cis' cis' cis' cis' a cis' cis' cis' cis' cis'
 a cis' cis' cis' cis' cis' a cis' cis' cis' cis' cis' gis b b b b b a cis' cis' cis' cis' cis' e e' e' e' e' e' e'4.:16
 gis16 b b b b b a cis' cis' cis' cis' cis' e e' e' e' e' e' e'4.:16
 e16 e' e' e' e' e' e'4.:16 e16 gis gis gis gis gis gis b b b b b b d' d' b' b' b' b'4.:16 b'4.^\fermata r4 r8
 a4^\markup { "pizz." } r8^\fermata r4 r8
 <d fis>2.\p^\markup { "arco" } <e g>2. <d fis>2. <e g>2. <d f>2. <e g>2. <d f>4. ~ <d f>4 <e g>8
 <d f>8. <e g>16 <f a>8 <g bes>8. <g bes>16 <g bes>8 <g bes>2.\pp( <f a>2. <bes d'>2. <a c'>2. <d' f'>2.)
 <c' e'>2. ~ <c' e'>2._\markup { \italic "pp sempre" } <d' f'>2. <d' f'>2. <c' e'>4. ~ <c' e'>4 <c' e'>8
 <d' f'>8_\markup { \italic "cresc." }( <c' e'>) <a c'>\staccato <d' f'>( <c' e'>) <a c'>\staccato
 <e' g'>( <d' f'>) <a d'>\staccato <e' g'>( <d' f'>) <a d'>\staccato
 <b d'>( <d' e'>) <d' e'>\staccato <b d'>( <d' e'>) <d' e'>\staccato
 <a c'>( <c' e'>) <c' e'>\staccato <a c'>( <c' e'>) <c' e'>\staccato
 fis'!4.:16\ff fis'4.:16 g'4.:16 g'16 g g g g g f16 a a a a a a4.:16
 b8\p r <e gis!> r r <e gis> r r <e a> r r <e a> r r <e gis> r r <e gis> r r <e a> r r <e a>
 r8 r <e gis>_\markup { \italic "cresc." } r r <e gis> a2.:16\f
 a8 b'16( a' gis' fis' e' dis' e' d' cis' b) a16 fis fis fis fis fis fis4.:16
 e8 gis'16( fis' e' d'] cis'16 bis cis' b a gis) fis4.:16 fis16 b b b b b
 b4 r8 <e' b'>4 r8 <e' a'>4 r8 <cis' e'>4 r8 <b e'>4 r8 <e' b'>4 r8 <e' a'>4 r8 <cis' e'>4 r8
 fis4.\sf( ~ fis4 f8) e4.\p( ~ e4 fis!16 gis) a4 r8 r4 r8 R2. a4._\markup { \italic "dolce" }( cis'4. e'4. e4.)
 <a a'>4.\ff <a cis'>8. <e a>16 <e a>8
 <b d'>8. <e b>16 <e b>8 <c' e'>8. <c c'>16 <c c'>8 <a f'>8. f'16 c'8 a8. a'16 f'8 c'8. c'16 a8 f8. f16 c8
 f4 r8 r8. c16_\markup { \italic "dimin." } c8 f4 r8 r8. c16 c8 f4\p r8 r4 r8 f4\pp r8 r4 r8
 <b d'>2.:16\pp <b d'>2.:16 <b d'>2.:16 <b d'>2.:16
 <b d'>16_\markup { \italic "cresc. poco a poco" } d' d' d' b cis' d'4.:16 d'16 cis' cis' cis' cis' d' e'4.:16
 e'16 d' d' d' d' e' fis'4.:16 fis'16 e' e' e' e' fis' gis'4.:16 gis'16 fis' fis' fis' fis' gis' a'4.:16
 a'16 gis' gis' gis' gis' a' b'4.:16 a'16\ff <a' cis''> <a' cis''> <a' cis''> <a' cis''> <a' cis''> <a' cis''>4.:16
 <a' cis''>2.:16 <fis' d''>16 <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'>4.:16
 <fis' a'>2.:16 f2.\pp e16_\markup { \italic "cresc." } gis gis gis gis gis gis gis a b cis' d'
 e'16\ff <e' a'> <e' a'> <e' a'> <e' a'> <e' a'> <e' a'>4.:16 <e' a'>2.:16 <fis' a'>2.:16 <fis' a'>2.:16
 bes4.\pp( f4. gis4._\markup { \italic "cresc." }) ~ gis4( e'8)
 e'8\ff <e a>16 <e a> <e a> <e a> <e a>8 <e a>16 <e a> <e a> <e a>
 <e b>8 <e b>16 <e b> <e b> <e b> <e b>8 <e b>16 <e b> <e b> <e b>
 <e a>8 <e a>16 <e a> <e a> <e a> <e a>8 <e a>16 <e a> <e a> <e a>
 <e b>8 <e b>16 <e b> <e b> <e b> <e b>8 <e b>16 <e b> <e b> <e b>
 <e a>8 <e a>16 <e a> <e a> <e a> <e b>8 <e b>16 <e b> <e b> <e b>
 <e a>8 <e a>16 <e a> <e a> <e a> <e b>8 <e b>16 <e b> <e b> <e b>
 <e a>8 <e a>16 <e a> <e a> <e a> <e b>8 <e b>16 <e b> <e b> <e b>
 \appoggiatura gis32 a4\ff r8 \appoggiatura a32 b4 r8 \appoggiatura b32 cis'4 r8 \appoggiatura cis32 d4 r8
 \appoggiatura d32 e4 r8 \appoggiatura e32 fis4 r8 \appoggiatura fis32 gis4 r8 \appoggiatura gis32 a4 r8 R2. R2.
 \appoggiatura g32 aes4\p r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. d4.\pp ~ d8( cis c) c8( cis4) ~ cis4. d4. ~ d8( cis c) c8( cis4) ~ cis4. d4. ~ d8( cis c) c8( cis4) ~ cis4.
 d4. ~ d8( cis c) c8( cis4) ~ cis4. d4._\markup { \italic "cresc." } ~ d8( cis c) c8( cis4) ~ cis4.
 d4. ~ d8( cis c) c8( cis4) ~ cis4. d4. ~ d8( cis c) c8( cis4) ~ cis4. d4. ~ d8( cis c) c8( cis4) ~ cis4.
 d4. ~ d8( cis c) c8( cis4) ~ cis4. d4. ~ d8( cis c) c8( cis4) ~ cis4.
 d4._\markup { \italic "piu cresc." } ~ d8( cis c) d8( cis! c d cis c)
 cis!8.\ff cis'16 cis'8 cis'8. cis'16 cis'8 cis'8. cis'16 cis'8 cis'8. cis'16 cis'8
 d8. d'16 d'8 d'8. d'16 d'8 d'8. d'16 d'8 d'8. d'16 d'8
 e'4 r8 r8. a'16\staccato e'8 e'4 r8 r8. e''16\staccato cis''8
 cis''4\staccato r16 a' e'4\staccato r16 e' cis'4 r16 cis' a4 r16 a fis4 r16 fis e4 r16 e
 dis4 r8 r8. dis16 dis8 dis4 r8 r8. dis16 dis8
 d!4 r8 r8. d16 d8 d4 r8 r8. d16 d8 cis4 r8 r8. d16 d8 e4 r8 r8. eis16 eis8
 fis8[ r16 d d8] d8[ r16 e e8] e8[ r16 eis eis8] eis8[ r16 fis fis8]
 fis8[ r16 d d8] d8[ r16 e e8] e8[ r16 e' e'8] e'8[ r16 a a8]
 a4\ff r8 r4 r8 e'8[ r16 e' e'8] e'8[ r16 e' e'8] a4 r8 r4 r8 e'8[ r16 e' e'8] e'8[ r16 e' e'8]
 a8[ r16 a' a'8] a'8[ r16 a a8] a8[ r16 a a8] a8[ r16 a a8]
 a4 r8 r4 r8 <e' e''>4 r8 r4 r8 <a e' cis''>4 r8 r4 r8 \bar "|."
}