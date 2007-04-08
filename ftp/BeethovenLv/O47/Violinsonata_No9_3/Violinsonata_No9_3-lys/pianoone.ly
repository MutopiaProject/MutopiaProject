\version "2.10.3"

 pianoone = {
 \set Staff.instrumentName = \markup { \column { " " " " " " " " " " " " "PIANO" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key a \major
 \time 6/8
 <a' cis'' e'' a''>4.\ff ~ <a' cis'' e'' a''>4^\fermata r8 R2.
 \repeat volta 2 {
 R2. R2. R2. R2. R2. R2. r4 r8 r4 fis''8\p\staccato fis''4\staccato fis''8\staccato fis''4\staccato fis''8\staccato
 fis''4\staccato fis''8\staccato fis''4\staccato gis''8\staccato a''4.\sf fis''4 gis''8 a''4.\sf fis''4 gis''8
 a''4.\sf ~ a''8[ b'' a''] g''[ a'' g''] fis''[ g'' fis''] e''[ g'' b''] a''[ b'' a''] g''[ a'' g''] fis''[ g'' fis'']
 e''8[ fis'' e''] g''[ a'' g''] fis''[ g'' fis''] e''[ fis'' e''] d''[ fis'' a''] g''[ a'' g''] fis''[ g'' fis''] e''[ fis'' e'']
 d''[ e'' d''] fis''[ g'' fis''] e''[ fis'' e''] d''[ e'' d''] cis''[ d'' cis''] fis''[ g'' fis''] e''[ fis'' e''] d''[ e'' d'']
 cis''\f[ d'' cis''] b'[ cis'' b'] a'[ b' a'] gis'![ a' gis']
 a'4\f <cis' a'>8\staccato <cis' a'>4\staccato <e' b'>8\staccato
 <a' cis''>4\staccato <a' cis''>8\staccato <a' cis''>4\staccato <b' d''>8\staccato <cis'' e''>4 r8 r4 r8 R2.
 <b' d''>4\staccato <b' d''>8\staccato <b' d''>4\staccato <a' cis''>8\staccato
 <gis' b'>4\staccato <gis' b'>8\staccato <gis' b'>4\staccato <fis' a'>8\staccato <e' gis'>4 r8 r4 r8 R2. R2. R2.
 a'8\p[ e'' cis''] a''[ e'' cis'''] a''[ e''' d'''] cis'''[ b'' a''] d'''4 r8 r4 r8 R2.
 r8 cis'''[ bis''] cis'''[ g'' b''] cis''[ gis'' b'] cis''[ gis' b']
 r8 a'[ fis'] cis''[ a' fis''] cis''[ a'' fis''] cis'''[ a'' fis''] r b''[ ais''] b''[ fis'' a''] b'[ fis'' a'] b'[ fis' a']
 r8 gis'[ e'] b'[ gis' e''] b'[ gis'' e''] b''[ gis'' e'''] r e'''_\markup { \italic "cresc." }[ cis'''] ais''[ fis'' e'']
 r e''\sf[ cis''] ais'[ fis' e'] dis'4\f r8 r4 r8 r8 r fis'\staccato fis'4\staccato ais'8\staccato <b b'>4\sf r8 r4 r8
 r8 r fis'\staccato fis'4\staccato ais'8\staccato <b b'>4\sf fis'8\staccato fis'4\staccato ais'8\staccato
 <b b'>4\sf fis'8\staccato fis'4\staccato ais'8\staccato
 <b b'>4\ff\staccato ais'8( <b b'>4\sf\staccato) ais'8( <b b'>4\sf\staccato)
 ais'8( <b b'>4\sf\staccato) ais'8( <b b'>4\sf\staccato) ais'8( <b b'>4\sf\staccato)
 ais'8( <b b'>4\sf\staccato) a'!8( gis'4\staccato) fis'8( e'\staccato)[ b\p e'] gis'[ e' b] gis'[ b e'] gis'[ e' b]
 gis'8[ b e'] gis'[ e' b] gis'[ e' b] g'[ e' b] fis'[ b dis'] fis'[ b dis'] e'[ cis' fis'] e'[ cis' fis'] dis'[ fis' dis'] e'[ fis' e']
 dis'8[ fis' e'] dis'[ cis' b] fis'[ a d'!] fis'[ d' a] fis'[ a d'] fis'[ d' a] fis'[ a d'] fis'[ d' a]
 fis'[ d' a] f'[ d' a] e'[ a cis'] e'[ a cis'] d'[ b e'] d'[ b e'] cis'[ e' cis'] d'[ e' d']
 cis'4 r8 r4 dis''8( e''4\staccato) e''8\staccato e''4\staccato fis''8\staccato
 gis''4\staccato gis''8\staccato gis''4\staccato a''8\staccato
 b''4\staccato b''8\staccato b''4\staccato dis'''8\staccato e'''2.
 \acciaccatura e'''16 dis'''4\staccato dis'''8\staccato dis'''4\staccato b''8\staccato
 \acciaccatura dis'''16 cis'''4\staccato cis'''8\staccato cis'''4\staccato ais''8\staccato
 b''4\staccato b''8\staccato cis'''4\staccato ais''8\staccato b''2.
 d''!4\staccato d''8\staccato d''4\staccato e''8\staccato fis''4\staccato fis''8\staccato fis''4\staccato g''8\staccato
 a''4\staccato a''8\staccato a''4\staccato cis'''8\staccato d'''2.
 \acciaccatura d'''16 cis'''4\staccato cis'''8\staccato cis'''4\staccato a''8\staccato
 \acciaccatura cis'''16 b''4\staccato b''8\staccato b''4\staccato gis''8\staccato
 a''4 a''8( b''4\staccato) gis''8 a''2. cis'''4 cis'''8( d'''4\staccato) b''8 cis'''2.
 e'''4\staccato_\markup { \italic "cresc." } e'''8 ~ e'''4 e'''8 ~ e'''4 e'''8 ~ e'''4 e'''8 ~ e'''4 e'''8 ~ e'''4 e'''8 ~ e'''4
 e'''8 ~ e'''4 dis'''8( e'''4\p) r8 r4 r8 R2. R2. R2.
 r4 r8 b''4._\markup { \italic "cresc." } ~ b''4. b'' ~ b'' b''4\staccato r8 b''4\staccato r8 b''4\staccato r8
 b''2.\f <e'' e'''>2.\sf <cis'' cis'''>2.\sf <a' a''>2.\sf r8 fis'\p[ fis''] r gis'[ gis''] r a'[ a''] r fis'[ fis'']
 gis''8\f([ fis'' gis''] a''[ gis'' fis'']) e''\sf([ dis'' e''] fis''[ e'' dis'']) cis''\sf([ bis' cis''] dis''[ cis'' b'])
 a'8\sf([ gis' a'] b'[ a' gis']) fis'[ a'( gis'] a'\sf[ fis' e'] dis'\staccato)[ a'( gis'] a'\sf[ fis' e']
 dis'\staccato)[ a'( gis'] a'\sf[ fis' e'] dis'\staccato)[ a'( gis'] a'\sf[ fis' e'])
 dis'\ff[ fis' a'] dis''[ a'' dis''] a''[ dis'' a''] dis''[ a'' dis''] a''[ dis'' a''] dis''[ a'' dis''] a''[ dis'' a''] dis''[ a'' dis'']
 a''4\f\staccato r8 <dis' a'>4\staccato r8 \bar "||"
 \time 2/4 <e' gis'>2\p\staccato <e' cis''>2\staccato <e' b'>2\staccato
 <cis' fis' a'>4\staccato( <cis' fis' a'>\staccato <cis' fis' a'>\staccato <cis' fis' a'>\staccato)
 <b dis' fis'>( <b dis' fis'>) <b e' gis'>4 r4 \bar "||"
 \time 6/8 <dis' a'>4\f\staccato r8 <dis'' a''>4\staccato r8 \bar "||"
 \time 2/4 <e'' gis''>2\p\staccato <e'' cis'''>\staccato <e'' b''>\staccato
 <cis'' a''>4\staccato( <cis'' a''>\staccato <cis'' a''>\staccato <cis'' a''>\staccato)
 << { gis''8([ fis'' e'' fis'']) gis''4( e'') } \\ { dis''4 b' b' e'4\rest } >>
 <cis' fis' a'>4\staccato^\markup { \italic "ritard." }( <cis' fis' a'>\staccato <cis' fis' a'>\staccato <cis' fis' a'>\staccato)
 <b dis' fis'>4\staccato <b dis' fis'>\staccato <b e' gis'>4 r4
 a''4\staccato( a''\staccato a''\staccato a''\staccato) \bar "||"
 \time 6/8 fis''2._\markup { \italic "cresc." } \startTrillSpan fis''2. fis''2.\f fis''2.
 e''!4 \stopTrillSpan r8 r4 r8 R2.
 e''8\staccato e'''( dis''' e''' b'' gis'') e''\staccato e''( dis'' e'' b' gis') e'4 r8 r4 r8 R2.
 e''8 e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e'''
 e'' e''' e''_\markup { \italic "cresc." } e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e''' e'' e'''
 e''4\sf r8 r4 r8 e''8( fis'' gis'' a'' b'' cis''') d'''4\sf\staccato r8 r4 r8
 e'8( fis' gis' a' b' cis'') d''\sf( cis'' b' a' gis' fis' e' fis' gis' a' b' cis'') d''\sf( cis'' b' a' gis' fis' e' fis' gis' a' b' cis'')
 d''\p cis'' b' a' gis' fis' e' d' cis' \clef bass b a gis fis e d cis b, a, }
 \alternative { { gis,8[ fis, e,] r4 r8 R2. } { \clef bass gis,8[ fis, e,] r4 r8 r4 a,8_\markup { \italic "cresc." } a,4 a,8 } }
 a,4 a,8 a,4 b,8 c4.\sf a,4 b,8 c4.\sf a,4 b,8 c8\ff[ a, b,] c[ a, b,] c[ a, b,] c[ a, b,] c[ a, b,] c[ a, b,] c[ a, b,] c[ a, b,]
 c8[ g\p c'] e'[ g c'] r8 g[ c'] e'[ g c'] r8 g[ c'] e'[ g c'] \clef treble r8 g[ c'] ees'[ c' fis'!] g'[ g b] d'[ g' b'] c''[ a' fis'!] c'[ d' c']
 \new Voice { \stemUp b8\f[ \stemDown gis'' fis''] } gis''\sf[ e'' d''] cis''![ bes' a'] g'[ f' e']
 d'8\p[ a d'] f'[ a d'] r8 a[ d'] f'[ a d'] r8 a[ d'] f'[ a d'] f'[ a d'] f'[ d' gis'!] e'[ a c'] e'[ a' c''] d''[ b' gis'!] d'[ e' d']
 \new Voice { \stemUp c'8\f[ \stemDown a'' gis''!] } a''\sf[ f'' e''] dis''[ c'' b'] a'[ g' fis'!]
 e'4\p e''8\staccato e''4\staccato fis''8\staccato g''4\staccato g''8\staccato g''4\staccato a''8\staccato
 b''4\staccato b''8\staccato b''4\staccato dis'''8\staccato e'''2. ~ e'''4 e'''8 e'''4( cis'''!8)
 ais''2. ~ ais''4 b''8 b''4( cis'''8) d'''2. ~ d'''4 d'''8 d'''4( b''8) gis''2. ~ gis''4 a''8 a''4( b''8)
 c'''2._\markup { \italic "cresc." } ~ c'''4\f r8 c''4.\sf( a'4\staccato) r8 f''4.\sf( c''4\staccato)
 r8 a''4.\sf( f''4\staccato) r8 f'''4.\sf( e'''4\staccato) r8 bes''4\staccato r8 g''4\staccato r8 e''4\staccato r8
 bes'4\staccato r8 g'4\staccato r8 e'4\staccato \clef bass r8 <g bes>4 r8 <f a>4 r8 <a c'>4\sf <a c'>8
 <f a>4 \clef treble r8 <c' f'>4\sf <c' f'>8 <a c'>4 r8 <f' a'>4\sf <f' a'>8 <c' f'>4 r8
 <a' f''>4\sf <a' f''>8 <bes' e''>4 r8 <g' bes'>4\staccato r8 <e' g'>4\staccato r8 <bes e'>4\staccato r8
 \clef bass <g bes>4\staccato r8 <e g>4\staccato r8 <bes, e>4\staccato r8 <g, bes, e>4\staccato r8
 <a, c f>4 r8 r4 r8 \clef treble e'4\p\staccato e'8\staccato e'4\staccato fis'!8\staccato g'2.
 fis'!4\staccato fis'8\staccato fis'4\staccato gis'!8\staccato a'4 r8 r4 r8 r4 r8 r4 ees''8( d''4\staccato)
 d''8\staccato d''4\staccato e''!8\staccato a'4 r8 r4 f''8( e''4) e''8 e''4 f''8
 b'2.\sf ~ b'4 b'8 b'4 c''8 d''2.\sf ~ d''4 gis'!8 gis'4 a'8 b'2.\sf ~ b'4 e'8 e'4 fis'!8 gis'!4 r8 r4 r8
 r4 gis'8\staccato gis'4\staccato gis'8\staccato
 a'8\f([ b' c''] d''[ e'' f''] g''[ a'' b''] c'''[ d''' dis'''] e'''4) \clef bass <e e'>8\p\staccato
 <e e'>4\staccato_\markup { \italic "cresc." } <e e'>8\staccato
 <e e'>4\staccato <e e'>8\staccato <e e'>4\staccato <e e'>8\staccato <f f'>2.\sf ~ <f f'>2. <e e'>4 r8 r4 r8 R2.
 r4 r8 \clef treble ais8( cis' fis') r4 r8 b'( d'' fis'') r4 r8 gis( b e') r4 r8 a'( cis'' e'')
 r4 r8 \clef bass fis( a d') r4 r8 \clef treble gis'( b' d'') r4 r8 \clef bass eis( gis cis')
 r4 r8 \clef treble fis'( a' cis'') r4 r8 a_\markup { \italic "cresc." }( b fis') r4 r8 a( b e'!) r4 r8 a( b d') r4 r8 a( b dis')
 <gis b e'>4\pp r8 gis'( a' b') e'4\staccato r8 a'( b' cis'') e'4\staccato r8 b'( cis'' d'')
 e'4\staccato r8 a'( b' cis'') r4 r8 b'8( a' gis') r4 r8 cis''( b' a') r4 r8 d''( cis'' b') r4 r8 cis''( b' a')
 e'4\staccato r8 gis'( a' b') e'4\staccato r8 a'( b' c'') e'4\staccato r8 b'( c'' d'')
 e'4\staccato r8 a'( b' c'') r4 r8 b'( a' gis') r4 r8 c''( b' a') r4 r8 d''( cis'' b') r4 r8 c''( b' a') r4 r8 b'( a' gis')
 r4 r8 b_\markup { \italic "decresc." }^\markup { \italic "ritardando    -    -" }^\markup { \italic "calando    -    -" }( a gis)
 r4 r8 b( a gis) r4 r8 b( a gis) r4 r8 b\pp( a gis) r4 r8 b( a gis) r4 r8 b( a gis) r4 r8 b( a gis)
 \clef bass a,8_\markup { \italic "cresc." }[ a a,] a[ a, a] a,[ a a,] a[ a, a] gis\sf[ a b] cis'[ b a]
 gis8\sf[ a b] cis'[ b a] gis\sf[ a b] cis'[ b cis'] \clef treble d'[ cis' d'] e'[ d' e'] fis'[ e' d'] cis'[ b cis']
 d'8[ cis' d'] e'4 e''8 fis''4\staccato_\markup { \italic "cresc." } fis''8\staccato fis''4\staccato fis''8\staccato
 fis''4\staccato fis''8\staccato fis''4\staccato gis''8\staccato a''4.\sf fis''4 gis''8 a''4.\sf fis''4 gis''8
 a''4.\sf ~ a''8\p[ b'' a''] g''[ a'' g''] fis''[ g'' fis''] e''[ fis'' e''] g''[ a'' g''] fis''[ g'' fis''] e''[ fis'' e''] d''[ e'' d'']
 fis''_\markup { \italic "cresc." }[ g'' fis''] e''[ fis'' e''] d''[ e'' d''] cis''[ d'' cis''] fis''[ g'' fis'']
 e''[ fis'' e''] d''[ e'' d''] cis''\f[ d'' cis''] b'[ cis'' b'] a'[ b' a'] gis'[ a' gis']
 a'4\f <cis' a'>8\staccato <cis' a'>4\staccato <e' b'>8\staccato
 <a' cis''>4\staccato <a' cis''>8\staccato <a' cis''>4\staccato <b' d''>8\staccato <cis'' e''>4 r8 r4 r8
 R2. <b' d''>4\staccato <b' d''>8\staccato <b' d''>4\staccato <a' cis''>8\staccato
 <gis' b'>4\staccato <gis' b'>8\staccato <gis' b'>4\staccato <fis' a'>8\staccato <e' gis'>4 r8 r4 r8
 R2. R2. R2. r8 e'''8\sf([ dis'''] e'''[ cis''' fis'']) r8 fis''\p([ eis''] fis''[ cis''' e''']) r8 d'''([ cis'''] d'''[ b'' fis''])
 r8 e''!([ dis''] e''_\markup { \italic "cresc." }[ b'' d'''!]) r8 cis'''([ bis''] cis'''[ a'' e'']) r8 a''\f([ fis''] dis''[ b'! a'])
 gis'4\f r8 r4 r8 r8 r8 b''8\staccato b''4\staccato dis'''8\staccato <e'' e'''>4\sf r8 r4 r8
 r8 r b''8\staccato b''4\staccato dis'''8\staccato <e'' e'''>4\sf b''8\staccato b''4\staccato dis'''8\staccato
 <e'' e'''>4\sf\staccato b''8\staccato b''4\staccato dis'''8\staccato
 <e'' e'''>4\ff dis'''8( <e'' e'''>4\sf\staccato) dis'''8( <e'' e'''>4\sf\staccato) dis'''8( <e'' e'''>4\sf\staccato)
 dis'''8( <e'' e'''>4\sf\staccato) dis'''8( <e'' e'''>4\sf\staccato) dis'''8( <e'' e'''>4\sf\staccato)
 d'''!8( cis'''4\staccato) b''8( a''8) a8\p[ cis'] e' a cis' r8 a cis' e' a cis' r a cis' e' a cis' r cis' e' a' c' e'
 b8 e' gis' b' a' gis' a' fis' dis' a b a \clef bass gis8 b gis a b a gis b a gis fis e r g b d' g b r g b d' g b r g b d' g b
 \clef treble r8 b d' g' bes d' a d' fis' a' g' fis' g' e' cis' \clef bass g a g fis a fis g a g fis4 r8 r4 \clef treble gis'8(
 a'4\staccato) a'8\staccato a'4\staccato b'8\staccato cis''4\staccato cis''8\staccato cis''4\staccato d''8\staccato
 e''4\staccato e''8\staccato e''4\staccato gis''8\staccato a''2.
 \acciaccatura a''16 gis''4\staccato gis''8\staccato gis''4\staccato e''8\staccato
 \acciaccatura gis''16 fis''4\staccato fis''8\staccato fis''4\staccato dis''8\staccato
 e''4\staccato e''8\staccato fis''4\staccato dis''8\staccato e''2. g'4\staccato g'8\staccato g'4\staccato a'8\staccato
 b'4\staccato b'8\staccato b'4\staccato c''8\staccato d''4\staccato d''8\staccato d''4\staccato fis''8\staccato
 g''2. \acciaccatura g''16 fis''4\staccato fis''8\staccato fis''4\staccato d''8\staccato
 \acciaccatura fis''16 e''4\staccato e''8\staccato e''4\staccato cis''8\staccato d''4 d''8( e''4) cis''8( d''2.)
 fis''4\staccato fis''8( g''4\staccato) e''8( fis''2.)
 a''4\staccato a''8_\markup { \italic "cresc." } ~ a''4 a''8 ~ a''4 a''8 ~ a''4 a''8 ~ a''4 a''8 ~ a''4 a''8 ~ a''4 a''8 ~ a''4 gis''8(
 a''4\p\staccato) r8 r4 r8 R2. R2. R2. r4 r8 e''4._\markup { \italic "cresc." } ~ e''4. e''4. ~ e''4. e''4\staccato r8
 e''4\staccato r8 e''4\staccato r8 e''2.\f a''2.\sf fis''2.\sf <d'' d'''>2.\sf r8 b'8\p( b'') r cis''( cis''') r d''( d''') r b'( b'')
 cis'''8\f( bis'' cis''' d''' cis''' b'') a''\sf( gis'' a'' b'' a'' gis'') fis''\sf( eis'' fis'' gis'' fis'' e'')
 d''\sf( cis'' d'' e'' d'' cis'') b'\staccato d''( cis'' d''\sf b' a' gis'\staccato) d''( cis'' d''\sf b' a' gis'\staccato)
 d''( cis'' d''\sf b' a' gis'\staccato) d''( cis'' d''\sf b' a') gis'\ff b' d'' gis'' d''' gis''
 d'''8 gis'' d''' gis'' d''' gis'' d''' gis'' d''' gis'' d''' gis'' d''' gis'' d''' gis'' d''' gis''
 d'''4\f\staccato r8 <gis d'>4\staccato r8 \bar "||" \time 2/4 <a cis'>2\p\staccato <a fis'>2\staccato <a e'>2\staccato
 \clef bass <fis b d'>4\staccato( <fis b d'>\staccato <fis b d'>\staccato <fis b d'>\staccato)
 <e gis b>4\staccato( <e gis b>\staccato) <e a cis'>4 r \bar "||"
 \time 6/8 <gis d'>4\f\staccato r8 \clef treble <gis' d''>4\staccato r8 \bar "||"
 \time 2/4 <a' cis''>2\p\staccato <a' fis''>\staccato <a' e''>\staccato
 <fis' d''>4\staccato( <fis' d''>\staccato <fis' d''>\staccato <fis' d''>\staccato)
 << { cis''8([ b' a' b']) cis''4( a') } \\ { gis'4( fis') e' c'4\rest } >>
 \clef bass <fis b d'>4\staccato_\markup { \italic "ritard." }( <fis b d'>\staccato <fis b d'>\staccato <fis b d'>\staccato)
 <e gis b>\staccato( <e gis b>\staccato) <e a cis'>4 r \clef treble d''4\staccato( d''\staccato d''\staccato d''\staccato) \bar "||"
 \time 6/8 b'2._\markup { \italic "cresc." } \startTrillSpan ~ b'2. b''2.\f \stopTrillSpan \startTrillSpan ~ b''2.
 a''4 \stopTrillSpan r8 r4 r8 R2. a'8\p( a'' gis'' a'' e'' cis'') a' a'( gis' a' e' cis') a4 r8 r4 r8 R2.
 a'8 a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a'_\markup { \italic "cresc." } a'' a' a''
 a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a' a'' a'4\sf r8 r4 r8 a8( b cis' d' e' fis' g'4\sf\staccato) r8 r4 r8
 a'8( b' cis'' d'' e'' fis'') g''\sf( fis'' e'' d'' cis'' b' a' b' cis'' d'' e'' fis'') g''\sf( fis'' e'' d'' cis'' b' a' b' cis'' d'' e'' fis'')
 g''8\p fis'' e'' d'' cis'' b' a' g' fis' e' d' cis' \clef bass b a g fis e d cis b, a, r4 r8 r4 d8_\markup { \italic "cresc." } d4 d8
 d4 d8 d4 e8 f4.\sf d4 e8 f4.\sf d4 e8 f8\ff d e f d e f d e f d e f d e f d e f d e f d e f4.\sf e4 fis8 g4.\sf fis!4 gis8
 a8 gis a b a b \clef treble c' b c' d' c' d' e'4 e'''8\p\staccato e'''4\staccato cis'''!8\staccato
 << { ais''2. b''4 } \\ { g''8\sf( e'' fis'' g'' fis'' e'') d''4 } >> d'''8\staccato d'''4\staccato b''8\staccato
 << { gis''!2. a''4 } \\ { f''8\sf( d'' e'' f'' e'' d'') cis''4 } >> r8 r4 r8 e'''8\sf( cis''' d''' e''' d''' cis''') b''4 r8 r4 r8
 d'''8\sf( b'' cis''' d''' cis''' b'') cis'''_\markup { \italic "cresc." }( a'' b'' cis''' b'' a'') b''( gis'' a'' b'' a'' gis'')
 a''( fis'' gis'' a'' gis'' fis'') gis''( e'' fis'' gis'' fis'' e'') dis''\f( a'' fis'' dis'' c'' a') fis'( dis'' c'' a' fis' dis') c'( a' fis' dis' c' a)
 \clef bass fis8 dis c a, c a, gis,4\p r8 e8( gis b d'4\staccato) r8 \clef treble e'8( gis' b' d''4\staccato) r8
 e''8_\markup { \italic "cresc." }( gis'' b'') d'''( b'' gis'')
 << { e''8 (gis'' b'') ~ \stemDown <b'' d'''>2. ~ <b'' d'''>4. ~ <b'' d'''>4^\fermata s8 } \\
 { e''4. ~ e''2.\sf\> ~ e''4. ~ e''4\! <a' cis''>8^\markup { "Adagio" } } \\ { \stemDown s8 gis''4 ~ gis''2. ~ gis''4. ~ gis''4 s8 } >>
 <a' cis''>4\staccato_\markup { \italic "cresc." }( <a' cis''>8\staccato <a' cis''>4\staccato <a' cis''>8\staccato)
 <a' cis''>4\staccato( <a' cis''>8\staccato <a' cis''>4\staccato <a' dis''>8\staccato)
 <gis' e''>4.\p <a a'>4\staccato( <a a'>8\staccato) <gis gis'>4.\p cis''4\staccato_\markup { \italic "cresc." }( dis''8\staccato)
 e''4.\sf ~ e''8 fis'' e'' d''! e'' d'' cis'' d'' cis'' b' cis'' b' d'' e'' d'' cis'' d'' cis'' b' cis'' b'
 <a a'>4\staccato^\markup { "adagio." }( <a a'>8\staccato <a a'>4\staccato <a a'>8\staccato)
 <a a'>4\staccato_\markup { \italic  "cresc." } <a a'>8\staccato <a a'>4\staccato <a a'>8\staccato
 <gis gis'>4.\p cis''4\staccato_\markup { \italic "cresc." }( dis''8\staccato) e''4.\p <a a'>4\staccato( <a a'>8\staccato)
 <gis gis'>4.\sf^\markup { "Tempo I." }( g'4\p\staccato) r8
 fis'4\staccato r8 e'4\staccato r8 e'4\staccato r8 f'4\staccato r8 e'4\staccato r8 d'4\staccato r8 cis'4\staccato r8 ais'8 gis' ais'
 b'8 ais' b' cis'' b' cis'' d'' cis'' d'' gis' fis' gis' a'! gis' a' b' a' b' cis'' b' cis'' cis''_\markup { \italic "cresc." } b' cis''
 d''8 cis'' d'' e'' d'' e'' fis'' e'' fis'' b' a' b' cis'' b' cis'' d'' cis'' d'' e''\f d'' e'' ais'' gis'' ais'' b'' ais'' b'' cis''' b'' cis'''
 d''' cis''' d''' gis'' fis'' gis'' a''! gis'' a'' b'' a'' b'' cis'''4 r8 cis'''4.\sf ~ cis'''4. cis'''4.\sf ~ cis'''4. cis'''4\staccato r8
 cis'''4\staccato r8 cis'''4\staccato r8 cis'''2.\sf ~ cis'''4.( b''4 a''8) gis''2. \startTrillSpan ~ gis''2. a''4\p \stopTrillSpan r8 cis'8 e' a'
 r4 r8 e' a' cis'' r8 e''8\sf([ dis''] e'' cis'' a') e'' cis'' a' d''! b' gis' r4 r8 cis' e' a' r4 r8 e' a' cis''
 r8 e''8\sf([ dis''] e'' cis'' a') e'' cis'' a' d''! b' gis' r e''([ dis''] e'' cis'' a') e'' cis'' a' d''! b' gis'
 e''8\sf a' cis'' e''_\markup { \italic "cresc." } a'' cis''' e''' cis''' a'' d''' b'' gis'' a''\ff e'' cis'' a' e' cis'
 \clef bass a8 e' cis' a e cis a,4 r8 r4^\fermata r8 \bar "||"
}