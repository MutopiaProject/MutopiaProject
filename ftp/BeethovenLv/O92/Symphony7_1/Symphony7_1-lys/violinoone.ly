\version "2.10.0"

 violinoone = {
 \set Staff.instrumentName = "Violino I"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key a \major
 \time 4/4
 <a e' cis'' a''>4\f\staccato r4 r2 R1 <e' b' e''>4\f\staccato r r2 R1
 <a e' cis'' a''>4\f\staccato r4 r2 R1 <d' a' a''>4\f\staccato r a'4\p r b' r c'' r
 c''4_\markup { \italic "dimin." } r4 r a'16 a' a' a'
 e'16\pp\staccato b\staccato cis'!\staccato d'\staccato e'\staccato fis'\staccato gis'\staccato a'\staccato
 b'\staccato cis''\staccato d''\staccato e''\staccato fis''\staccato gis''\staccato a''\staccato b''\staccato cis'''4 r r2
 cis'16\staccato cis'\staccato d'\staccato e'\staccato fis'\staccato gis'\staccato a'\staccato b'\staccato
 cis''\staccato d''\staccato e''\staccato fis''\staccato gis''\staccato a''\staccato b''\staccato cis'''\staccato d'''4 r r2
 d'16_\markup { \italic "cresc." } d' e' fis' gis' a' b' cis'' d'' e'' fis'' gis'' a'' b'' cis''' d''' <a' cis'''>4\ff r r2
 a16 e' fis' gis' a' b' cis'' d'' e'' fis'' gis'' a'' b'' cis''' d''' e'''
 << { e'''2 } \\ { e''4\ff s4 } >> b''2\sf e''\sf e'''\sf d'''4 r r2 d'16 d' e' f' g' a' b' c'' d'' e'' f'' g'' a'' b'' c''' d'''
 << { d'''2 } \\ { <g d' d''>4\ff s4 } >> g''2\sf c''2_\markup { \italic "dimin." } c''' b''4\p r r2 R1
 g''1\p ~ g''4 r4 r \afterGrace g''4^\trill { f''16[ g''] } a''4 r4 r a''8^\trill( b''16 c''') c'''8( g'') r4 r f''16( d'' b' g')
 f'2\pp( g'16 f' e' f' g'8 f') e'4( g'8) r16 g'16 c''4( g'8) r16 g'16 f'2( g'16 f' e' f' g'8 f')
 e'4( g'8) r16 g'16 c''4_\markup { \italic "cresc." }( gis'!8) r16 gis'16 c''4( a'8) r16 a' d''4( b'8) r16 b'
 << { e''2 } \\ { <e' b'>4\ff s4 } >> b'2\sf e'\sf e''\sf << { fis''2 } \\ { <fis' cis''>4\ff s4 } >> cis''2\sf fis'\sf fis''\sf
 << { g''2 } \\ { <e' b'>4\ff s4 } >> e''2\sf g'\sf g''\sf << { g''2 } \\ { <g e' c''>4\ff s4 } >> e''2\sf
 c''2_\markup { \italic "dimin." } g'' bes'4\p r r2 R1 c'''1\p ~ c'''4 r r \afterGrace c'''4^\trill { bes''16[ c'''] }
 d'''4 r r d''8^\trill( e''16 f'') f''8( c'') r4 r bes''16( g'' e'' c'')
 bes'2\pp( c''16 bes' a' bes' c''8 bes') a'4_\markup { \italic "cresc." }( c''8) r16 c'' f''4( c''8) r16 c''
 a'4( c''8) r16 c'' a''4( c''8) r16 c'' a'4( c''8) r16 c'' a''4( c''8) r16 c'' c''4( a''8) r16 a'' c'''4( a''8) r16 a''
 e'''8\ff r r4 \new Voice { \stemDown e'''16\fp[ \stemUp e'16 e' e'] } e'4:16 e'8 r r4 r2
 r2 \new Voice { \stemDown e'''16\fp[ \stemUp e'16 e' e'] } e'4:16 e'8 r r4 r2
 r2 r16 e''[ e'' e''] e''4:16 e''4 r r8 e''[ e'' e''] e''4 r r2 e''4 r r2 r4 r8. e''16 e''4 r r4 r8. e''16 e''4 r

 \time 6/8
 \repeat volta 2 {
 R2. R2. R2. r4 r8 r8 r8. a16\p a4 r8 r4 r8 r4 r8 r8 r8. a16 a4 r8 r4 r8 r4 r8 r8 r8. a16
 a4 r8 r4 r8 r4 r8 r8 r8. a16 a8 r cis' e'8 r e' a4 r8 r4 r8 r4 r8 r8 r8. a16 a4 r8 r4 e'8 fis'\sf( e') cis'\staccato a4 r8
 r4 r8 r8 r8. a16 a4 r8 r4 e'8 fis'8\sf( e') cis'\staccato a4 r8 r4 r8 r8 r8. <e' e''>16
 <e' e''>4.\f\> ~ <e' e''>4\!\p r8 r4 r8 r8 r8. <e' e''>16 <e' e''>4.\f ~ <e' e''>8. cis''16\staccato a'8\staccato
 <e' e''>4.\sf ~ <e' e''>8. cis''16\staccato ais'8\staccato
 e''8\sf[ r16 d''16 b'8] gis''8\sf[ r16 e'' d''8] b''8\sf[ r16 gis'' e''8] d'''8\sf[ r16 b''16 gis''8]
 d'''4.^\fermata e''16\ff( fis'' gis'' a'' \times 2/3 { b''16[ cis''' d''']) }
 e'''4.\sf ~ e'''8._\markup { \italic "sempre ff" } d'''16\staccato cis'''8\staccato
 \appoggiatura cis'''32 d'''4. ~ d'''8. fis''16\staccato gis''8\staccato
 a''4 a''8 a''8. b''16\staccato cis'''8\staccato cis'''8( b''4) ~ b''8. cis'''16\staccato d'''8\staccato
 \appoggiatura dis'''32 e'''4. ~ e'''8. d'''16\staccato cis'''8\staccato
 \appoggiatura cis'''32 d'''4. ~ d'''8. fis''16\staccato gis''8\staccato a''4 a''8\staccato a''8( cis''') b''\staccato
 a''4 r8 r4 a''8
 a''4 a''8 a''8. d'''16\staccato fis'''8\staccato fis'''8( e''') cis'''\staccato a''4 a''8
 a''8. d'''16\staccato a''8\staccato a''8. d'''16\staccato fis'''8\staccato fis'''8( e''') cis'''\staccato a''4 e''8\p
 fis''8_\markup { \italic "cresc." }( e'') cis''\staccato a'4 e''8 g''8( fis'') d''\staccato a'4 fis''8
 a''8( gis''!) d''\staccato b'4 gis''8 b''8( a'') e''\staccato cis''4 e''8 fis''8( e'') cis''\staccato fis''( e'') cis''\staccato
 g''( fis'') d''\staccato g''( fis'') d''\staccato a''( gis''!) e''\staccato a''( gis'') e''\staccato
 b''( a'') e''\staccato d'''( cis''') a''\staccato e'''4.\ff ~ e'''8. dis'''16 cis'''8
 \appoggiatura cis'''16 dis'''4. ~ dis'''8 a'8\p\staccato[ b'\staccato]
 cis''4 cis''8 cis''8.\staccato dis''16\staccato cis''8 bis'4 gis'8 gis'8. bis'16\staccato dis''8\staccato
 \appoggiatura cis''16 e''4 e''8 e''8. dis''16\staccato cis''8\staccato bis'4 gis'8 gis'8. bis'16\staccato dis''8\staccato
 e''4_\markup { \italic "cresc." } e''8 gis''4 gis''8 g''4\f r8 r4 r8 R2. r8 r ees''8\p e''8. g''16 bes''8
 b''!4_\markup { \italic "cresc." } b''8 e'''!4 e'''8 e'''8\f( dis'''4) ~ dis'''4 a''8 gis''4 gis''8 cis'''4 cis'''8
 cis'''8\sf( b''4) ~ b''4 fis''8 e''4 e''8 <a' a''>4 <a' a''>8
 <a' a''>4\staccato r8 <a' a''>4\staccato r8 <b' gis''>4\staccato r8 <gis'' e'''>4\staccato r8
 <fis'' dis'''>4\staccato r8 <a' a''>4\staccato r8 <b' gis''>4\staccato r8 <e'' e'''>4\staccato r8
 cis'4.( ~ cis'4 c'8) b4.\p( ~ b4 cis'!16 dis') e'4 r8 r4 r8 R2. e'4._\markup { \italic "dolce" }( gis'4. b'4. b4.)
 <e' b' e''>4.\f gis''8. e''16 e''8 a''8. fis''16 fis''8 b''8. b''16 b''8 c'''8. c'''16 g''8 e''8. e''16 c''8
 g'8. g'16 e'8 c'8. c'16 g8 c'4 r8 r8. g16_\markup { \italic "dimin." } g8 c'4 r8 r8. g16 g8 c'4\p r8 r4 r8 c'4\pp r8 r4 r8
 a''4.\pp ~ a''8.( g''16 fis''8) a''4. ~ a''8.( g''16 fis''8) a''4. ~ a''8.( g''16 fis''8) a''4. ~ a''8.( g''16 fis''8)
 a''4._\markup { \italic "cresc. poco a poco" } ~ a''8.( gis''!16 fis''8)
 b''4. ~ b''8.( a''16 gis''8) cis'''4. ~ cis'''8.( b''16 a''8) dis'''4. ~ dis'''8.( cis'''16 b''8)
 e'''4. ~ e'''8.( dis'''16 cis'''8) fis'''4. ~ fis'''8.( e'''16 dis'''8) gis'''2.:16\ff gis'''2.:16 fis'''2.:16 fis'''2.:16 f'2.:16\pp
 \new Voice { \stemUp dis'16_\markup { \italic "cresc." }[ \stemDown b''16 b'' b'' b'' b''] } b'' b'' cis''' dis''' e''' fis'''
 gis'''2.:16\ff gis'''2.:16 fis'''2.:16 fis'''2.:16
 f'''4.\pp( c'''4. dis''4._\markup { \italic "cresc." } b''4) b''8\staccato
 b''4.\ff ~ b''8. a''16\staccato gis''8\staccato \appoggiatura gis''32 a''4.\sf ~ a''8. cis''16\staccato dis''8\staccato
 e''4 r8 <b' gis''>4 r8 <b' b''>4 r8 r8. b''16 b''8
 b''4\sf gis''8 \appoggiatura gis''32 a''8. cis''16\staccato dis''8\staccato e''4 r8 r8. b''16 b''8
 b''4\sf gis''8 \appoggiatura gis''32 a''8. cis''16\staccato dis''8\staccato
 \appoggiatura dis''32 e''4\ff\staccato r8 \appoggiatura e''32 fis''4\staccato r8
 \appoggiatura fis''32 gis''4\staccato r8 \appoggiatura gis''32 a''4\staccato r8
 \appoggiatura a''32 b''4\staccato r8 \appoggiatura b''32 cis'''4\staccato r8
 \appoggiatura cis'''32 d'''4\staccato r8 dis'''4\staccato r8 R2. R2.
 }

 \appoggiatura dis''32 e''4\ff\staccato r8 \appoggiatura e''32 f''4\staccato r8
 \appoggiatura f''32 fis''4\staccato r8 \appoggiatura fis''32 g''4\staccato r8 R2. R2.
 g'8.\pp g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8
 g'2. ~ g'2. g'4. ~ g'8. f'16\staccato e'8\staccato f'8.\staccato g'16\staccato a'8\staccato
 b'8.\staccato c''16\staccato d''8\staccato e''8. f''16 g''8 a''8. b''16 c'''8 d'''8. c'''16 b''8 a''8. g''16 f''8
 e''8. d''16 c''8 c''4 r8 b'8. a'16 g'8 g'4 r8 g'8. g''16 g''8 g''4 r8 r8. g''16 g''8 g''4 r8
 g''8._\markup { \italic "cresc." } g''16 g''8 g''8. g''16 g''8 g''8. g''16 g''8 g''8. g''16 g''8
 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8
 b''8. b''16 b''8 b''8. b''16 b''8 b''8. b''16 b''8 b''8. b''16 b''8 c'''8.\f c'''16\staccato g''8\staccato g''4. ~
 g''8. g''16\staccato e''8 e''4. ~ e''8. e''16 c''8 ~ c''8. c''16 g'8 ~ g'8. g'16 e'8 ~ e'8. e'16 c'8 b4\ff r8 r4 r8 R2.
 \new Voice { \stemUp b8.[ \stemDown f''16 d''8] } d''4. ~ d''8. d'''16 b''8 b''4. ~ b''8. g''16 f''8 ~ f''8. f''16 d''8 ~
 d''8. d''16 b'8 ~ b'8. g'16 f'8 <e' b' e''>4 r8 r4 r8 R2. <e' b' e''>8. e'''16 b''8 b''4. ~ b''8. b''16 gis''8 gis''4. ~
 gis''8. gis''16 e''8 ~ e''8. e''16 b'8 ~ b'8. b'16 gis'8 ~ gis'8. gis'16 e'8 e'8.\ff e'16 e'8 r4 r8
 cis'8.\sf cis'16 cis'8 r4 r8 cis'8.\sf cis'16 cis'8 r4 r8 R2. R2. R2. r8. d''16\pp e''8 f''8[ r16 a' b'8] c''4 r8 r4 r8 R2.
 r8. a'16 b'8 c''8[ r16 e' fis'!8]
 g'4 r8 r4 r8 R2. r8. e''16 fis''!8 g''8[ r16 bes' c''8] d''4 r8 r4 r8 R2. r8. b'16 cis''!8 d''8[ r16 f' g'8] a'4 r8 r4 r8
 r8. b'16 cis''!8 d''8[ r16 f' g'8] a'4 r8 r4 r8 R2. R2.
 d''8_\markup { \italic "cresc. poco a poco" }[ r16 d'' e''8] f''8[ r16 e'' f''8] g''8[ r16 f'' g''8] a''8[ r16 g'' a''8]
 bes''2. ~ bes''2. ~ bes''8[ r16 e'' f''8] g''8[ r16 f'' g''8] a''8[ r16 g'' a''8] bes''8[ r16 a'' bes''8]
 c'''2. ~ c'''2. ~ c'''8\f[ r16 fis''!16 g''8] a''8[ r16 g'' a''8] bes''8[ r16 a'' bes''8] c'''8[ r16 bes'' c'''8]
 d'''2. ~ d'''2. ~ d'''8.\f[ d''16 cis''!8] d''4 r8 d''8[ r16 d'' cis''8] d''4 r8 e''8[ r16 e'' dis''8] e''4 r8
 e''8[ r16 e'' dis''8] e''4 r8 f''8\ff[ r16 f'' e''8] f''8[ r16 f'' e''8]
 f''8[ r16 f''16 e''8] f''8[ r16 f''16 e''8] f''8. e''16 d''8 d''4. ~ d''4 r8 r4 r8
 e''8[ r16 e''16 dis''8] e''8[ r16 e''16 dis''8] e''8[ r16 e''16 dis''8] e''8[ r16 e''16 dis''8]
 e''8. d''16 c''8 c''4. ~ c''4 r8 r4 r8
 d''8[ r16 d''16 cis''!8] d''8[ r16 d''16 cis''8] d''8[ r16 d''16 cis''8] d''8[ r16 d''16 cis''8]
 d''4 r8 r8. b''16 c'''8 d'''4 r8 r8. gis''!16 a''8 b''4 r8 r8. d''16 e''8 f''4 r8 r8. gis'!16 a'8
 b'8[ r16 gis'16 a'8] b'8[ r16 a'16 b'8] c''8[ r16 a'16 b'8]
 c''8[ r16 b'16 cis''8] d''8[ r16 b'16 cis''8] d''8[ r16 cis''16 dis''8]
 e''8[ r16 cis'' dis''8] e''8[ r16 cis'' dis''8] e''8[ r16 cis'' d''8] e''8[ r16 cis'' d''8]
 e''8[ r16 cis'' d''8] e''8[ r16 cis'' d''8] e''4 r8 r4 r8
 r4 r8 e'16_\markup { \italic "piu f" }( fis' gis' a' \times 2/3 { b'16[ cis'' d'']) } e''4 r8 r4 r8
 r4 r8 e'16( fis' gis' a' \times 2/3 { b'16[ cis'' d'']) }
 e''4.\ff ~ e''8. d''16 cis''8 \appoggiatura cis''32 d''4. ~ d''8. fis'16 gis'8 a'4 a'8 a'8. b'16 cis''8
 cis''8( b'4) ~ b'8. cis''16 d''8 \appoggiatura dis''32 e''4. ~ e''8. d''16 cis''8
 \appoggiatura cis''32 d''4. ~ d''8. fis'16 gis'8 a'4 a'8 a'8( cis'') b'\staccato a'4 r8 r4 a'8
 a'4 a'8 a'8. d''16 fis''8 fis''8( e'') cis''\staccato a'4 r8 r4 r8 r8 r8 a'8 a'8. d''16 a'8 a'8. d''16 fis''8
 fis''8( e'') cis''\staccato a'4 r8 r4 r8 r8 r8 cis''8 b'4 e'8 e'8. cis''16 a'8
 e''4. ~ e''4 cis''8 b'4 e'8 e'8. cis''16 a'8 e''4. ~ e''8. cis''16 a'8
 e''4. ~ e''8. cis''16 ais'8 e''8[ r16 d''! b'8] gis''8[ r16 e'' d''8] b''8[ r16 gis'' e''8] d'''8[ r16 b'' gis''8]
 d'''4.^\fermata r4 r8 <a g'>4^\markup { "pizz." } r8^\fermata r4 r8
 a''8.\p^\markup { "arco" } a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8
 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8
 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8 a''8. a''16 a''8 bes''8. bes'16 bes'8
 bes'2.\pp( a'2. d''2. c''2. f''2.) e''2. ~ e''2._\markup { \italic "pp sempre" } f''2. gis''!2. a''4. ~ a''4 e''8
 f''8_\markup { \italic "cresc." }( e'') c''\staccato f''8( e'') c''\staccato g''( f'') d''\staccato g''( f'') d''\staccato
 a''( gis''!) e''\staccato a''( gis'') e''\staccato b''( a'') e''\staccato d'''( c''') a''\staccato
 c'''4.\ff ~ c'''8. b''16 a''8 \appoggiatura a''32 b''4. ~ b''8 f'8\staccato g'\staccato
 a'4 a'8 a'8. b'16 a'8 gis'!4\p e'8 e'8. gis'16\staccato b'8\staccato
 \appoggiatura a'32 c''4\staccato c''8\staccato c''8.\staccato b'16\staccato a'8\staccato
 gis'8 r e'' r r e'' r r e'' r r e''
 r8 r e''8_\markup { \italic "cresc." } e''8.\staccato gis''16\staccato b''8\staccato cis'''!4\ff cis'''8 fis'''4 fis'''8
 fis'''8( e'''4) ~ e'''4. a''4 a''8 d'''4 d'''8 d'''8( cis'''4) ~ cis'''4. fis''4 fis''8 b''4 a''8
 <b' gis''>4 r8 <e'' d'''>4 r8 <e'' cis'''>4 r8 <e' cis'' a''>4 r8
 <e' b' gis''>4 r8 <e'' d'''>4 r8 <e'' cis'''>4 r8 <e' cis'' a''>4 r8
 fis'4.\sf( ~ fis'4 f'8) e'4.\p( ~ e'4 fis'!16 gis') a'4 r8 r4 r8 R2. a'4._\markup { \italic "dolce" }( cis''4. e''4. e'4.)
 <a' a''>4.\ff cis'''8. a''16 a''8
 d'''8. b''16 b''8 e'''8. e'''16 e'''8 f'''8. f'''16 c'''8 a''8. a''16 f''8 c''8. c''16 a'8 f'8. f'16 c'8
 f'4 r8 r8. c'16_\markup { \italic "dimin." } c'8 f'4 r8 r8. c'16 c'8 f'4\p r8 r4 r8 f'4\pp r8 r4 r8
 d''4.\pp ~ d''8.( c''16 b'8) d''4. ~ d''8.( c''16 b'8) d''4. ~ d''8.( c''16 b'8) d''4. ~ d''8.( c''16 b'8)
 d''4._\markup { \italic "cresc. poco a poco" } ~ d''8.( cis''!16 b'8) e''4. ~ e''8.( d''16 cis''8)
 fis''!4. ~ fis''8.( e''16 d''8) gis''4. ~ gis''8.( fis''16 e''8) a''4. ~ a''8.( gis''16 fis''8)
 b''4. ~ b''8.( a''16 gis''8) cis'''2.:16\ff cis'''2.:16 b''2.:16 b''2.:16 bes2.:16\pp
 gis16 e'_\markup { \italic "cresc." } e''16[ e'' e'' e''] e'' e'' fis'' gis'' a'' b''! cis'''2.:16\ff
 cis'''2.:16 b''2.:16 b''2.:16 bes''4.\pp( f''4. gis'4._\markup { \italic "cresc." }) e''4( e'''8)
 e'''4.\ff ~ e'''8. d'''16\staccato cis'''8\staccato \appoggiatura cis'''32 d'''4. ~ d'''8. fis''16\staccato gis''8\staccato
 <a' a''>4 r8 <a' cis'''>4 r8 e'''4 r8 r8. e'''16 e'''8
 e'''4\sf^\markup { \italic "ten." } cis'''8 \appoggiatura cis'''32 d'''8. fis''16\staccato gis''8\staccato <a' a''>4 r8 r8.
 e'''16 e'''8 e'''4\sf cis'''8 \appoggiatura cis'''32 d'''8. fis''16\staccato gis''8\staccato
 \appoggiatura gis''32 a''4\ff r8 \appoggiatura a'32 b'4 r8 \appoggiatura b'32 cis''4 r8 \appoggiatura cis''32 d''4 r8
 \appoggiatura d''32 e''4 r8 \appoggiatura e''32 fis''4 r8
 \appoggiatura fis''32 gis''4 r8 \appoggiatura gis''32 a''4 r8 R2. R2.
 \appoggiatura g''32 aes''4\p r8 r4 r8 R2. R2. R2. R2. ees''4.\pp ~ ees''8.( des''16 c''8) R2.
 e''!4.\pp_\markup { \italic "sempre p" } ~ e''8.( d''!16 c''8) R2. a''4. ~ a''8.( g''16 f''8)
 R2. r4 r8 r4 e''8\pp e''2. ~ e''4.( a''4 e''8) e''2. ~ e''4.\<( cis'''4\!\> a''8\!) e''2. ~ e''4( a''8) a''4( e''8)
 e''2. ~ e''4\<( cis'''8\!) cis'''8\>( b'') a''\staccato\!
 r8 r8 e''8\staccato_\markup { \italic "cresc." } e''4. ~ e''4 a''8\staccato e''4.
 r8 r8 e''8\staccato e''4. ~ e''4 cis'''8\staccato a''4.
 e''4\staccato( e''8\staccato e''4\staccato e''8\staccato) e''4\staccato( a''8\staccato e''4\staccato e''8\staccato)
 e''4\staccato( e''8\staccato e''4\staccato e''8\staccato) e''4\staccato( cis'''8\staccato a''4\staccato a''8\staccato)
 e''8 e'' e'' e'' e'' e'' e''8 a'' a'' a'' e'' e'' e'' e'' e'' e'' e'' e'' e'' cis''' cis''' cis''' a'' a''
 e''4.:16_\markup { \italic "piu cresc." } e''16 e''' e''' e''' e''' e''' e'''4.:16 e'''4.:16
 e'''8.\ff e''16 e''8 a''8. a''16 a''8 cis'''8. cis'''16 cis'''8 e'''8. e'''16 e'''8
 fis''8. fis''16 fis''8 a''8. a''16 a''8 d'''8. d'''16 d'''8 fis'''8. fis'''16 fis'''8
 e'''8. a'''16\staccato e'''8 e'''4. ~ e'''8. e'''16\staccato cis'''8 cis'''4. ~ cis'''8. cis'''16 a''8 ~ a''8. a''16 e''8 ~
 e''8. e''16 cis''8 ~ cis''8. cis''16 a'8 ~ a'8. a'16 fis'8 ~ fis'8. fis'16 e'8
 dis'4 r8 r8. dis'16 dis'8 dis'4 r8 r8. dis'16 dis'8
 d'!4 r8 r8. d'16 d'8 d'4 r8 r8. d'16 d'8 cis'4 r8 r8. d'16 d'8 e'4 r8 r8. eis'16 eis'8
 fis'8[ r16 d' d'8] d'8[ r16 e' e'8] e'8[ r16 eis' eis'8] eis'8[ r16 fis' fis'8]
 fis'8[ r16 fis'' fis''8] fis''8[ r16 e'' e''8] e''8[ r16 gis'' gis''8] gis''8[ r16 a'' a''8]
 a''8\ff[ r16 e''' e'''8] e'''8[ r16 e''' e'''8] e'''8[ r16 e''' e'''8] e'''8[ r16 e''' e'''8]
 e'''8[ r16 e''' e'''8] e'''8[ r16 e''' e'''8] e'''8[ r16 e''' e'''8] e'''8[ r16 e''' e'''8]
 e'''8[ r16 a''' a'''8] a'''8[ r16 a'' a''8] a''8[ r16 a' a'8] a'8[ r16 a a8] a4 r8 r4 r8
 <e'' e'''>4 r8 r4 r8 <a' e'' cis'''>4 r8 r4 r8 \bar "|."
}