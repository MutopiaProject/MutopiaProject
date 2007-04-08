\version "2.6.0"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key a \major
 \time 2/2
 R1 \repeat volta 2 { R1 R1 R1 R1 r2 r4 \clef treble b8\p( d' cis' e' b d' cis' e' a e') \clef bass e( gis b e' \clef treble gis' b' e'' d''
 cis'' e'' b' d'' cis'' e'' a' cis'') gis'( b' e' b' gis' b' <e' a'> cis'') <e' gis'> b' <e' a'> cis'' <e' gis'> b' <e' a'> cis''
 <e' gis' b'>2^\fermata\f \clef bass r2^\fermata
 \new Voice { \cadenzaOn s4 s1 s4 s8 s4 \cadenzaOff }
 <a,, a,>2\p( <e, e> <fis, fis>2. <cis, cis>4 <e, e> <d, d> <cis, cis> <d, d>8 <b,, b,>) <a,, a,>2( <gis,, gis,>4)
 << { \override Stem #'length = #22 e4 a fis cis dis } \\ { e,4( a, fis, cis, dis,) } >> 
 \new Voice { \stemDown e,4 e,4\rest e,4\rest d8 f,8\rest cis f,8\rest d f,8\rest cis f,8\rest a, f,8\rest e,4 } r r <e b d'>8 r
 <a cis'>8 r <e b> r <cis a> r <a, cis e a> r <e, gis, b, e> r <e gis b e'> r <a cis' e' a'> r <a, cis e a> r
 <e, gis, b, e>8 r <a, cis e a> r <e, gis, b, e>8 r <a, cis e a> r <e, gis, b, e>4 r4^\fermata r2^\fermata
 \new Voice { \cadenzaOn s2 s2 \cadenzaOff }
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { a8[ c' e'] a[ c' e'] a[ c' e'] a[ d' f'] a[ c' e'] d[ b d'] e[ a c'] e[ gis b] }
 a,2. d,4( a, e, a,, e,) b,,2( e,) <b,, b,>2 <e, e> <b,, b,>4 r <b,, b,> r <b,, b,> r <b,, b,> r <b,, b,>
 \clef treble \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c''8[ b' a'] g'[ b' e'] g'[ fis' e'] dis'[ fis' b] \clef bass c'[ b a] g[ b e] g[ fis e] b,([ c b,] ais,[ b, ais,] b,[ c b,] ais,[ b, ais,]) }
 b,4 r r2 \clef treble r4 b'\p b' b' b'2( gis' e'2. b4 \clef bass gis4) gis( e gis) b( b, b) r4
 a'2( fis' dis'4 b a fis dis) dis( b, dis e b, e) r4 a2 e a e a4( e dis e) b,2 fis, b,,4 r r2
 \new Voice { \stemDown \slurDown e,4\rest e,8( fis, gis, a, b, cis dis e fis gis a b cis' dis'
 \clef treble \stemUp e' fis' fisis' gis' fisis' gis' b' gis') <fis' a'>2. r4 }
 \clef bass \new Voice { f,4\rest \slurDown \stemDown b,,8( cis, dis, e, fis, gis, a, b, cis dis e fis gis a
 \clef treble \stemUp b cis' dis' e' fis' gis' a' b') }
 cis''4( dis'' e'') r \clef bass <a e'>2 <e e'> <a e'> <e e'> \clef treble a'4( eis' fis' cis'
 \clef bass dis'4 ais b fisis gis dis e a,! b,) r <b,, b,> r
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { e,8\f[ gis, b,] e[ gis b] e[ gis b] dis[ a b]
 e[ gis b] e[ gis b] e[ gis b] dis[ a b] e[ gis b] e[ gis b] e[ a cis'] e[ a cis'] fisis[ ais dis'] fisis[ ais dis'] fis[ gis dis'] eis[ gis cis']
 e![ fis cis'] e[ fis cis'] e[ gis b] e[ gis cis'] fis[ a cis'] fis[ a cis'] dis[ fis b] dis[ fis b] }
 e8\f \clef treble e'16[ dis'] e'[ b gis b] gis[ b e' b] a[ b dis' b] gis[ b e' dis'] e'[ b gis b] gis[ b e' b] a[ b dis' b]
 gis[ b e' b] gis[ b e' b] a[ cis' e' cis'] cis'[ e' a' e'] cis'[ dis' ais' dis'] ais[ dis' fisis' dis'] gis[ dis' gis' dis'] gis[ cis' eis' cis']
 \clef bass gis[ cis' eis' cis'] fis[ cis' fis' cis'] fis[ b dis' b] gis[ b e' b] a[ c' e' c'] a[ c' a c'] fis[ a fis a] e[ fis a fis]
 dis\ff[ fis a fis] dis[ fis a fis] dis[ fis a fis] dis[ fis a fis] dis[ fis a fis] dis_\markup { \italic "dim." }[ fis a fis] dis[ fis a fis] dis[ fis a fis]
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { dis8\pp[ fis a] dis[ fis a] dis[ fis a] dis[ fis a]
 dis[ fis a] dis[ fis a] dis[ fis a] dis[ fis a] d![ e gis] d[ e gis] d[ e gis] d[ e gis]
 <gis, b,>[ d e] <gis, b,>[ d e] <gis, b,>[ d e] <gis, b,>[ d e] a,,\f[ b,, cis,] }
 d,16 e, fis, gis, a, b, cis d e8\staccato[ a,,\staccato] ais,,4 r r2
 b,16\ff[ b a! gis] fis[ e dis c] \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { b,8[ a,! gis,] } fis,16 e, dis, cis,
 b,,8 <b, e gis>8[ <b, e gis> <b, e gis>] <b, e gis>[ <b, e gis> <b, e gis> <b, e gis>] <b, dis a>4 r r2 R1
 b,1 e,2( b,) b,1 e,2( b,) b,4( a, gis, fis,) }
 \alternative { { e,4( d,! cis, b,,) a,, r r2 } { e,4( d,! cis, d,) } }
 cis,8_\markup { \italic "cresc." } cis cis, cis cis, cis cis, cis cis, cis cis, cis cis, cis cis, cis cis, cis cis, cis cis, cis cis, cis
 cis, cis cis, cis bis,, bis, bis,, bis, cis, cis cis, cis cis, cis bis,, bis, cis, cis bis,, bis, cis, cis bis,, bis,
 <cis, cis>4 r r <fis a>_\markup { \italic "espressivo" }( <eis gis> <fis a> <eis gis> <fis a> <eis gis>) r r
 <b d'>( <ais cis'> <b d'> <ais cis'> <b d'> <ais cis'>) r <b d'> r <cis fis a!> r <cis gis b> r
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { fis,8[ cis fis] a[ fis cis] fis,[ cis fis] a[ fis cis] fis,[ cis fis] a[ fis cis] fis,[ cis fis] a[ fis cis]
 cis,[ cis gis] b[ gis cis] cis,[ cis gis] b[ gis cis] cis,[ cis gis] b[ gis cis] cis,[ cis gis] b[ gis cis] }
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { fis,8[ cis fis] a[ fis cis] fis,[ cis fis] a[ fis cis] fis,[ cis fis] a[ fis cis] fis,[ cis fis] a[ fis cis]
 b,,[ b, fis] a[ fis b,] b,,[ b, fis] a[ fis b,] b,,[ b, fis] a[ fis b,] b,,[ b, fis] a[ fis b,] }
 <e, e>2.\ff <b,, b,>4( <a,, a,> <g,, g,> <fis,, fis,> <g,, g,>8 <e,, e,>) <e,, e,>4( <dis,, dis,>2.)
 r2 r4 <b,, b,>( <a,, a,> <g,, g,> <fis,, fis,> <g,, g,>8 <e,, e,>) <d,,! d,!>2. <d, d>4( <c, c> <b,, b,> <a,, a,> <b,, b,>8 <g,, g,>)
 <fis,, fis,>1 <b,, b,>4 r <b,, b,> r <a,, a,> r <gis,, gis,> r <fis,, fis,> r \clef treble <fis' gis'> r <e' gis'> r <dis' fis' gis'> r
 \clef bass \new Voice { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { \override Voice.TupletBracket #'transparent = ##t
 cis8[ gis cis' e' cis' gis] cis[ gis cis' e' cis' gis] cis[ gis cis' e' cis' gis] cis[ gis cis' e' cis' gis]
 gis,[ gis dis' fis' dis' gis] gis,[ gis dis' fis' dis' gis] gis,[ gis dis' fis' dis' gis] gis,[ gis dis' fis' dis' gis]
 cis[ gis cis' e' cis' gis] cis[ gis cis' e' cis' gis] cis[ gis cis' e' cis' gis] cis[ gis cis' e' cis' gis]
 fis[ a d' fis a d'] fis[ a d' fis a d'] gis[ cis' e' gis cis' e'] fis[ gis dis' fis gis dis'] } }
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { e8[ gis cis'] e[ gis cis'] e[ gis cis'] e[ gis cis'] e[ gis cis'] e[ gis cis'] e[ gis cis'] e[ gis cis']
 fis[ a cis'] fis[ a cis'] fis[ a cis'] fis[ a cis'] } <fis a cis'>4\staccato r r2 R1 R1 fis2( cis' <b d'> <cis a cis'> <cis gis b> <cis fis a>) R1
 d2\pp( a <g b> <fis a> <a, e g> <a, d fis>) <a, cis e>1 <fis, b, d> <e, a, cis> <e, gis, b,> <a,, a,>4 r r2 R1 R1 r2 r4
 e4\p( a fis cis dis e8) r8 r4 r4
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d'8[ e' d'] cis'[ e' cis'] d'[ e' d'] cis'[ e' cis'] a[ e' a]
 gis[ b gis] e[ gis e] dis[ e dis] d[ e d] cis[ e cis] d[ e d] cis[ e cis] a,[ cis e]
 \setTextCresc e,\<[ gis, b,] a,[ cis e] e[ gis b] a[ cis' e'] e[ gis b] a,[ cis e] e,[ b, e] a,[ cis e\!] }
 \new Voice { <e, gis, b, e>4\f \cadenzaOn s4 r4^\fermata s2 s8 r2^\fermata s4 \cadenzaOff \bar "|" }
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { a8\f[ c' e'] a[ c' e'] a[ c' e'] d[ a d'] a[ c' e'] d[ f b] e[ a c'] e[ gis b] }
 a,2. d,4( a, d, a, f,) e,4 r <e, e> r  <e, e> r  <e, e> r  <e, e> \times 2/3 { \clef treble f'8[ e' d'] c'[ e' a] c'[ b a]
 \clef bass gis[ b d] f[ e d] c[ e a,] c[ b, a,] e,([ f, e,] dis,[ e, dis,] e,[ f, e,] dis,[ e, dis,] } e,4) r4 r2
 \clef treble r4 e''4\p e'' e'' e''2( cis'' a'2. e'4 \clef bass cis') cis'( a cis') e'( e e') r
 \clef treble d''2( b' gis'4 e' d' b \clef bass gis) gis( e gis a e a) r4 d'2 a d' a d'4( a gis a) e2 b, e,4 r4 r2
 r4 a,8( b, cis d e fis gis a b cis' \clef treble d' e' fis' gis' a' b' bis' cis'' bis' cis'' e'' cis'') <b'! d''>2. r4
 \clef bass r4 e,8( fis, gis, a, b, cis d e fis gis a b cis' d' \clef treble e' fis' gis' a' b' cis'' d'' gis') b'4( gis' a') r4
 \clef bass <d a>2 <a, a> <d a> <a, a> d'4( ais b fis gis dis e bis, cis gis, a, d,! e,) r4 <e, e> r
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { a,,8\f[ cis, e,] } a,16 cis e a \times 2/3 { cis8[ e a] e[ gis b]
 e[ a cis'] cis[ e a] cis[ e a] e[ gis b] e[ a cis'] e[ a cis'] fis[ a d'] fis[ a d'] dis[ gis bis] dis[ gis bis] cis[ gis b!] cis[ fis ais]
 b,[ fis a!] b,[ fis a] cis[ e a] cis[ fis a] d[ fis b] d[ fis b] d[ e gis] d[ e gis] }
 <cis e a>8\f \clef treble a'16[ gis'] a'[ e' cis' e'] cis'[ e' a' e'] d'[ e' gis' e'] cis'[ e' a' gis'] a'[ e' cis' e'] cis'[ e' a' e'] d'[ e' gis' e']
 cis'[ e' a' e'] cis'[ e' a' e'] d'[ fis' a' fis'] d'[ fis' a' fis'] dis'[ fis' gis' fis'] dis'[ gis' bis' gis'] cis'[ gis' b' gis'] cis'[ fis' ais' fis']
 c'[ fis' a'! fis'] b[ fis' a' fis'] b[ e' gis' e'] cis'[ e' a' e'] d'[ f' a' f'] d'[ f' d' f'] b[ d' f' d'] a[ b d' b]
 \clef bass gis\ff[ b d' b] gis[ b d' b] gis[ b d' b] gis[ b d' b] gis[ b d' b] gis[ b d' b] gis[ b d' b] gis[ b d' b]
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { gis8\pp[ b d'] gis[ b d'] gis[ b d'] gis[ b d']
 gis[ b d'] gis[ b d'] gis[ b d'] gis[ b d'] g[ a cis'] g[ a cis'] g[ a cis'] g[ a cis'] cis[ e g] cis[ e g] cis[ e g] cis[ e g] }
 \times 2/3 { d,8\f[ e, fis,] } g,16[ a, b, cis] d[ e fis g] \new Voice { \stemDown a8\staccato[ \stemUp d,\staccato] }
 dis,4 r r2 e16\ff[ e' d' cis'] b[ a gis fis] \times 2/3 { e8[ d cis] } b,16[ a, gis, fis,]
 e,8 <e a cis'>[ <e a cis'> <e a cis'>] <e a cis'>[ <e a cis'> <e a cis'> <e a cis'>] <e gis d'>4 r r2 R1
 <e, e>1 a,2( e) <e, e>1 a,2( e) e4( d cis b, a, g, fis, e,) d,2( a, b,2. fis,4 a, g, fis, g,8 e,) d,2( cis,4) r4
 <a,, a,>4 r r2 <b,, b,>4 r r2 <e, e>4 r r2 <a, a>4 r4 r cis'
 cis'8( a d' a d' a d' a) b( a c' a c' a c' a) e'( a f' a f' a f' a) dis'( a e' a e' a e' a)
 cis'!8 a d'! a cis' a d' a b a c' a b a c' a e' a f' a e' a f' a dis' a e' a dis' a e' a d'! a e' d' c' a d' c' b gis c' b a e cis' a
 <fis a> d' <fis a> d' <f a> d' <f a> c'
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { e8\ff[ a cis'!] e,[ a, cis] e,[ a, cis] e,[ a, cis] e,[ b, d] e,[ b, d] e,[ b, d] e,[ b, d] }
 <a,, a,>2 <e, e> <fis, fis>2. <cis, cis>4( <e, e> <d, d> <cis, cis> <d, d>8 <b,, b,>) <a,, a,>2( <gis,, gis,>4) e,4( a, fis, cis, dis,) e,2. r4
 <e, e>1\p <a, e>2. gis4\pp\staccato( a\staccato fis\staccato cis\staccato dis\staccato) e1 e,1\p a, e,
 a,,4 r a,, r a,, r a,, r a,, a,, a,, a,, a,, a,, a,, a,, a,,\pp r r2 a2( e' fis' cis') \clef treble <b e' gis'>1 <cis' e' a'>4 r r2
 \clef bass <gis b e'>1 <a cis' e'>4 r r2 <e b d'>1\f <a cis'>8 r <d a d'> r <e a cis'> r <e, e> r <a, a>4 r <e, e> r <a,, a,>4 r r2 \bar "|."
}