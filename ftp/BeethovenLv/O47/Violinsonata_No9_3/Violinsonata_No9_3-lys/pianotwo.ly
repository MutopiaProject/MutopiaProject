\version "2.10.3"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key a \major
 \time 6/8
 <a,, cis, e, a,>4.\ff ~ <a,, cis, e, a,>4^\fermata r8 r4 r8 r4 \clef treble a'8\staccato^\p
 \repeat volta 2 {
 a'4\staccato a'8\staccato a'4\staccato a'8\staccato gis'4\staccato e'8\staccato a'4\staccato a'8\staccato
 gis'4 e'8 a'4 a'8 gis'4 e'8 g'4.\sf ~ g'4 fis'8^\p ais'4 fis'8 b'4 b8 g'4. ~ g'4 fis'8 ais'4 fis'8 b'4 b8 r4 r8
 R2. R2. R2. R2. R2. R2. R2.
 \clef bass r4 r8 bes4.\sf ~ bes4 a8\p cis'4 a8 d'4 d8 bes4.\sf ~ bes4 a8\p cis'4 a8 d'4 d8 d,4.\sf ~ d,4 d,8 e,4 eis,8
 fis,4 r8 d,4.\sf ~ d,4 d,8 e,4 eis,8 fis,4 r8 d,4 r8 e,4 r8 e,4 r8
 <a,, a,>4 <cis a>8\staccato <cis a>4\staccato <e b>8\staccato
 <a cis'>4\staccato <a cis'>8\staccato <a cis'>4\staccato <b d'>8\staccato <cis' e'>4 r8 r4 r8 R2.
 <e gis>4\staccato <e gis>8\staccato <e gis>4\staccato <fis a>8\staccato
 <gis b>4\staccato <gis b>8\staccato <gis b>4\staccato <a cis'>8\staccato
 <b d'>4 r8 r4 r8 r4 r8 r4 e,8^\p a,,8[ cis, e,] a,[ cis e] a[ a, cis] e[ a b] cis'4 r8 r4 r8 R2.
 e,8[ gis, b,] e[ b a] gis[ d' b] gis[ b fis] <eis gis cis'>2.\sf ~ <eis gis cis'>2.
 <fis a cis'>2.\sf ~ <fis a cis'>2. <dis fis b>2.\sf ~ <dis fis b>2. <e gis b>2.\sf ~ <e gis b>2.
 <cis, cis>2.\sf <fis,, fis,>2.\sf <b,, b,>4\f r8 r4 r8 r8 r fis,8\staccato fis,4\staccato ais,8\staccato
 <b,, b,>4\sf r8 r4 r8 r8 r fis,8\staccato fis,4\staccato ais,8\staccato
 <b,, b,>4\sf fis,8\staccato fis,4\staccato ais,8\staccato <b,, b,>4\sf fis,8\staccato fis,4\staccato ais,8\staccato
 <b,, b,>4\ff\staccato ais,8( <b,, b,>4\sf\staccato) ais,8( <b,, b,>4\sf\staccato)
 ais,8( <b,, b,>4\sf\staccato) ais,8( <b,, b,>4\sf\staccato) ais,8( <b,, b,>4\sf\staccato)
 ais,8( <b,, b,>4\sf\staccato) a,!8( gis,4\staccato) fis,8( e,4\p\staccato) r8 r4 r8
 b,4 r8 r4 r8 <gis, gis>4 r8 r4 r8 <e, e>4 r8 r4 r8 <b,, b,>4 r8 r4 r8 <fis,, fis,>4 r8 r4 r8
 <b,, b,>4 r8 <fis,, fis,>4 r8 <b,, b,>4 r8 r4 r8 <d,! d!>4 r8 r4 r8 a,4 r8 r4 r8 <fis, fis>4 r8 r4 r8
 <d, d>4 r8 r4 r8 <a,, a,>4 r8 r4 r8 <e, e>4 r8 r4 r8 <a,, a,>4 r8 <e, e>4 r8
 \new Voice { \stemUp <a,, a,>8[ \stemDown cis'8 b a gis fis] } e4 r8 <e e'>4 r8 r4 r8 <b, b>4 r8
 r4 r8 <gis, gis>4 r8 r4 r8 <e, e>4 r8 r4 r8 <b, b>4 r8 r4 r8 <fis, fis>4 r8 <b, b>4 r8 <fis, fis>4 r8 <b,, b,>4 r8 r4 r8
 <d,! d!>4 r8 <d d'>4 r8 r4 r8 <a, a>4 r8 r4 r8 <fis, fis>4 r8 r4 r8 <d, d>4 r8 r4 r8 <a, a>4 r8 r4 r8 <e, e>4 r8
 <a, a>4 r8 <e, e>4 r8 <a, a>4 r8 r4 r8 <a a'>4 r8 <e e'>4 r8 a8[ cis' e'] \clef treble a'[ cis'' e'']
 a''4\staccato_\markup { \italic "cresc." } a''8( b''4\staccato) gis''8( a''4\staccato) a''8( b''4\staccato)
 gis''8( a''4\staccato) a''8( b''4\staccato) gis''8( a''4\staccato) a''8( gis''4\staccato) fis''8( e''4\staccato) r8 r4 r8
 R2. \clef bass e'8^\p([ dis' e'] fis'[ e' dis']) e'2.
 e'8([ dis' e'] fis'[ e' dis']) e'([ dis' e'] fis'[ e' dis']) e'([ dis' e'] fis'[ e' dis']) e'([ dis' e'] fis'[ e' dis'])
 e'([ dis' e'] fis'[ e' dis']) cis'([ bis cis'] dis'[ cis' b]) a([ gis a] b[ a gis]) fis([ eis fis] gis[ fis e])
 dis4 r8 e4 r8 <a,, a,>4 r8 <b,, b,>4 r8
 e'8\f([ dis' e'] fis'[ e' dis']) cis'\sf([ bis cis'] dis'[ cis' b]) a\sf([ gis a] b[ a gis]) fis\sf([ eis fis] gis[ fis e])
 dis\staccato[ fis( eis] fis\sf[ dis cis] b,\staccato)[ fis( eis] fis\sf[ dis cis] b,\staccato)
 fis( eis] fis\sf[ dis cis] b,\staccato) fis( eis] fis\sf[ dis cis])
 b,\sustainDown[ dis fis] b[ fis' b] fis'[ b fis'] b[ fis' b] fis'[ b fis'] b[ fis' b] fis'[ b fis'] b[ fis' b]
 fis'4\staccato\sustainUp r8 <b, b>4\staccato r8 \bar "||"
 \time 2/4 <cis cis'>2\p\staccato <a, a>2\staccato <gis, gis>2\staccato
 <fis, fis>4\staccato( <fis, fis>4\staccato <fis, fis>4\staccato <fis, fis>4\staccato)
 b,4\staccato( b,4\staccato) <e, e>4 r4 \bar "||"
 \time 6/8 <b, b>4\f\staccato r8 \clef treble b'4\staccato r8 \bar "||"
 \time 2/4 cis''2\p\staccato a'\staccato gis'\staccato fis'4\staccato( fis'\staccato fis'\staccato fis'\staccato)
 <b a'>4 <b a'> <e' gis'> r \clef bass
 <fis, fis>4\staccato^\markup { \italic "ritard." }( <fis, fis>\staccato <fis, fis>\staccato <fis, fis>\staccato)
 b,4\staccato( b,\staccato) <e, e>4 r \clef treble
 <fis' cis''>\staccato\sustainDown( <fis' cis''>\staccato <fis' cis''>\staccato <fis' cis''>\staccato\sustainUp)
 \bar "||" \time 6/8 <b' dis''>4 r8 r4 r8
 \clef bass b,,2.^\sf ~ b,,8 dis, fis, b, dis fis b ais b b, ais, b, <e, e>4 r8 r4 r8
 <e gis>4\p\staccato <e gis>8\staccato <e gis>4\staccato <fis a>8\staccato <gis b>4 r8 r4 r8 R2.
 <e gis>4\staccato <e gis>8\staccato <e gis>4\staccato <fis a>8\staccato
 <gis b>4\staccato <gis b>8\staccato <gis b>4\staccato <a cis'>8\staccato
 <b d'!>2.\sf ~ <b d'>4 <gis b>8\staccato <gis b>4\staccato <a cis'>8\staccato
 <b d'>2.\sf ~ <b d'>4 <gis b>8\staccato <gis b>4\staccato <a cis'>8\staccato
 <b d'>4\staccato <gis b>8\staccato <gis b>4\staccato <a cis'>8\staccato <b d'>4 \clef treble <b gis'>8 <b gis'>4 <cis' a'>8
 <d' b'>4 <b' d''>8 <b' d''>4 <a' cis''>8 <gis' b'>4 <gis' b'>8 <gis' b'>4 <fis' a'>8 <e' gis'>4\sf r8 r4 r8
 d''8( cis'' b' a' gis' fis' e'4\sf\staccato) r8 r4 r8 \clef bass d'8( cis' b a gis fis)
 e8\sf( fis gis a b cis' d' cis' b a gis fis) e\sf( fis gis a b cis' d' cis' b a gis fis) e4\p r8 r4 r8 R2. R2. }
 \alternative { { r4 r8 d,8[ cis, b,,] a,,4 r8 r4 \clef treble a'8 } { \clef bass r4 r8 d,8[ cis, b,,] a,,8 a,,4 a,,8 a,,4 } }
 a,,4 a,,8 a,,4 b,,8 c,4.\sf a,,4 b,,8 c,4.\sf a,,4 b,,8
 c,8\ff[ a,, b,,] c,[ a,, b,,] c,[ a,, b,,] c,[ a,, b,,] c,[ a,, b,,] c,[ a,, b,,] c,[ a,, b,,] c,[ a,, b,,]
 c,4\p r8 r4 r8 g,4 r8 r4 r8 <e, e>4 r8 r4 r8 <c, c>4 r8 r4 r8 <g,, g,>4 r8 r4 r8 <d, d>4 r8 r4 r8
 <g,, g,>4\f r8 <g, g>4.\sf ~ <g, g>4. <a, a>4.
 <d, d>4\p r8 r4 r8 a,4 r8 r4 r8 f,4 r8 r4 r8 <d, d>4 r8 r4 r8 <a,, a,>4 r8 r4 r8 <e, e>4 r8 r4 r8
 <a,, a,>4\f r8 <a, a>4.\sf ~ <a, a>4. <b, b>4.
 <e, e>4\p r8 <e e'>4 r8 r4 r8 <b, b>4 r8 r4 r8 <g, g>4 r8 r4 r8 <e, e>4 r8
 <fis, fis>2. ~ <fis, fis>2. <b, b>2. ~ <b, b>2. <e, e>2. ~ <e, e>2. <a, a>2. ~ <a, a>4 c8 c4( a,8) f,8\f[ f f,] f[ f, f] f,[ f f,] f[ f, f]
 f,8[ f f,] f[ f, f] f,[ f f,] f[ f, f] f,[ f f,] f[ f, f] f,[ f f,] f[ f, f] f,[ f f,] f[ f, f] f,[ f f,] f[ f, f]
 f,,8[ f, f,,] f,[ f,, f,] f,,[ f, f,,] f,[ f,, f,] f,,[ f, f,,] f,[ f,, f,] f,,[ f, f,,] f,[ f,, f,] f,,[ f, f,,] f,[ f,, f,] f,,[ f, f,,] f,[ f,, f,] f,,[ f, f,,] f,[ f,, f,]
 f,,[ f, f,,] f,[ f,, f,] f,,4 r8 r4 r8 R2. R2. R2. a4\p\staccato a8\staccato a4\staccato b8\staccato c'2.
 b4\staccato b8\staccato b4\staccato cis'!8\staccato d'2. c'4 c'8 c'4 d'8
 e'2.\sf ~ e'4 d'8 d'4 e'8 f'2.\sf ~ f'4 b8 b4 c'8 d'2.\sf ~ d'4 gis8 gis4 a8
 b4 <e, e>8 <e, e>4 <e, e>8 <e, e>4\staccato <e, e>8\staccato <e, e>4\staccato <e, e>8\staccato
 <f, f>2.\f ~ <f, f>2. <e, e>4 e,8\staccato e,4\staccato e,8\staccato
 e,4\staccato e,8\staccato e,4\staccato e,8\staccato <f,, f,>2.\f ~ <f,, f,>2. e,4 r8 r4 r8 R2.
 ais,8\p( cis fis) r4 r8 b( d' fis') r4 r8 gis,( b, e) r4 r8 a( cis' e') r4 r8 fis,( a, d) r4 r8 gis( b d') r4 r8 eis,( gis, cis) r4 r8
 fis8( a cis') r4 r8 d,_\markup { \italic "cresc." }( a, b,) r4 r8 e,!( a, b,) r4 r8 fis,( a, b,) r4 r8 f,( a, b,) r4 r8
 <e, e>4\pp r8 b( a gis) e4\staccato r8 cis'( b a) e4\staccato r8 d'( cis' b)
 e4\staccato r8 cis'( b a) <e, e>4 r8 r4 r8 <e, e>4 r8 r4 r8 <e, e>4 r8 r4 r8 <e, e>4 r8 r4 r8
 <e, e>4\staccato r8 b( a gis) e4\staccato r8 c'( b a) e4\staccato r8 d'( c' b) e4\staccato r8 c'( b a)
 <e, e>4 r8 r4 r8 <e, e>4 r8 r4 r8 <e, e>4 r8 r4 r8 <e, e>4 r8 r4 r8 <e, e>4 r8 r4 r8 e,4 r8 r4 r8 e,4 r8 r4 r8 e,4 r8 r4 r8
 eis,4 r8 r4 r8 eis,4 r8 r4 r8 eis,4 r8 r4 r8 eis,4 r8 r4 r8 f,,8[ f, f,,] f,[ f,, f,] f,,[ f, f,,] f,[ f,, f,] e,\sf[ fis, gis,] a,[ gis, fis,]
 e,8\sf[ fis, gis,] a,[ gis, fis,] e,\sf[ fis, gis,] ais,[ gis, ais,] b,[ ais, b,] cis[ b, cis] d[ cis b,] ais,[ gis, ais,] b,[ ais, b,] cis[ b, cis]
 d[ \clef treble b b'] b[ b' b] b'[ b b'] b[ b' b] a\sf[ b cis'] d'[ cis' b] a\sf[ b cis'] d'[ cis' b] a\sf[ b cis'] d'\p[ cis' dis']
 e'[ dis' e'] fis'[ e' fis'] g'[ fis' g'] cis'[ b cis'] d'![ cis' d'] e'[ d' e'] fis'[ e' fis'] \clef bass d[ cis d]
 e8[ d e] eis[ e eis] fis[ eis fis] d,[ cis, d,] e,![ d, e,] eis,[ e, eis,] fis,\f[ eis, fis,] d,[ cis, d,] e,!4 r8 e,4 r8
 <a,, a,>4\f <cis a>8\staccato <cis a>4\staccato <e b>8\staccato
 <a cis'>4\staccato <a cis'>8\staccato <a cis'>4\staccato <b d'>8\staccato <cis' e'>4 r8 r4 r8
 R2. <e gis>4\staccato <e gis>8\staccato <e gis>4\staccato <fis a>8\staccato
 <gis b>4\staccato <gis b>8\staccato <gis b>4\staccato <a cis'>8\staccato <b d'>4 r8 r4 r8
 r4 r8 r4 e,8^\p a,,8[ cis, e,] a,[ cis e] a[ a, cis] e[ a b] cis'2.\sf <ais cis'>2.\p <b d'>2. <gis b>2. <a cis'>2.
 <fis, fis>4\f r8 <b,, b,>4 r8 <e, e>4\f r8 r4 r8 r8 r b,8\staccato b,4\staccato dis8\staccato <e, e>4\sf r8 r4 r8
 r8 r b,8\staccato b,4\staccato dis8\staccato <e, e>4\sf b,8\staccato b,4\staccato dis8\staccato
 <e, e>4\sf\staccato b,8\staccato b,4\staccato dis8\staccato
 <e, e>4\ff dis8( <e, e>4\sf\staccato) dis8( <e, e>4\sf\staccato) dis8( <e, e>4\sf\staccato)
 dis8( <e, e>4\sf\staccato) dis8( <e, e>4\sf\staccato) dis,8( <e, e>4\sf\staccato)
 d!8( cis4\staccato) b,8( a,4) r8 r4 r8 <e, e>4\p r8 r4 r8 <cis, cis>4 r8 r4 r8 <a,, a,>4 r8 r4 r8 <e, e>4 r8 r4 r8 <b,, b,>4 r8 r4 r8
 <e, e>4 r8 <b,, b,>4 r8 <e, e>4 r8 r4 r8 <g,, g,>4 r8 r4 r8 <d, d>4 r8 r4 r8 <b,, b,>4 r8 r4 r8 <g,, g,>4 r8 r4 r8
 <d, d>4 r8 r4 r8 <a,, a,>4 r8 r4 r8 <d, d,>4 r8 <a,, a,>4 r8 <d, d>8 fis e d cis b,
 a,4 r8 <a, a>4 r8 r4 r8 <e, e>4 r8 r4 r8 <cis, cis>4 r8 r4 r8 <a,, a,>4 r8 r4 r8 <cis, cis>4 r8 r4 r8 <b,, b,>4 r8
 <e, e>4 r8 <b,, b,>4 r8 <e, e>4 r8 r4 r8 <g,, g,>4 r8 <g, g>4 r8 r4 r8 <d, d>4 r8 r4 r8 <b,, b,>4 r8 r4 r8 <g,, g,>4 r8
 r4 r8 <d, d>4 r8 r4 r8 <a,, a,>4 r8 <d, d>4 r8 <a,, a,>4 r8 <b,, b,>4 r8 r4 r8 <d d'>4 r8 <a, a>4 r8
 d8 fis a \clef treble d' fis' a' d''4\staccato d''8( e''4\staccato) cis''8( d''4\staccato) d''8( e''4\staccato) cis''8( d''4\staccato)
 d''8( e''4\staccato) cis''8( d''4\staccato) d''8( cis''4\staccato) b'8( a'4\p\staccato) r8 r4 r8 R2.
 a'8\p( gis' a' b' a' gis') a'2. a'8( gis' a' b' a' gis') a'( gis' a' b' a' gis') a'( gis' a' b' a' gis') a'( gis' a' b' a' gis') a'( gis' a' b' a' gis')
 fis'( eis' fis' gis' fis' e') d'( cis' d' e' d' cis') b( ais b cis' b a) gis4 r8 a4 r8 \clef bass <d, d>4 r8 <e, e>4 r8
 \clef treble a'8\f( gis' a' b' a' gis') fis'\sf( eis' fis' gis' fis' e') \clef bass d'\sf( cis' d' e' d' cis') b\sf( ais b cis' b a)
 gis8\staccato b( ais b\sf gis fis e\staccato) b( ais b\sf gis fis e\staccato) b( ais b\sf gis fis e\staccato) b( ais b gis fis)
 e8\sustainDown gis b \clef treble e'8 b' e' b' e' b' e' b' e' b' e' b' e' b' e' b' e' b' e' b' e'
 b'4\staccato\sustainUp r8 \clef bass e4\staccato r8 \bar "||" \time 2/4 fis2\staccato d\staccato cis\staccato
 <b,, b,>4\staccato( <b,, b,>\staccato <b,, b,>\staccato <b,, b,>\staccato) e,4\staccato( e,4\staccato) <a,, a,>4 r \bar "||"
 \time 6/8 <e, e>4\f\staccato r8 e'4\staccato r8 \bar "||" \time 2/4 fis'2\staccato d'\staccato cis'\staccato
 b4\staccato( b\staccato b\staccato b\staccato) <e d'>4 <e d'> <a cis'>4 r
 <b,, b,>4\staccato( <b,, b,>\staccato <b,, b,>\staccato <b,, b,>\staccato) e,\staccato( e,\staccato) <a,, a,>4 r
 \clef treble <b fis'>4\staccato\sustainDown( <b fis'>\staccato <b fis'>\staccato <b fis'>\staccato\sustainUp) \bar "||"
 \time 6/8 <e' gis'>4 r8 r4 r8 \clef bass e,2.\sf ~ e,8 gis, b, e gis b e' dis' e' e dis e <a, a>4 r8 r4 r8
 a4\p\staccato a8\staccato a4\staccato b8\staccato cis'4 r8 r4 r8 R2.
 <a,, a,>4 \clef treble <a cis'>8\staccato <a cis'>4\staccato <b d'>8\staccato
 <cis' e'>4\staccato <cis' e'>8\staccato <cis' e'>4\staccato <d' fis'>8\staccato <e' g'>2.\sf ~
 <e' g'>4 <cis' e'>8\staccato <cis' e'>4\staccato <d' fis'>8\staccato <e' g'>2.\sf ~
 <e' g'>4 <cis' e'>8\staccato <cis' e'>4\staccato <d' fis'>8\staccato <e' g'>4 <cis' e'>8 <cis' e'>4 <d' fis'>8
 <e' g'>4 <e' g'>8 <e' g'>4 <d' fis'>8 <cis' e'>4 <e' g'>8 <e' g'>4 <d' fis'>8 <cis' e'>4 <cis' e'>8 <cis' e'>4 <b d'>8 <a cis'>4 r8 r4 r8
 \clef bass g8( fis e d cis b, a,4\sf\staccato) r8 r4 r8 \clef treble g'8( fis' e' d' cis' b)
 a8\sf( b cis' d' e' fis' g' fis' e' d' cis' b) a\sf( b cis' d' e' fis' g' fis' e' d' cis' b)
 a4\p r8 r4 r8 R2. R2. \clef bass r4 r8 g,8 fis, e, d,4 d,8 d,4 d,8 d,4 d,8 d,4 e,8 f,4.\sf d,4 e,8 f,4.\sf d,4 e,8
 f,8\ff d, e, f, d, e, f, d, e, f, d, e, f, d, e, f, d, e, f, d, e, f, d, e, f,4.\ff e,4 fis,8 g,4. fis,!4 gis,8 a,8 gis, a, b, a, b,
 c8 b, c d c d e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e
 e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e, e e,4\f\staccato a,8\staccato a,4( b,8 c4\staccato)
 a,8\staccato a,4( b,8 c4\staccato) a,8\staccato a,4( b,8 c4\staccato) r8 r4 r8
 e,8\sustainDown( gis, b, d4\staccato) r8 e8( gis b d'4\staccato) r8 \clef treble e'8( gis' b' d'' b' gis') e'( gis' b')
 << { d''4. ~ d''2. ~ d''4. ~ d''4 fis'8\sustainUp } \\
 { d''8 b'8 gis'8( \stemUp e'2.) ~ e'4. ~ e'4_\fermata s8 } \\ { \stemUp s8 b'4 ~ <gis' b'>2. ~ <gis' b'>4. ~ <gis' b'>4 s8 } >>
 fis'4\staccato_\markup { \italic "cresc." }( fis'8\staccato fis'4\staccato fis'8\staccato)
 fis'4\staccato( fis'8\staccato fis'4\staccato f'8\staccato)
 e'4.\p \clef bass <fis,! fis!>4\staccato( <f, f>8\staccato) <e, e>4.\p fis'4\staccato_\markup { \italic "cresc." }( f'8\staccato)
 e'4.\sf( ais4\staccato) r8 b4\staccato r8 cis'4\staccato r8 d'4\staccato r8 b4\staccato r8 e'4\staccato r8 e4 eis8
 <fis, fis>4\staccato^\markup { "adagio." }( <fis, fis>8\staccato <fis, fis>4\staccato <fis, fis>8\staccato)
 <fis, fis>4\staccato_\markup { \italic  "cresc." } <fis, fis>8\staccato <fis, fis>4\staccato <f, f>8\staccato
 <e, e>4.\p fis'4\staccato_\markup { \italic "cresc." }( f'8\staccato) e'4.\p <fis, fis>4\staccato( <f, f>8\staccato)
 <e, e>4.\sf( ais,4\p\staccato) r8 b,4\staccato r8 cis4\staccato r8 d4\staccato r8 gis,!4\staccato r8
 a,4\staccato r8 b,4\staccato r8 cis4\staccato r8 e'4\staccato r8 d'4\staccato r8 cis'4\staccato r8
 b4\staccato r8 d'4\staccato r8 cis'4\staccato r8 b4\staccato r8 a4\staccato r8 e8 fis e d e d cis d cis b, cis b, d e d cis d cis b, cis b,
 a,8\f b, a, e, fis, e, d, e, d, cis, d, cis, b,, cis, b,, d, e, d, cis, d, cis, b,, cis, b,, a,, gis,, a,, gis,, a,, gis,, a,, gis,, a,, gis,, a,, gis,,
 a,,8 gis,, a,, gis,, a,, gis,, a,, b,, bis,, cis, d, dis, e,\sf a, cis e a cis' e' cis' a e cis a, e, dis, e, dis, e, dis, e, dis, e, e dis e
 a,8\p cis e a4 r8 a,8 cis e a4 r8 <cis' e'>2.\sf ~ <cis' e'>4 <a cis'>8 <b d'>4 <e b>8
 a,8\p cis e a4 r8 a,8 cis e a4 r8 <cis' e'>2.\sf ~ <cis' e'>4 <a cis'>8 <b d'>4 <e b>8 <cis' e'>2.\sf ~ <cis' e'>4 <a cis'>8 <b d'>4 <e b>8
 cis'8\sf e' cis' a e cis a, cis e e, b, e a,\sustainDown cis e a e cis a, e cis a, e, cis, a,,4\sustainUp r8 r4^\fermata r8 \bar "||"
}