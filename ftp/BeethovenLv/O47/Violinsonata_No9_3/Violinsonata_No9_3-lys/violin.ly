\version "2.10.3"

 violin = {
 \set Staff.instrumentName = "VIOLIN"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key a \major
 \time 6/8
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 252 
 \override TextScript #'padding = #2.0
 r4^\markup { \bold "Presto." }^\markup { \bold "FINALE." } r8 r4^\fermata
 cis''8\p cis''4\staccato cis''8\staccato cis''4\staccato cis''8\staccato
 \repeat volta 2 {
 cis''4\staccato cis''8\staccato cis''4\staccato dis''8\staccato e''4.\sf cis''4 dis''8 e''4.\sf cis''4 dis''8
 e''4.\sf ~ e''8[ fis'' e''] d''![ e'' d''] cis''[ d'' cis''] b'[ d'' fis''] e''[ fis'' e''] d''[ e'' d''] cis''[ d'' cis''] b'4 r8 r4
 d''8\staccato d''4\staccato d''8\staccato d''4\staccato d''8\staccato cis''4 a'8 d''4 d''8 cis''4 a'8 d''4 d''8
 cis''4 a'8 c''4.\sf ~ c''4 b'8\staccato dis''4\staccato b'8
 e''4 e'8 c''4.\sf ~ c''4 b'8\staccato dis''4\staccato b'8\staccato e''4 e'8 r4 r8 R2. R2. R2.
 r4 r8 d''8_\markup { \italic "cresc." }[ e'' d''] cis''[ d'' cis''] b'[ cis'' b'] a'[ b' a'] d''[ e'' d'']
 cis''[ d'' cis''] b'[ cis'' b'] a'[ b' a'] d'[ e' d'] cis'[ d' cis'] b[ cis' b] cis'4\f r8 r4 r8 R2.
 a'8\f[ e'' cis''] a''[ e'' cis'''] a''[ e''' d'''] cis'''[ b'' a''] d'''4 r8 r4 r8 R2.
 d'''8[ cis''' b''] a''[ gis'' fis''] e''[ fis'' e''] d''[ cis'' b'] a'4\p\staccato a'8\staccato a'4\staccato b'8\staccato
 cis''4\staccato cis''8\staccato cis''4\staccato d''8\staccato e''4 r8 r4 r8 R2.
 d''4\staccato d''8\staccato d''4\staccato cis''8\staccato b'4\staccato b'8\staccato b'4\staccato a'8\staccato
 gis'4 r8 gis''4.\sf ~ gis''2. a'4 r8 a''4.\sf ~ a''2. fis'4 r8 fis''4.\sf ~ fis''2. gis'4 r8 gis''4.\sf ~ gis''2.
 e'4\sf_\markup { \italic "cresc." } r8 e''4\staccato r8 ais'4\sf r8 ais''4\staccato r8
 b''4\f\staccato fis''8\staccato fis''4\staccato ais''8\staccato <b' b''>4\sf r8 r4 r8
 r4 fis''8\staccato fis''4\staccato ais''8\staccato <b' b''>4\sf r8 r4 r8 r4 fis''8\staccato fis''4\staccato ais''8\staccato
 <b' b''>4\sf fis''8\staccato fis''4\staccato ais''8\staccato <b' b''>4\ff ais''8( <b' b''>4\sf)
 ais''8( <b' b''>4\sf) ais''8( <b' b''>4\sf) ais''8( <b' b''>4\sf) ais''8( <b' b''>4\sf) ais''8( <b' b''>4\sf) a''!8( gis''4)
 fis''8( e''4) e''8\p\staccato e''4\staccato fis''8\staccato gis''4\staccato gis''8\staccato gis''4\staccato a''8\staccato
 b''4\staccato b''8\staccato b''4\staccato dis'''8\staccato e'''2.
 \acciaccatura e'''16 d'''!4\staccato d'''8\staccato d'''4\staccato b''8\staccato
 \acciaccatura dis'''16 cis'''4\staccato cis'''8\staccato cis'''4\staccato ais''8\staccato
 b''4\staccato b''8\staccato cis'''4\staccato ais''8\staccato b''2.
 d''!4\staccato d''8\staccato d''4\staccato e''8\staccato fis''4\staccato fis''8\staccato fis''4\staccato g''8\staccato
 a''4\staccato a''8\staccato a''4\staccato cis'''8\staccato d'''2.
 \acciaccatura d'''16 cis'''4\staccato cis'''8\staccato cis'''4\staccato a''8\staccato
 \acciaccatura cis'''16 b''4\staccato b''8\staccato b''4\staccato gis''8\staccato
 a''4\staccato a''8\staccato b''4\staccato gis''8\staccato
 a''8\staccato[ cis''\staccato b'\staccato] a'\staccato[ gis'\staccato fis'\staccato]
 e'\staccato[ b\staccato e'\staccato] gis'\staccato[ b'\staccato gis'\staccato]
 e'\staccato[ b\staccato e'\staccato] gis'\staccato[ b'\staccato gis'\staccato]
 e'\staccato[ b\staccato e'\staccato] gis'\staccato[ b'\staccato gis'\staccato]
 b'\staccato[ gis'\staccato b'\staccato] g'[\staccato b'\staccato g'\staccato]
 fis'\staccato[ b'\staccato dis''\staccato] fis''\staccato[ e''\staccato dis''\staccato]
 e''\staccato[ cis''\staccato ais'\staccato] e'\staccato[ fis'\staccato e'\staccato]
 dis'\staccato[ fis'\staccato dis'\staccato] e'\staccato[ fis'\staccato e'\staccato]
 dis'\staccato[ fis'\staccato e'\staccato] dis'\staccato[ cis'\staccato b\staccato]
 fis'\staccato[ a!\staccato d'!\staccato] fis'\staccato[ a'\staccato fis'\staccato]
 d'\staccato[ a\staccato d'\staccato] fis'\staccato[ a'\staccato fis'\staccato]
 d'\staccato[ a\staccato d'\staccato] fis'\staccato[ a'\staccato fis'\staccato]
 a'[ fis' a'] f'[ a' f'] e'[ a' cis''] e''[ d'' cis''] d''[ b' gis'] d'[ e' d'] cis'[ e' cis'] d'[ e' d'] cis'[ e' gis'] a'[ cis'' e'']
 a''4 a''8( b''4) gis''8( a''2.)
 cis'''4\staccato_\markup { \italic "cresc." } cis'''8( d'''4\staccato) b''8( cis'''4\staccato)
 cis'''8( d'''4\staccato) b''8( cis'''4\staccato) cis'''8( d'''4\staccato) b''8( cis'''4\staccato) cis'''8( b''4\staccato)
 a''8( gis''8\p\staccato)[ dis''( e''] fis''[ e'' dis'')] e''2. gis''8([ fis'' gis''] a''[ gis'' fis'']) gis''2.
 gis''8_\markup { \italic "cresc." }([ fis'' gis''] a''[ gis'' fis'']) gis''([ fis'' gis''] a''[ gis'' fis''])
 gis''([ fis'' gis''] a''[ gis'' fis'']) gis''([ fis'' gis''] a''[ gis'' fis'']) gis''\f([ fis'' gis''] a''[ gis'' fis''])
 e''8\sf([ dis'' e''] fis''[ e'' dis'']) cis''\sf([ bis' cis''] dis''[ cis'' b']) a'\sf([ gis' a'] b'[ a' gis'])
 <b fis'>4\p r8 <b e'>4 r8 <cis' fis'>4 r8 dis'4 r8
 b''2.\sf e'''2.\sf cis'''2.\sf a''2.\sf ~ a''4. a''4.\sf ~ a''4. a''4.\sf ~ a''4\staccato r8 a''4\sf\staccato r8
 a''4\staccato r a''4\sf\staccato a''4\ff r8 fis''4 r8 dis''4\staccato r8 b'4\staccato r8
 a'4\staccato r8 fis'4\staccato r8 dis'4\staccato r8 fis'4\staccato r8 b4\f r8 a''4\staccato r8 \bar "||"
 \time 2/4 gis''2\p\staccato cis'''2\staccato b''2\staccato
 a''4\staccato( a''\staccato a''\staccato a''\staccato) gis''8([ fis'' e'' fis'']) gis''4( e'') \bar "||"
 \time 6/8 R2. \bar "||"
 \time 2/4 R2 R2 R2 R2 R2 R2 R2 a''4\p\staccato( a''\staccato_\markup { \italic "ritard." } a''\staccato a''\staccato)
 gis''8([ fis'' e'' fis'']) gis''4( e'') R2 R2 \bar "||"
 \time 6/8 R2. << { s2 \startTrillSpan s8 s8 \stopTrillSpan } \\ { dis'2.\sf } >>
 dis''2.\sf \startTrillSpan dis''2. e''4 \stopTrillSpan
 e'8\p\staccato e'4\staccato fis'8\staccato gis'4\staccato gis'8\staccato gis'4\staccato a'8\staccato
 b'4 r8 r4 r8 R2. gis'4\staccato gis'8\staccato gis'4\staccato a'8\staccato
 b'4\staccato b'8\staccato b'4\staccato cis''8\staccato d''!2.\sf ~ d''4 b'8\staccato b'4\staccato cis''8\staccato
 d''2.\sf ~ d''4 b'8\staccato b'4\staccato cis''8\staccato
 d''4\staccato b'8\staccato_\markup { \italic "cresc." } b'4\staccato cis''8\staccato
 d''4 gis''8 gis''4 a''8 b''4 gis''8 gis''4 a''8 b''4 b''8 b''4 cis'''8
 d'''8\sf( cis''' b'' a'' gis'' fis'') e''4 r8 r4 r8 d''8\sf( cis'' b' a' gis' fis') e'4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. }
 \alternative { { r4 r8 r4 cis''8\p\staccato cis''4\staccato cis''8\staccato cis''4\staccato cis''8\staccato }
 { r4 r8 r4 a'8\p\staccato a'4\staccato_\markup { \italic "cresc." } a'8\staccato a'4\staccato a'8\staccato } }
 a'4 a'8 a'4 b'8 c''4.\sf a'4 b'8 c''4.\sf a'4 b'8
 c''8\ff[ a' b'] c''[ a' b'] c''[ a' b'] c''[ a' b'] c''[ a' b'] c''[ a' b'] c''[ a' b'] c''[ a' b']
 c''4\p\staccato c''8\staccato c''4\staccato d''8\staccato e''4\staccato e''8\staccato e''4\staccato f''8\staccato
 g''4\staccato g''8\staccato g''4\staccato b''8\staccato c'''2.
 \acciaccatura c'''16 b''4\staccato b''8\staccato b''4\staccato g''8\staccato
 \acciaccatura b''16 a''4\staccato a''8\staccato a''4\staccato fis''!8\staccato g''4\f r8 bes'4.\sf( ~ bes'4. cis'!4.)
 d'4\fp\staccato d''8\staccato d''4\staccato e''8\staccato f''4\staccato f''8\staccato f''4\staccato g''8\staccato
 a''4\staccato a''8\staccato a''4\staccato cis'''8\staccato d'''2.
 \acciaccatura d'''16 c'''4\staccato c'''8\staccato c'''4\staccato a''8\staccato
 \acciaccatura c'''16 b''4\staccato b''8\staccato b''4\staccato gis''!8\staccato a''4\f r8 c''4.\sf( ~ c''4. dis'4.)
 e'8\p\staccato[ b\staccato e'\staccato] g'\staccato[ b'\staccato g'\staccato]
 e'8\staccato[ b\staccato e'\staccato] g'\staccato[ b'\staccato g'\staccato]
 e'8\staccato[ b\staccato e'\staccato] g'\staccato[ b'\staccato g'\staccato]
 b'8\staccato[ g'\staccato b'\staccato] g'\staccato[ c''\staccato b'\staccato] ais'4 r8 r4 r8
 r8 r e''8 e''4( cis''!8) d''2. ~ d''4 b'8 b'4( cis''8) d''2. ~ d''4 d''8 d''4( b'8)
 c''2. ~ c''4_\markup { \italic "cresc." } c''8 c''4( a'8) f'4\f r8 a'4.\sf( f'4\staccato) r8 c''4.\sf( a'4\staccato)
 r8 f''4.\sf( c''4\staccato) r8 a''4.\sf( b''4) r8 g''4\staccato r8 e''4\staccato r8 bes'4\staccato r8
 g'4\staccato r8 e'4\staccato r8 bes4\staccato r8 bes'4\staccato r8 a4 r8 c''4\sf\staccato c''8\staccato
 a'4 r8 f''4\sf f''8 c''4 r8 a''4\sf a''8 f''4 r8 f'''4\sf f'''8 e'''4\staccato r8 bes''4\staccato r8
 g''4\staccato r8 e''4\staccato r8 bes'4\staccato r8 g'4\staccato r8 e'4\staccato r8 bes4\staccato r8
 a4\staccato a'8\p\staccato a'4\staccato b'!8\staccato c''2. b'4 b'8 b'4 cis''!8 d''2. c''4 r8 r4 r8
 e''4\p\staccato e''8\staccato e''4\staccato fis''!8\staccato g''2. fis''!4 fis''8 fis''4 gis''!8 a''2. ~ a''4
 gis''8 gis''4 a''8 b''2.\sf ~ b''4 b''8 b''4 c'''8 d'''2.\sf ~ d'''4 gis''!8 gis''4 a''8 b''2.\sf ~ b''4
 e'8\staccato e'4\staccato_\markup { \italic "cresc." } e'8\staccato e'4 e'8 e'4 e'8
 f'2.\sf ~ f'2. e'4\p r8 r4 r8 r4 gis'8\p\staccato gis'4\staccato_\markup { \italic "cresc." } gis'8\staccato
 a'8\f([ b' c''] d''[ e'' f'']) g''([ a'' b''] c'''[ d''' dis'''])
 e'''4 e''8\p\staccato e''4\staccato e''8\staccato e''4\staccato e''8\staccato e''4\staccato e''8\staccato
 <e'' fis''>2.( <d'' fis''>2.) <d'' e''>2.( <cis'' e''>2.) <cis'' d''>2.( <b' d''>2.) <b' cis''>2.( <a' cis''>2.)
 <a' b'>2._\markup { \italic "cresc." } ~ <a' b'>2. ~ <a' b'>2. ~ <a' b'>2. <gis' b'>4\p r8 e''4\pp r8 r4 r8 e''4 r8 r4 r8 e''4 r8
 r4 r8 e''4 r8 e''4\staccato r8 gis''( a'' b'') e''4\staccato r8 a''( b'' cis''') e''4\staccato r8 b''( cis''' d''')
 e''4\staccato r8 a''( b'' cis''') e''4 r8 e''4 r8 r4 r8 e''4 r8 r4 r8 e''4 r8
 r4 r8 e''4 r8 e''4\staccato r8 gis''( a'' b'') e''4\staccato r8 a''( b'' c''') e''4\staccato r8 b''( c''' d''')
 e''4\staccato r8 a''( b'' c''') e''4\staccato r8 gis''( a'' b'') R2. R2. R2.
 cis''2.^\markup { \italic "calando    -    -" }_\markup { \italic "pp ritardando    -    -" } ~
 cis''2. ~ cis''2. ~ cis''4. ~ cis''4 cis''8\staccato
 cis''4\staccato_\markup { \italic "cresc." }^\markup { "a tempo" } cis''8\staccato cis''4\staccato cis''8\staccato
 cis''4\staccato cis''8\staccato cis''4\staccato dis''8\staccato e''4.\sf cis''4 dis''8
 e''4.\sf cis''4 dis''8 e''4.\sf ~ e''8[ fis'' e''] d''![ e'' d''] cis''[ d'' cis''] b'[ d'' fis''] e''[ fis'' e''] d''[ e'' d''] cis''[ d'' cis'']
 b'8\staccato[ d'\staccato_\markup { \italic "cresc." } d''\staccato] d'\staccato[ d''\staccato d'\staccato]
 d''8\staccato[ d'\staccato d''\staccato] d'\staccato[ d''\staccato d'\staccato]
 cis'8\sf[ d' e'] fis'[ e' d'] cis'\sf[ d' e'] fis'[ e' d'] cis'\sf[ d' e'] fis'\p[ e' fis'] g'![ fis' g'] a'[ g' a'] b'[ a' b'] e'[ d' e']
 fis'[ e' fis'] g'[ fis' g'] a'[ g' a'] d''_\markup { \italic "cresc." }[ e'' d''] cis''[ d'' cis''] b'[ cis'' b'] a'[ b' a'] d''[ e'' d'']
 cis''[ d'' cis''] b'[ cis'' b'] a'\f[ b' a'] d'[ e' d'] cis'[ d' cis'] b[ cis' b] cis'4 r8 r4 r8 R2.
 a'8\f[ e'' cis''] a''[ e'' cis'''] a''[ e''' d'''] cis'''[ b'' a''] d'''4 r8 r4 r8 R2.
 d'''8[ cis''' b''] a''[ gis'' fis''] e''[ fis'' e''] d''[ cis'' b'] a'4\p\staccato a'8\staccato a'4\staccato b'8\staccato
 cis''4\staccato cis''8\staccato cis''4\staccato d''8\staccato
 e''2.\sf ~ <fis' e''>2.( <fis' d''>2.)( <e' d''>2.)( <e' cis''>2.) dis''2.\sf
 e''4\f\staccato b'8\staccato b'4\staccato dis''8\staccato <e' e''>4\sf r8 r4 r8 r4 b'8\staccato b'4\staccato dis''8\staccato
 <e' e''>4\sf r8 r4 r8 r4 b'8\staccato b'4\staccato dis''8\staccato <e' e''>4\sf b'8\staccato b'4\staccato dis''8\staccato
 <e' e''>4\ff dis''8( e''4\sf\staccato) dis''8( e''4\sf\staccato) dis''8( e''4\sf\staccato) dis''8(
 e''4\sf\staccato) dis''8( e''4\sf\staccato) dis''8( e''4\sf\staccato) d''!8( cis''4\sf\staccato) b'8(
 a'4\staccato) a'8\p\staccato a'4\staccato b'8\staccato cis''4\staccato cis''8\staccato cis''4\staccato d''8\staccato
 e''4\staccato e''8\staccato e''4\staccato gis''8\staccato a''2.
 \acciaccatura a''16 gis''4\staccato gis''8\staccato gis''4\staccato e''8\staccato
 \acciaccatura gis''16 fis''4\staccato fis''8\staccato fis''4\staccato dis''8\staccato
 e''4\staccato e''8\staccato fis''4\staccato dis''8\staccato e''2.
 g'4\staccato g'8\staccato g'4\staccato a'8\staccato b'4\staccato b'8\staccato b'4\staccato c''8\staccato
 d''4\staccato d''8\staccato d''4\staccato fis''8\staccato g''2.
 \acciaccatura g''16 fis''4 fis''8\staccato fis''4\staccato d''8\staccato
 \acciaccatura fis''16 e''4\staccato e''8\staccato e''4\staccato cis''!8\staccato
 d''4\staccato d''8\staccato e''4\staccato cis''8\staccato
 d''8\staccato fis'\staccato e'\staccato d'\staccato cis'\staccato b\staccato a8\staccato cis'\staccato e'\staccato
 cis'\staccato e'\staccato cis'\staccato a\staccato cis'\staccato e'\staccato cis'\staccato e'\staccato cis'\staccato
 a\staccato cis'\staccato e'\staccato cis'\staccato e'\staccato cis'\staccato e'\staccato cis'\staccato e'\staccato
 c'\staccato e'\staccato c'\staccato b\staccato e'\staccato gis'\staccato b'\staccato a'\staccato gis'\staccato
 a'\staccato fis'\staccato dis'\staccato a\staccato b\staccato a\staccato gis\staccato b\staccato gis\staccato
 a\staccato b\staccato a\staccato gis\staccato b'\staccato a'\staccato gis'\staccato fis'\staccato e'\staccato
 b'\staccato b\staccato d'!\staccato b\staccato d'\staccato b\staccato g\staccato b\staccato d'\staccato
 b\staccato d'\staccato b\staccato g\staccato b\staccato d'\staccato b\staccato d'\staccato b\staccato
 d' b d' bes d' bes a d' fis' a' d'' fis'' g'' e'' cis'' a' g' e' fis' a' fis' g' a' g'
 fis'8 a d' fis' a' cis'' d''4 d''8( e''4\staccato) cis''8( d''2.)
 fis''4\staccato fis''8_\markup { \italic "cresc." }( g''4) e''8( fis''4) fis''8( g''4) e''8( fis''4) fis''8( g''4) e''8( fis''4)
 fis''8( e''4) d''8 cis''8\p( gis'! a' b' a' gis') a'2. cis''8( b' cis'' d'' cis'' b') cis''2.
 cis''8_\markup { \italic "cresc." }( b' cis'' d'' cis'' b') cis''( b' cis'' d'' cis'' b') cis''( b' cis'' d'' cis'' b')
 cis''( b' cis'' d'' cis'' b') cis''\f( b' cis'' d'' cis'' b') a'\sf( gis' a' b' a' gis') fis'\sf( eis' fis' gis' fis' e') d'8\sf( cis' d' e' d' cis')
 <b e'>4\p r8 <cis' e'>4 r8 fis'4 r8 gis'4 r8 e''2.\f a''2.\sf fis''2.\sf d''2.\sf b'4 r8 b'4.\sf ~ b'4. b'4.\sf ~
 b'4 r8 d'''4\sf\staccato r8 d'''4\staccato r8 d'''4\sf\staccato r8 d'''4\ff\staccato r8 b''4\staccato r8
 gis''4\staccato r8 e''4\staccato r8 d''4\staccato r8 b'4\staccato r8 gis'4\staccato r8 b'4\staccato r8
 e'4\f\staccato r8 d''4\staccato r8 \bar "||"
 \time 2/4 cis''2\p\staccato fis''2\staccato e''2\staccato d''4\staccato( d''\staccato d''\staccato d''\staccato)
 cis''8([ b' a' b']) cis''4( a') \bar "||"
 \time 6/8 R2. \bar "||" \time 2/4 R2 R2 R2 R2 R2 R2 R2
 d''4\p\staccato( d''\staccato_\markup { \italic "ritard." } d''\staccato d''\staccato) cis''8([ b' a' b']) cis''4( a') R2 R2 \bar "||"
 \time 6/8 R2.^\markup { "a tempo" } gis'2.\f \startTrillSpan gis''2.\f \stopTrillSpan \startTrillSpan ~ gis''2.
 a''4 \stopTrillSpan a'8\p\staccato a'4\staccato b'8\staccato cis''4\staccato cis''8\staccato cis''4\staccato d''8\staccato
 e''4 r8 r4 r8 R2. cis''4\staccato cis''8\staccato cis''4\staccato d''8\staccato
 e''4\staccato e''8\staccato e''4\staccato fis''8\staccato g''2.\sf ~ g''4 e''8\staccato e''4\staccato fis''8\staccato
 g''2.\sf ~ g''4 e''8\staccato e''4\staccato fis''8\staccato g''4 e''8_\markup { \italic "cresc." } e''4 fis''8
 g''4 cis'''8 cis'''4 d'''8 e'''4 cis'''8 cis'''4 d'''8 e'''4 e'''8 e'''4 fis'''8 g'''8\sf( fis''' e''' d''' cis''' b'') a''4 r8 r4 r8
 g''8\sf( fis'' e'' d'' cis'' b') a'4 r8 r4 r8 R2. R2. R2. R2.
 R2. R2. R2. r4 r8 r4 d'8\p d'4_\markup { \italic "cresc." } d'8 d'4 d'8 d'4 d'8 d'4 e'8 f'4.\sf d'4 e'8 f'4.\sf d'4 e'8
 f'8\ff\staccato d'\staccato e'\staccato f'\staccato d'\staccato e'\staccato
 f'\staccato d'\staccato e'\staccato f'\staccato d'\staccato e'\staccato
 f'\staccato d'\staccato e'\staccato f'\staccato d'\staccato e'\staccato
 f'\staccato d'\staccato e'\staccato f'\staccato d'\staccato e'\staccato f'4.\sf e'4 fis'8 g'4.\sf fis'!4 gis'8 a'8 gis' a' b' a' b'
 c''8 b' c'' d'' c'' d'' e''4 r8 r4 r8 e''8\p( cis'' d'' e'' d'' cis'') d''4 r8 r4 r8 d''8( b' cis'' d'' cis'' b')
 cis''4 e''8\staccato e''4\staccato cis''8 ais'2.\sfp b'4 d''8\staccato d''4\staccato b'8\staccato
 gis'2.\sf a'8_\markup { \italic "cresc." }( cis'' b' a' b' cis'') gis'( b' a' gis' a' b') fis'( a' gis' fis' gis' a') e'( gis' fis' e' fis' gis')
 <dis' c''>2.\f ~ <dis' c''>2. ~ <dis' c''>2. ~ <dis' c''>2. <d'! b'>4 d''8\staccato d''4( e''8 f''4\staccato)
 d''8 d''4( e''8 f''4\staccato) b'8\staccato_\markup { \italic "cresc." } b'4( cis''8 d''4\staccato)
 gis''8\staccato gis''4( a''8 <d'' b''>2.\f\>) ~ <d'' b''>4. ~ <d'' b''>4\!^\fermata r8^\markup { "Adagio" }
 R2. R2. r4 r8 cis''4\staccato_\markup { \italic "p cresc." }( dis''8) e''4.\p a'4\staccato_\markup { \italic "cresc." }( a'8\staccato)
 gis'4.\sf( g'4\p) r8 fis'4\staccato r8 e'4\staccato r8 fis'4 r8 b'8 cis'' b' a' b' a' gis'! a' gis'
 cis''4\staccato^\markup { "adagio." }( cis''8\staccato cis''4\staccato cis''8\staccato)
 cis''4\staccato_\markup { \italic "cresc." }( cis''8\staccato cis''4\staccato dis''8\staccato)
 e''4.\p a''4\staccato_\markup { \italic "cresc." }( a''8\staccato) gis''4.\p cis''4\staccato_\markup { \italic "cresc." }( dis''8\staccato)
 e''4.\sf^\markup { "Tempo I" } ~ e''8\p fis'' e'' d''! e'' d'' cis'' d'' cis'' b' cis'' b' d'' e'' d'' cis'' d'' cis'' b' cis'' b'
 a'8 b' a' g''4\staccato r8 fis''4\staccato r8 e''4\staccato r8 d''4\staccato r8 f''4\staccato r8 e''4\staccato r8 d''4\staccato r8
 cis''4\staccato r8 ais''8_\markup { \italic "cresc." } gis''! ais'' b'' ais'' b'' cis''' b'' cis''' d''' cis''' d''' gis'' fis'' gis''
 a''! gis'' a'' b'' a'' b'' cis'''\f b'' cis''' cis''' b'' cis''' d''' cis''' d''' e''' d''' e''' fis''' e''' fis''' b'' a'' b'' cis''' b'' cis''' d''' cis''' d'''
 e'''4 r8 e'''4.\sf ~ e'''4. e'''4.\sf ~ e'''4. e'''4\staccato r8 e'''4 r8 e'''4 r8 e'''2.\sf ~ e'''4.( d'''4 cis'''8)
 b''2. \startTrillSpan ~ b''2. a''4\p \stopTrillSpan a''8 a''4 b''8 cis'''4 cis'''8 cis'''4 d'''8
 e'''2.\sf ~ e'''4 cis'''8\staccato d'''4\staccato b''8\staccato
 a''4\p a''8 a''4 b''8 cis'''4 cis'''8 cis'''4 d'''8 e'''2.\sf ~ e'''4 cis'''8\staccato d'''4\staccato b''8\staccato
 e'''2.\sf ~ e'''4 cis'''8\staccato d'''4\staccato b''8\staccato
 e'''8\sf e'' e'' e''_\markup { \italic "cresc." } e'' e'' e'' e'' cis'' d'' d'' b' a'4\ff r8 r4 r8
 <e' cis'' a''>4\staccato r8 r4 r8 a4 r8 r4^\fermata r8 \bar "||"
}