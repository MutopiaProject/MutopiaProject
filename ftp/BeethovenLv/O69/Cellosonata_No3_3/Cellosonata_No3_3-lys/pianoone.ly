\version "2.6.0"

 pianoone = {
 \set Staff.instrument = \markup { \column { " " " " " " " " " " " " "PIANOFORTE" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key e \major
 \time 2/4
 \once \override TextScript #'padding = #1.5
 b'4\p^\markup { \bold "Adagio cantabile." }( e''16 dis'' e'' gis') b'4( a'8 gis'16^\trill a'32 b')
 cis''8([ b' dis'' e''16 gis']) b'8.([ ais'16] a'8) r a'8. a'16 a'( gis') fis'\staccato( e'\staccato)
 cis''4_\markup { \italic "cresc." }( b'8) e''16.( cis''32)
 << { b'4_\markup { \italic "p dolce" } ais' } \\
 { s8 \startTrillSpan s32 s16 \stopTrillSpan s32 s8 \startTrillSpan s16 s32 \stopTrillSpan s32 } >> a'!8^\trill[ ~ a'32 gis' a' fis']
 \new Voice { dis'32[ b \stemUp \change Staff="three" ais32 a gis a fis b] e8 } r8 r \grace { b16[ e'] } gis'8
 r8 \grace { b16[ fis'] } a'8 r8 \grace { b16[ e'] } gis'8 r8 \grace { e'16[ gis'] } b'8 r8 \grace { e'16[ gis'] } b'8
 r8 \grace { b16[ fis'] } b'8 r8 \grace { b16[ fis'] } b'8 r8 \grace { b16_\markup { \italic "cresc." }[ fis'] } a'8
 r16 e'[ dis' e'] r8\p \grace { e'16[ a'] } cis''8 r8 \grace { e'16[ b'] } d''8 r8 \grace { e'16[ a'] } cis''8
 r8 \grace { e'16[ b'] } d''8 R2 r8 cis''8([ d'']) \clef bass <e gis b d'>8
 \new Voice { \cadenzaOn <e gis b d'>8 s4 s8 r8 s8 r4^\fermata s4 \cadenzaOff }

 \bar "||" \break
 \key a \major
 \time 2/2
 \repeat volta 2 {
 <e a cis'>8\pp^\markup { \bold "Allegro vivace." } <e a cis'> <e a cis'> <e a cis'>
 <e b d'> <e b d'> <e gis d'> <e gis d'> <e a cis'>4 r r2
 <fis b d'>8 <fis b d'> <fis b d'> <fis b d'> <fis b d'> <fis b d'> <fis b d'> <fis b d'> <e b d'>4 r r2
 <e a cis'>8_\markup { \italic "cresc." } <e a cis'> <e a cis'> <e a cis'>
 <e b d'> <e b d'> <e gis d'> <e gis d'> <e a cis'> <e a cis'> <e a cis'> <e a cis'> <e a cis'> <e a cis'> <e a cis'> <e a cis'>
 <fis a d'> <fis a d'> <fis b d'> <fis b d'> <e a b> <e a b> <e gis e'> <e gis e'> <e a cis'>8\f
 \clef treble cis''16\p[ e''] d''[ fis'' e'' gis''] fis''[ a'' gis'' b''] a''[ cis''' b'' d''']
 cis'''4_\markup { \italic "dolce" }( a'' gis'' b'') a''2. b''8\staccato cis'''\staccato
 e'''8( d''') cis'''\staccato d'''\staccato cis'''( b'') ais''\staccato b''\staccato a''!( gis'') fis''\staccato gis''\staccato
 e''4 fis''16( gis'' a'' b'') cis'''4( a'' gis'' b'') a''2._\markup { \italic "cresc." } b''8\staccato cis'''\staccato
 e'''8( d''') cis'''\staccato d'''\staccato cis'''( b'') ais''\staccato b''\staccato
 a''!8[ a'''16 gis'''] a'''[ gis''' a''' gis'''] a'''[ gis''' fis''' e'''] d'''[ cis''' b'' a'']
 gis''16[ a'' b'' cis'''] d'''[ cis''' b'' a''] gis''[ a'' b'' a''] gis''[ e'' fis'' gis'']
 a''[ e'' fis'' gis''] a''[ b'' cis''' b''] a''[ gis'' fis'' e''] d''[ cis'' b' a'] gis'[ a' b' cis''] d''[ cis'' b' a'] gis'[ a' b' a'] gis'[ e' fis' gis']
 a'16_\markup { \italic "cresc." }[ b' cis'' b'] a'[ b' cis'' b'] a'[ b' cis'' b'] a'[ b' cis'' b']
 a'[ b' cis'' b'] a'[ b' cis'' b'] a'[ b' cis'' b'] a'[ cis'' b' a']
 gis'8[ <gis' e''> <gis' e''>] r r <a' e''> <a' e''> r r <b' e''> <b' e''> r r <cis'' e''> <fis' cis''> <fis' cis''>
 <fis' b'>4\f r r16 b'16\ff[ cis'' dis''] e''[ fis'' gis'' ais''] b''[ b'' cis''' dis'''] e'''[ fis''' gis''' ais''']
 b'''8\staccato fis'''\staccato dis'''\staccato b''\staccato fis''\staccato dis''\staccato b'\staccato fis'\staccato
 \new Voice { \stemUp dis'^\staccato[ b^\staccato \change Staff="three" fis^\staccato dis^\staccato] b,4^\staccato b^\staccato } r2
 R1 <cis' e'>2.\p <cis' e' fis'>8[ <cis' e' fis'>] <cis' e' fis'>[ <cis' e' fis'>] <b e' gis'>[ <b e' gis'>]
 <a e' a'>[ <a e' a'>] <b e' gis'>[ <b e' gis'>] <cis' e' fis'>4 <cis' e' fis'> r2
 R1 <cis' e'>2. <cis' e' fis'>8[ <cis' e' fis'>] <cis' e' fis'>[ <cis' e' fis'>] <b e' gis'>[ <b e' gis'>]
 <ais e' ais'>[ <ais e' ais'>] <b e' gis'>[ <b e' gis'>] <cis' e' fis'>4 <cis' e' fis'> r2
 << { g'2( fis'4 g'8) } \\ { e'1_\markup { \italic "cresc." } } >> <e' gis'!>1 <dis' fis'>2\p <fis' a'>4 fis' fis'( e') r2
 r2 \appoggiatura e''8 e'''2_\markup { \italic "cresc." }( ~ e'''8\f dis''' cis''' b'') ais''( b'') ais''( b'')
 ais''( b'') a''( b'') gis''( b'') fis''( b'') e''4\p r r2
 e''16([ fis'' gis'' a''] b''[ cis''' dis''' e'''] dis'''[ e''' dis''' cis'''] b''[ a'' gis'' fis'']) e''2( b')
 e''16([ fis'' gis'' a''] b''[ cis''' dis''' e'''] dis'''[ e''' dis''' cis'''] b''[ a'' gis'' fis''])
 \setTextCresc gis''8\<[ b''] r b'' cis'''[ cis'''] r cis''' b''[ b''] r b'' dis'''[ dis''' dis''' dis''']
 <e'' e'''>8[ <b' b''>] r <b' b''> <cis'' cis'''>[ <cis'' cis'''>] r <cis'' cis'''>
 <b' b''>[ <b' b''>] r <b' b''> <dis'' dis'''>[ <dis'' dis'''> <dis'' dis'''> <dis'' dis'''>]
 <e'' e'''>\!\ff[ <e'' e'''>] r <dis'' dis'''> r <e'' e'''> r <dis'' dis'''> r <e'' e'''> r <dis'' dis'''> r <e'' e'''> r <dis'' dis'''>
 << { e'''2 ~ e'''8[ b''( cis''' d'''!)] } \\ { <e'' gis'' b''>4\fp b'4\rest c''2\rest } >>
 gis''2 ~ gis''8 gis''8^\turn( a'' b'' d'' e'' fis'' b' cis'' d'' gis' a' }
 \alternative {
 { b'8 d' e' fis') b8 r r4 R1 \clef bass r4 gis4\p ~ gis8 gis( a b) } { \clef treble b'8( d' e' fis' b8) r r4 }
 }
 R1 r4 gis4 ~ gis8 gis( a b) <e c'>8 <c' e'>\p[ <c' e'> <c' e'>] <d' f'>[ <d' f'> <d' e'> <d' e'>]
 <c' e'>\<[ <c' a'>] <d' a'>[ <d' a'>] <d' g' bes'>[ <d' g' bes'>\!] <cis' g' a'>\>[ <cis' g' a'>\!]
 <d' f' a'>8 <f' a'>[ <f' a'> <f' a'>] <g' a'>[ <g' a'> <g' a'> <g' a'>]
 <f' a'>\<[ <fis' a' d''>] <g' d''>[ <g' d''>\!] <g' c'' ees''>\>[ <g' c'' ees''>] <fis' c'' d''>[ <fis' c'' d''>\!] <g' b'! d''>8\pp r r4 r2
 <g' g''>8[ <g' g''> <g' g''> <g' g''>] <g' g''>[ <g' g''> <g' g''> <g' g''>] <g' g''>4 r r2
 <g' g''>8[ <g' g''> <g' g''> <g' g''>] <g' g''>[ <g' g''> <g' g''> <g' g''>]
 \setTextCresc <g' g''>4\< r4 <g' g''>8[ <g' g''> <g' g''> <g' g''>] r2 <g' g''>8[ <g' g''> <g' g''> <g' g''>]
 r4 <g' g''>8 <g' g''> r4 <g' g''>8 <g' g''> r4 <a' f'' a''>8 <a' f'' a''> r4 <b' f'' g'' b''>8 <b' f'' g'' b''>
 <c'' e'' g'' c'''>8\!\ff <e' g'>8[ <e' g'> <e' g'>] <d' f' g'>[ <d' f' g'> <b d' g'> <b d' g'>]
 <c' e' g'>8[ <c' e' g'> <c' e' g'> <c' e' g'>] <d' f' g'>[ <d' f' g'> <b d' g'> <b d' g'>]
 <c' e' g'> <e' g'>[ <e' g'> <e' g'>] <d' f' g'>[ <d' f' g'>] <b d' g'>[ <b d' g'>]
 <c' e' g'>8[ <c' e' g'> <c' e' g'> <c' e' g'>] <c' e' bes'>[ <c' e' bes'> <c' e' bes'> <c' e' bes'>] <c' f' a'>4 r r2
 <f'' f'''>4. <f'' f'''>8\staccato <e'' e'''>\staccato[ <d'' d'''>\staccato <c'' c'''>\staccato <bes' bes''>\staccato]
 <a' a''>4 r <bes' bes''>4. <bes' bes''>8 <a' a''>8[ <g' g''> <f' f''> <e' e''>] <d' d''>4. <d'' d'''>8
 <c'' c'''>8[ <b' b''> <a' a''> <g' g''>] <f' f''>4. <f'' f'''>8 <e'' e'''>[ <d'' d'''> <c'' c'''> <b' b''>] <a' a''>[ <a'' a'''> <g'' g'''> <f'' f'''>]
 <e'' e'''>8[ <d'' d'''> <c'' c'''> <b' b''>] <a' a''>[ g'' f'' e''] d''4 r r2 <g' c'' e''>4_\markup { \italic "dim." } r4 r2 <a' d'' f''>4\p r r2
 <f' b' d''>4\pp r r2 ees'4( c' b d' ees' c' cis' e' f' d' dis' fis' g' e' f' aes' a'! fis'! a' f' a' e' a' dis') ~
 dis'8_\markup { \italic "ritard" }( a'4 e' a' f'8 ~ f'8 a'4 e' a' dis'8)
 a16\p^\markup { "a tempo" }[ <cis'! e'> a' <cis' e'>] a[ <cis' e'> a' <cis' e'>] b[ <d' e'> gis' <d' e'>] d'[ gis' e' d']
 cis'16[ e' a' e'] cis'[ e' gis' e'] cis'[ e' a' e'] cis'[ e' g' e'] a[ d' fis' d'] ais[ d' fis' d'] b[ d' fis' d'] b[ d' fis' d']
 b16[ d' e' d'] b[ d' e' d'] gis[ d' e' d'] b[ d' e' d'] a_\markup { \italic "cresc." }[ cis' e' cis'] a[ cis' e' cis'] b[ d' e' d'] gis[ d' e' d']
 a16[ cis' e' cis'] a[ cis' e' cis'] a[ cis' e' cis'] a[ cis' e' cis'] a[ d' fis' d'] b[ d' fis' d'] gis[ d' e' d'] gis[ d' e' d']
 <a cis' e'>8\f cis''16\p[ e''] d''[ fis'' e'' gis''] fis''[ a'' gis'' b''] a''[ cis''' b'' d''']
 cis'''4_\markup { \italic "dolce" }( a'' gis'' b'') a''2. b''8\staccato cis'''\staccato
 e'''8[( d''') cis'''\staccato d'''\staccato] cis'''[( b'') ais''\staccato b''\staccato]
 a''![( gis'') fis''\staccato gis''\staccato] e''4 fis''16([ gis'' a'' b''])
 cis'''4_\markup { \italic "dolce" }( a'' gis'' b'') a''2._\markup { \italic "cresc." } b''8\staccato cis'''\staccato
 e'''8[( d''') cis'''\staccato d'''\staccato] cis'''[( b'') ais''\staccato b''\staccato] a''!8\p
 a'''16[ gis'''] a'''[ gis''' a''' gis'''] a'''[ gis''' fis''' e'''] d'''[ cis''' b'' a'']
 gis''[ a'' b'' cis'''] d'''[ cis''' b'' a''] gis''[ a'' b'' a''] gis''[ e'' fis'' gis''] a''4 r <e' cis''> r <e' d''> r <e' d''> r
 <e' cis''>8 <cis' cis''>_\markup { \italic "cresc." }[ <cis' cis''>] r r <d' d''>[ <d' d''>] r
 r8 <e' e''>[ <e' e''> <e' e''>] <fis' fis''>[ <fis' fis''> <fis' fis''> <fis' fis''>]
 d''16[ e'' fis'' e''] d''[ e'' fis'' e''] d''[ e'' fis'' e''] d''[ e'' fis'' e''] d''[ e'' fis'' e''] d''[ e'' fis'' e''] d''[ e'' fis'' e''] d''[ fis'' e'' d'']
 cis''8 r r4 r2 d'''16[ e''' fis''' e'''] d'''[ e''' fis''' e'''] d'''[ e''' fis''' e'''] d'''[ fis''' e''' d''']
 cis'''16\f[ e''' d''' cis'''] d'''[ e''' fis''' gis'''] a'''[ gis''' a''' gis'''] a'''[ fis''' e''' dis''']
 e'''8\f r r4 r16 e''\ff[ fis'' gis''] a''[ b'' cis''' dis'''] e'''[ gis'' a'' b''] cis'''[ dis''' e''' fis''']
 gis'''[ b'' cis''' dis'''] e'''[ fis''' gis''' a''']
 b'''8\staccato[ gis'''\staccato e'''\staccato b''\staccato] gis''\staccato[ e''\staccato b'\staccato gis'\staccato]
 e'4\staccato \new Voice {  \change Staff="three" \stemUp e4^\staccato } r2 R1
 \new Voice { \change Staff="three" \stemUp <fis a>2.^\p } <fis' a' b'>8\pp[ <fis' a' b'>]
 <fis' a' b'>[ <fis' a' b'>] <e' a' cis''>[ <e' a' cis''>] <d' a' d''>[ <d' a' d''>] <e' a' cis''>[ <e' a' cis''>] <fis' a' b'>4 <fis' a' b'> r2 R1
 \new Voice { \change Staff="three" \stemUp <fis a>2. } <fis' a' b'>8[ <fis' a' b'>]
 <fis' a' b'>[ <fis' a' b'>] <e' a' cis''>[ <e' a' cis''>] <dis' a' dis''>[ <dis' a' dis''>] <e' a' cis''>[ <e' a' cis''>]
 <fis' a' b'>4 <fis' a' b'> r2 <c' c''>2_\markup { \italic "cresc." }( <b b'>4. <c' c''>8) <cis'! cis''!>1
 <d' d''>2.\p <b b'>4 <b b'>( a') r2 r2 <a' a''>2_\markup { \italic "cresc." }( ~ <a' a''>8\f gis'' fis'' e'') dis''[( e'') dis''( e'')]
 dis''8[( e'') d''( e'')] cis''[( e'') b'( e'')] a'4\p r r2 a'16([ b' cis'' d''] e''[ fis'' gis'' a''] gis''[ a'' gis'' fis''] e''[ d'' cis'' b']) a'2( e')
 a'16([ b' cis'' d''] e''[ fis'' gis'' a''] gis''[ a'' gis'' fis''] e''[ d'' cis'' b'])
 \setTextCresc cis''8\<[ cis''] r cis'' fis''[ fis''] r fis'' e''[ e''] r e'' gis''[ gis'' gis'' gis'']
 <a' a''>8[ <a' a''>] r <a' a''> <fis' fis''>[ <fis' fis''>] r <fis' fis''> <e' e''>8\!\ff r r4 r2
 r2 r16 cis''[ d'' e''] fis''[ e'' fis'' gis''] a''[ e'' fis'' gis''] a''[ gis'' a'' b''] cis'''[ gis'' a'' b''] cis'''[ b'' cis''' d''']
 e'''2\fp ~ e'''8( cis''' d''' e''' a'' b'' cis''' e'' gis'' a'' cis'' d'' e'' a' b' cis'' e' gis' a' cis' d' e' a b cis') r r4 R1
 r2 r8 e'8_\markup { \italic "dolce" }( fis' gis' a' b' cis'' d'' e'' dis'' e'' d'' cis'' b' a' gis' a'\staccato) a'( b' cis'')
 e''8\<( d'') cis''\staccato d''\staccato cis''( b') ais'\staccato b'\staccato\!
 a'!\>( gis') fis'\staccato gis'\staccato a'\staccato a'^\trill( b' cis''\!)
 e''8\<( d'') cis''\staccato d''\staccato cis''( b') ais'\staccato b'\staccato\!
 a'!\>( gis') fis'\staccato gis'\staccato a'\staccato a'^\trill( b' cis''\!)
 e''8( d'') cis''\staccato d''\staccato e''8( dis'') cisis''\staccato dis''\staccato
 e''[ fis''16 gis''] a''[ b'' cis'''! d'''!] e'''4\staccato\f gis''\staccato R1 R1 R1
 \clef bass b,8\p( cis d e fis gis a b \clef treble cis' d' e' fis' gis' a' b' cis'' d'' dis'' e'' eis'' fis'' b' e'' d'')
 cis''4( a' gis' b') a'2. g''4( fis''2)\< f''2 e''2. \acciaccatura g''16\!\> g'''4\!
 \acciaccatura fis''16 fis'''2\< \acciaccatura f''16 f'''2 \acciaccatura e''16 e'''2. \acciaccatura g''16\!\> g'''4\!
 \acciaccatura fis''16_\markup { \italic "cresc." } fis'''2 \acciaccatura a''16 a'''2 \acciaccatura a''16 a'''2 \acciaccatura a''16 a'''2
 \acciaccatura a''16 a'''2. gis'''8 fis''' \grace { e'''16[ fis''' gis'''] } \setTextCresc fis'''4\<( e'''2 d'''4)
 d'''8( cis''') bis''\staccato cis'''\staccato e'''( d''') fis''\staccato b''\staccato
 b''( a'') gis''\staccato a''\staccato cis'''( b'') ais''\staccato b''\staccato
 a''!8 <a'' a'''> <a'' a'''> <a'' a'''> <a'' a'''> <a'' a'''> <gis'' gis'''> <fis'' fis'''>
 <fis'' fis'''>8 <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''> <e'' e'''> <d'' d'''>
 <d'' d'''>( <cis'' cis'''>) <bis' bis''>\staccato <cis'' cis'''>\staccato <e'' e'''>( <d'' d'''>) <fis' fis''>\staccato <b' b''>\staccato
 <b' b''>( <a' a''>) <gis' gis''>\staccato <a' a''>\staccato <cis'' cis'''>( <b' b''>) <ais' ais''>\staccato <b' b''>\staccato
 d''16[ d''' cis'' cis'''] bis'[ bis'' cis'' cis'''] e''[ e''' d'' d'''] fis'[ fis'' b' b'']
 b'[ b'' a' a''] gis'[ gis'' a' a''] cis''[ cis''' b' b''] ais'[ ais'' b' b'']
 cis''\!\ff[ cis''' a''! a'''] a''[ a''' a'' a'''] a''[ a''' a'' a'''] fis''[ fis''' dis'' dis''']
 e''[ e''' e'' e'''] cis''[ cis''' a' a''] e''[ e''' e'' e'''] e'[ e'' e' e'']
 e'16\ff[ <a' cis''> e'' <a' cis''>] e'[ <a' cis''> e'' <a' cis''>] e'[ <b' d''> e'' <b' d''>] e'[ <gis' d''> e'' <gis' d''>]
 e'[ <a' cis''> e'' <a' cis''>] e'[ <a' cis''> e'' <a' cis''>] e'[ <b' d''> e'' <b' d''>] e'[ <b' d''> e'' <b' d''>]
 e'[ <a' cis''> e'' <a' cis''>] e'[ <a' cis''> e'' <a' cis''>] e'[ <b' d''> e'' <b' d''>] e'[ <b' d''> e'' <b' d''>]
 e'[ <a' cis''> e'' <a' cis''>] e'[ <a' cis''> e'' <a' cis''>] e'[ <a' cis''> e'' <a' cis''>] e'[ <a' cis''> e'' <a' cis''>]
 \setTextDim a'16\>[ cis'' e'' cis''] a'[ cis'' e'' cis''] a'[ cis'' e'' cis''] a'[ cis'' e'' cis'']
 cis''[ e'' a'' e''] cis''[ e'' a'' e''] cis''[ e'' a'' e''] cis''[ e'' a'' e''] e''[ a'' cis''' a''] e''[ a'' cis''' a''] e''[ a'' cis''' a''] e''[ a'' cis''' a'']
 a''[ cis''' e''' cis'''] a''[ cis''' e''' cis'''] a''[ cis''' e''' cis'''] a''[ cis''' e''' cis'''] <a'' cis''' e'''>4\!\pp r4 r2
 <a'' cis''' e'''>8 <a'' cis''' e'''> <a'' cis''' e'''> <a'' cis''' e'''> <a'' cis''' e'''> <a'' cis''' e'''> <a'' cis''' e'''> <a'' cis''' e'''>
 \setTextCresc <a'' cis''' e'''>4\< r r <a'' cis''' e'''>8 <a'' cis''' e'''>
 <a'' cis''' e'''> <a'' cis''' e'''> <a'' cis''' e'''> <a'' cis''' e'''> <a'' cis''' e'''>
 <a'' cis''' e''' a'''>[ <a'' cis''' e''' a'''> <a'' cis''' e''' a'''>] <a'' cis''' e''' a'''>4\!\f r <a' cis'' e'' a''> r <a cis' e' a'> r r2
 \bar "|."
}