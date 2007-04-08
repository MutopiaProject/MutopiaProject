\version "2.10.0"

 oboi = {
 \set Staff.instrumentName = "Oboi"
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key a \major
 \time 4/4
 << { a''2^\fp( e'' cis'' fis'') e''1^\fp ~ e''4( fis''8 e'') e''4( fis''8 e'') e''1^\fp ~ e''8( d'' cis'' d'' e'' fis'' g'' e'') } \\
 { cis''4\f\staccato a'4\rest a'2\rest R1 R1 R1 R1 R1 } >> << { d''1 ~ d''2( e''4 g'') } \\ { d''2\fp( a' b' c'') } >>
 << { a''2. a''4 ( e'') } \\ { c''2._\markup { \italic "dimin." }( a'4 e''\pp) } >> r4 r2 R1 R1 R1
 r2 << { gis''16\staccato a''\staccato b''\staccato cis'''\staccato d'''\staccato d'''\staccato d'''\staccato d'''\staccato } \\
 { g'4\rest_\markup { \italic "cresc." } b''16\staccato b''\staccato b''\staccato b''\staccato } >>
 <a'' cis'''>1\ff ~ <a'' cis'''>4 r r2 <e'' b''>1( <e'' a''>4) r r2 <d'' d'''>1 ~ <d'' d'''>4 r r2 <g'' b''>1 <g'' c'''>4 r
 << { d''4\rest c''16\staccato_\markup { \italic "dimin." } c''\staccato d''\staccato e''\staccato } \\ { e'2\rest } >>
 << { f''2( g''16 f'' e'' d'') g''8\staccato f''\staccato } \\ { b'2\p b'4_\markup { \italic "dolce" } b'8 b' } >>
 <c'' e''>4( <c'' g''>8) r16 <c'' g''>16 <c'' c'''>4( <c'' g''>8) r16 <c'' g''>16
 << { f''2( g''16 f'' e'' d'') g''8\staccato f''\staccato } \\ { b'2\p b'4 b'8 b' } >>
 <c'' e''>4( <c'' g''>8) r16 <c'' g''>16 <c'' c'''>4( <c'' g''>8) r16 <c'' g''>16
 <c'' a''>4( <a' f''>8) r16 <a' f''>16 <a'' c'''>4( <f'' a''>8) r16 <f'' a''>16
 <e'' g''>4( <c'' e''>8) r16 <c'' e''>16 <d'' g''>4( <b' d''>8)
 << { g''16\rest g''16 g''2\pp ~ g''16 g'' g'' g'' g''4:16 g''2 ~ g''16 g'' g'' g'' g''4:16 g''2 ~ g''16 g'' g'' g'' g''4:16 } \\
 { g'8\rest R1 R1 R1 } >>
 << { g''2 c''4:16_\markup { \italic "cresc." } c''4:16 c''4 d''4:16 d'' b''4:16 } \\ { R1 f'2\rest d'4\rest d''4:16 } >>
 << { b''2 e''2 b' e' e'' fis''! cis'' e' e'' g'' e'' e' e'' g'' e''4 } \\
 { e''2\ff e''\sf b'\sf e'\sf e''\sf fis''!\sf cis''\sf e'\sf e''\sf g''\sf e''\sf e'\sf e''\sf g''\sf e''4_\markup { \italic "dimin." } } >>
 r4 << { c''16 d'' e'' f'' g'' g'' g'' g'' } \\ { e'2\rest } >>
 <c'' g''>2\p <c'' g''>4_\markup { \italic "dolce" } <c'' g''>8 <c'' g''>
 <c'' f''>4( <c'' a''>8) r16 <c'' a''> <c'' a''>4 <c'' a''>8 r16 <c'' a''> <c'' g''>2 <c'' g''>4 <c'' g''>8 <c'' g''>
 <c'' f''>4 <c'' f''>8 r16 <c'' f''> <c'' f''>4 <c'' f''>8 r16 <c'' f''>
 <d'' f''>4 <d'' f''>8 r16 <d'' f''> <d'' f''>4 <d'' f''>8 r16 <d'' f''> <c'' a''>4( <c'' f''>8) r16 <c'' f''> <c'' g''>4( <c'' e''>8)
 << { f''16\rest c''16 c''2\pp ~ c''16 c'' c'' c'' c''4:16 } \\ { e'8\rest R1 } >>
 <a' c''>2_\markup { \italic "cresc." } ~ <a' c''>16 <a' c''> <a' c''> <a' c''> <a' c''>4:16
 <a' c''>2 ~ <a' c''>16 <a' c''> <a' c''> <a' c''> <a' c''>4:16
 <a' c''>8 r <a' c''>4:16 <a' c''>8 r <a' c''>4:16 <a' c''>8 r <a' c''>4:16 <a' c''>8 r <c'' c'''>16 <c'' c'''> <a' a''> <a' a''>
 <e' e''>8\ff r r4 r2 << { f''2\rest e''4\p( gis''!8. fis''16) e''8 g''8\rest g''4\rest f''2\rest
 f''2\rest e''4\p( gis''8. fis''16 e''16) e''16 e'' e'' e''4:16 e''8 f''8\rest f''4\rest
 f'8\rest e''8[ e'' e''] e''8 f''8\rest e''4\rest f''2\rest e''4 f''4\rest f''2\rest e''4 f''8.\rest e''16
 e''4 f''4\rest f''4\rest f''8.\rest e''16 e''4 f''4\rest f''4\rest f''8.\rest e''16 } \\ { R1 R1 R1 R1 R1 R1 R1 R1 R1 } >>

 \repeat volta 2 {
 \time 6/8 << { e''8._\markup { \italic "sempre p" } e''16 e''8 e''8. e''16 e''8
 e''8. e''16 e''8 e''8. e''16 e''8 e''8. e''16 e''8 e''8. e''16 e''8 } \\ { R2. R2. R2. } >>
 r4 r8 <e' e''>8._\markup { \italic "cresc." } <e' e''>16 <e' e''>8
 <e' e''>2.\p ~ <e' e''>2. ~ <e' e''>2. ~ <e' e''>2. ~ <e' e''>2. ~ <e' e''>2. ~ <e' e''>4 <e' e''>8 <e' e''>4 <e' e''>8
 <e' e''>4 << { f''8\rest f''4\rest a'8
 a'4 a'8 a'8. d''16\staccato fis''8\staccato fis''8( e'') cis''\staccato a'4 c''8\rest c''4\rest c''8\rest c''4\rest a'8
 a'8. d''16\staccato a'8\staccato a'8. d''16\staccato fis''8\staccato fis''8( e'') cis''\staccato a'4 c''8\rest } \\
 { c'8\rest c'4\rest c'8\rest R2. R2. R2. R2. R2. } >> r4 r8 r4
 << { cis''8 b'4 e'8 e'8. cis''16\staccato a'8\staccato } \\ { cis''8\p b'4 e'8 e'8. cis''16 a'8 } >>
 << { e''4. ~ e''4 cis''8 b'4 e'8 e'8. cis''16\staccato a'8\staccato } \\ { e''4.\f\> ~ e''4 cis''8\!\p b'4 e'8 e'8. cis''16 a'8 } >>
 <e' e''>4.\f ~ <e' e''>4 r8 <e' e''>4.\sf ~ <e' e''>4 r8 <e' e''>4\sf r8 <e' e''>4\sf r8
 <e' e''>4\sf r8 <d'' d'''>8\sf[ d''16\rest <b' b''>16 <gis' gis''>8] <d'' b''>4.^\fermata r4 r8
 <cis'' e''>2.\ff <d'' fis''>4. ~ <d'' fis''>4 <b' gis''>8
 <cis'' a''>2. ~ <cis'' a''>8( <b' gis''>) <a' fis''>\staccato <gis' e''>4 <e' e''>8 <cis'' e''>2.
 <d'' fis''>4. ~ <d'' fis''>4 <b' gis''>8 <cis'' a''>4 <cis'' a''>8 <cis'' a''>8( <e'' cis'''>) <d'' b''>\staccato
 <cis'' a''>4 <a' a''>8 <a' a''>8. <a' a''>16 <a' a''>8
 <a' a''>2. ~ <a' a''>8. <a' a''>16 <a' a''>8 <a' a''>8. <a' a''>16 <a' a''>8
 <a' a''>2. ~ <a' a''>8. <a' a''>16 <a' a''>8 <a' a''>4 r8
 << { f''8\rest f''8\rest e''8\p fis''8_\markup { \italic "cresc." }( e'') cis''8\staccato
 f''8\rest f''8\rest fis''8 g''8( fis'') d''8\staccato } \\ { R2. R2. } >>
 << { f''8\rest f''8\rest d''8 e''( d'') b'8\staccato f''8\rest f''8\rest e''8 fis''( e'') cis''\staccato
 f''8\rest f''8\rest e''8 fis''( e'') cis''\staccato g''8( fis'') d''\staccato g''( fis'') d''\staccato
 a''8( gis''!) e''\staccato a''8( gis''!) e''\staccato b''8( a'') e''\staccato d''8( cis'') a'\staccato } \\
 { R2. R2. R2. R2. R2. R2. } >> << { e''2. } \\ { e''2.\ff } >>
 <dis'' fis''>4. ~ <dis'' fis''>8 << { fis''8\p fis'' fis''[ r fis''] fis''[ r fis'']
 gis''4 f''8\rest f''4\rest f''8\rest } \\ { f'8\rest f'8\rest R2. R2. } >> R2. R2.
 << { e''4._\markup { \italic "cresc." }( cis''4.) bes'4\f ees'8^\p ees'8.\staccato g'16\staccato bes'8\staccato
 ces''4\staccato ces''8\staccato ces''8.\staccato bes'16\staccato aes'8\staccato g'4 e''8\rest e''4\rest
 bes'8( b'4) } \\ { R2. s2. R2. R2. d'4\rest } >> <b' b''>8 <b' b''>4 <b' b''>8 <b' b''>2.\f
 <b' b''>4 <b' b''>8 <b' b''>4 <b' b''>8 <b' b''>2. ~ <b' b''>8([ <a' a''>]) <a' a''>8 <e'' a''>4 <e'' a''>8
 <fis'' a''>8 <fis'' a''> r <fis'' a''> <fis'' a''> r <e'' gis''> <e'' gis''> r <e'' gis''> <e'' gis''> r
 <fis'' a''>8 <fis'' a''> r <fis'' a''> <fis'' a''> r <e'' gis''> <e'' gis''> r <e'' gis''> <e'' gis''> r
 R2. << { b''4.\p( ~ b''4 fis''8) e''4. } \\ { R2. e''4_\markup { \italic "dolce" } } >> <e'' gis''>8. <b' e''>16 <b' e''>8
 <fis'' a''>8. <b' fis''>16 <b' fis''>8 <gis'' b''>4. ~ <gis'' b''>4.
 << { b''8. gis''16 gis''8 gis''8. e''16 e''8 e''8( fis'') dis''\staccato e''8 e'' e'' e'' e'' e'' e'' e'' e'' g'' g'' g'' } \\
 { f'4\rest f'8\rest R2. e''8\f e'' e'' e'' e'' e'' e'' e'' e'' g'' g'' g'' } >> <c'' c'''>4 r8 r4 r8
 R2. R2. << { f''4\rest f''8\rest f''8.\rest g'16\p g'8 c''4 f''8\rest f''4\rest f''8\rest c''4\pp f''8\rest f''4\rest f''8\rest } \\
 { R2. R2. R2. } >> R2. << { f''8\rest f''8\rest fis''16\pp( g'' a''8\staccato) f''8\rest f''8\rest } \\ { R2. } >> R2.
 << { f''8\rest f''8\rest fis''16( g'' a''8\staccato) f''8\rest f''8\rest
 f''8\rest f''8\rest fis''16_\markup { \italic "cresc." }( gis'' a''4\staccato) f''8\rest } \\ { R2. R2. } >> R2. R2.
 << { f''8\rest f''8\rest b'16_\markup { \italic "cresc." }( cis'' dis''4\staccato) f''8\rest } \\ { R2. } >> R2.
 << { f''8\rest f''8\rest dis''16_\markup { \italic "cresc." }( e'' fis''8\staccato)
 f''8\rest e''16( fis'' <e'' gis''>2.\ff) ~ <e'' gis''>4. } \\ { R2. s2. s4. } >>
 <e'' gis''>8. <e'' gis''>16 <e'' gis''>8 <e'' fis''>2. ~ <e'' fis''>4. <e'' fis''>8. <e'' fis''>16 <e'' fis''>8
 << { f''4.\pp( c''4. dis'4._\markup { \italic "cresc." }) b'8 cis''16 dis'' e'' fis''! } \\ { R2. R2. } >>
 <e'' gis''>2.\ff ~ <e'' gis''>4. <e'' gis''>8. <e'' gis''>16 <e'' gis''>8
 <e'' fis''>2. ~ <e'' fis''>4. <e'' fis''>8. <e'' fis''>16 <e'' fis''>8
 << { f''4\rest f''8\rest f''4.\pp( dis''4._\markup { \italic "cresc." } ~ dis''4) b'8\staccato b''4. ~ b''8. a''16 gis''8
 \appoggiatura gis''32 a''4. ~ a''8. cis''16 dis''8 e''4 } \\
 { R2. R2. b''4.\ff ~ b''8. a''16 gis''8 \appoggiatura gis''32 a''4. ~ a''8. a'16 a'8 gis'4 } >> r8
 << { gis''4 } \\ { gis'4 } >> r8 << { b''4 } \\ { b'4 } >> r8 r8.
 << { b''16 b''8 b''4 gis''8 \appoggiatura gis''32 a''8. cis''16 dis''8 e''4  } \\
 { b'16 b'8 b'4\sf gis''8 \appoggiatura gis''32 a''8. a''16 a''8 gis''4 } >> r8 r8.
 << { b''16 b''8 b''4 gis''8 \appoggiatura gis''32 a''8. cis''16 dis''8 } \\
 { b'16 b'8 b'4\sf gis''8 \appoggiatura gis''32 a''8. a''16 a''8 } >>
 << { e''8 } \\ { e''8\ff } >> r8 << { e''8 } \\ { e''8 } >> r8 r << { e''8 } \\ { e''8 } >>
 r8 r << { e''8 } \\ { e''8 } >> r8 r << { e''8 } \\ { e''8 } >> r8 r << { e''8 } \\ { e''8 } >> r8 r << { e''8 } \\ { e''8 } >>
 r8 r << { e''8 } \\ { e''8 } >> r8 r << { e''8 } \\ { e''8 } >> R2. R2.
 }

 r8 r << { g''8 } \\ { g''8\ff } >> r r << { g''8 } \\ { g''8 } >> r r << { g''8 } \\ { g''8 } >> r r << { g''8 } \\ { g''8 } >>
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { g'4.\pp ~ g'8. f'16\staccato e'8\staccato f'8.\staccato g'16\staccato a'8\staccato
 b'8.\staccato c''16\staccato d''8\staccato e''8. f''16 g''8 a''8. b''16 c'''8 d'''8. c'''16 b''8 a''8. g''16 f''8
 e''2._\markup { \italic "cresc." } ~ e''2. ees''2. ~ ees''2. d''4. g''4. ~ g''2. } \\
 { R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. } >> <g'' c'''>2.\f ~ <g'' c'''>2. ~ <g'' c'''>2. ~ <g'' c'''>2.
 <g'' b''>8.\ff <g'' b''>16 <g'' b''>8 <g'' b''>8. <g'' b''>16 <g'' b''>8
 <g'' b''>8. <g'' b''>16 <g'' b''>8 <g'' b''>8. <g'' b''>16 <g'' b''>8 <f'' b''>2. ~ <f'' b''>2. ~ <f'' b''>2. ~ <f'' b''>2.
 <e'' b''>8. <e'' gis''!>16 <e'' gis''>8 <e'' gis''>8. <e'' gis''>16 <e'' gis''>8
 <e'' gis''>8. <e'' gis''>16 <e'' gis''>8 <e'' gis''>8. <e'' gis''>16 <e'' gis''>8
 <e'' gis''>2. ~ <e'' gis''>2. ~ <e'' gis''>2. ~ <e'' gis''>2. ~ <e'' gis''>4 r8
 << { e''8. e''16 e''8 } \\ { e''8.\sf e''16 e''8 } >>
 r4 r8 << { f''8. f''16 f''8 } \\ { f''8.\sf f''16 f''8 } >>
 r4 r8 << { f''8. f''16 f''8 f''2.\p ~ f''4. ~ f''4 ~ f''16 a'' a''4. ~ a''8. g''16\staccato f''8\staccato
 g''4 f''8\rest f''4 f''8\rest bes'4 f''8\rest a'4 f''8\rest } \\ { f''8.\sf f''16 f''8 R2. R2. R2. R2. R2. } >> R2. R2.
 << { f''4\rest f''8\rest f''8\rest f''8.\rest d''16 } \\ { R2. } >>
 <bes' d''>4.\p ~ <bes' d''>8. <a' d''>16\staccato <g' d''>8\staccato <d' d''>4 r8 <g' d''>4 r8 <d' c''>4 r8 <d' bes'>4
 << { g''16\rest a''16 a''4. ~ a''8. g''16 f''8 g''4 f''8\rest f''4 f''8\rest } \\ { f'8\rest R2. R2. } >> R2.
 << { g''4 f''8\rest f''4 f''8\rest } \\ { R2. } >> R2. R2. R2.
 r8. <bes' bes''>16_\markup { \italic "cresc. poco a poco" } <bes' bes''>8
 <bes' bes''>8. <bes' bes''>16 <bes' bes''>8
 <bes' bes''>8. <bes' bes''>16 <bes' bes''>8 <bes' bes''>8. <bes' bes''>16 <bes' bes''>8
 <bes' bes''>8. <bes' bes''>16 <bes' bes''>8 <bes' bes''>8. <bes' bes''>16 <bes' bes''>8
 <bes' bes''>8. <bes' bes''>16 <bes' bes''>8 <bes' bes''>8. <bes' bes''>16 <bes' bes''>8
 <bes' bes''>8. <c'' bes''>16 <c'' bes''>8 <c'' bes''>8. <c'' bes''>16 <c'' bes''>8
 <c'' bes''>8. <c'' bes''>16 <c'' bes''>8 <c'' bes''>8. <c'' bes''>16 <c'' bes''>8
 <c'' bes''>8. <c'' bes''>16 <c'' bes''>8 <c'' bes''>8. <c'' bes''>16 <c'' bes''>8
 <c'' bes''>8. <c'' bes''>16 <c'' bes''>8 <c'' bes''>8. <c'' bes''>16 <c'' bes''>8
 <c'' c'''>8. <d'' c'''>16 <d'' c'''>8 <d'' c'''>8. <d'' c'''>16 <d'' c'''>8
 <d'' c'''>8. <d'' c'''>16 <d'' c'''>8 <d'' c'''>8. <d'' c'''>16 <d'' c'''>8
 <d'' c'''>8. <d'' c'''>16 <d'' c'''>8 <d'' c'''>8. <d'' c'''>16 <d'' c'''>8
 <d'' c'''>8. <d'' c'''>16 <d'' c'''>8 <d'' c'''>8. <d'' c'''>16 <d'' c'''>8
 <d'' d'''>4\f r8 <d'' g''>8[ r16 <d'' g''> <cis''! g''>8] <d'' g''>4 r8 <d'' g''>8[ r16 <d'' g''> <dis'' g''>8]
 <e'' g''>4 r8 <e'' g''>8[ r16 <e'' g''> <dis'' g''>8] <e'' g''>4 r8
 << { e''8[ s16 a'' a''8] } \\ { e''8[ e''16\rest e'' e''8] } >>
 <f'' a''>8\ff[ r16 <a' a''> <a' a''>8] <a' a''>8[ r16 <a' a''> <a' a''>8]
 <a' a''>8[ r16 <a' a''> <a' a''>8] <a' a''>8[ r16 <a' a''> <a' a''>8] <a' a''>8[ r16 <f' f''> <g' g''>8]
 <a' a''>8[ r16 <d' d''> <e' e''>8]
 << { f''8[ s16 f'16 g'8] a'8[ s16 a''16 a''8] } \\ { f'8[ g'16\rest f'16 g'8] a'8[ a'16\rest a'16 a'8] } >>
 <a' a''>8[ r16 <a' a''> <a' a''>8] <a' a''>8[ r16 <a' a''> <a' a''>8]
 <a' a''>8[ r16 <a' a''> <a' a''>8] <a' a''>8[ r16 <a' a''> <a' a''>8]
 << { a''8[ s16 c''16 d''8] e''8[ s16 a''16 b''8] c'''8[ s16 c''16 d''8]
 e''8[ s16 e''16 e''8] d''8[ s16 d''16 cis''!8] d''8[ s16 d''16 cis''8]
 d''8[ s16 d''16 cis''8] d''8[ s16 d''16 cis''8] d''8[ s16 d''16 e''8] f''4 } \\
 { a'8[ b'16\rest c''16 d''8] e''8[ b'16\rest a'16 b'8] c''8[ c''16\rest c''16 d''8]
 e''8[ d''16\rest e''16 e''8] d''8[ d''16\rest d''16 cis''8] d''8[ d''16\rest d''16 cis''8]
 d''8[ d''16\rest d''16 cis''8] d''8[ d''16\rest d''16 cis''8] d''8[ d''16\rest d''16 e''8] f''4 } >> r8
 r8. <b' b''>16 <c'' c'''>8 <d'' d'''>4 r8 r8. <gis'! gis''!>16 <a' a''>8 <b' b''>4 r8
 r8. <b' b''>16 <c'' c'''>8 <d'' d'''>4 r8 R2. R2. R2. R2. R2. R2. R2. R2.
 <cis''! cis'''!>8._\markup { \italic "piu f" } <cis'' cis'''>16 <cis'' cis'''>8 <cis'' cis'''>8. <cis'' cis'''>16 <cis'' cis'''>8
 <cis'' cis'''>8. <cis'' cis'''>16 <cis'' cis'''>8 <cis'' cis'''>8. <cis'' cis'''>16 <cis'' cis'''>8
 <cis'' cis'''>4\ff r8 r4 r8 r4 r8 r8 r8. <cis'' cis'''>16 <cis'' cis'''>4 r8 r4 r8 r4 r8 r8 r8. <cis'' cis'''>16
 <cis'' cis'''>4 r8 r4 r8 r4 r8 r8 r8. <cis'' a''>16
 <cis'' a''>4 r16 <cis'' a''> <cis'' a''>4 r16 <b' gis''> <cis'' a''>4 r16 <fis'' d'''> <fis'' d'''>4 r16 <fis'' d'''>
 <fis'' d'''>4 r8 r4 r8 r4 r8 r4
 << { e''8\staccato fis''8( e'') cis''8\staccato a'4 } \\ { e''8 fis''8\sf e'' cis''8 a'4 } >> r16 <e'' cis'''>16
 <fis'' d'''>4 r8 r4 r8
 r4 r8 r8 r8 << { e''8\staccato fis''8( e'') cis''\staccato a'4 } \\ { e''8 fis''\sf e'' cis'' a'4 } >> r16 <e'' a''>16
 <e'' gis''>4 r8 r8 r8. <e'' a''>16 <e'' gis''>4 r8 r8 r8. <e'' a''>16
 <e'' gis''>4 r8 r8 r8. <e'' a''>16 <e'' gis''>4 r8 r8 r8. <e'' a''>16
 <e'' a''>4 r8 r8 r8. <e'' ais''>16 <e'' b''>4 r16 <e'' b''> <e'' b''>4 r16 <e'' b''>
 <e'' b''>4 r16 <e'' b''> <e'' b''>4 r16 <b'' d'''> <b'' d'''>4.^\fermata r8 r8. <e'' g''>16\p <e'' g''>4.^\fermata
 << { a'16_\markup { \italic "dolce" }( b' cis'' d'' \times 2/3 { e''16[ fis'' g'']) }
 a''4. ~ a''8. g''16\staccato fis''8\staccato g''4. ~ g''8. b'16\staccato cis''8\staccato
 d''4 d''8 d''8. e''16\staccato fis''8\staccato fis''8( e''4) ~ e''8. fis''16 g''8
 a''4. ~ a''8. g''16 f''8 g''4. ~ g''8. b'16 cis''8 d''4 d''8 d''8( f'') e''\staccato d''4 f''8\rest f''4\rest d''8\p
 d''4 d''8 d''8. g''16\staccato bes''8\staccato bes''8( a'') f''\staccato d''4 f''8\rest } \\
 { s4 s8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. } >> R2. R2. R2. R2. R2.
 << { f''4\rest f''8\rest f''4\rest f''8\p a''8( gis''!) d''8\staccato b'4 f''8\rest } \\ { R2. R2. } >> R2.
 <c'' e''>2._\markup { \italic "cresc." } <d'' f''>2. <b' gis''!>2. <c'' a''>2. <dis'' c'''>2.\ff
 <e'' b''>4. ~ <e'' b''>8 <e'' b''> <e'' b''> <a' a''>8 r8 <a'' d'''> <a'' d'''> r <d'' a''> <b' gis''!>4\p r8 r4 r8 R2. R2. R2.
 << { f''8\rest f''8\rest e''8 e''8.\staccato_\markup { \italic "cresc." } gis''16\staccato b''8\staccato
 cis'''!4 cis'''8 cis'''4 cis'''8 } \\ { R2. g'8\rest g'8\rest e''8\f e''4 e''8 } >> <e'' b''>2.
 <e'' a''>4 <e'' a''>8 <e'' a''>4 <e'' a''>8 <e'' gis''>2. <fis' fis''>4 <fis'' b''>8 <fis'' b''>4 <fis'' a''>8
 <e'' gis''>8 <e'' gis''> r <b'' d'''> <b'' d'''> r <a'' cis'''> <a'' cis'''> r <a'' cis'''> <a'' cis'''> r
 <gis'' b''> <gis'' b''> r <b'' d'''> <b'' d'''> r <a'' cis'''> <a'' cis'''> r <a'' cis'''> <a'' cis'''> r
 R2. R2. R2. R2. R2. R2. <a' a''>8\ff <a' a''> <a' a''> <a' a''> <a' a''> <a' a''> <a' a''> <a' a''> <a' a''>
 << { e''8 c''' bes'' } \\ { e''8 c'' c'' } >> <c'' a''>4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { f''8\rest f''8\rest cis''16_\markup { \italic "cresc." }( d'' e''4\staccato) f''8\rest } \\ { R2. } >> R2. R2.
 << { f''8\rest f''8\rest fis''16_\markup { \italic "cresc." }( gis'' a''4\staccato) f''8\rest } \\ { R2. } >>
 R2. <e'' a''>2.\ff ~ <e'' a''>4. <e'' a''>8. <e'' a''>16 <e'' a''>8
 <fis'' a''>2. ~ <fis'' a''>4. <fis'' a''>8. <fis'' a''>16 <fis'' a''>8
 << { bes''4.\pp( f''4.) e''2._\markup { \italic "cresc." } } \\ { R2. R2. } >>
 <e'' a''>2.\ff ~ <e'' a''>4. <e'' a''>8. <e'' a''>16 <e'' a''>8 <fis'' a''>2. ~ <fis'' a''>4. <fis'' a''>8. <fis'' a''>16 <fis'' a''>8
 R2. R2. << { e''4. ~ e''8. d''16\staccato cis''8\staccato \appoggiatura cis''32 d''4. ~ d''8. fis''16\staccato gis''8\staccato } \\
 { e''4.\ff ~ e''8. d''16 cis''8 d''4.\sf ~ d''8. d''16 d''8\staccato } >>
 <cis'' a''>4 r8 <cis'' cis'''>4 r8 << { e''4 } \\ { e''4 } >> r8 r8.
 << { e''16 e''8 e''4 cis''8 \appoggiatura cis''32 d''8. fis''16\staccato gis''8\staccato a''4 } \\
 { e''16 e''8 e''4\sf cis''8 d''8. d''16 e''8 cis''4 } >> r8 r8.
 << { e''16 e''8 e''4 cis''8 \appoggiatura cis''32 d''8. fis''16\staccato gis''8\staccato a''8 } \\
 { e''16 e''8 e''4\sf cis''8 d''8. d''16\staccato d''8\staccato cis''8\ff } >> r8 << { a''8 } \\ { a''8 } >>
 r8 r << { a''8 } \\ { a''8 } >> r8 r << { a''8 } \\ { a''8 } >> r8 r << { a''8 } \\ { a''8 } >>
 r8 r << { a''8 } \\ { a''8 } >> r8 r << { a''8 } \\ { a''8 } >> r8 r << { a''8 } \\ { a''8 } >> r8 r << { a''8 } \\ { a''8 } >> R2. R2.
 << { f''8\rest f''8\rest aes''8\p f''4\rest f''8\rest } \\ { R2. } >> R2. R2. R2. R2. R2. R2.
 <c'' e''>8.\pp <c'' e''>16 <c'' e''>8 <c'' e''>8. <c'' e''>16 <c'' e''>8 <c'' a''>2. ~ <c'' a''>2.
 <cis''! a''>2._\markup { \italic "sempre pp" } << { a''4. ~ a''8.( e''16 cis''8) } \\ { R2. } >>
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 <e' e''>2.:8_\markup { \italic "piu cresc." } <e' e''>2.:8
 <e'' a''>8.\ff <e'' a''>16 <e'' a''>8 <e'' a''>8. <e'' a''>16 <e'' a''>8
 <e'' a''>8. <e'' a''>16 <e'' a''>8 <e'' a''>8. <e'' a''>16 <e'' a''>8
 <fis'' a''>8. <fis'' a''>16 <fis'' a''>8 <fis'' a''>8. <fis'' a''>16 <fis'' a''>8
 <fis'' a''>8. <fis'' a''>16 <fis'' a''>8 <fis'' a''>8. <fis'' a''>16 <fis'' a''>8
 <e'' a''>2. <e'' a''>2. <e'' a''>2. <cis'' cis'''>4. << { <a' a''>4.( fis''4. e''4.) } \\ { s4. fis''4. e''4. } >>
 << { dis''8[ r16 a'' a''8] a''4 } \\ { dis''8[ s16 fis''16 fis''8] fis''4 } >> r8 r8. <fis'' a''>16 <fis'' a''>8 <fis'' a''>4 r8
 r8. <e'' gis''>16 <e'' gis''>8 <e'' gis''>4 r8 r8. <e'' gis''>16 <e'' gis''>8 <e'' gis''>4 r8
 r8. <e'' a''>16 <e'' a''>8 <d'' fis''>4 r8 r8. <cis'' e''>16 <cis'' e''>8 <b' d''>4 r8
 <cis'' a''>8[ r16 <fis'' d'''> <fis'' d'''>8] <fis'' d'''>8[ r16 <e'' cis'''> <e'' cis'''>8]
 <e'' cis'''>8[ r16 <d'' b''> <d'' b''>8] <d'' b''>8[ r16 <cis'' a''> <cis'' a''>8]
 <cis'' a''>8[ r16 <fis'' d'''> <fis'' d'''>8] <fis'' d'''>8[ r16 <e'' cis'''> <e'' cis'''>8]
 <e'' cis'''>8[ r16 <gis'' b''> <gis'' b''>8] <gis'' b''>8[ r16 <a'' cis'''> <a'' cis'''>8]
 << { cis'''4. ~ cis'''8. b''16\staccato a''8\staccato gis''8[ r16 gis'' gis''8] gis''8[ r16 cis''' cis'''8]
 cis'''4. ~ cis'''8. b''16\staccato a''8\staccato gis''8[ r16 gis'' gis''8] gis''8[ r16 cis''' cis'''8] } \\
 { cis'''4.\ff ~ cis'''8. b''16 a''8 gis''8[ r16 gis'' gis''8] gis''8[ r16 cis''' cis'''8]
 cis'''4.\ff ~ cis'''8. b''16 a''8 gis''8[ r16 gis'' gis''8] gis''8[ r16 cis''' cis'''8] } >>
 <a'' cis'''>8[ r16 <a'' cis'''> <a'' cis'''>8] <a'' cis'''>8[ r16 <a'' cis'''> <a'' cis'''>8]
 <a'' cis'''>8[ r16 <a'' cis'''> <a'' cis'''>8] <a'' cis'''>8[ r16 <a'' cis'''> <a'' cis'''>8]
 <e'' cis'''>4 r8 r4 r8 << { e''4 } \\ { e''4 } >> r8 r4 r8 << { cis''4 } \\ { cis''4 } >> r8 r4 r8 \bar "|."
}