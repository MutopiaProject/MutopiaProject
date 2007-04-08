\version "2.10.0"

 fagotti = {
 \set Staff.instrumentName = "Fagotti"
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key a \major
 \time 4/4
 <a cis'>4\f\staccato r4 r2 R1 <gis b>4\f\staccato r r2 R1 <g, g>4\f\staccato r r2 R1
 <d d'>2\fp( <a, a> <f, d> <e, g>) <f, f>2._\markup { \italic "dimin." } <f, f>4 <e, e>4\pp r r2
 <a cis'>2_\markup { \italic "dolce" }( <e a>2 <cis e>4) r4 r2 <b d'>2( <gis b>)
 <b d'>2_\markup { \italic "cresc." } <b d'>16\staccato <b d'>\staccato <b d'>\staccato <b d'>\staccato
 <b d'>\staccato <b d'>\staccato <b d'>\staccato <b d'>\staccato
 <a cis'>1\ff ~ <a cis'>4 r r2 << { gis1 g4 } \\ { gis1 g4 } >> r4 r2 <fis, fis>1 <f, f>4 r r2 <f, f>1
 << { e16\staccato c\staccato_\markup { \italic "dim." } d\staccato e\staccato f\staccato g\staccato
 a\staccato b\staccato c'\staccato d'\staccato e'\staccato f'\staccato g'\staccato e'\staccato d'\staccato c'\staccato } \\
 { e,4 a,4\rest g,2\rest } >> <g b>2\p <g b>4_\markup { \italic "dolce" } <g b>8 <g b>
 <c c'>4 <c c'>8 r16 <c c'>16 <e c'>4 <e c'>8 r16 <e c'>16 <g b>2 <g b>4 <g b>8 <g b>
 <c c'>4 <c c'>8 r16 <c c'>16 <c c'>4 <e c'>8 r16 <e c'>16 <f c'>4 <f c'>8 r16 <f c'>16 <f c'>4 <f c'>8 r16 <f c'>16
 <g c'>4 <g c'>8 r16 <g c'>16 <g b>4 <g b>8
 << { c'16\rest g'16 g'2\pp ~ g'16 g' g' g' g'4:16 g'2 ~ g'16 g' g' g' g'4:16 g'2 ~ g'16 g' g' g' g'4:16
 g'2 c'4:16_\markup { \italic "cresc." } c'4:16 c'4 d'4:16 d'4 b4:16 } \\
 { b,8\rest R1 R1 R1 R1 d2\rest c4\rest g4:16_\markup { \italic "cresc." } } >>
 << { b2 e' b e e' fis'! cis' e e' g' e' e e' g'
 e'16_\markup { \italic "dimin." } c d e f g a b c' d' e' f' g' e' d' c' } \\
 { gis!2\ff e'\sf b\sf e\sf e'\sf fis'!\sf cis'\sf e\sf e'\sf g'\sf e'\sf e\sf e'\sf g'\sf e'4 g,4\rest c2\rest } >>
 <c c'>2\p <c c'>4_\markup { \italic "dolce" } <c c'>8 <c c'>
 <c c'>4 <c c'>8 r16 <c c'> <c c'>4 <c c'>8 r16 <c c'> <c c'>2 <c c'>4 <c c'>8 <c c'>
 <c c'>4( <a, a>8) r16 <a, a> <a, a>4 <a, a>8 r16 <a, a>
 <bes, bes>4 <bes, bes>8 r16 <bes, bes> <bes, bes>4 <bes, bes>8 r16 <bes, bes>
 <c c'>4 <c c'>8 r16 <c c'> <c c'>4 <c c'>8 r8 << { c'2\pp ~ c'16 c' c' c' c'4:16 } \\ { R1 } >>
 <a c'>2_\markup { \italic "cresc." } ~ <a c'>16 <a c'> <a c'> <a c'> <a c'>4:16
 <a c'>2 ~ <a c'>16 <a c'> <a c'> <a c'> <a c'>4:16
 <a c'>8 r <a c'>4:16 <a c'>8 r <a c'>4:16 <a c'>8 r <a c'>4:16 <a c'>8 r <a c'>16 <a c'> <f a> <f a>
 << { e8 } \\ { e8\ff } >> r8 r4 r2 << { e'4\p( b e e') ~ e'8 } \\ { R1 e8\ff } >> r8 r4 r2
 << { e'4\p( b e e') ~ e'8 a8\rest a4\rest a2\rest } \\ { R1 R1 } >> R1 R1 R1 R1 R1

 \time 6/8
 \repeat volta 2 {
 R2. R2. << { e'8.\p e'16 e'8 e'8. e'16 e'8 } \\ { R2. } >>
 <cis' e'>8._\markup { \italic "cresc." } <cis' e'>16 <cis' e'>8 <cis' e'>8. <cis' e'>16 <cis' e'>8 <cis' e'>2.\p <b d'>2.
 <a cis'>4 <cis' e'>8 <cis' e'>8. <b d'>16\staccato <a cis'>8\staccato
 <a cis'>8( <gis b>4) ~ <gis b>8. <a cis'>16\staccato <b d'>8\staccato
 <cis' e'>2. <b d'>2. <a cis'>4 <a cis'>8 << { cis'8( e') d'\staccato } \\ { a4 gis8 } >>
 <a cis'>8. <b d'>16 <cis' e'>8 <d' fis'>8 <d fis> <d fis> <d fis>2. <cis e>2. ~ <cis e>2. <d fis>2.
 <cis e>2. ~ <cis e>4. ~ <cis e>8 <a cis'> <a cis'> <gis b>4.( <a cis'>)
 <gis b>4.\f\> ~ <gis b>4 <a cis'>8\!\p <gis b>4. << { cis'8. cis'16\staccato a8\staccato } \\ { a8. cis'16 a8 } >>
 e4.\f ~ e8. cis16\staccato a,8\staccato e4.\sf ~ e8. cis16\staccato ais,8\staccato
 e8\sf[ r16 d16 b,8] gis8\sf[ r16 e16 d8] b8\sf[ r16 gis e8] d'8\sf[ r16 b16 gis8] <b d'>4.^\fermata r4 r8
 <cis e>2.\ff <d fis>4. ~ <d fis>4 <b, gis>8
 <cis a>4 <cis a>8 <cis a>8. <e b>16\staccato <a cis'>8\staccato
 <a cis'>8( <e b>4) ~ <e b>8. <a cis'>16\staccato <b d'>8\staccato <cis' e'>2. <d' fis'>4. ~ <d' fis'>4 <b d'>8
 <a cis'>4 <a cis'>8 <a cis'>4 <gis d'>8 <a cis'>4 r8 r4 << { a8 } \\ { a8 } >>
 << { a4 a8 a8. d'16\staccato fis'8\staccato fis'8( e') cis'\staccato a4 a8
 a8. d'16\staccato a8\staccato a8. d'16\staccato fis'8\staccato fis'8( e') cis'\staccato a4 } \\
 { a4 a8 a8. d'16 fis'8 fis'8 e' cis' a4 a8 a8. d'16 a8 a8. d'16 fis'8 fis'8 e' cis' a4 } >> r8
 << { b8\rest b8\rest e'8\p fis'8_\markup { \italic "cresc." }( e') cis'\staccato
 b8\rest b8\rest fis'8 g'8( fis') d'\staccato } \\ { R2. R2. } >>
 << { a8\rest a8\rest d'8 e'( d') b8\staccato a8\rest a8\rest e'8 fis'( e') cis'\staccato
 a8\rest a8\rest e'8 fis'( e') cis'\staccato g'8( fis') d'\staccato g'( fis') d'\staccato
 cis'8( b) gis!\staccato cis'8( b) gis\staccato d'8( cis') a\staccato d'8( cis') a\staccato } \\
 { R2. R2. R2. R2. R2. R2. } >> <cis' e'>2.\ff
 <b dis'>4. ~ <b dis'>8 <b dis'>8\p[ <b dis'>] <a cis'>8[ r <a cis'>] <a cis'>[ r <a cis'>]
 << { gis4 } \\ { gis4 } >> r8 r4 r8 R2. R2. << { e'4.( cis'4.) bes4 ees8^\p ees8.\staccato g16\staccato bes8\staccato
 ces'4\staccato ces'8\staccato ces'8.\staccato bes16\staccato aes8\staccato
 g4 a8\rest a4\rest bes8( <b, b!>4_\markup { \italic "cresc." }) } \\
 { gis2._\markup { \italic "cresc." } g4\f g,8\rest g,4\rest g,8\rest R2. R2. s4 } >>
 <b, b>8 <b, b>4 <b, b>8 <b, b>2.\f <b, b>4 <b, b>8 <b, b>4 <b, b>8 <b, b>2. ~ <b, b>8( <cis a>4) ~ <cis a>4 <c c'>8
 <b, b>8 <fis a> r <fis a> <fis a> r <e gis> <e gis> r <e gis> <e gis> r
 <fis a>8 <fis a> r <fis a> <fis a> r <e gis> <e gis> r <e gis> <e gis> r
 R2. << { b4.\p( ~ b4 fis8) e4. } \\ { R2. e4._\markup { \italic "dolce" } } >> <e gis>8. <b, e>16 <b, e>8
 <fis a>8. <b, fis>16 <b, fis>8 <gis b>4. ~ <gis b>4. <b e'>8. <gis b>16 <gis b>8 <gis b>8. <e gis>16 <e gis>8
 <e gis>8( <fis a>) <dis fis>\staccato
 <e e'>8\f <e e'> <e e'> <e e'> <e e'> <e e'> <e e'> <e e'> <e e'> <g g'> <g g'> <g g'> <c c'>4 r8 r4 r8 R2. R2.
 << { a4\rest a8\rest a8.\rest g16\p g8 c'4 a8\rest a4\rest a8\rest c'4\pp a8\rest a4\rest a8\rest } \\ { R2. R2. R2. } >>
 R2. R2. R2. R2. R2. R2.
 << { a8\rest a8\rest a16_\markup { \italic "p cresc." }( b cis'4\staccato) a8\rest } \\ { R2. } >> R2. R2.
 << { c'8\rest c'8\rest dis'16_\markup { \italic "cresc." }( e' fis'8\staccato) c'8\rest  } \\
 { b,4\rest b,8\rest b,8\rest b,8\rest } >> <cis' e'>16( <dis' fis'> <e' gis'>2.\ff) ~ <e' gis'>4. <e' gis'>8. <e' gis'>16 <e' gis'>8
 <e' fis'>2. ~ <e' fis'>4. <e' fis'>8. <e' fis'>16 <e' fis'>8
 << { f'4.\pp( c'4. dis4._\markup { \italic "cresc." }) b8 cis'16 dis' e' fis'! } \\ { R2. R2. } >>
 <e' gis'>2.\ff ~ <e' gis'>4. <e' gis'>8. <e' gis'>16 <e' gis'>8 <e' fis'>2. ~ <e' fis'>4. <e' fis'>8. <e' fis'>16 <e' fis'>8
  << { a4\rest a8\rest f'4.\pp( dis'4._\markup { \italic "cresc." } ~ dis'4) b8\staccato b4. ~ b8. a16 gis8
 \appoggiatura gis32 a4. ~ a8. a16 a8 gis4 } \\ { R2. R2. b4.\ff ~ b8. a16 gis8 \appoggiatura gis32 a4. ~ a8. fis16 fis8 e4 } >> r8
 << { gis4 } \\ { gis4 } >> r8 << { b4 } \\ { b4 } >> r8 r8.
 << { b16 b8 b4 gis8 \appoggiatura gis32 a8. a16 a8 gis4  } \\ { b16 b8 b4\sf gis8 \appoggiatura gis32 a8. fis16 fis8 e4 } >>
 r8 r8. << { b16 b8 b4 gis8 \appoggiatura gis32 a8. a16 a8 e8 } \\ { b16 b8 b4\sf gis8 \appoggiatura gis32 a8. fis16 fis8 e8\ff } >>
 r8 <e e'> r r <e e'> r r <e e'> r r <e e'> r r <e e'> r r <e e'> r r <e e'> r r <e e'> R2. R2.
 }

 r8 r <g g'>\ff r r <g g'> r r <g g'> r r <g g'> R2. R2. R2. R2. R2.
 << { c'8.\pp c'16 c'8 c'8. c'16 c'8 c'2. ~ c'2. ~ c'2. b2. c'4 b8\rest b4\rest b8\rest } \\ { R2. R2. R2. R2. R2. R2. } >> R2. R2. R2.
 << { g4.\pp ~ g8. f16\staccato e8\staccato f8.\staccato g16\staccato a8\staccato
 b8.\staccato c'16\staccato d'8\staccato e'2._\markup { \italic "cresc." } ~ e'2. ees'2. ~ ees'2. d'4. g'4. ~ g'2. } \\
 { R2. R2. R2. R2. R2. R2. R2. R2. } >> <c' e'>2.\f ~ <c' e'>2. ~ <c' e'>2. ~ <c' e'>2.
 <d' f'>8.\ff <d' f'>16 <d' f'>8 <d' f'>8. <d' f'>16 <d' f'>8 <d' f'>8. <d' f'>16 <d' f'>8 <d' f'>8. <d' f'>16 <d' f'>8
 <d' f'>2. ~ <d' f'>2. ~ <d' f'>2. ~ <d' f'>2. <b e'>8. <gis! b>16 <gis b>8 <gis b>8. <gis b>16 <gis b>8
 <gis b>8. <gis b>16 <gis b>8 <gis b>8. <gis b>16 <gis b>8
 <gis b>2. ~ <gis b>2. ~ <gis b>2. ~ <gis b>2. ~ <gis b>4 r8 << { e'8. e'16 e'8 } \\ { e'8.\sf e'16 e'8 } >>
 r4 r8 << { f'8. f'16 f'8 } \\ { f'8.\sf f'16 f'8 } >> r4 r8 << { f'8. f'16 f'8 } \\ { f'8.\sf f'16 f'8 } >>
 << { des'2.\p c'2. c'2. c'4 b8\rest f'4 b8\rest c'4 } \\ { R2. R2. f2.\p R2. c4 } >> r8 << { c'4 } \\ { f4 } >> r8
 << { e'4. ~ e'8. d'16\staccato c'8\staccato g'4 b8\rest c'4 b8\rest } \\ { R2. R2. } >>
 <g g'>4 r8 <c e'>4 r8 R2. R2. R2. << { f'4.\p ~ f'8. e'16 d'8 a4 b8\rest d'4 b8\rest } \\ { R2. R2. } >>
 <e' g'>4 r8 <d' f'>4 r8 << { a4 a8\rest d'4 a8\rest } \\ { R2. } >> <e' g'>4 r8 <d' f'>4 r8 R2. R2.
 r8. <a bes>16_\markup { \italic "cresc. poco a poco" } <a bes>8 <a bes>8. <a bes>16 <a bes>8
 <a bes>8. <a bes>16 <a bes>8 <a bes>8. <a bes>16 <a bes>8
 <a bes>8. <a bes>16 <a bes>8 <a bes>8. <a bes>16 <a bes>8
 <a bes>8. <a bes>16 <a bes>8 <a bes>8. <a bes>16 <a bes>8
 << { bes8. c'16 c'8 } \\ { bes8. bes16 bes8 } >> <bes c'>8. <bes c'>16 <bes c'>8
 <bes c'>8. <bes c'>16 <bes c'>8 <bes c'>8. <bes c'>16 <bes c'>8
 <bes c'>8. <bes c'>16 <bes c'>8 <bes c'>8. <bes c'>16 <bes c'>8
 <bes c'>8. <bes c'>16 <bes c'>8 <bes c'>8. <bes c'>16 <bes c'>8
 << { c'8. d'16 d'8 } \\ { c'8. c'16 c'8} >> <c' d'>8. <c' d'>16 <c' d'>8
 <c' d'>8. <c' d'>16 <c' d'>8 <c' d'>8. <c' d'>16 <c' d'>8 <c' d'>8. <c' d'>16 <c' d'>8 <c' d'>8. <c' d'>16 <c' d'>8
 <c' d'>8. <c' d'>16 <c' d'>8 <c' d'>8. <c' d'>16 <c' d'>8 <bes d'>4\f r8
 <bes, bes>8[ r16 <bes, bes> <a, a>8] <b, b>4 r8 <b, b>8[ r16 <b, b> <b, b>8]
 <c! c'!>4 r8 <c c'>8[ r16 <c c'> <b, b>8] <cis! cis'!>4 r8 <cis cis'>8[ r16 <cis cis'> <cis cis'>8]
 << { d'8[ s16 d16 cis8] d8[ s16 d16 cis8] d8[ s16 d16 cis8] d8[ s16 d16 cis8]
 d8 b16\rest f'16 g'8 a'8[ c'16\rest d'16 e'8] f'8[ a16\rest f16 g8] a4 a8\rest
 c!8[ s16 c16 b,8] c8[ s16 c16 b,8] c8[ s16 c16 b,8] c8[ s16 c16 b,8]
 a8[ s16 c'16 d'8] e'8[ s16 a16 b8] c'8[ s16 c' d'8] e'8[ s16 e' e'8]
 b,8[ s16 b, ais,8] b,8[ s16 b, ais,8] b,8[ s16 b, ais,8] b,8[ s16 b, ais,8] b,8[ s16 d' e'8] f'4 } \\
 { d8\ff[ d16\rest d cis8] d8[ d16\rest d16 cis8] d8[ d16\rest d16 cis8] d8[ d16\rest d16 cis8]
 d8 g,8\rest g,8\rest g,4\rest g,8\rest R2.
 c8[ c16\rest c b,8] c8[ c16\rest c b,8] c8[ c16\rest c b,8] c8[ c16\rest c b,8]
 a8[ c'16\rest c'16 d'8] e'8[ a16\rest a16 b8] c'8[ c'16\rest c' d'8] e'8[ d'16\rest e' e'8]
 b,8[ b,16\rest b, ais,8] b,8[ b,16\rest b, ais,8] b,8[ b,16\rest b, ais,8] b,8[ b,16\rest b, ais,8]
 b,8[ a16\rest d' e'8] f'4 } >> r8 r8. << { b16 c'8 d'4 } \\ { b16 c'8 d'4 } >> r8
 r8. << { gis!16 a8 b4 } \\ { gis16 a8 b4 } >> r8 r8. << { b16 c'8 d'4 } \\ { b16 c'8 d'4 } >> r8 R2. R2. R2.
 R2. R2. R2. R2. R2. <cis! cis'!>8._\markup { \italic "piu f" } <cis cis'>16 <cis cis'>8
 <cis cis'>8. <cis cis'>16 <cis cis'>8 <cis cis'>8. <cis cis'>16 <cis cis'>8 <cis cis'>8. <cis cis'>16 <cis cis'>8
 <cis cis'>4\ff r8 r4 r8 r4 r8 r8 r8. <cis cis'>16 <cis cis'>4 r8 r4 r8 r4 r8 r8 r8. <cis cis'>16
 <cis cis'>4 r8 r4 r8 r4 r8 r8 r8. <a cis'>16
 <a cis'>4 r16 <a cis'> <a cis'>4 r16 <gis b> <a cis'>4 r16 <fis d'> <fis d'>4 r16 <fis d'> <fis d'>4 r8 r4 r8
 r4 r8 r4 <e e'>8\staccato <fis fis'>8\sf( <e e'>) <cis cis'>\staccato <a, a>4 r16 <e cis'>16 <fis d'>4 r8 r4 r8
 r4 r8 r8 r8 <e e'>8\staccato <fis fis'>8\sf( <e e'>) <cis cis'>\staccato <a, a>4 r16 <a cis'>16
 <gis b>4 r8 r8 r8. <a cis'>16 <gis b>4 r8 r8 r8. <a cis'>16 <gis b>4 r8 r8 r8. <a cis'>16 <gis b>4 r8 r8 r8. <a cis'>16
 <a cis'>4 r8 r8 r8. <ais cis'>16 <b d'>4 r16 <b d'> <b d'>4 r16 <b d'>
 <b d'>4 r16 <b d'> <b d'>4 r16 <b d'> <b d'>4.^\fermata r8 r8. <cis' e'>16\p <cis' e'>4.^\fermata r4 r8 R2. R2.
 << { fis'4.\p ~ fis'8. e'16\staccato d'8\staccato cis'8. b16 a8 g8. fis16 e8 d4 f8\rest f4\rest f8\rest } \\
 { R2. R2. R2. } >> R2. << { f'4. ~ f'8. d'16 cis'8 d'8. a16 f8 d4 f8\rest } \\ { R2. R2. } >> R2. R2. R2. R2. R2.
 << { g4\rest g8\rest g4\rest e'8\p f'8( e') c'\staccato a4 g8\rest } \\ { R2. R2. } >> R2. R2. R2.
 <c' e'>2._\markup { \italic "cresc." } <d' f'>2. <b d'>2. <c' e'>2. <a c'>2.\ff
 <g b>4. ~ <g b>8 <g b> <g b> <f a>8 r <f d'> <f d'> r <f d'> <e b>4\p r8 r4 r8 R2.
 << { g8\rest g8\rest e8\p e8. gis16\staccato b8\staccato
 \appoggiatura a32 c'4\staccato c'8\staccato c'8.\staccato b16\staccato a8\staccato
 gis4\staccato_\markup { \italic "cresc." } e8\staccato e8.\staccato gis16\staccato b8\staccato } \\ { R2. R2. R2. } >>
 <a cis'!>4\f <a cis'>8 <a cis'>4 <a cis'>8 <gis b>2. <fis a>4 <fis a>8 <fis a>4 <fis a>8 <e gis>2.
 <d fis>4 <d fis>8 <dis fis>4 <dis fis>8 <e gis>8 <e gis> r <b d'> <b d'> r <a cis'> <a cis'> r <a cis'> <a cis'> r
 <gis b>8 <gis b> r <b d'> <b d'> r <a cis'> <a cis'> r <a cis'> <a cis'> r R2.
 << { e'4.\p( ~ e'4 b8) a4. } \\ { R2. a4._\markup { \italic "dolce" } } >> <a cis'>8. <e a>16 <e a>8
 <b d'>8. <e b>16 <e b>8 <cis' e'>4. ~ <cis' e'>4. <cis' e'>8. <cis' e'>16 <cis' e'>8
 <cis' e'>8. <a cis'>16 <a cis'>8 <a cis'>8( <b d'>) <gis b>\staccato
 << { a8 a a a a a a a a a c' bes a4 } \\ { a8\ff a a a a a a a a a a g f4 } >> r8 r4 r8 R2. R2.
 << { g4\rest g8\rest g8.\rest c'16\p c'8 f'4 g8\rest g4\rest g8\rest f'4\pp g8\rest g4\rest g8\rest } \\
 { R2. R2. R2. } >> R2. R2. R2. R2. R2. R2.
 << { g8\rest g\rest d'16_\markup { \italic "cresc." }( e' fis'!4\staccato) } \\ { R2. } >> R2. R2.
 r4 r8 r8 r8 <fis a>16_\markup { \italic "cresc." }( <gis b> <a cis'>2.\ff) ~ <a cis'>4. <a cis'>8. <a cis'>16 <a cis'>8
 <a b>2. ~ <a b>4. <a b>8. <a b>16 <a b>8 << { bes4.\pp( f4. gis4._\markup { \italic "cresc." } e'4.) } \\ { R2. R2. } >>
 <a cis'>2.\ff ~ <a cis'>4. <a cis'>8. <a cis'>16 <a cis'>8 <a b>2. ~ <a b>4. <a b>8. <a b>16 <a b>8 R2.
 << { e'4.\p( gis4_\markup { \italic "cresc." } e'8) e'4. ~ e'8. d'16\staccato cis'8\staccato
 \appoggiatura cis'32 d'4. ~ d'8. d'16\staccato d'8\staccato cis'4 } \\
 { R2. e'4.\ff ~ e'8. d'16 cis'8 d'4.\sf ~ d'8. b16 b8\staccato a4 } >>
 r8 << { cis'4 } \\ { cis'4 } >> r8 << { e'4 } \\ { e'4 } >> r8 r8.
 << { e'16 e'8 e'4 cis'8 \appoggiatura cis'32 d'8. d'16\staccato d'8\staccato cis'4 } \\
 { e'16 e'8 e'4\sf cis'8 d'8. b16 b8 cis'4 } >> r8 r8.
 << { e'16 e'8 e'4 cis'8 \appoggiatura cis'32 d'8. d'16\staccato d'8\staccato cis'8 } \\
 { e'16 e'8 e'4\sf cis'8 d'8. b16 b8 a8\ff } >> r8 r \appoggiatura a,32 b,4 r8
 \appoggiatura b,32 cis4 r8 \appoggiatura cis32 d4 r8 \appoggiatura d32 e4 r8 \appoggiatura e32 fis4 r8
 \appoggiatura fis32 gis4 r8 \appoggiatura gis32 a4 r8 R2. R2.
 << { a8\rest a8\rest aes8\p a4\rest a8\rest } \\ { R2. } >> R2. R2.
 <c' ees'>8.\pp <c' ees'>16 <c' ees'>8 <c' ees'>8. <c' ees'>16 <c' ees'>8
 <c' ees'>2. ~ <c' ees'>2._\markup { \italic "sempre p" } <c' e'!>2. ~ <c' e'>2. R2. R2.
 R2. <a cis'!>4.\pp ~ <a cis'>8.( <e b>16 <cis a>8)
 <e e'>2. ~ <e e'>2. ~ <e e'>2. ~ <e e'>2. ~ <e e'>2. ~ <e e'>2. ~ <e e'>2. ~ <e e'>2. ~
 <e e'>4_\markup { \italic "cresc." } <e e'>8\staccato <e e'>4. ~ <e e'>2. ~ <e e'>4 <e e'>8\staccato <e e'>4. ~
 <e e'>2. ~ <e e'>4 <e e'>8\staccato( <e e'>4\staccato <e e'>8\staccato)
 <e e'>4\staccato( <e e'>8\staccato <e e'>4\staccato <e e'>8\staccato)
 <e e'>4\staccato( <e e'>8\staccato <e e'>4\staccato <e e'>8\staccato)
 <e e'>4\staccato( <e e'>8\staccato <e e'>4\staccato <e e'>8\staccato) <e e'>2.:8 <e e'>2.:8 <e e'>2.:8 <e e'>2.:8
 <e e'>2.:8_\markup { \italic "piu cresc." } <e e'>2.:8
 <cis' e'>8.\ff <cis' e'>16 <cis' e'>8 <cis' e'>8. <cis' e'>16 <cis' e'>8
 <cis' e'>8. <cis' e'>16 <cis' e'>8 <cis' e'>8. <cis' e'>16 <cis' e'>8
 <d' fis'>8. <d' fis'>16 <d' fis'>8 <d' fis'>8. <d' fis'>16 <d' fis'>8
 <d' fis'>8. <d' fis'>16 <d' fis'>8 <d' fis'>8. <d' fis'>16 <d' fis'>8
 <a cis'>2. <a cis'>2. <a cis'>2. <a cis'>4. <a a'>4.( <fis fis'>4. <e e'>4.)
 <dis dis'>8[ r16 <dis' fis'>16 <dis' fis'>8] <dis' fis'>4 r8 r8. <dis' fis'>16 <dis' fis'>8 <dis' fis'>4 r8
 r8. <d'! e'>16 <d' e'>8 <d' e'>4 r8 r8. <d' e'>16 <d' e'>8 <d' e'>4 r8
 r8. <cis' e'>16 <cis' e'>8 <d' fis'>4 r8 r8. <cis' e'>16 <cis' e'>8 <b d'>4 r8
 <a cis'>8[ r16 <d' fis'> <d' fis'>8] <d' fis'>8[ r16 <cis' e'> <cis' e'>8]
 <cis' e'>8[ r16 <b d'> <b d'>8] <b d'>8[ r16 <a cis'> <a cis'>8]
 <a cis'>8[ r16 <d' fis'> <d' fis'>8] <d' fis'>8[ r16 <cis' e'> <cis' e'>8]
 <cis' e'>8[ r16 <gis b> <gis b>8] <gis b>8[ r16 <a cis'> <a cis'>8]
 <cis' e'>4.\ff ~ <cis' e'>8. <b d'>16\staccato <a cis'>8\staccato <gis b>8[ r16 <gis b> <gis b>8] <gis b>8[ r16 <cis' e'> <cis' e'>8]
 <cis' e'>4.\ff ~ <cis' e'>8. <b d'>16\staccato <a cis'>8\staccato <gis b>8[ r16 <gis b> <gis b>8] <gis b>8[ r16 <cis' e'> <cis' e'>8]
 <cis' e'>8[ r16 <a cis'> <a cis'>8] <a cis'>8[ r16 <a cis'> <a cis'>8]
 <a cis'>8[ r16 <a cis'> <a cis'>8] <a cis'>8[ r16 <a cis'> <a cis'>8] <a cis'>4 r8 r4 r8
 << { e'4 } \\ { e'4 } >> r8 r4 r8 << { cis'4 } \\ { cis'4 } >> r8 r4 r8 \bar "|."
}