\version "2.19.46"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key c \minor
 \time 4/4
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1R1 R1 R1 R1 R1 R1 R1
 r2^\fermata << { c16\rest^\f c( d ees f g a b) } \\ { c,16\rest c,( d, ees, f, g, a, b,) } >>
 c4\sf\staccato r4 r16 c( d ees f g a b)
 c'4\sf\staccato r4 r16 c( d ees f g a b) <c c'>2\f <ees ees'>
 <g g'>4.\sf <f f'>8\staccato <ees ees'>4\staccato <d d'>\staccato
 <c c'>4\staccato r8 <g, g>8\staccato <c c'>4\staccato r8 <g, g>8\staccato <c c'>4 r4 r2
 <g b d'>2\p <g d' f'> \clef treble << { <f' aes'>2 ~ <f' aes'>8( <ees' g'>)
 <d' f'>\staccato <c' ees'>\staccato } \\ { g2 ~ g4. fis8 } >>
 \clef bass <g b d'>4\staccato r8 <fis c' ees'>\staccato <g b d'>4\staccato r8 <fis c' ees'>\staccato
 <g b d'>4\staccato r r2
 \tupletSpan 4
 \tuplet 3/2 { c8[ ees g] c'[ c c'] ees[ g c'] ees'[ ees ees'] } \clef treble
 \tuplet 3/2 { aes[ c' ees'] aes'[ ees' c'] aes[ c' ees'] aes'[ aes aes'] } \clef bass
 \tuplet 3/2 { f[ aes c'] f'[ f f'] aes[ c' f'] aes'[ aes aes'] } \clef treble
 \tuplet 3/2 { des'[ f' aes'] des''[ aes' f'] des'[ f' aes'] des''[ des' des'']
 b[ d'! f'] b'[ b b'] d'[ f' b'] d''![ d' d''] f'([ aes' b'] f'[ aes' b'] ees'[ g' b'] d'[ f' b']) }
 << { <ees' c''>4 } \\ { c'4 } >> r4 \clef bass <f aes d'>4 r <g c' ees'> r <g d' f'> r
 <c ees g c'>4 r r2 R1 r2 r4
 \tupletSpan 4
 \tuplet 3/2 { g,,8[ b,, d,] g,[ b, d] } r4 r2 \clef treble <c' ees' g'>2. r4 R1 r2 r4
 \clef bass \tupletSpan 4
 \tuplet 3/2 { bes,,8[ d, f,] bes,[ d f] } r4 r2 R1 R1 R1 R1 R1 R1 ces4 r r2 R1
 \tupletSpan 4
 \tuplet 3/2 { bes,8[ d' bes] }
 \new Voice {
 \tupletSpan 4 \tuplet 3/2 {
 \change Staff="nine" \stemUp d[ \change Staff="eight" \stemDown f' \change Staff="nine" \stemUp bes]
 \change Staff="nine" \stemUp f[ \change Staff="eight" \stemDown aes' \change Staff="nine" \stemUp bes]
 \change Staff="nine" \stemUp d[ \change Staff="eight" \stemDown f' \change Staff="nine" \stemUp bes]
 \change Staff="nine" \stemUp ees[ \change Staff="eight" \stemDown ges' \change Staff="nine" \stemUp bes]
 \change Staff="nine" \stemUp ges[ \change Staff="eight" \stemDown bes' \change Staff="nine" \stemUp bes]
 \change Staff="nine" \stemUp ees[ \change Staff="eight" \stemDown ges' \change Staff="nine" \stemUp bes]
 \change Staff="nine" \stemUp ges[ \change Staff="eight" \stemDown bes' \change Staff="nine" \stemUp bes] }
 }
 \tuplet 3/2 { f8[ f' bes] aes[ aes' bes] f[ f' bes] aes[ aes' bes]
 ges[ ges' bes] ees[ ees' bes] ges[ ges' bes] ees[ ees' bes] bes,[ d' bes] d[ f' bes] }
 \new Voice {
 \tupletSpan 4 \tuplet 3/2 {
 \change Staff="nine" f[ \stemUp \change Staff="eight" \stemDown aes' \change Staff="nine" \stemUp bes]
 \change Staff="nine" d[ \stemUp \change Staff="eight" \stemDown f' \change Staff="nine" \stemUp bes]
 \change Staff="nine" ees[ \stemUp \change Staff="eight" \stemDown ges' \change Staff="nine" \stemUp bes]
 \change Staff="nine" ges[ \stemUp \change Staff="eight" \stemDown bes' \change Staff="nine" \stemUp bes]
 \change Staff="nine" ees[ \stemUp \change Staff="eight" \stemDown ges' \change Staff="nine" \stemUp bes]
 \change Staff="nine" ees[ \stemUp \change Staff="eight" \stemDown bes' \change Staff="nine" \stemUp bes] }
 }
 \tuplet 3/2 { f8[ f' bes] aes[ aes' bes] f[ f' bes] aes[ aes' bes]
 ges[ ges' bes] ees[ ees' bes] ges[ ges' bes] ees[ ees' bes] } <bes, bes>4 r
 \clef treble
 << { a'16\rest ges'( f' ges' f' ges' aes' ges') } \\ { bes2 } >> <f' bes>4 r
 << { a'16\rest ees'( d' ees' d' ees' f' ees') } \\ { bes2 } >>
 <d' bes>16\staccato d''16( cis'' d'' cis'' d'' ees'' d'') bes\staccato c'' b'( c'' b' c'' d'' c'')
 bes\staccato bes'( a' bes' a' bes' c'' bes') bes\staccato aes'( g' aes' g' aes' bes' aes')
 bes g' aes' g' \clef bass bes, f' g' f' bes ees' f' ees' bes, d' ees' d'
 bes, c' d' c' bes, bes c' bes bes, aes bes aes bes, g aes g <bes, f>4 r r2 R1 R1 R1
 ees8\p( bes ees' bes d' bes aes bes) g( bes fis bes g bes ees bes) d( bes cis bes d bes bes, bes)
 ees8( bes d' bes) ees'\staccato bes\staccato g\staccato ees\staccato
 c8\staccato ees\staccato aes\staccato c'\staccato \clef treble bes\staccato ees'\staccato g'\staccato bes'\staccato
 aes'\staccato ees'\staccato c'\staccato aes\staccato
 \clef bass g\staccato g'\staccato c\sf\staccato c'\staccato
 f,\sf\staccato f\staccato bes,\sf\staccato bes\staccato ees\sf\staccato ees'\staccato aes\sf\staccato aes'\staccato
 \clef treble << { g'8( fis' g' a' bes') } \\ { bes2 ~ bes8 } >> <aes' c''>8( <g' bes'> <f' aes'>) <ees' g'>4 r r2
 R1 R1 R1 R1 R1 R1 R1 c''2( bes' <aes' c''> <ges' bes'>)
 <f' c'' ees''>4 r r2 r8 d'16 ees' f' g' aes' g' \clef bass f' ees' d' c' bes aes g f
 ees4 \clef treble <c' ees'> r <aes c' f'> r <bes ees'> r \clef bass <bes, d aes> <ees g> r r2 R1
 \tupletSpan 4 \tuplet 3/2 { aes,,8[ c, f,] aes,[ c f] } g,4\rest
 \clef treble <aes c' f'> <bes ees' g'> <bes ees' g'> r <bes f' aes'>
 <ees' g'>4\staccato <ges' bes'>\staccato( <ges' bes'>\staccato <ges' bes'>\staccato)
 <ges' bes'>2( <f' bes'>4. <ees' bes'>8) <ces'' ees''>2( <bes' des''>4. <aes' ces''>8)
 <aes' ces''>2( <ges' bes'>4. <f' aes'>8) <f' aes'>2( <ees' ges'>4. <des' f'>8)
 \clef bass
 \tupletSpan 4
 \tuplet 3/2 { ges8[ bes des'] ges'[ des' bes] ces[ ees aes] ces'[ aes ees]
 des[ ges bes] des'[ bes ges] d[ f aes] bes[ aes f] ees[ ges bes] ees'[ bes ges] aes,[ ces f] aes[ f ces]
 bes,[ ees ges] bes[ ges ees] bes,[ f aes] bes,[ f aes] } ees4 r r2 R1
 \clef treble r4 r8 <d' f'>8\staccato <c' ees'>4\staccato r8 \clef bass <bes des'>8\staccato
 <aes c'>4\staccato r8 <g bes> <f aes> <f aes> <ees g> <ees g>
 <d f>8 <d f> <c ees> <c ees> <bes, d> <bes, d> <c ees> <d f> ees[ g,] c[ aes,] bes,[ a,] bes,[ bes,,]
 ees16 f g aes! bes aes g f ees d c bes, a, bes, c d ees f g aes! bes aes g f ees d c bes, a, bes, c d
 ees d ees f g g, a, b, c b, c d ees ees, f, g, aes,! g, aes, bes,! c c, d, e, f, e, f, g, aes, c, d, e,
 \new Voice { \stemDown f, e, f, g, aes, g, aes, g, f, e, f, g, aes, bes, c bes,
 aes, bes, g, aes, f, g, ees,! f, d, ees, c, d, bes,, c, aes,, bes,, g,,4 e,4\rest e,2\rest }
 r2 r4 r8 <g,, g,>8 \new Voice { \stemDown <aes,, aes,>4 f,4\rest g,2\rest } r2 r4 r8 <aes,, aes,>8
 \new Voice { \stemDown a,,4\sustainOn c,,16\rest a,,( c, ees, ges,4) r16 \slurUp a,( c ees
 ges a c' ees' ges' a c' ees' \clef treble ges' a' c'' ees'' ges'' ees'' c'' a'\sustainOff) }
 bes'4 r8 <bes' ees'' g''!>8\staccato <c'' ees'' aes''!>4\staccato r8 <c'' ees'' aes''>8\staccato
 <bes' ees'' g''>4\staccato r8 <bes' ees'' g''>8\staccato <a' ees'' fis''>4\staccato r8 <a' ees'' fis''>8\staccato
 <bes' ees'' g''>4 r r2 R1 R1 R1 \clef bass
 \tupletSpan 4 \tuplet 3/2 { r8 bes,,\staccato[ d,\staccato]
 f,\staccato[ bes,\staccato d\staccato] f\staccato[ bes,\staccato d\staccato] f\staccato[ bes\staccato d'\staccato]
 \clef treble f'\staccato[ bes\staccato d'\staccato] f'\staccato[ bes'\staccato d''\staccato]
 f''\staccato[ d''\staccato bes'\staccato] aes''\staccato[ f''\staccato d''\staccato] }
 <bes' d'' aes''>4\ff r r2 r2 r4 \clef bass f32[ ees d c bes, aes, g, f,] ees,8 r8 r4 r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r2 \new Voice { \slurDown \stemDown d,16\rest d,( e, fis, g, a, b, cis) } d4\staccato r r16 d( e fis g a b cis')
 d'4\staccato r4 \clef treble r16 d'16( e' fis' g' a' b' cis'')
 d''4\staccato r8 a'\staccato d''4\staccato r8 a'\staccato d''4\staccato r r2 R1 R1 R1
 g2 bes d'4. c'8\staccato bes4\staccato a\staccato g\staccato r r2
 \clef treble r8 d''8( cis'' d'' c'' bes' a' g') \grace { fis'32[ g' a'] } g'2( fis'4) r4
 r8 ees''8( d'' c'' bes' a' g' fis') a'2( g'4) r4 r8 fis''( g'' fis'' g'' f'' ees'' d'')
 f''8( ees'' d'' c'' bes' a' c'' ees'') ees''( g') g'\staccato g'\staccato g'( fis') fis'\staccato fis'\staccato
 g'4 r r2 R1 R1 r4 bes16 bes' bes bes' aes! aes'! aes aes' g g' g g' \clef bass <f f'>4 r r2
 \clef treble r8 c''( b' c'' bes' aes' g' f') \grace { e'32[ f' g'] } f'2( e'4) r
 r8 c''( des'' c'' des'' bes' g' e') g'2( f'4) r r8 e''8( f'' e'' f'' ees'' des'' c'')
 ees''8( des'' c'' bes' aes' g' bes' des'') des''( f') f'\staccato f'\staccato f'( e') e'\staccato e'\staccato
 f'4 r r2 r4 aes'\p\staccato( aes'\staccato aes'\staccato)
 \tupletSpan 4
 \tuplet 3/2 { ges'8[ aes' bes'] aes'[ ges' f'] ees'[ f' ges'] f'[ ees' des']
 \clef bass c'[ des' ees'] des'[ c' bes] aes[ bes aes] ges[ aes ges]
 f[ des f] aes[ f aes] \clef treble des'[ aes des'] f'[ des' f'] aes'[ f' aes'] des''[ aes' des''] f''[ des'' aes'] des''[ aes' f']
 ges'[ aes' bes'] aes'[ ges' f'] ees'[ f' ges'] f'[ ees' des']
 \clef bass c'[ des' ees'] des'[ c' bes] aes[ bes aes] ges[ aes ges]
 f[ des f] aes[ f aes] des'[ aes des'] \clef treble f'[ des' f'] d'![ b d'] f'[ d' f'] b'[ f' b'] d''[ b' d'']
 g'[ ees' g'] c''[ g' c''] ees''[ c'' ees''] g''[ f'' ees''] des''[ c'' des''] f''[ ees'' des''] c''[ b' c''] ees''[ d'' c''] } b'4 r r2
 r2 \afterGrace fis''2\sf { e''16[ fis''] } g''4 r r2 r2 \afterGrace fis''2\sf { e''16[ fis''] }
 g''4 \clef bass g16( g') r8 d16( d') r8 b,16( b) r8 g,16( g) r8 d,16( d) r8 b,,16( b,) r8 g,,16( g,) r8
 aes,,16( aes,) r8 aes,,16( aes,) r8 c,16( c) r8 f,16( f) r8 aes,16( aes) r8 c16( c') r8 f16( f') r8 aes,16( aes) r8
 a,16( a) r8 ees16( ees') r8 c16( c') r8 a,16( a) r8 f,16( f) r8 ees,16( ees) r8 c,16( c) r8 a,,16( a,) r8
 bes,,16( bes,) r8 bes,,16( bes,) r8 des,16( des) r8 f,16( f) r8
 bes,16( bes) r8 des16( des') r8 f16( f') r8 bes,16( bes) r8
 b,16( b) r8 f16( f') r8 d!16( d'!) r8 b,16( b) r8 g,16( g) r8 f,16( f) r8 d,16( d) r8 b,,16( b,) r8
 c,16( c) r8 ees,16( ees) r8 g,16( g) r8 c16( c') r8 f,16( f) r8 aes,16( aes) r8 d16( d') r8 f16( f') r8
 g,16( g) r8 c16( c') r8 ees16( ees') r8 g16( g') r8
 <g,, g,>1 << { c4 g4\rest a2\rest } \\ { c,4 g,4\rest g,2\rest } >> R1 R1 R1 R1 R1 R1 R1 R1 \clef treble
 r8 bes'8\staccato bes'\staccato bes'\staccato bes'( g') e'\staccato bes\staccato a4 r4 r2
 r8 ees''8\staccato ees''\staccato ees''\staccato ees''( c'') a'\staccato ees'\staccato d'4 r4 r2
 r8 aes'!8\staccato aes'\staccato aes'\staccato aes'( f') d'\staccato aes\staccato
 g8\staccato f''\staccato f''\staccato f''\staccato f''( d'') b'\staccato f'\staccato
 ees'\staccato <ees'' g''>8\staccato <ees'' g''>\staccato <ees'' g''>\staccato
 <ees'' g''>( <c'' ees''>) <g' c''>\staccato <ees' g'>\staccato
 <ees' g'>( <d' f'>) <d' f'>\staccato <d' f'>\staccato <d' f'>( <c' ees'>) <c' ees'>\staccato <c' ees'>\staccato
 \clef bass
 \tupletSpan 4
 \tuplet 3/2 { g,8\sustainOn[ b g] b,[ d' g] d[ f' g] b,[ d' g\sustainOff] c\sustainOn[ ees' g] ees[ ees' g] c[ ees' g] ees[ ees' g\sustainOff]
 d\sustainOn[ d' g] f[ f' g] d[ d' g] f[ f' g\sustainOff] ees\sustainOn[ ees' g] c[ c' g] ees[ ees' g] c[ c' g\sustainOff] }
 g,4 r r2 <c c'>4 r r2 <g g'>4 r r2 <c c'>4 r <c, c> r
 \tupletSpan 4
 \tuplet 3/2 { g,8\sf\staccato[ g( fis)] g\staccato[ f\staccato d\staccato] c\sf\staccato[ g( fis)] g\staccato[ ees\staccato c\staccato]
 g,8\sf\staccato[ g( fis)] g\staccato[ f\staccato d\staccato] c\sf\staccato[ g( fis)] g\staccato[ ees\staccato c\staccato] }
 g,4 r r2 R1 R1 R1 c8( g c' g b g f g) e( g dis g e g c g) b,( g ais, g b, g g, g)
 c8( g b g c'\staccato) g\staccato e\staccato c\staccato
 a,\staccato c\staccato f\staccato a\staccato g\staccato c'\staccato e'\staccato g'\staccato
 f'8\staccato c'\staccato a\staccato f\staccato e\staccato e'\staccato a,\staccato\sf a\staccato
 d,8\sf\staccato[ d\staccato] g,\sf\staccato[ g\staccato] c\sf\staccato[ c'\staccato] f\sf\staccato[ f'\staccato]
 << { e'8( dis' e' fis' g') } \\ { g2 ~ g8 } >> \clef treble <f' a'>8([ <e' g'> <d' f'>]) <c' e'>4\staccato r r2 R1 R1 R1 R1 R1 R1 R1
 a'2( g' <f' a'> <ees'! g'>) <d' a' c''>4 r r2 r8 d'16 f' b' f' d'' cis'' d'' c'' b' a' g' f' e' d'
 c'4 \clef bass <a c' f'> r <f a d'> r <g c' e'> r <g, b, d g> <c e g c'>4 r r2 R1
 \new Voice { \stemDown \tupletSpan 4 \tuplet 3/2 { f,,8[ a,, d,] f,8 c,8\rest c,8\rest } c,4\rest }
 <f a d'>4 <g c' e'>4 <g c' e'> r <g d' f'> <c c'>4\staccato \clef treble <ees'! g'>\staccato( <ees' g'>\staccato <ees' g'>\staccato)
 <ees' g'>2( <d' g'>4. <c' g'>8) <aes'! c''>2( <g' bes'!>4. <f' aes'>8) <f' aes'>2( <ees' g'>4. <d' f'>8) <d' f'>2( <c' ees'>4. <bes d'>8)
 \clef bass \tupletSpan 4
 \tuplet 3/2 { ees8[ g bes] ees'[ bes g] aes,[ c f] aes[ f c] bes,[ ees g] bes[ g ees] b,[ d f] b,[ d g]
 c[ ees g] c'[ g ees] f,[ aes, d] f[ d aes,] g,[ c ees] g[ ees c] g,[ d f] g,[ d f] } c4 r r2 R1
 r4 r8 \clef treble <b' d''>8\staccato <a' c''>4\staccato r8 <g' bes'>8\staccato
 <f' a'>4\staccato r8 <e' g'> <d' f'> <d' f'> <c'! e'> <c' e'> \clef bass <b d'> <b d'> <a c'> <a c'> <g b> <g b> <a c'> <b d'>
 c'8[ e] a[ f] g[ fis] g[ g,] c16 d e f! g f e d c b, a, g, fis, g, a, b, c d e f! g f e d c b, a, g, fis, g, a, b,
 c16 b, c d e e, fis, gis, a, gis, a, b, c c, d, e, f,! e, f, g, a, a,, b,, cis, d, cis, d, e, f, a,, b,, cis,
 \new Voice { \stemDown d,16 a,, b,, cis, d, cis, d, e, f, a, b, cis d e f e f g e f d e c d b, c a, b, g, a, f, g,
 e,4 f,4\rest g,2\rest r2 r4 r8 \stemUp <e,, e,>8 \stemDown <f,, f,>4 c,4\rest c,2\rest r2 r4 r8 \stemUp <f,, f,>8
 \stemDown fis,,4 a,,16\rest \slurUp fis,,( a,, c, ees,!4)
 f,16\rest \slurDown fis,( a, c ees! fis a c' ees'! fis a c' \clef treble \stemUp ees'! fis' a' c'' ees''! c'' a' fis') }
 g'4 r8 <g' c'' e''>\staccato <a' c'' f''!>4\staccato r8 <a' c'' f''>8\staccato
 <g' c'' e''>4\staccato r8 <g' c'' e''>\staccato <fis' c'' ees''!>4\staccato r8 <fis' c'' ees''>\staccato <g' c'' e''>4 r r2 R1 R1 R1
 \clef bass \tupletSpan 4
 \tuplet 3/2 { r8 g,,8\staccato[ b,,]\staccato d,\staccato[ g,\staccato b,\staccato] d\staccato[ g,\staccato b,\staccato]
 d\staccato[ g\staccato b\staccato] d'\staccato[ g\staccato b\staccato] \clef treble d'\staccato[ g'\staccato b'\staccato]
 d''\staccato[ b'\staccato g'\staccato] g''\staccato[ b'\staccato g'\staccato] } <g' b' g''>4\sustainOn r4 r2
 \clef bass r2 e,4\rest c,8\rest \tupletSpan 4 \tuplet 3/2 { \slurDown f,16([ e, d,]) } c,4 r r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2^\fermata <g b f'>2^\fermata
 <g bes c' e'>4\p r4 r2 \clef treble bes'16\sustainOn des'' bes' g' e' bes' g' e' des' g' e' des' bes e' des' bes\sustainOff <a c' f'>4 r r2
 b'16\sustainOn d''! b' aes'! f' b' aes' f' d' aes' f' d' aes' f' d' b\sustainOff c'4 r \clef bass <g bes c' e'> r
 \clef treble bes'16\sustainOn des'' bes' g' e' bes' g' e' des' g' e' des' bes e' des' bes\sustainOff a4 r <a c' f'>4 r
 b'16\sustainOn d''! b' aes'! f' b' aes' f' d' aes' f' d' aes' f' d' b\sustainOff
 c'4 r8 c'\staccato ees'4\staccato r r4 r8 c'\staccato ees'4\staccato r r4 r8 d'\staccato f'4\staccato r r4 r8 b\staccato d'4\staccato r
 r8 c' c' c' ees'4\sf( c'8) r8 r8 c' c' c' ees'4\sf( c'8) r8 r8 d' d' d' f'4\sf( d'8) r8 r8 b b b d'4\sf( b8) r8
 \clef bass r8 c'\sf( ees' c') r c'\sf( ees' c') r8 d'\sf( f' d') r b\sf( d' b) R1 R1
 r4\sustainOn \clef treble ees'16 c'' g' ees' c' g' ees' c' \clef bass g ees' c' g
 \new Voice { \stemDown ees c' g ees c g ees c g, ees c g, ees, c g, ees,
 c,\staccato\sf \slurDown c,( d, ees, f, g, a, b,) c\staccato\sf c( d ees f g a b) }
 c'16\staccato\sf \clef treble c'([ d' ees'] f' g' a' b') c''\sf\staccato c''( d'' ees'' f'' g'' a'' b''\sustainOff)
 c'''4\sf r r r8 r16 \clef bass <c, c>16\ff <c, c>4 r r r8 r16 <c, c> <c, c>1^\fermata \bar "|."
}