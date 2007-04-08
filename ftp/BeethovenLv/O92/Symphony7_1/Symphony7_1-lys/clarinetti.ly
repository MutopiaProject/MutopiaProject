\version "2.10.0"

 clarinetti = {
 \set Staff.instrumentName = \markup { \column { "Clarinetti" "in A" } }
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key c \major
 \time 4/4
 <e'' c'''>4\f\staccato r4 r2 R1
 << { g''2( d'' g' f'') e''1^\fp ~ e''8( d'' c'' d'' e'' f'' g'' e'') f''4 f'2. ~ f'2( g'4 bes') } \\
 { g''2\fp d'' g' f'' e''4\f\staccato r4 r2 r2 e'4\rest c''4 c''\fp f'2( c'4 d'2 ees'2) } >>
 << { c''2. c''4( g'4) } \\ { ees'2._\markup { \italic "dimin." }( c'4 g'4\pp) } >> r4 r2
 <c'' e''>2_\markup { \italic "dolce" }( <g' c''> <e' g'>4) r4 r2 <d'' f''>2( <b' d''>)
 << { b'16\staccato b'\staccato c''\staccato d''\staccato e''\staccato f''\staccato g''\staccato a''\staccato } \\
 { f'2\rest_\markup { \italic "cresc." } } >> <d'' b''>16\staccato <d'' f''>\staccato <d'' f''>\staccato <d'' f''>\staccato
 <d'' f''>\staccato <d'' f''>\staccato <d'' f''>16\staccato <d'' f''>\staccato
 <c'' e''>1\ff ~ <c'' e''>4 r r2 <d'' g''>1( <e'' g''>4) r4 r2 <c'' c'''>1 ~ <c'' c'''>4 r r2 <d'' f''>1 <ees'' g''>4 r r2
 <f' bes'>2\p <f' bes'>4_\markup { \italic "dolce" } <f' bes'>8 <f' bes'>
 <g' bes'>4 <g' bes'>8 r16 <g' bes'>16 <g' bes'>4 <g' bes'>8 r16 <g' bes'>16 <f' bes'>2 <f' bes'>4 <f' bes'>8 <f' bes'>
 <g' bes'>4 <g' bes'>8 r16 <f' bes'>16 << { bes'4 bes'8 } \\ { bes'4 bes'8 } >> r16 << { bes'16 } \\ { bes'16 } >>
 <aes' c''>4 <aes' c''>8 r16 <aes' c''>16 <aes' c''>4 <aes' c''>8 r16 <aes' c''>16
 <g' bes'>4 <g' bes'>8 r16 <g' bes'>16 <f' bes'>4 <f' bes'>8 r8 R1 R1 R1
 R1 r2 r4 <f' d''>4:16_\markup { \italic "cresc." } <g' d''>2\ff
 << { g''2 d'' g' g'' a'' e'' g' g'' bes'' g'' g' g'' bes'' g''4 } \\
 { g''2\sf d''\sf g'\sf g''\sf a''\sf e''\sf g'\sf g''\sf bes''\sf g''\sf g'\sf g''\sf bes''\sf g''4\p } >> r4 r2
 <bes' des''>2\p <bes' des''>4_\markup { \italic "dolce" } <bes' des''>8 <bes' des''>
 <aes' c''>4 <aes' c''>8 r16 <aes' c''> <aes' c''>4 <aes' c''>8 r16 <aes' c''>
 <bes' des''>2 <bes' des''>4 <bes' des''>8 <bes' des''>
 <aes' c''>4 <aes' c''>8 r16 <aes' c''> <aes' c''>4 <aes' c''>8 r16 <aes' c''>
 <aes' bes'>4 <aes' bes'>8 r16 <aes' bes'> <aes' bes'>4 <aes' bes'>8 r16 <aes' bes'>
 <aes' c''>4 <aes' c''>8 r16 <aes' c''> <g' bes'>4 <g' bes'>8 r R1 R1 R1 R1
 r4 <ees'' c'''>4:16_\markup { \italic "cresc." } <ees'' c'''>8 r <ees'' c'''>16 <ees'' c'''> <c'' c'''> <c'' c'''>
 <g' g''>8\ff r r4 r2 << { b'2^\p b'4( d''8. c''16 b'8) } \\ { e'2\rest g'4\p( b'8. a'16 g'8) } >> r8 r4 r2
 << { b'2^\p b'4( d''8. c''16 b'8) } \\ { e'2\rest g'4\p( b'8. a'16 g'8) } >> r8 r4 r2 R1 R1 R1 R1 R1

 \time 6/8
 \repeat volta 2 {
 R2. R2. R2. r4 r8 <e'' g''>8._\markup { \italic "cresc." } <e'' g''>16 <e'' g''>8 <e'' g''>2.\p <d'' f''>2.
 <c'' e''>4 <e'' g''>8 <e'' g''>8. <d'' f''>16\staccato <c'' e''>8\staccato
 <c'' e''>8( <b' d''>4) ~ <b' d''>8. <c'' e''>16\staccato <d'' f''>8\staccato <e'' g''>2. <d'' f''>2.
 <c'' e''>4 <c'' e''>8 << { e''8( g'') f''\staccato } \\ { c''4 b'8 } >>
 <c'' e''>8. <d'' f''>16 <e'' g''>8 <f'' a''> <f'' a''> <f'' a''> <f'' a''>2. <e'' g''>2. ~ <e'' g''>2. <f'' a''>2.
 <e'' g''>2. ~ <e'' g''>4. ~ <e'' g''>8 <c'' e''> <c'' e''> <b' d''>4.( <c'' e''>4.)
 <b' d''>4.\f\> ~ <b' d''>4 <c'' e''>8\!\p <b' d''>4. << { e''8. e''16\staccato c''8\staccato } \\ { c''8. e''16 c''8 } >>
 << { g''4. ~ g''4 } \\ { g''4.\f ~ g''4 } >> r8 << { g''4. ~ g''4 } \\ { g''4.\sf ~ g''4 } >> r8
 << { g''4 } \\ { g''4\sf } >> r8 << { g''4 } \\ { g''4\sf } >> r8 << { g''4 } \\ { g''4\sf } >> r8
 << { f''8[ c''16\rest d''16 b'8] } \\ { f''8[ s16 d''16 b'8] } >> <d'' f''>4.^\fermata r4 r8
 <e' g'>2.\ff <f' a'>4. ~ <f' a'>4 <d' b'>8
 <e' c''>2. ~ <e' c''>8( <d' b'>) <a' c''>\staccato <g' b'>4 <g' g''>8 <e'' g''>2.
 <f'' a''>4. ~ <f'' a''>4 <d'' f''>8 <c'' e''>4 <c'' e''>8 <c'' e''>8( <e'' g''>) <d'' f''>\staccato <c'' e''>4 r8 r4 << { c''8 } \\ { c''8 } >>
 << { c''4 c''8 c''8. f''16\staccato a''8\staccato a''8( g'') e''\staccato c''4 c''8
 c''8. f''16\staccato c''8\staccato c''8. f''16\staccato a''8\staccato a''8( g'') e''\staccato c''4 } \\
 { c''4 c''8 c''8. f''16 a''8 a''8 g'' e'' c''4 c''8 c''8. f''16 c''8 c''8. f''16 a''8 a''8 g'' e'' c''4  } >> <e' g'>8\p
 <e' g'>2._\markup { \italic "cresc." } <f' a'>2.
 <d' b'>2. <e' c''>2. <g' e''>2. <a' f''>2. <b' d''>2. <c'' e''>2. <cis'' g''>2.\ff <d'' fis''>4. ~ <d'' fis''>8
 << { fis''8\p fis'' e''8[ r e''] e''[ r e''] fis''4 f''8\rest f''4\rest f''8\rest } \\ { f'8\rest f'8\rest R2. R2. } >> R2. R2.
 << { b'2._\markup { \italic "cresc." } bes'4\f b'8\rest b'4\rest b'8\rest } \\ { R2. R2. } >> R2. R2.
 R2. <c'' c'''>4\f <c'' c'''>8 <c'' c'''>4 <c'' c'''>8 <b' b''>2. <a' a''>4 <a' a''>8 <a' a''>4 <a' a''>8
 <g' g''>4 <g' c''>8 <g' c''>4 <g' c''>8
 <a' c''>8 <a' c''> r <a' c''> <a' c''> r <g' b'>8 <g' b'> r <g' b'> <g' b'> r
 <a' c''>8 <a' c''> r <a' c''> <a' c''> r <g' b'>8 <g' b'> r <g' b'> <g' b'> r
 R2. << { d''4.\p( ~ d''4 a'8) g'4 } \\ { R2. g'4. } >> <g' b'>8. <d' g'>16 <d' g'>8 <a' c''>8. <d' a'>16 <d' a'>8
 <b' d''>4. ~ <b' d''>4. <d'' g''>8. <b' d''>16 <b' d''>8
 <b' d''>8. <g' b'>16 <g' b'>8 <g' b'>8( <a' c''>) <fis' a'>\staccato << { g'8 g'' g'' } \\ { g'8\f g' g' } >>
 <g' g''>8 <g' g''> <g' g''> <g' g''> <g' g''> <g' g''> <bes' bes''> <bes' bes''> <bes' bes''>
 << { ees''4 } \\ { ees''4 } >> r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { f''8\rest f''8\rest b'16_\markup { \italic "p cresc." }( c'' d''4\staccato) f''8\rest } \\ { R2. } >> R2. R2. R2. R2.
 <b' g''>2.\ff ~ <b' g''>4. <b' g''>8. <b' g''>16 <b' g''>8 <a' g''>2. ~ <a' g''>4. <a' g''>8. <a' g''>16 <a' g''>8
 R2. R2. <b' g''>2.\ff ~ <b' g''>4. <b' g''>8. <b' g''>16 <b' g''>8 <a' g''>2. ~ <a' g''>4. <a' g''>8. <a' g''>16 <a' g''>8
 R2. R2. << { d''4. ~ d''8. c''16 b'8 \appoggiatura b'32 c''4. ~ c''8. e'16 fis'8 g'4 } \\
 { d''4.\ff ~ d''8. c''16 b'8 \appoggiatura b'32 c''4. ~ c''8. c''16 c''8 b'4 } >> r8
 << { b'4 } \\ { b'4 } >> r8 << { d''4 } \\ { d''4 } >> r8 r8.
 << { d''16 d''8 d''4 b'8 \appoggiatura b'32 c''8. e'16 fis'8 g'4  } \\
 { d''16 d''8 d''4\sf b'8 \appoggiatura b'32 c''8. c''16 c''8 b'4 } >> r8 r8.
 << { d''16 d''8 d''4 b'8 \appoggiatura b'32 c''8. e'16 fis'8 g'8 } \\
 { d''16 d''8 d''4\sf b'8 \appoggiatura b'32 c''8. c''16 c''8 g'8\ff } >> r8 <g' g''> r r <g' g''>
 r8 r <g' g''> r r <g' g''> r r <g' g''> r r <g' g''> r r <g' g''> r r <g' g''> R2. R2.
 }

 r8 r <bes' bes''>\ff r r <bes' bes''> r r <bes' bes''> r r <bes' bes''> R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 <ees'' g''>2.\f ~ <ees'' g''>2. ~ <ees'' g''>2. ~ <ees'' g''>2.
 <f'' aes''>8.\ff <f'' aes''>16 <f'' aes''>8 <f'' aes''>8. <f'' aes''>16 <f'' aes''>8
 <f'' aes''>8. <f'' aes''>16 <f'' aes''>8 <f'' aes''>8. <f'' aes''>16 <f'' aes''>8
 <f'' aes''>2. ~ <f'' aes''>2. ~ <f'' aes''>2. ~ <f'' aes''>2. <d'' g''>8. <b' d''>16 <b' d''>8
 <b' d''>8. <b' d''>16 <b' d''>8 <b' d''>8. <b' d''>16 <b' d''>8 <b' d''>8. <b' d''>16 <b' d''>8
 <b' d''>2. ~ <b' d''>2. ~ <b' d''>2. ~ <b' d''>2. ~ <b' d''>4 r8 <g' g''>8.\sf <g' g''>16 <g' g''>8
 r4 r8 <aes' aes''>8.\sf <aes' aes''>16 <aes' aes''>8 r4 r8 <aes' aes''>8.\sf <aes' aes''>16 <aes' aes''>8
 R2. R2. R2. R2. r4 r8 r8 r8. <bes' bes''>16\p
 <bes' bes''>4. ~ <bes' bes''>8. <bes' aes''>16\staccato <bes' g''>8\staccato <bes' aes''>4 r8 <bes' g''>4 r8
 <bes' f''>4 r8 <bes' ees''>4 r8 R2. R2.
 << { f''4\rest f''8\rest f''8\rest f''8.\rest c''16\p c''4. ~ c''8. c''16 c''8 c''4 f''8\rest c''4 f''8\rest } \\ { R2. R2. R2. } >>
 <g'' bes''>4\p r8 <f'' aes''>4 r8 << { c''4 d''8\rest c''4 d''8\rest } \\ { R2. } >> <g'' bes''>4 r8 <f'' aes''>4 r8
 <e'' g''>8. <c'' c'''>16_\markup { \italic "cresc. poco a poco" } <c'' c'''>8
 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8
 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8
 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8
 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8
 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8 <c'' c'''>8. <c'' c'''>16 <c'' c'''>8
 <des'' des'''>8. <des'' ees''>16 <des'' ees''>8 <des'' ees''>8. <des'' ees''>16 <des'' ees''>8
 <des'' ees''>8. <des'' ees''>16 <des'' ees''>8 <des'' ees''>8. <des'' ees''>16 <des'' ees''>8
 <des'' ees''>8. <des'' ees''>16 <des'' ees''>8 <des'' ees''>8. <des'' ees''>16 <des'' ees''>8
 <des'' ees''>8. <des'' ees''>16 <des'' ees''>8 <des'' ees''>8. <des'' ees''>16 <des'' ees''>8
 << { ees''8. f''16 f''8 } \\ { ees''8. ees''16 ees''8 } >> <ees'' f''>8. <ees'' f''>16 <ees'' f''>8
 <ees'' f''>8. <ees'' f''>16 <ees'' f''>8 <ees'' f''>8. <ees'' f''>16 <ees'' f''>8
 <ees'' f''>8. <ees'' f''>16 <ees'' f''>8 <ees'' f''>8. <ees'' f''>16 <ees'' f''>8
 <ees'' f''>8. <ees'' f''>16 <ees'' f''>8 <ees'' f''>8. <ees'' f''>16 <ees'' f''>8
 << { f''4 } \\ { f''4\f } >> r8 <f' f''>8[ r16 <f' f''> <e'! e''!>8] <f' f''>4 r8 <f' f''>8[ r16 <f' f''> <fis' fis''>8]
 <g' g''>4 r8 <g' g''>8[ r16 <g' g''> <fis' fis''>8] <g' g''>4 r8 <g' g''>8[ r16 <g' g''> <g' g''>8]
 <aes' aes''>8\ff[ r16 <c'' c'''> <c'' c'''>8] <c'' c'''>8[ r16 <c'' c'''> <c'' c'''>8]
 <c'' c'''>8[ r16 <c'' c'''> <c'' c'''>8] <c'' c'''>8[ r16 <c'' c'''> <c'' c'''>8]
 <c'' c'''>8[ r16 <aes' aes''> <bes' bes''>8] <c'' c'''>8[ r16 <f' f''> <g' g''>8]
 << { aes''8[ s16 aes'16 bes'8] c''8[ s16 c'''16 c'''8] } \\ { aes'8[ a'16\rest aes'16 bes'8] c''8[ s16 c''16 c''8] } >>
 <c'' c'''>8[ r16 <c'' c'''>16 <c'' c'''>8] <c'' c'''>8[ r16 <c'' c'''>16 <c'' c'''>8]
 <c'' c'''>8[ r16 <c'' c'''>16 <c'' c'''>8] <c'' c'''>8[ r16 <c'' c'''>16 <c'' c'''>8]
 << { c'''8[ s16 ees''16 f''8] g''8[ s16 c''16 d''8] ees''8[ s16 ees''16 f''8] g''8[ s16 g''16 g''8]
 f''8[ s16 f''16 e''!8] f''8[ s16 f''16 e''8]  f''8[ s16 f''16 e''8] f''8[ s16 f''16 e''8] f''8[ s16 f''16 g''8] aes''4 } \\
 { c''8[ d''16\rest ees''16 f''8] g''8[ c''16\rest c''16 d''8] ees''8[ e''16\rest ees''16 f''8] g''8[ g''16\rest g''16 g''8]
 f''8[ f''16\rest f''16 e''8] f''8[ f''16\rest f''16 e''8] f''8[ f''16\rest f''16 e''8] f''8[ f''16\rest f''16 e''8]
 f''8[ b'16\rest f'16 g'8] aes'4 } >> r8 r8. << { d''16 ees''8 f''4 } \\ { d''16 ees''8 f''4 } >> r8
 r8. << { b'!16 c''8 d''4 } \\ { b'16 c''8 d''4 } >> r8 r8. << { d''16 ees''8 f''4 } \\ { d''16 ees''8 f''4 } >> r8 R2. R2. R2.
 R2. << { f''8.\rest e''!16 f''8 g''8[ f''16\rest e'' f''8] g''8[ f''16\rest e'' f''8] g''8[ f''16\rest e'' f''8] } \\ { R2. R2. } >>
 <g' g''>8._\markup { \italic "piu f" } <g' g''>16 <g' g''>8 <g' g''>8. <g' g''>16 <g' g''>8
 <g' g''>8. <g' g''>16 <g' g''>8 <g' g''>8. <g' g''>16 <g' g''>8
 <g' g''>8. <g' g''>16 <g' g''>8 <g' g''>8. <g' g''>16 <g' g''>8
 <g' g''>8. <g' g''>16 <g' g''>8 <g' g''>8. <g' g''>16 <g' g''>8
 <g' g''>4\ff r8 r4 r8 r4 r8 r8 r8. <g' g''>16 <g' g''>4 r8 r4 r8 r4 r8 r8 r8. <g' g''>16
 <g' g''>4 r8 r4 r8 r4 r8 r8 r8. <c'' e''>16
 <c'' e''>4 r16 <c'' e''> <c'' e''>4 r16 <b' d''> <c'' e''>4 r16 <f'' a''> <f'' a''>4 r16 <f'' a''> <f'' a''>4 r8 r4 r8
 r4 r8 r4 <g' g''>8\staccato <a' a''>8\sf( <g' g''>) <e' e''>\staccato <c' c''>4 r16 <e'' g''> <f'' a''>4 r8 r4 r8
 r4 r8 r8 r8 <g' g''>8\staccato <a' a''>8\sf( <g' g''>) <e' e''>\staccato <c' c''>4 r16 <c'' e''>16
 <b' d''>4 r8 r8 r8. <c'' e''>16 <b' d''>4 r8 r8 r8. <c'' e''>16 <b' d''>4 r8 r8 r8. <c'' e''>16 <b' d''>4 r8 r8 r8. <c'' e''>16
 <c'' e''>4 r8 r8 r8. <cis'' e''>16 <d'' f''>4 r16 <d'' f''> <d'' f''>4 r16 <d'' f''>
 <d'' f''>4 r16 <d'' f''> <d'' f''>4 r16 <d'' b''> <d'' b''>4.^\fermata r8 r8. <bes' e''>16\p <bes' e''>4.^\fermata r4 r8 R2. R2.
 << { a''4.\p ~ a''8. g''16\staccato f''8\staccato e''8. d''16 c''8 bes'8. a'16 g'8
 f'4 d''8\rest d''4\rest d''8\rest } \\ { R2. R2. R2. } >> R2.
 << { aes''4. ~ aes''8. f''16 e''8 f''8. c''16 aes'8 f'4 b'8\rest } \\ { R2. R2. } >> R2. R2. R2.
 << { f''4\rest f''8\rest f''4\rest c''8\p c''4 c''8 c''8. f''16\staccato aes''8\staccato
 aes''8( g'') ees''8\staccato c''4 f''8\rest f''4\rest f''8\rest f''4\rest g''8
 bes''8( aes'') f''8\staccato c''4 f''8\rest } \\ { R2. R2. R2. R2. R2. } >> R2. R2. R2. R2.
 <b'! d''>2._\markup { \italic "cresc." } <c'' ees''>2. <fis' ees''>2.\ff
 <g' d''>4. ~ <g' d''>8 <g' d''> <g' d''> <aes' c''>8 r <c'' f''> <c'' f''> r <c'' f''> <b'! d''>4\p r8 r4 r8 R2.
 << { b'8\rest b'8\rest g'8\p g'8. b'16\staccato d''8\staccato
 \appoggiatura c''32 ees''4\staccato ees''8\staccato ees''8.\staccato d''16\staccato c''8\staccato
 g'4( g''8 g''4 f''8) e''4 e''8 e''4 e''8 } \\ { R2. R2. c'8\rest c'8\rest g'8_\markup { \italic "cresc." }
 g'8. b'16\staccato d''8\staccato e''4\f e''8 e''4 e''8 } >> <g' d''>2. <g' c''>4 <g' c''>8 <g' c''>4 <g' c''>8 <g' b'>2.
 << { a'4 } \\ { a'4 } >> <a' d''>8 <a' d''>4 <a' c''>8
 <g' b'>8 <g' b'> r <d'' f''> <d'' f''> r <c'' e''> <c'' e''> r <e'' c'''> <e'' c'''> r
 <d'' b''> <d'' b''> r <d'' f''> <d'' f''> r <c'' e''> <c'' e''> r <e'' c'''> <e'' c'''> r R2.
 << { g''4.\p( ~ g''4 d''8) c''4. } \\ { R2. c''4._\markup { \italic "dolce" } } >>
 <c'' e''>8. <g' c''>16 <g' c''>8 <d'' f''>8. <g' d''>16 <g' d''>8 <e'' g''>4. ~ <e'' g''>4.
 <g'' c'''>8. <e'' g''>16 <e'' g''>8 <e'' g''>8. <c'' e''>16 <c'' e''>8 <c'' e''>8( <d'' f''>) <b' d''>8\staccato
 << { c''8 c''' c''' c''' c''' c''' } \\ { c''8\ff c'' c'' c'' c'' c'' } >>
 <c'' c'''>8 <c'' c'''> <c'' c'''> <c'' c'''> <g' g''> <g' g''> <aes' aes''>4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. r8 r8 << { g''16( a'' b''4\staccato) } \\ { g''16_\markup { \italic "cresc." } a'' b''4 } >> r8 R2.
 r4 r8 r8 r8 << { c''16( d'') } \\ { c''16_\markup { \italic "cresc." }( d'') } >>
 <c'' e''>2. ~ <c'' e''>4. <c'' e''>8. <c'' e''>16 <c'' e''>8 <c'' d''>2. ~ <c'' d''>4. <c'' d''>8. <c'' d''>16 <c'' d''>8
 << { des''4.\pp( aes'4. b'!4._\markup { \italic "cresc." } g''4.) } \\ { R2. R2. } >>
 <c'' e''>2.\ff ~ <c'' e''>4. <c'' e''>8. <c'' e''>16 <c'' e''>8 <c'' d''>2. ~ <c'' d''>4. <c'' d''>8. <c'' d''>16 <c'' d''>8
 R2. << { g''4.\p( b'4_\markup { \italic "cresc." } g''8) g''4. ~ g''8. f''16\staccato e''8\staccato
 \appoggiatura e''32 f''4. ~ f''8. f''16\staccato f''8\staccato e''4 } \\
 { R2. g''4.\ff ~ g''8. f''16 e''8 f''4.\sf ~ f''8. a'16 b'8 c''4 } >> r8 << { e''4 } \\ { e''4 } >> r8
 << { g''4 } \\ { g''4 } >> r8 r8.
 << { g''16 g''8 g''4 e''8 \appoggiatura e''32 f''8. f''16\staccato f''8\staccato e''4 } \\
 { g''16 g''8 g''4\sf e''8 f''8. a'16 b'8 c''4 } >> r8 r8.
 << { g''16 g''8 g''4 e''8 \appoggiatura e''32 f''8. f''16\staccato f''8\staccato } \\
 { g''16 g''8 g''4\sf e''8 f''8. a'16 b'8 } >> <c'' e''>8\ff r <c'' c'''> r r <c'' c'''>
 r8 r <c'' c'''> r r <c'' c'''> r r <c'' c'''> r r <c'' c'''> r r <c'' c'''> r r <c'' c'''> R2. R2.
 << { d''8\rest d''8\rest ces''8\p d''4\rest d''8\rest } \\ { R2. } >> R2. R2. R2. R2. R2. R2.
 <ees' g'>8.\pp <ees' g'>16 <ees' g'>8 <ees' g'>8. <ees' g'>16 <ees' g'>8 <ees' c''>2. ~ <ees' c''>2.
 <eis' c''>2._\markup { \italic "sempre pp" } <c'' e''>4. ~ <c'' e''>8.( <g' d''>16 <e' c''>8)
 <g' g''>2. ~ <g' g''>2. ~ <g' g''>2. ~ <g' g''>2. ~ <g' g''>2. ~ <g' g''>2. ~ <g' g''>2. ~ <g' g''>2. ~
 <g' g''>4_\markup { \italic "cresc." } <g' g''>8\staccato <g' g''>4. ~ <g' g''>2. ~ <g' g''>4 <g' g''>8\staccato <g' g''>4. ~
 <g' g''>2. ~ <g' g''>4 <g' g''>8\staccato( <g' g''>4\staccato <g' g''>8\staccato)
 <g' g''>4\staccato( <g' g''>8\staccato <g' g''>4\staccato <g' g''>8\staccato)
 <g' g''>4\staccato( <g' g''>8\staccato <g' g''>4\staccato <g' g''>8\staccato)
 <g' g''>4\staccato( <g' g''>8\staccato <g' g''>4\staccato <g' g''>8\staccato) <g' g''>2.:8
 <g' g''>2.:8 <g' g''>2.:8 <g' g''>2.:8 <g' g''>2.:8_\markup { \italic "piu cresc." } <g' g''>2.:8
 <e'' g''>8.\ff <e'' g''>16 <e'' g''>8 <e'' g''>8. <e'' g''>16 <e'' g''>8
 <e'' g''>8. <e'' g''>16 <e'' g''>8 <c'' g''>8. <c'' g''>16 <c'' g''>8
 <c'' a''>8. <c'' a''>16 <c'' a''>8 <f'' a''>8. <f'' a''>16 <f'' a''>8
 <f'' a''>8. <f'' a''>16 <f'' a''>8 <f'' a''>8. <f'' a''>16 <f'' a''>8 <e'' g''>2. <e'' g''>2. <e'' g''>2.
 <e'' g''>4. <c'' c'''>4.( <a' a''>4. <g' g''>4.) <fis' fis''>8[ r16 <d'' a''>16 <d'' a''>8] <d'' a''>4 r8
 r8. <d'' a''>16 <d'' a''>8 <d'' a''>4 r8 r8. <d'' g''>16 <d'' g''>8 <d'' g''>4 r8 r8. <d'' g''>16 <d'' g''>8 <d'' g''>4 r8
 r8. <e'' g''>16 <c'' g''>8 <c'' a''>4 r8 r8. <e'' g''>16 <e'' g''>8 <d'' f''>4 r8
 <c'' e''>8[ r16 <f'' a''> <f'' a''>8] <f'' a''>8[ r16 <e'' g''> <e'' g''>8] <e'' g''>8[ r16 <d'' f''> <d'' f''>8] <d'' f''>8[ r16 <c'' e''> <c'' e''>8]
 <c'' e''>8[ r16 <f'' a''> <f'' a''>8] <f'' a''>8[ r16 <e'' g''> <e'' g''>8] <e'' g''>8[ r16 <b' d''> <b' d''>8] <b' d''>8[ r16 <c'' e''> <c'' e''>8]
 <e'' g''>4.\ff ~ <e'' g''>8. <d'' f''>16\staccato <c'' e''>8\staccato <b' d''>8[ r16 <b' d''> <b' d''>8] <b' d''>8[ r16 <e'' g''> <e'' g''>8]
 <e'' g''>4.\ff ~ <e'' g''>8. <d'' f''>16\staccato <c'' e''>8\staccato <b' d''>8[ r16 <b' d''> <b' d''>8] <b' d''>8[ r16 <e'' g''> <e'' g''>8]
 <e'' g''>8[ r16 <e'' c'''> <e'' c'''>8] <e'' c'''>8[ r16 <e'' c'''> <e'' c'''>8]
 <e'' c'''>8[ r16 <e'' c'''> <e'' c'''>8] <e'' c'''>8[ r16 <e'' c'''> <e'' c'''>8] <e'' c'''>4 r8 r4 r8
 << { g''4 } \\ { g''4 } >> r8 r4 r8 << { e''4 } \\ { e''4 } >> r8 r4 r8 \bar "|."
}