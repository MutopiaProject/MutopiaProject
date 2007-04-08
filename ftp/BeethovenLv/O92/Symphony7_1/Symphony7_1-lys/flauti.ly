\version "2.10.0"

 flauti = {
 \set Staff.instrumentName = "Flauti"
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key a \major
 \time 4/4
 <cis''' a'''>4\f\staccato^\markup { "Poco sostenuto." } r4 r2 R1 <b'' e'''>4\f\staccato r r2 R1
 <cis''' e'''>4\f\staccato r r2 << { a''2^\p( e''4 a'') a''1^\fp( b''2 c'''2) } \\ { R1 d'''4\staccato\f r4 r2 R1 } >>
 << { c'''2._\markup { \italic "dimin." }( a''4 e'''4\pp) g''4\rest f''2\rest } \\ { R1 R1 } >> R1 R1 R1
 << { gis'16\staccato gis'\staccato a'\staccato b'\staccato cis''\staccato d''\staccato e''\staccato fis''\staccato
 gis''\staccato a''\staccato b''\staccato cis'''\staccato d'''\staccato e'''\staccato fis'''\staccato gis'''\staccato } \\
 { c'2\rest_\markup { \italic "cresc." } e'4\rest d'''16\staccato e'''\staccato fis'''\staccato gis'''\staccato } >>
 <e''' a'''>1\ff ~ <e''' a'''>4 r r2 <b'' e'''>1( <cis''' e'''>4) r r2 <d''' a'''>1 ~ <d''' a'''>4 r r2 <d''' g'''>1
 << { g'''16 c''16\staccato_\markup { \italic "dimin." }[ d''\staccato e''\staccato]
 f''\staccato g''\staccato a''\staccato b''\staccato c'''\staccato d'''\staccato e'''\staccato f'''\staccato
 g'''\staccato e'''\staccato d'''\staccato c'''\staccato b''4 f''4\rest f''2\rest } \\
 { e'''4 f'4\rest g'2\rest R1 } >> R1 R1 R1 R1 R1 R1 R1 R1
 << { c'''2\pp ~ c'''4:16_\markup { \italic "cresc." } c'''4:16 c'''4 d'''4:16 d'''4 d'''4:16 } \\ { R1 R1 } >>
 << { e'''2 e''' b'' e'' e''' fis'''! cis''' e'' e''' g''' e''' e'' e''' g''' } \\
 { b''2\ff e'''\sf b''\sf e''\sf e'''\sf fis'''!\sf cis'''\sf e''\sf e'''\sf g'''\sf e'''\sf e''\sf e'''\sf g'''\sf } >>
 << { e'''16 c'' d'' e'' f'' g'' a'' b'' c''' d''' e''' f''' g''' e''' d''' c'''
 bes''2\p( c'''16_\markup { \italic "dolce" } bes'' a'' bes'') c'''8\staccato bes''\staccato
 a''4( c'''8) a''16\rest c''' f'''4( c'''8) a''16\rest c'''
 bes''2( c'''16 bes'' a'' bes'') c'''8\staccato bes''\staccato a''4( c'''8) a''16\rest c''' f'''4( c'''8) a''16\rest c'''
 d'''4( bes''8) a''16\rest bes'' f'''4( d'''8) a''16\rest d''' c'''4( a''8) a''16\rest a'' c'''4( g''8) a''16\rest c'''
 c'''2\pp ~ c'''16 c''' c''' c''' c'''4:16 } \\
 { e'''4_\markup { \italic "dimin." } f'4\rest g'2\rest R1 R1 R1 R1 R1 R1 R1 } >>
 <a'' c'''>2_\markup { \italic "cresc." } ~ <a'' c'''>16 <a'' c'''> <a'' c'''> <a'' c'''> <a'' c'''>4:16
 <a'' c'''>2 ~ <a'' c'''>16 <a'' c'''> <a'' c'''> <a'' c'''> <a'' c'''>4:16
 <a'' c'''>8 r <a'' c'''>4:16 <a'' c'''>8 r <a'' c'''>4:16 <a'' c'''>8 r <a'' c'''>4:16 <a'' c'''>8 r
 << { c'''16 c''' a'' a'' } \\ { a''16 a'' a'' a'' } >>
 <e'' e'''>8\ff r r4 r2 << { e''2\p gis''!4( b''8. a''16) gis''8 g''8\rest g''4\rest f''2\rest
 e''2\p gis''4( b''8. a''16 gis''16) e'''16 e''' e''' e'''4:16 e'''8 f''8\rest f''4\rest
 f''8\rest e'''8[ e''' e'''] e'''8 f''8\rest e''4\rest f''2\rest e'''4 f''4\rest f''2\rest e'''4 f''8.\rest e'''16
 e'''4 f''4\rest f''4\rest f''8.\rest e'''16 e'''4 f''4\rest f''4\rest f''8.\rest e'''16 } \\ { R1 R1 R1 R1 R1 R1 R1 R1 R1 } >>

 \time 6/8
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 146
 \repeat volta 2 {
 << { e'''8._\markup { \italic "sempre p" }^\markup { "Vivace" } e'''16 e'''8
 e'''8. e'''16 e'''8 e'''8. e'''16 e'''8 e'''8. e'''16 e'''8 e'''8. e'''16 e'''8 e'''8. e'''16 e'''8
 e'''8. e'''16 e'''8 e'''8. e'''16 e'''8 e'''4. ~ e'''8. d'''16\staccato cis'''8\staccato
 \appoggiatura cis'''32 d'''4. ~ d'''8. fis''16\staccato gis''8\staccato
 a''4 a''8 a''8. b''16\staccato cis'''8\staccato cis'''8 b''4 \grace { cis'''32[ b'' ais''] }
 b''8. cis'''16\staccato d'''8\staccato e'''4. ~ e'''8. d'''16 cis'''8 \appoggiatura cis'''32 d'''4. ~ d'''8. fis''16 gis''8
 a''4 a''8 a''8( cis''') b''8\staccato a''4 f''8\rest f''4\rest a''8
 a''4 a''8 a''8. d'''16\staccato fis'''8\staccato fis'''8( e''') cis'''\staccato a''4 f''8\rest f''4\rest f''8\rest f''4\rest a''8
 a''8. d'''16\staccato a''8\staccato a''8. d'''16\staccato fis'''8\staccato fis'''8( e''') cis'''\staccato a''4 f''8\rest
 f''4\rest f''8\rest f''4\rest cis'''8 b''4 e''8 e''8. cis'''16\staccato a''8\staccato } \\
 { R2. R2. R2. cis'''8._\markup { \italic "cresc." } cis'''16 cis'''8 cis'''8. cis'''16 cis'''8
 cis'''4\p a'8\rest a'4\rest r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. } >>
 << { e'''4.\f\> ~ e'''4 cis'''8\!\p b''4 e''8 e''8. cis'''16\staccato a''8\staccato } \\ { s2. R2. } >>
 <e'' e'''>4.\f ~ <e'' e'''>4 r8 <e'' e'''>4.\sf ~ <e'' e'''>4 r8 <e'' e'''>4\sf r8 <e'' e'''>4\sf r8
 <e'' e'''>4\sf r8 << { d'''8[ a''16\rest b''16 gis''8] } \\ { d'''8[ a''16\rest b''16 gis''8] } >> <b'' d'''>4.^\fermata r4 r8
 <cis''' e'''>2.\ff <d''' fis'''>4. ~ <d''' fis'''>4 <b'' gis'''>8
 <cis''' a'''>2. ~ <cis''' a'''>8( <b'' gis'''>) <a'' fis'''>\staccato <gis'' e'''>4 <e'' e'''>8 <cis''' e'''>2.
 <d''' fis'''>4. ~ <d''' fis'''>4 <b'' gis'''>8 <cis''' a'''>4 <cis''' a'''>8 << { a'''4 gis'''8 } \\ { cis'''8( a'') b''\staccato } >>
 <cis''' a'''>4 <a'' a'''>8 <a'' a'''>8. <a'' a'''>16 <a'' a'''>8
 <a'' a'''>2. ~ <a'' a'''>8. <a'' a'''>16 <a'' a'''>8 <a'' a'''>8. <a'' a'''>16 <a'' a'''>8
 <a'' a'''>2. ~ <a'' a'''>8. <a'' a'''>16 <a'' a'''>8 <a'' a'''>4 r8
 << { f''8\rest f''8\rest e'''8\p fis'''8_\markup { \italic "cresc." }( e''') cis'''8\staccato
 f''8\rest f''8\rest fis'''8 g'''8( fis''') d'''8\staccato } \\ { R2. R2. } >>
 << { f''8\rest f''8\rest d'''8 e'''( d''') b''8\staccato f''8\rest f''8\rest e'''8 fis'''( e''') cis'''\staccato
 f''8\rest f''8\rest e'''8 fis'''( e''') cis'''\staccato g'''8( fis''') d'''\staccato g'''( fis''') d'''\staccato
 cis'''8( b'') gis''!\staccato cis'''8( b'') gis''\staccato d'''8( cis''') a''\staccato d'''8( cis''') a''\staccato } \\
 { R2. R2. R2. R2. R2. R2. } >> <ais'' e'''>2.\ff
 <b'' dis'''>4. ~ <b'' dis'''>8 << { dis'''8\p dis''' cis'''[ r cis'''] cis'''[ r cis''']
 bis''4 f''8\rest f''4\rest f''8\rest } \\ { g'8\rest g'8\rest R2. R2. } >> R2. R2.
 << { e'''4.( cis'''4.) bes''4 ees''8^\p ees''8.\staccato g''16\staccato bes''8\staccato
 ces'''4\staccato ces'''8\staccato ces'''8.\staccato bes''16\staccato aes''8\staccato
 g''4 g''8\rest g''4\rest bes''8( b''!4) b''8 e'''4 e'''8 e'''( dis'''4) ~ dis'''4 a''8 gis''4 gis''8 cis'''4 cis'''8
 cis'''8( b''4) ~ b''4 fis''8 e''4 e'''8 } \\
 { gis''2._\markup { \italic "cresc." } g''4\f g'8\rest g'4\rest g'8\rest R2. R2.
 b''4 b''8 b''4 b''8 b''2.\f ~ b''4 b''8 b''4 b''8 b''2. ~ b''8([ a'']) e'''8 } >> <e''' a'''>4 <e''' a'''>8
 <fis''' a'''>8 <fis''' a'''> r <fis''' a'''> <fis''' a'''>r <e''' gis'''> <e''' gis'''>r <e''' gis'''> <e''' gis'''> r
 <fis''' a'''>8 <fis''' a'''> r <fis''' a'''> <fis''' a'''>r <e''' gis'''> <e''' gis'''>r <e''' gis'''> <e''' gis'''> r R2. R2. R2. R2.
 << { f''4\rest f''8\rest e'''8._\markup { \italic "dolce" } b''16 b''8
 b''8. gis''16 gis''8 gis''( a'') fis''\staccato } \\ { R2. R2. } >> << { e''8 e''' e''' } \\ { e''8\f e'' e'' } >>
 <e'' e'''>8 <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''> <g'' g'''> <g'' g'''> <g'' g'''>
 << { c'''4 } \\ { c'''4 } >> r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { f''8\rest f''8\rest cis'''16_\markup { \italic "cresc." }( dis''' e'''4\staccato) f''8\rest
 f''8\rest f''8\rest dis'''16( e''' fis'''8\staccato) f''8\rest e'''16( fis''' <e''' gis'''>2.\ff) ~ <e''' gis'''>4. } \\
 { R2. R2. s2. s4. } >> <e''' gis'''>8. <e''' gis'''>16 <e''' gis'''>8
 <e''' fis'''>2. ~ <e''' fis'''>4. <e''' fis'''>8. <e''' fis'''>16 <e''' fis'''>8
 << { f'''4.\pp( c'''4. dis''4._\markup { \italic "cresc." }) b''8 cis'''16 dis''' e''' fis'''! } \\ { R2. R2. } >>
 <e''' gis'''>2.\ff ~ <e''' gis'''>4. <e''' gis'''>8. <e''' gis'''>16 <e''' gis'''>8
 <e''' fis'''>2. ~ <e''' fis'''>4. <e''' fis'''>8. <e''' fis'''>16 <e''' fis'''>8
 << { f''4\rest f''8\rest f'''4.\pp( dis'''4._\markup { \italic "cresc." } ~ dis'''4) b''8\staccato b''4. ~ b''8. a'''16 gis'''8
 \appoggiatura gis'''32 a'''4. ~ a'''8. cis'''16 dis'''8 e'''4 } \\
 { R2. R2. b''4.\ff ~ b''8. a''16 gis''8 \appoggiatura gis''32 a''4. ~ a''8. a''16 b''8 b''4 } >> r8
 << { gis'''4 } \\ { b''4 } >> r8 << { b''4 } \\ { b''4 } >> r8 r8.
 << { b''16 b''8 b''4 gis'''8 \appoggiatura gis'''32 a'''8. cis'''16 dis'''8 e'''4  } \\
 { b''16 b''8 b''4\sf gis''8 \appoggiatura gis''32 a''8. a''16 b''8 b''4 } >> r8 r8.
 << { b''16 b''8 b''4 gis'''8 \appoggiatura gis'''32 gis'''8. cis'''16 dis'''8 } \\
 { b''16 b''8 b''4\sf gis''8 \appoggiatura gis''32 gis''8. a''16 b''8 } >>
 << { e'''8 } \\ { e'''8\ff } >> r8 << { e'''8 } \\ { e'''8 } >> r8 r << { e'''8 } \\ { e'''8 } >>
 r8 r << { e'''8 } \\ { e'''8 } >> r8 r << { e'''8 } \\ { e'''8 } >> r8 r << { e'''8 } \\ { e'''8 } >> r8 r << { e'''8 } \\ { e'''8 } >>
 r8 r << { e'''8 } \\ { e'''8 } >> r8 r << { e'''8 } \\ { e'''8 } >> R2. R2.
 }

 r8 r <g'' g'''>\ff r r <g'' g'''> r r <g'' g'''> r r <g'' g'''> R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { g''4.\pp ~ g''8. f''16\staccato e''8\staccato f''8.\staccato g''16\staccato a''8\staccato
 b''8.\staccato c'''16\staccato d'''8\staccato
 e'''2._\markup { \italic "cresc." } ~ e'''2. ees'''2. ~ ees'''2. d'''4. g'''4. ~ g'''2. } \\ { R2. R2. R2. R2. R2. R2. R2. R2. } >>
 <e''' g'''>2.\f ~ <e''' g'''>2. ~ <e''' g'''>2. ~ <e''' g'''>2.
 <d''' f'''>8.\ff <d''' f'''>16 <d''' f'''>8 <d''' f'''>8. <d''' f'''>16 <d''' f'''>8
 <d''' f'''>8. <d''' f'''>16 <d''' f'''>8 <d''' f'''>8. <d''' f'''>16 <d''' f'''>8 <d''' f'''>2. ~ <d''' f'''>2. ~ <d''' f'''>2. ~
 <d''' f'''>2. <b'' e'''>8. <b'' e'''>16 <b'' e'''>8 <b'' e'''>8. <b'' e'''>16 <b'' e'''>8
 <b'' e'''>8. <b'' e'''>16 <b'' e'''>8 <b'' e'''>8. <b'' e'''>16 <b'' e'''>8
 <b'' e'''>2. ~ <b'' e'''>2. ~ <b'' e'''>2. ~ <b'' e'''>2. ~ <b'' e'''>4 r8 <e'' e'''>8.\sf <e'' e'''>16 <e'' e'''>8
 r4 r8 <f'' f'''>8.\sf <f'' f'''>16 <f'' f'''>8 r4 r8 <f'' f'''>8.\sf <f'' f'''>16 <f'' f'''>8
 << { aes''2.\p ~ aes''4. ~ aes''4 ~ aes''16 c''' c'''4. ~ c'''8. bes''16\staccato a''8\staccato
 bes''4 f''8\rest a''4 f''8\rest g''4 f''8\rest f''4 f''8\rest } \\ { R2. R2. R2. R2. R2. } >> R2. R2.
 << { f''4\rest f''8\rest f''8\rest f''8.\rest d'''16\p d'''4. ~ d'''8. c'''16\staccato bes''8\staccato
 c'''4 f''8\rest bes''4 f''8\rest a''4 f''8\rest g''4 f''8\rest
 f''4\rest f''8\rest a''8. cis'''16 d'''8 e'''4 f''8\rest d'''4 f''8\rest } \\ { R2. R2. R2. R2. R2. R2. } >> R2.
 << { e'''4 a''8\rest d'''4 a''8\rest } \\ { R2. } >> R2. R2. R2. R2. R2. R2. R2.
 r8. << { c'''16 c'''8 c'''8. c'''16 c'''8 c'''8. c'''16 c'''8 c'''8. c'''16 c'''8 c'''8. c'''16 c'''8 c'''8. c'''16 c'''8
 c'''8. c'''16 c'''8 c'''8. c'''16 c'''8 c'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8
 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''4 } \\
 { c'''16_\markup { \italic "cresc." } c'''8 c'''8. c'''16 c'''8
 c'''8. c'''16 c'''8 c'''8. c'''16 c'''8 c'''8. c'''16 c'''8 c'''8. c'''16 c'''8
 c'''8. c'''16 c'''8 c'''8. c'''16 c'''8 c'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8
 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''8. d'''16 d'''8 d'''4\f } >>
 r8 <g'' d'''>8[ r16 <g'' d'''> <g'' cis'''!>8] <g'' d'''>4 r8 <g'' d'''>8[ r16 <g'' d'''> <g'' dis'''>8]
 <g'' e'''>4 r8 <g'' e'''>8[ r16 <g'' e'''> <g'' dis'''>8] <g'' e'''>4 r8
 << { e'''8[ s16 a''' a'''8] } \\ { e'''8[ b''16\rest e''' e'''8] } >>
 <f''' a'''>8\ff[ r16 <a'' a'''> <a'' a'''>8] <a'' a'''>8[ r16 <a'' a'''> <a'' a'''>8]
 <a'' a'''>8[ r16 <a'' a'''> <a'' a'''>8] <a'' a'''>8[ r16 <a'' a'''> <a'' a'''>8] <a'' a'''>8[ r16 <f'' f'''> <g'' g'''>8]
 << { a'''8[ s16 d'''16 e'''8] f'''8[ s16 f''16 g''8] a''8[ s16 a'''16 a'''8] } \\
 { a''8[ b''16\rest d'''16 e'''8] f'''8[ f''16\rest f''16 g''8] a''8[ a''16\rest a''16 a''8] } >>
 <a'' a'''>8[ r16 <a'' a'''> <a'' a'''>8] <a'' a'''>8[ r16 <a'' a'''> <a'' a'''>8]
 <a'' a'''>8[ r16 <a'' a'''> <a'' a'''>8] <a'' a'''>8[ r16 <a'' a'''> <a'' a'''>8]
 << { a'''8[ s16 c'''16 d'''8] e'''8[ s16 a''16 b''8] c'''8[ s16 c'''16 d'''8]
 e'''8[ s16 e'''16 e'''8] e'''8[ s16 e'''16 e'''8] e'''8[ s16 e'''16 e'''8]
 e'''8[ s16 e'''16 e'''8] e'''8[ s16 e'''16 e'''8] e'''8[ s16 d'''16 e'''8] f'''4 } \\
 { a''8[ c'''16\rest c'''16 d'''8] e'''8[ b''16\rest a''16 b''8] c'''8[ c'''16\rest c'''16 d'''8]
 e'''8[ c'''16\rest e'''16 e'''8] e'''8[ c'''16\rest e'''16 e'''8] e'''8[ c'''16\rest e'''16 e'''8]
 e'''8[ c'''16\rest e'''16 e'''8] e'''8[ c'''16\rest e'''16 e'''8] e'''8[ c'''16\rest d'''16 e'''8] f'''4 } >> r8
 r8. << { b''16 c'''8 d'''4 } \\ { b''16 c'''8 d'''4} >> r8 r8. << { gis''!16 a''8 b''4 } \\ { gis''16 a''8 b''4} >> r8
 r8. << { b''16 c'''8 d'''4 } \\ { b''16 c'''8 d'''4} >> r8 R2. R2. R2. R2.
 << { b''8.\rest cis'''!16 d'''8 e'''8[ a''16\rest cis''' d'''8] e'''8[ a''16\rest cis''' d'''8] e'''8[ a''16\rest cis''' d'''8]
 e'''8._\markup { \italic "piu f" } e'''16 e'''8 e'''8. e'''16 e'''8 e'''8. e'''16 e'''8 e'''8. e'''16 e'''8
 e'''8. e'''16 e'''8 e'''8. e'''16 e'''8 } \\ { R2. R2. R2. R2. R2. } >>
 <e''' a'''>8. <e''' a'''>16 <e''' a'''>8 <e''' a'''>8. <e''' a'''>16 <e''' a'''>8
 <e''' a'''>4\ff r8 r4 r8 r4 r8 r8 r8. <e''' a'''>16 <e''' a'''>4 r8 r4 r8 r4 r8 r8 r8. <e''' a'''>16
 <e''' a'''>4 r8 r4 r8 r4 r8 r8 r8. <e''' a'''>16
 <e''' a'''>4 r16 <e''' a'''> <e''' a'''>4 r16 <e''' gis'''> <e''' a'''>4 r16 <fis''' a'''> <fis''' a'''>4 r16 <fis''' a'''>
 <fis''' a'''>4 r8 r4 r8 r4 r8 r4 <e'' e'''>8\staccato
 <fis'' fis'''>8\sf( <e'' e'''>) <cis'' cis'''>\staccato <a' a''>4 r16 <e''' a'''> <fis''' a'''>4 r8 r4 r8
 r4 r8 r8 r8 << { e'''8\staccato fis'''8( e''') cis'''\staccato a''4 } \\ { e'''8 fis'''\sf e''' cis''' a''4 } >> r16 <cis''' e'''>16
 <b'' e'''>4 r8 r8 r8. <cis''' e'''>16 <b'' e'''>4 r8 r8 r8. <cis''' e'''>16
 <b'' e'''>4 r8 r8 r8. <cis''' e'''>16 <b'' e'''>4 r8 r8 r8. <cis''' e'''>16
 <cis''' e'''>4 r8 r8 r8. <cis''' e'''>16 <e'' e'''>4 r16 <d''' e'''> <d''' e'''>4 r16 <d''' e'''>
 <d''' e'''>4 r16 <d''' e'''> <d''' e'''>4 r16 <b'' d'''>16 <b'' d'''>4.^\fermata
 << { f''8\rest f''8.\rest cis'''16\p cis'''4.^\fermata } \\ { f'4\rest f'8\rest f'4\rest f'8\rest } >> r4 r8 R2. R2.
 << { fis'''4.\p ~ fis'''8. e'''16\staccato d'''8\staccato cis'''8. b''16 a''8 g''8. fis''16 e''8
 d''4 f''8\rest f''4\rest f''8\rest } \\ { R2. R2. R2. } >> R2.
 << { f'''4. ~ f'''8. d'''16 cis'''8 d'''8. a''16 f''8 d''4 f''8\rest } \\ { R2. R2. } >> R2.
 << { f''4\rest f''8\rest f''4\rest f''8\p f''4 f''8 f''8. bes''16\staccato d'''8\staccato
 d'''8( c''') a''\staccato f''4 f''8\rest } \\ { R2. R2. R2. } >> R2. R2. R2. R2.
 << { f''4\rest f''8\rest f''4\rest gis''!8\p b''8( a'') e''\staccato c''4 f''8\rest } \\ { R2. R2. } >>
 <c''' e'''>2._\markup { \italic "cresc." } <d''' f'''>2. <b'' e'''>2. <c''' e'''> <c''' dis'''>2.\ff
 <b'' e'''>4. ~ <b'' e'''>8 <b'' e'''> <b'' e'''> <a'' a'''>8 r <a'' a'''> <a'' a'''> r <a'' d'''> <gis''! b''>4\p r8 r4 r8
 R2. << { f''8\rest f''8\rest e''8\p e''8. gis''16\staccato b''8\staccato
 \appoggiatura a''32 c'''4\staccato c'''8\staccato c'''8.\staccato b''16\staccato a''8\staccato
 gis''4_\markup { \italic "cresc." }( e'''8 e'''4 d'''8) cis'''!4 cis'''8 fis'''4 fis'''8 fis'''8( e'''4) ~ e'''4.
 a''4 a''8 d'''4 d'''8 d'''8( cis'''4) ~ cis'''4. fis''4 } \\ { R2. R2. R2. R2. R2. R2. R2. fis''4\f } >>
 <fis'' fis'''>8 <b'' fis'''>4 <b'' fis'''>8 <b'' e'''>8 <b'' e'''> r <b'' d'''> <b'' d'''> r
 <a'' cis'''>8 <a'' cis'''> r <cis''' a'''> <cis''' a'''> r
 <b'' gis'''>8 <b'' gis'''> r <b'' d'''> <b'' d'''> r <a'' cis'''> <a'' cis'''> r <cis''' a'''> <cis''' a'''> r R2.
 << { e'''4.( ~ e'''4 b''8) a''4. } \\ { R2. a''4._\markup { \italic "dolce" } } >>
 <a'' cis'''>8. <e'' a''>16 <e'' a''>8 <b'' d'''>8. <e'' b''>16 <e'' b''>8
 <cis''' e'''>4. ~ <cis''' e'''>4. ~ <cis''' e'''>8. <cis''' e'''>16 <cis''' e'''>8
 <cis''' e'''>8. <a'' cis'''>16 <a'' cis'''>8 <a'' cis'''>8( <b'' d'''>) <gis'' b''>\staccato
 << { a''8 a''' a''' } \\ { a''8\ff a'' a'' } >> <a'' a'''>8 <a'' a'''> <a'' a'''>
 <a'' a'''>8 <a'' a'''> <a'' a'''> <c''' e'''> <c''' e'''> <c''' e'''> <c''' f'''>4 r8 r4 r8 R2. R2.
 << { f''4\rest f''8\rest f''8.\rest c''16\p c''8 f''4 f''8\rest f''4\rest f''8\rest f''4\pp f''8\rest f''4\rest f''8\rest } \\
 { R2. R2. R2. } >> R2. << { f''8\rest f''8\rest b''16\pp( c''' d'''8\staccato) f''8\rest f''8\rest } \\ { R2. } >> R2.
 << { f''8\rest f''8\rest b''16( c''' d'''8\staccato) f''8\rest f''8\rest
 f''8\rest f''8\rest b''16_\markup { \italic "cresc." }( cis'''! d'''4\staccato) f''8\rest } \\ { R2. R2. } >> R2. R2. R2. R2.
 << { f''8\rest f''8\rest gis''16_\markup { \italic "cresc." }( a'' b''8\staccato) f''8\rest a''16( b'' cis'''2.) ~ cis'''4. } \\
 { e'4\rest e'8\rest e'8\rest e'8\rest a''16( b'' cis'''2.\ff) ~ cis'''4. } >> <cis''' e'''>8. <cis''' e'''>16 <cis''' e'''>8
 <b'' fis'''>2. ~ <b'' fis'''>4. <b'' fis'''>8. <b'' fis'''>16 <b'' fis'''>8
 << { f''4\rest f''8\rest f'''4.\pp( gis''4._\markup { \italic "cresc." } e'''4.) cis'''2. ~ cis'''4. } \\
 { R2. R2. cis'''2.\ff ~ cis'''4. } >> <cis''' e'''>8. <cis''' e'''>16 <cis''' e'''>8
 <b'' fis'''>2. ~ <b'' fis'''>4. <b'' fis'''>8. <b'' fis'''>16 <b'' fis'''>8 R2.
 << { e'''4.\p( gis''4_\markup { \italic "cresc." } e'''8) e'''4. ~ e'''8. d'''16\staccato cis'''8\staccato
 \appoggiatura cis'''32 d'''4. ~ d'''8. fis'''16\staccato gis'''8\staccato a'''4 } \\
 { R2. e'''4.\ff ~ e'''8. d'''16 cis'''8 d'''4.\sf ~ d'''8. d'''16 e'''8\staccato e'''4 } >>
 r8 << { cis'''4 } \\ { cis'''4 } >> r8 << { e'''4 } \\ { e'''4 } >> r8 r8.
 << { e'''16 e'''8 e'''4 cis'''8 \appoggiatura cis'''32 d'''8. fis'''16\staccato gis'''8\staccato a'''4 } \\
 { e'''16 e'''8 e'''4\sf cis'''8 d'''8. d'''16 e'''8 cis'''4 } >> r8 r8.
 << { e'''16 e'''8 e'''4 cis'''8 \appoggiatura cis'''32 d'''8. fis'''16\staccato gis'''8\staccato } \\
 { e'''16 e'''8 e'''4\sf cis'''8 d'''8. d'''16 e'''8 } >> <cis''' a'''>8\ff r <a'' a'''> r r <a'' a'''>
 r8 r <a'' a'''> r r <a'' a'''> r r <a'' a'''> r r <a'' a'''> r r <a'' a'''> r r <a'' a'''> R2. R2.
 << { f''8\rest f''8\rest aes''8\p f''4\rest f''8\rest } \\ { R2. } >> R2. R2.
 <c'' ees''>8.\pp <c'' ees''>16 <c'' ees''>8 <c'' ees''>8. <c'' ees''>16 <c'' ees''>8
 <c'' ees''>2. ~ <c'' ees''>2._\markup { \italic "sempre p" } <c'' e''!>2. ~ <c'' e''>2. R2. R2.
 R2. << { cis'''!4.\pp ~ cis'''8.( b''16 a''8) e'''2. ~ e'''2. ~ e'''2. ~ e'''2. ~ e'''2. ~ e'''2. ~ e'''2. ~ e'''2. ~
 e'''4_\markup { \italic "cresc." } e'''8\staccato e'''4. ~ e'''2. ~ e'''4 e'''8\staccato e'''4. ~ e'''2. ~
 e'''4 e'''8\staccato( e'''4\staccato e'''8\staccato) e'''4\staccato( e'''8\staccato e'''4\staccato e'''8\staccato)
 e'''4\staccato( e'''8\staccato e'''4\staccato e'''8\staccato)
 e'''4\staccato( e'''8\staccato e'''4\staccato e'''8\staccato) e'''2.:8 e'''2.:8 e'''2.:8 e'''2.:8 } \\
 { R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. } >>
 <e'' e'''>2.:8_\markup { \italic "piu cresc." } <e'' e'''>2.:8
 <cis''' e'''>8.\ff <cis''' e'''>16 <cis''' e'''>8 <cis''' e'''>8. <cis''' e'''>16 <cis''' e'''>8
 <cis''' e'''>8. <cis''' e'''>16 <cis''' e'''>8 <a'' e'''>8. <a'' e'''>16 <a'' e'''>8
 <a'' fis'''>8. <a'' fis'''>16 <a'' fis'''>8 <d''' fis'''>8. <d''' fis'''>16 <d''' fis'''>8
 <d''' fis'''>8. <d''' fis'''>16 <d''' fis'''>8 <d''' fis'''>8. <d''' fis'''>16 <d''' fis'''>8
 <cis''' e'''>2. <cis''' e'''>2. <cis''' e'''>2. << { cis'''4. } \\ { cis'''4. } >> <a'' a'''>4.( <fis'' fis'''>4. <e'' e'''>4.)
 <dis'' dis'''>8[ r16 <b'' fis'''>16 <b'' fis'''>8] <b'' fis'''>4 r8 r8. <b'' fis'''>16 <b'' fis'''>8 <b'' fis'''>4 r8
 r8. <b'' e'''>16 <b'' e'''>8 <b'' e'''>4 r8 r8. <b'' e'''>16 <b'' e'''>8 <b'' e'''>4 r8
 r8. <cis''' e'''>16 <cis''' e'''>8 <a'' fis'''>4 r8 r8. <cis''' e'''>16 <cis''' e'''>8 <b'' d'''>4 r8
 <a'' cis'''>8[ r16 <d''' fis'''> <d''' fis'''>8] <d''' fis'''>8[ r16 <cis''' e'''> <cis''' e'''>8]
 <cis''' e'''>8[ r16 <b'' d'''> <b'' d'''>8] <b'' d'''>8[ r16 <a'' cis'''> <a'' cis'''>8]
 <a'' cis'''>8[ r16 <d''' fis'''> <d''' fis'''>8] <d''' fis'''>8[ r16 <cis''' e'''> <cis''' e'''>8]
 <cis''' e'''>8[ r16 <b'' e'''> <b'' e'''>8] <b'' e'''>8[ r16 <cis''' e'''> <cis''' e'''>8]
 << { e'''4. ~ e'''8. d'''16\staccato cis'''8\staccato b''8[ r16 b'' b''8] b''8[ r16 e''' e'''8]
 e'''4. ~ e'''8. d'''16\staccato cis'''8\staccato b''8[ r16 b'' b''8] b''8[ r16 e''' e'''8] e'''8[ r16 a''' a'''8] } \\
 { e'''4.\ff ~ e'''8. d'''16 cis'''8 b''8[ s16 b'' b''8] b''8[ s16 e''' e'''8]
 e'''4.\ff ~ e'''8. d'''16 cis'''8 b''8[ s16 b'' b''8] b''8[ s16 e''' e'''8] e'''8[ r16 e''' e'''8] } >>
 <e''' a'''>8[ r16 <e''' a'''> <e''' a'''>8] <e''' a'''>8[ r16 <e''' a'''> <e''' a'''>8] <e''' a'''>8[ r16 <e''' a'''> <e''' a'''>8]
 <e''' a'''>4 r8 r4 r8 << { e'''4 } \\ { e'''4 } >> r8 r4 r8 << { cis'''4 } \\ { cis'''4 } >> r8 r4 r8 \bar "|."
}