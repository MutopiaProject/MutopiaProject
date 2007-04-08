\version "2.10.0"

 violinotwo = {
 \set Staff.instrumentName = "Violino II"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key a \major
 \time 4/4
 <a e' cis'' a''>4\f\staccato r4 r2 cis'1\p <e' b' e''>4\f\staccato r r2 b1\p
 <a e' cis'' a''>4\f\staccato r4 r2 <a e'>1\p <d' a' a''>4\f\staccato r d'4\p r d' r c' r
 c'4_\markup { \italic "dimin." } r4 r4 a16 a a a e'16\staccato gis\pp\staccato a\staccato b\staccato
 cis'!\staccato d'\staccato e'\staccato fis'\staccato gis'\staccato gis'\staccato a'\staccato b'\staccato
 cis''\staccato d''\staccato e''\staccato d''\staccato cis''4 r r2
 a16\staccato a\staccato b\staccato cis'\staccato d'\staccato e'\staccato fis'\staccato gis'\staccato
 a'\staccato a'\staccato b'\staccato cis''\staccato d''\staccato e''\staccato e''\staccato e''\staccato e''4 r r2
 b16_\markup { \italic "cresc." } b cis' d' e' fis' gis' a' b' cis'' d'' e'' fis'' gis'' a'' b''
 << { a''2 } \\ { <a e' cis''>4\ff s4 } >> e''2\sf cis''\sf fis''\sf <e' b' e''>4 r r2
 e'16 cis' d' e' fis' g' a' b' cis'' d'' e'' fis'' g'' gis'' a'' a'' << { a''2 } \\ { <a d' a'>4\ff s4 } >> d''2\sf a'2\sf a''\sf
 <g d' b' g''>4 r r2 g'16 c'_\markup { \italic "dimin." } d' e' f' g' a' b' c'' d'' e'' f'' g'' e'' d'' c'' b'4\p r r2 R1
 g'1\p ~ g'4 r4 r \afterGrace g'4^\trill { f'16[ g'] } a'4 r4 r a'8^\trill( b'16 c'') c''8( g') r4 r f'16( d' b g)
 g4\pp( d'2 g4) g4( c'8) r16 c'16 c'4( e'8) r16 g16 g4( d'2 g4)
 g4( c'8) r16 c'16 g'4_\markup { \italic "cresc." }( c'8) r16 c' a'4( c'8) r16 c' a'4( d'8) r16 b <b e'>2\ff b2\sf
 gis!16 e' fis'! gis'! a' b' cis''! d'' e'' fis'' gis'' a'' b'' cis''' d''' e''' fis'2\ff cis'\sf
 gis!16 e' fis'! gis'! ais' b' cis''! d'' e'' fis'' gis'' ais'' b'' cis''' d''' e''' <g g'>2\ff e'\sf
 g16 e' fis' g' a' b' cis'' dis'' e'' fis'' g'' a'' b'' cis''' dis''' e''' <g g'>2\ff e'\sf
 c'16_\markup { \italic "dimin." } c' d' e' f' g' a' b' c'' d'' e'' f''
 \new Voice { \stemDown g''16[ \stemUp e'16 e' e'] } g'4\p r r2 R1 c''1\p ~ c''4 r r \afterGrace c''4^\trill { bes'16[ c''] }
 d''4 r r d'8^\trill( e'16 f') f'8( c') r4 r bes'16( g' e' c')
 c'4\pp( g'2 c'4) c'4_\markup { \italic "cresc." }( a'8) r16 a' a'4 a'8 r16 a' c'4( a'8) r16 a' a'4 a'8 r16 a'
 f'4( a'8) r16 a' c''4( a'8) r16 a' a'4( c''8) r16 c'' c''4( a'8) r16 a'
 e''8\ff r r4 e''16\fp e' e' e' e'4:16 e'8 r r4 r2 r2 e''16\fp e'16 e' e' e'4:16 e'8 r r4 r2
 r2 r16 e'[ e' e'] e'4:16 e'4 r r8 e'[ e' e'] e'4 r r2 e'4 r r2 r4 r8. e'16 e'4 r r4 r8. e'16 e'4 r

 \time 6/8
 \repeat volta 2 {
 R2. R2. R2. r4 r8 r8 r8. a16\p a4 r8 r4 r8 r4 r8 r8 r8. a16 a4 r8 r4 r8 r4 r8 r8 r8. a16
 a4 r8 r4 r8 r4 r8 r8 r8. a16 a8 r cis' e'8 r e' a4 r8 r4 r8 r4 r8 r8 r8. a16 a4 r8 r4 e'8 fis'\sf( e') cis'\staccato a4 r8
 r4 r8 r8 r8. a16 a4 r8 r4 e'8 fis'8\sf( e') cis'\staccato a4 r8 r4 r8 r8 r8. <e' e''>16
 <e' e''>4.\f\> ~ <e' e''>4\!\p r8 r4 r8 r8 r8. <e' e''>16 <e' e''>4.\f ~ <e' e''>8. cis'16\staccato a8\staccato
 <e' e''>4.\sf ~ <e' e''>8. cis'16\staccato ais8\staccato
 e'8\sf[ r16 d'16 b8] gis'8\sf[ r16 e' d'8] b'8\sf[ r16 gis' e'8] d''8\sf[ r16 b'16 gis'8]
 <b' gis''>4.^\fermata e'16\ff( fis' gis' a' \times 2/3 { b'16[ cis'' d'']) }
 e''16\sf cis' d' e' e' e' cis'( d') e' e' e' e' d'( e') e' e' e' e' d'( e') fis' d' d' d'
 cis'16( d') e' e' e' e' a( b) cis' cis' cis' cis' b( cis') d' d' d' d' gis'( a') b' b' b' b' a'( b') cis'' cis'' cis'' cis'' a'( b') cis'' cis'' cis'' cis''
 d''( e'') fis'' fis'' fis'' fis'' fis'( g') a' a' a' a' a'( b') cis'' cis'' cis'' cis'' a'( b') cis'' cis'' cis'' cis'' a'( b') cis'' cis' d' e' fis'4.:16
 fis'16 g' a' a' a' a' d'( e') fis' fis' fis' fis' cis'( d') e' e' e' e' a'( b') cis'' cis'' cis'' cis'' a'( cis'') d'' d'' d'' d'' fis'( g') a' a' a' a'
 cis'( d') e' e' e' e' cis'( d') e' e' e'\p e' cis'_\markup { \italic "cresc." }( d') e' e' e' e' e'4.:16 fis'16( g') a' a' a' a' a'4.:16
 gis'16( a') gis' b' b' b' b'4.:16 a'16( b') a' cis'' cis'' cis'' cis''4.:16 a'16( b') a' cis'' cis'' cis'' cis''4.:16
 d''16( e'') fis'' fis'' fis'' fis'' fis''4.:16 b'16( cis'') d'' d'' d'' d'' d''4.:16 cis''16( d'') e'' e'' e'' e'' e''4.:16 e''2.:16\ff
 dis''4.:16 dis''16 dis'' fis'\p fis' fis' fis' fis'4.:16 fis'4.:16 gis'8[ r dis'] r r dis' r r <gis e'> r r <gis e'>
 r8 r <gis dis'> r r <gis dis'> e'4.:16_\markup { \italic "cresc." } cis'4.:16
 bes8\f[ r <bes ees'>] r r <bes ees'> r r <ces' ees'> r r <ces' ees'> r r <bes ees'> r r <bes ees'>
 b!16 b'!_\markup { \italic "cresc." } b' b' b' b' b' b'' b'' b'' b'' b'' a''8.\f( gis''16 fis'' e'' dis'' e'' dis'' cis'' b' a')
 gis'4.:16 gis'16 gis'' gis'' gis'' gis'' gis'' fis''8.\sf( e''16 dis'' cis'' b' cis'' b' ais' gis' fis')
 e'16 a'! a' a' a' a' e'' e' e' e' e' e'
 dis'4\staccato r8 <b' fis''>4\staccato r8 <b' e''>4\staccato r8 <b' gis''>4\staccato r8
 <b' fis''>4\staccato r8 <b' fis''>4\staccato r8 <b' e''>4\staccato r8 <b' gis''>4\staccato r8
 cis'4.( ~ cis'4 c'8) b4.\p( ~ b4 cis'!16 dis') e'4 r8 r4 r8 R2. e'4._\markup { \italic "dolce" }( gis'4. b'4. b4.)
 <e' b' e''>4.\f gis'8. e'16 e'8 a'8. fis'16 fis'8 b'8. b'16 b'8 c''8. c''16 g'8 e'8. e'16 c'8
 g8. g'16 e'8 c'8. c'16 g8 c'4 r8 r8. g16_\markup { \italic "dimin." } g8 c'4 r8 r8. g16 g8 c'4\p r8 r4 r8 c'4\pp r8 r4 r8
 <c' a'>4.:16\pp <c' a'>4.:16 <c' a'>4.:16 <c' a'>4.:16 <c' a'>2.:16 <c' a'>2.:16
 <b a'>16_\markup { \italic "cresc." } b b b b b b a' a' a' gis' a' b' b b b b b b b' b' b' a' b'
 cis''16 cis' cis' cis' cis' cis' cis' cis'' cis'' cis'' b' cis'' dis'' dis' dis' dis' dis' dis' dis' dis'' dis'' dis'' cis'' dis''
 e'' e' e' e' e' e' e' e'' e'' e'' dis'' e'' fis'' fis' fis' fis' fis' fis' fis' fis'' fis'' fis'' e'' fis''
 gis''16\ff <e'' e'''>  <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''>4.:16
 <e'' e'''>2.:16 <e'' e'''>2.:16 <e'' e'''>2.:16 r4 r8 c'4.:16\pp
 b16_\markup { \italic "cresc." } dis' dis' b' b' b' b' b' b' b' cis'' dis''
 e''\ff <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''>4.:16 <e'' e'''>2.:16 <e'' e'''>2.:16 <e'' e'''>2.:16
 f''4.\pp( c''4. dis'4._\markup { \italic "cresc." }) ~ dis'8( b'8) b'8\staccato
 b'8 b16\ff b b b b8 b16 b b b b8 b16 b b b b8 b16 b b b b8 b16 b b b b8 b16 b b b b8 b16 b b b b8 b16 b b b
 b8 b16 b b b b8 b16 b b b b8 b16 b b b b8 b16 b b b b8 b16 b b b b8 b16 b b b
 \appoggiatura dis'32 e'4\ff\staccato r8 \appoggiatura e'32 fis'4\staccato r8
 \appoggiatura fis'32 gis'4\staccato r8 \appoggiatura gis'32 a'4\staccato r8
 \appoggiatura a'32 b'4\staccato r8 \appoggiatura b'32 cis''4\staccato r8
 \appoggiatura cis''32 d''4\staccato r8 dis''4\staccato r8 R2. R2.
 }

 \appoggiatura dis'32 e'4\ff\staccato r8 \appoggiatura e'32 f'4\staccato r8
 \appoggiatura f'32 fis'4\staccato r8 \appoggiatura fis'32 g'4\staccato r8 R2. R2. R2. R2.
 e'8.\pp e'16 e'8 e'8. e'16 e'8 e'8. e'16 e'8 e'8. e'16 e'8 e'2. ~ e'2. ~ e'2. f'2.
 g'4. ~ g'8. f'16\staccato e'8\staccato f'8.\staccato g'16\staccato a'8\staccato
 b'8.\staccato c''16\staccato d''8\staccato e''8. f''16 g''8 a''8. b''16 c'''8 d'''8. c'''16 b''8 a''8. g''16 f''8
 e''8. d''16 c''8 c''4 r8 b'8. a'16 g'8 g'4 r8
 e''8._\markup { \italic "cresc." } e''16 e''8 e''8. e''16 e''8 e''8. e''16 e''8 e''8. e''16 e''8
 ees''8. ees''16 ees''8 ees''8. ees''16 ees''8 ees''8. ees''16 ees''8 ees''8. ees''16 ees''8
 d''8. d''16 d''8 d''8. d''16 d''8 d''8. d''16 d''8 d''8. d''16 d''8
 e''8\f <g e'>16[ <g e'> <g e'> <g e'>] <g e'>8 <g e'>16 <g e'> <g e'> <g e'>
 <g e'>8 <g e'>16 <g e'> <g e'> <g e'> <g e'>8 <g e'>16 <g e'> <g e'> <g e'>
 <g e'>8 <g e'>16 <g e'> <g e'> <g e'> <g e'>8 <g e'>16 <g e'> <g e'> <g e'>
 <g e'>8 <g e'>16 <g e'> <g e'> <g e'> <g e'>8 <g e'>16 <g e'> <g e'> <g e'>
 <g f'>8\ff <g f'>16 <g f'> <g f'> <g f'> <g f'>8 <g f'>16 <g f'> <g f'> <g f'>
 <g f'>8 <g f'>16 <g f'> <g f'> <g f'> <g f'>8 <g f'>16 <g f'> <g f'> <g f'>
 <g f'>8 <g f'>16 <g f'> <g f'> <g f'> <g f'>8 <g f'>16 <g f'> <g f'> <g f'>
 <g f'>8 <g f'>16 <g f'> <g f'> <g f'> <g f'>8 <g f'>16 <g f'> <g f'> <g f'>
 <g f'>8 <g f'>16 <g f'> <g f'> <g f'> <g f'>8 <g f'>16 <g f'> <g f'> <g f'>
 <g f'>8 <g f'>16 <g f'> <g f'> <g f'> <g f'>8 <g f'>16 <g f'> <g f'> <g f'> <gis! e'>4 r8 r4 r8 R2.
 <gis e'>8 <gis e'>16 <gis e'> <gis e'> <gis e'> <gis e'>8 <gis e'>16 <gis e'> <gis e'> <gis e'>
 <gis e'>8 <gis e'>16 <gis e'> <gis e'> <gis e'> <gis e'>8 <gis e'>16 <gis e'> <gis e'> <gis e'>
 <gis e'>8 <gis e'>16 <gis e'> <gis e'> <gis e'> <gis e'>8 <gis e'>16 <gis e'> <gis e'> <gis e'>
 <gis e'>8 <gis e'>16 <gis e'> <gis e'> <gis e'> <gis e'>8 <gis e'>16 <gis e'> <gis e'> <gis e'>
 e'8.\ff e'16 e'8 r4 r8
 cis'8.\sf cis'16 cis'8 r4 r8 cis'8.\sf cis'16 cis'8 r4 r8 R2. R2. R2. r8. bes'16\pp bes'8 a'8[ r16 f' f'8] e'4 r8 r4 r8
 g'8. a'16 b'8 c''8. b'16 c''8 d''8. d'16 d'8 c'8[ r16 g g8]
 g8[ r16 f' f'8] e'8[ r16 c' c'8] bes4 r8 r4 r8 r8. c''16 c''8 bes'8[ r16 g' g'8] fis'!4 r8 r4 r8
 a'8. b'16 cis''!8 d''8. cis''16 d''8 e''8. e'16 e'8 d'8[ r16 d' d'8] cis'!4 r8 r4 r8
 r8. e'16 e'8 d'8[ r16 d' d'8] cis'4 r8 r4 r8 R2. R2.
 d'8_\markup { \italic "cresc. poco a poco" }[ r16 d' e'8] f'8[ r16 e' f'8] g'8[ r16 f' g'8] a'8[ r16 g' a'8]
 bes'2. ~ bes'2.~ bes'8[ r16 e' f'8] g'8[ r16 f' g'8] a'8[ r16 g' a'8] bes'8[ r16 a' bes'8]
 c''2. ~ c''2. ~ c''8[ r16 fis'!16 g'8] a'8[ r16 g' a'8] bes'8[ r16 a' bes'8] c''8[ r16 bes' c''8]
 d''2. ~ d''2. ~ d''8.\f[ d'16 cis'!8] d'4 r8 d'8[ r16 d' cis'8] d'4 r8 e'8[ r16 e' dis'8] e'4 r8
 e'8[ r16 e' dis'8] e'4 r8 f'8\ff[ r16 f' e'8] f'8[ r16 f' e'8]
 f'8[ r16 f'16 e'8] f'8[ r16 f'16 e'8] f'4 r8 f'8. e'16 d'8 d'4. ~ d'4 r8
 e'8[ r16 e'16 dis'8] e'8[ r16 e'16 dis'8] e'8[ r16 e'16 dis'8] e'8[ r16 e'16 dis'8]
 e'4 r8 e'8. d'16 c'8 c'4. ~ c'4 r8 d'8[ r16 d'16 cis'!8] d'8[ r16 d'16 cis'8] d'8[ r16 d'16 cis'8] d'8[ r16 d'16 cis'8]
 d'4 r8 r8. b'16 c''8 d''4 r8 r8. gis'!16 a'8 b'4 r8 r8. d'16 e'8 f'4 r8 r8. gis!16 a8
 b8[ r16 gis16 a8] b8[ r16 a16 b8] c'8[ r16 a16 b8] c'8[ r16 b16 cis'8] d'8[ r16 b16 cis'8] d'8[ r16 cis'16 dis'8]
 e'8[ r16 cis' dis'8] e'8[ r16 cis' dis'8] e'8[ r16 cis' d'8] e'8[ r16 cis' d'8]
 e'8[ r16 cis' d'8] e'8[ r16 cis' d'8] e'4 r8 r4 r8
 r4 r8 e'16_\markup { \italic "piu f" }( fis' gis' a' \times 2/3 { b'16[ cis'' d'']) } e''4 r8 r4 r8
 r4 r8 e'16( fis' gis' a' \times 2/3 { b'16[ cis'' d'']) }
 e''16\ff cis' cis' cis' cis' cis' cis' cis' d' d' e' e' d' d' e' e' fis' fis' b b' b' b' e' e'
 e' e' e'' e'' e' e' e' e' e'' e'' e' e' e' e' e'' e'' e' e' e' e'' e' e' d' d'
 cis' cis' cis' cis' b b cis' cis' d' d' e' e' d' d' e' e' fis' fis' b b b' b' e' e'
 e' e' d' d' cis' cis' cis' cis' e' e' d' d' cis' cis' e' e' cis' cis' cis' cis' e' e' cis' cis' d' fis' fis' fis' fis' fis'
 d' fis' fis' fis' fis' fis' cis' e' e' e' e' e' cis' e' e' e' e' e' cis' e' e' e' e' e' cis' e' e' e' e' e'
 d' fis' fis' fis' fis' fis' d' fis' fis' fis' fis' fis' cis' e' e' e' e' e' cis' e' e' e' e' e' cis' e' e' e' e' e' cis' e' e' e' e' e'
 b e' e' e' e' e' cis' e' e' e' e' e' e' e'' e'' e'' e'' e'' e''4.:16
 b16 e' e' e' e' e' cis' e' e' e' e' e' e' e'' e'' e'' e'' e'' e''4.:16
 e'16 e'' e'' e'' e'' e'' e''4.:16 e'16 gis' gis' gis' gis' gis' gis' b' b' b' b' b' b' d'' d'' d'' d'' d'' d''4.:16
 d''4.^\fermata r4 r8 <cis' e'>4^\markup { "pizz." } r8^\fermata r4 r8
 a'8.\p^\markup { "arco" } a'16 a'8 a'8. a'16 a'8 a'8. a'16 a'8 a'8. a'16 a'8 a'8. a'16 a'8 a'8. a'16 a'8
 a'8. a'16 a'8 a'8. a'16 a'8 a'8. a'16 a'8 a'8. a'16 a'8
 a'8. a'16 a'8 a'8. a'16 a'8 a'8. a'16 a'8 a'8. a'16 a'8 a'8. a'16 a'8 bes'8. g'16 g'8
 g'2.\pp( f'2. bes'2. a'2. d''2.) c''2. ~ c''2._\markup { \italic "pp sempre" } d''2. b'2.
 c''4. ~ c''4 c''8 d''8_\markup { \italic "cresc." }( c'') a'\staccato d''( c'') a'\staccato
 e''( d'') a'\staccato e''( d'') a'\staccato a'( gis'!) e'\staccato a'( gis') e'\staccato b'( a') e'\staccato d''( c'') a'\staccato
 <dis' c''>4.:16\ff <dis' c''>4.:16 <e' b'>4.:16 <e' b'>16 b b b b b a d'! d' d' d' d' d'4.:16
 e'8\p r <b e'> r r <b e'> r r <c' e'> r r <c' e'> r r <b e'> r r <b e'> r r <c' e'> r r <c' e'>
 r8 r <b e'>_\markup { \italic "cresc." } r r <b e'> cis'!2.:16\f
 \new Voice { \stemUp b8[ \stemDown b''16( a'' gis'' fis''] e''16 dis'' e'' d'' cis'' b') } a'16 a a a a a a4.:16
 \new Voice { \stemUp gis8[ \stemDown gis''16( fis'' e'' d''] cis''16 bis' cis'' b' a' gis') } fis'4.:16 fis'4.:16
 gis'4 r8 <e' d'' b''>4 r8 <e' cis'' a''>4 r8 <e' cis'' a''>4 r8
 <e' b' gis''>4 r8 <e' d'' b''>4 r8 <e' cis'' a''>4 r8 <e' cis'' a''>4 r8
 fis'4.\sf( ~ fis'4 f'8) e'4.\p( ~ e'4 fis'!16 gis') a'4 r8 r4 r8 R2. a4._\markup { \italic "dolce" }( cis'4. e'4.) e'4.
 <a' a''>4.\ff cis''8. a'16 a'8
 d''8. b'16 b'8 <c'' e''>8. <c'' e''>16 <bes' e''>8 <a' f''>8. f''16 c''8 a'8. a''16 f''8 c''8. c''16 a'8 f'8. f'16 c'8
 f'4 r8 r8. c'16_\markup { \italic "dimin." } c'8 f'4 r8 r8. c'16 c'8 f'4\p r8 r4 r8 f'4\pp r8 r4 r8
 <gis! f'>2.:16\pp <gis f'>2.:16 <gis f'>2.:16 <gis f'>2.:16
 <gis e'>16_\markup { \italic "cresc. poco a poco" } e' e' e' e' e' e' d'' d'' d'' cis'' d'' e'' e' e' e' e' e' e' e'' e'' e'' d'' e''
 fis'' fis' fis' fis' fis' fis' fis' fis'' fis'' fis'' e'' fis'' gis'' gis' gis' gis' gis' gis' gis' gis'' gis'' gis'' fis'' gis''
 a'' a' a' a' a' a' a' a'' a'' a'' gis'' a'' b'' b' b' b' b' b' b' b'' b'' b'' a'' b''
 cis'''16\ff <cis'' a''> <cis'' a''> <cis'' a''> <cis'' a''> <cis'' a''> <cis'' a''>4.:16
 <cis'' a''>2.:16 <b' a''>2.:16 <b' a''>2.:16 R2. r8 e'16_\markup { \italic "cresc." } e' e' e' e' e' fis' gis' a' b'
 cis''16\ff <cis'' a''> <cis'' a''> <cis'' a''> <cis'' a''> <cis'' a''> <cis'' a''>4.:16
 <cis'' a''>2.:16 <b' a''>2.:16 <b' a''>2.:16 bes'4.\pp( f'4. gis4._\markup { \italic "cresc." }) e'4( e''8)
 e''8\ff <cis' e'>16 <cis' e'> <cis' e'> <cis' e'> <cis' e'>8 <cis' e'>16 <cis' e'> <cis' e'> <cis' e'>
 <d' e'>8 <d' e'>16 <d' e'> <d' e'> <d' e'> <d' e'>8 <d' e'>16 <d' e'> <d' e'> <d' e'>
 <cis' e'>8 <cis' e'>16 <cis' e'> <cis' e'> <cis' e'> <cis' e'>8 <cis' e'>16 <cis' e'> <cis' e'> <cis' e'>
 <d' e'>8 <d' e'>16 <d' e'> <d' e'> <d' e'> <d' e'>8 <d' e'>16 <d' e'> <d' e'> <d' e'>
 <cis' e'>8 <cis' e'>16 <cis' e'> <cis' e'> <cis' e'> <d' e'>8 <d' e'>16 <d' e'> <d' e'> <d' e'>
 <cis' e'>8 <cis' e'>16 <cis' e'> <cis' e'> <cis' e'> <d' e'>8 <d' e'>16 <d' e'> <d' e'> <d' e'>
 <cis' e'>8 <cis' e'>16 <cis' e'> <cis' e'> <cis' e'> <d' e'>8 <d' e'>16 <d' e'> <d' e'> <d' e'>
 \appoggiatura gis'32 a'4\ff r8 \appoggiatura a'32 b'4 r8 \appoggiatura b'32 cis''4 r8 \appoggiatura cis''32 d''4 r8
 \appoggiatura d''32 e''4 r8 \appoggiatura e''32 fis''4 r8
 \appoggiatura fis''32 gis''4 r8 \appoggiatura gis''32 a''4 r8 R2. R2.
 \appoggiatura g'32 aes'4\p r8 r4 r8 R2. R2. R2. ees'4.\pp ~ ees'8.( des'16 c'8) R2.
 e'!4. ~ e'8.( d'!16 c'8) R2. a'4._\markup { \italic "sempre p" } ~ a'8.( g'16 f'8) R2.
 R2. r4 r8 r4 e'8\pp e'2. ~ e'4.( a'4 e'8) e'2. ~ e'4.\<( cis''4\!\> a'8\!) e'2. ~ e'4( a'8) a'4( e'8)
 e'2. ~ e'4\<( cis''8\!) cis''8\>( b') a'\staccato\!
 r8 r8 e'8\staccato_\markup { \italic "cresc." } e'4. ~ e'4 a'8\staccato e'4.
 r8 r8 e'8\staccato e'4. ~ e'4 cis''8\staccato a'4.
 e'4\staccato( e'8\staccato e'4\staccato e'8\staccato) e'4\staccato( a'8\staccato e'4\staccato e'8\staccato)
 e'4\staccato( e'8\staccato e'4\staccato e'8\staccato) e'4\staccato( cis''8\staccato a'4\staccato a'8\staccato)
 e'8 e' e' e' e' e' e'8 a' a' a' e' e' e' e' e' e' e' e' e' cis' cis' cis' a' a'
 e'4.:16_\markup { \italic "piu cresc." } e'16 e'' e'' e'' e'' e'' e''4.:16 e''4.:16
 e''8.\ff e'16 e'8 a'8. a'16 a'8 cis''8. cis''16 cis''8 e''8. e''16 e''8
 fis'8. fis'16 fis'8 a'8. a'16 a'8 d''8. d''16 d''8 fis''8. fis''16 fis''8
 e''8. a''16\staccato e''8 e''4. ~ e''8. e''16\staccato cis''8 cis''4. ~ cis''8. cis''16 a'8 ~ a'8. a'16 e'8 ~
 e'8. e'16 cis'8 ~ cis'8. cis'16 a8 ~ a8. a'16 fis'8 ~ fis'8. fis'16 e'8
 dis'4 r8 r8. dis'16 dis'8 dis'4 r8 r8. dis'16 dis'8
 d'!4 r8 r8. d'16 d'8 d'4 r8 r8. d'16 d'8 cis'4 r8 r8. d'16 d'8 e'4 r8 r8. eis'16 eis'8
 fis'8[ r16 d' d'8] d'8[ r16 e' e'8] e'8[ r16 eis' eis'8] eis'8[ r16 fis' fis'8]
 fis'8[ r16 d'' d''8] d''8[ r16 cis'' cis''8] cis''8[ r16 b' b'8] b'8[ r16 cis'' cis''8]
 cis''8\ff[ r16 e'' e''8] e''8[ r16 e'' e''8] e''8[ r16 e'' e''8] e''8[ r16 e'' e''8]
 e''8[ r16 e'' e''8] e''8[ r16 e'' e''8] e''8[ r16 e'' e''8] e''8[ r16 e'' e''8]
 e''8[ r16 a'' a''8] a''8[ r16 a'' a''8] a''8[ r16 a' a'8] a'8[ r16 a a8] a4 r8 r4 r8
 <e'' e'''>4 r8 r4 r8 <a' e'' cis'''>4 r8 r4 r8 \bar "|."
}