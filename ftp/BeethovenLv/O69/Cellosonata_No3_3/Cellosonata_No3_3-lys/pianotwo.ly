\version "2.6.0"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key e \major
 \time 2/4
 e16\p( b gis b e b gis b) dis( b fis b dis b e b) a( cis' gis b <fis a> b <e gis> b) dis( b fis b dis b fis b)
 dis16( b fis b) dis( e) <a b>\staccato( <gis b>\staccato) a e' cis' e' <gis b> e' <e gis> cis'
 fis16 dis' b dis' fis e' cis' e' <b dis'>8 r r4
 \new Voice { \stemDown \slurDown e,16( b, gis, b, \stemUp e, b, gis, b,) } dis,( b, fis, b, dis, b, e, b,)
 a,( e gis, e <fis, a,> b, <e, gis,> b,) dis,( b, fis, b, dis, b, fis, b,)
 dis,( b, fis, b,) <dis, b,> <e, b,> <a, b,> <gis, b,> a, e cis e gis, e b, e a, e cis e gis, e b, e
 a,( e ais, e b, e ais, e) <b, e>8 <ais e'>([ <b e'>]) <e, gis, b, d>
 \new Voice { \cadenzaOn <e, gis, b, d>8 s4 s8 r8 s8 r4^\fermata s4 \cadenzaOff }

 \bar "||" \break
 \key a \major
 \time 2/2
 \repeat volta 2 {
 a,,8\pp a,, a,, a,, a,, a,, a,, a,, a,,4 r r2 d,8 d, d, d, d, d, d, d, e,4 r r2
 a,,8 a,, a,, a,, a,, a,, a,, a,, a,, a,, gis,, gis,, a,, a,, g,, g,, fis,, fis,, d, d, e, e, e, e, <a,, a,>4 r r2
 e8( cis' a cis' e b gis d') e( cis' a cis' e cis' a cis') fis( d' a d' f d' b d')
 <e b>( d' <fis! b> d' <gis b> d' <e b> d') e( cis' a cis' e b gis d') a( cis' gis cis' a cis' <g a> cis')
 <fis a>( d' <d fis> b <e gis!> b <e gis> d') <a cis'>8\p <a, e a>8[ <a, e a> <a, e a>] r <a, e a>[ <a, e a> <a, e a>]
 r8 <a, e b>[ <a, e b> <a, e b>] r <a, e b>[ <a, e b> <a, e b>] r <a, e a>[ <a, e a> <a, e a>] r <a, e a>[ <a, e a> <a, e a>]
 r8 <a, e b>[ <a, e b> <a, e b>] r <a, e b>[ <a, e b> <a, e b>]
 <a, a>4 r8 <a, a> <b, b>4 r8 <b, b> <cis cis'>4 r8 <cis cis'> <dis dis'> <dis dis'> <dis dis'> <dis dis'>
 <e e'>4 r8 <e gis> <fis a>4 r8 <fis a> <gis b>4 r8 <gis b> <ais cis'>[ <ais e'> <ais e'> <ais e'>]
 <b dis'>4 r r2 \clef treble r16 b'16\ff[ cis'' dis''] e''[ fis'' gis'' ais'']
 b''8\staccato fis''\staccato dis''\staccato b'\staccato
 \clef bass \new Voice { \stemDown fis'\staccato dis'\staccato b\staccato fis\staccato
 dis_\staccato b,_\staccato fis,_\staccato dis,_\staccato b,,4_\staccato b,_\staccato } r2
 R1 a,2.\p a,8[ a,] a,[ a,] b,[ b,] cis[ cis] b,[ b,] a,4 a, r2 R1 ais,2. ais,8[ ais,] ais,[ ais,] b,[ b,] cis[ cis] b,[ b,] ais,4 ais, r2
 <ais cis'>1 b1 b,2. <b, dis>4 << { dis4( e) } \\ { cis2 } >> r2 << { g2( fis4. g8) } \\ { <ais, cis>1 } >>
 <b, e gis!>2\f <b, gis b>2 ~ <b, gis b>4 <b, fis a> <b, e gis> <b, dis fis b>
 <e gis>16\p[ b <e gis> b] <e gis>[ b <e gis> b] <e a>[ cis' <e a> cis'] <e a>[ cis' <e a> cis']
 <e gis>16[ b <e gis> b] <e gis>[ b <e gis> b] <e a>[ cis' <e a> cis'] <e a>[ cis' <e a> cis']
 <e gis>16[ b <e gis> b] <e gis>[ b <e gis> b] <e a>[ cis' <e a> cis'] <e a>[ cis' <e a> cis']
 <e gis>16[ b <e gis> b] <e gis>[ b <e gis> b] <e a>[ cis' <e a> cis'] <e a>[ cis' <e a> cis']
 e16[ fis gis a] b[ cis' dis' e'] \clef treble a[ b cis' d'!] e'[ fis' gis' a']
 b16[ b' gis' e'] \clef bass b[ ais b ais] b[ ais b a] b[ gis b fis]
 e16[ fis gis a] b[ cis' dis' e'] a,[ b, cis d!] e[ fis gis a] b,[ b gis e] b,[ gis, e, gis,]
 b,,[ b, b,, b,] b,,[ b, b,, b,] e,[ b, gis, b,] e,[ b, a, b,] e,[ b, gis, b,] e,[ b, a, b,]
 e,[ b, gis, b,] e,[ b, a, b,] e,[ b, gis, b,] e,[ b, a, b,] <e, gis, b, e>4 r r2 R1 R1 }
 \alternative {
 { R1 R1 r4 e,4 ~ e,8 e,( fis, gis,) } { R1 }
 }
 R1 r4 e,4 ~ e,8 e,( fis, gis,) a,,8[ a,, a,, a,,] a,,[ a,, a,, a,,] a,4( f, e, a,) d,8[ d, d, d,] d,[ d, d, d,]
 d,4( bes,, a,, d,) g,,8[ g,, g,, g,,] g,,[ g,, g,, g,,] g,,4 r r2 g,,8[ g,, g,, g,,] g,,[ g,, g,, g,,] g,,4 r r2
 g,,8[ g,, g,, g,,] r2 g,,8[ g,, g,, g,,] r2 <g,, g,>8 <g,, g,> r4 <g, g>8 <g, g> r4 <f, f>8 <f, f> r4 <d, d>8 <d, d> r4
 <c, c>16\ff[ d e f] g[ a b c'] b[ c' b a] g[ f e d] c4 r r2 c16[ d e f] g[ a b c'] b[ c' b a] g[ f e d] c4 r r2
 f,16[ g, a, bes,] c[ d e f] e[ f e d] c[ bes, a, g,] f,4 r r2 f,16[ g, a, bes,] c[ d e f] g[ f e d] c[ bes, a, g,]
 a,16[ b, c d] e[ f g a] b,[ c d e] f[ g a b] c[ d e f] g[ a b c'] d[ e f g] a[ b c' d']
 e16[ f g a] b[ c' d' e'] f[ g a b] c'[ d' e' f'] g[ a b c'] \clef treble d'[ e' f' g'] a[ b c' d'] e'[ f' g' a'] <b d'>4 r r2
 \clef bass <g c' e'>4 r r2 <f a d'>4\p r r2 <g b e'>4\pp r r2
 ees4( c b, d ees c cis e f d dis fis g e f aes a! fis! a f a e a dis) a4( e a f a e a dis)
 e1\p a,1 <d, d> <e, e> a,,8[ a,, a,, a,,] a,,[ a,, a,, a,,] a,,[ a,, gis,, gis,,] a,,[ a,, g,, g,,] fis,,[ fis,,] d,[ d,] e,[ e, e, e,]
 a,,8 r r4 r2
 e16[ cis' a cis'] e'[ cis' a cis'] e[ d' b d'] e[ d' gis d'] e[ cis' a cis'] e'[ cis' a cis'] e[ cis' a cis'] e[ cis' g cis']
 fis[ d' a d'] fis[ d' ais d'] fis[ d' b d'] fis[ d' b d'] gis[ d' b d'] gis[ d' b d'] gis[ d' b d'] e[ d' b d']
 e[ cis' a cis'] e'[ cis' a cis'] e[ d' b d'] e[ d' gis d'] a[ e' cis' e'] gis[ e' cis' e'] a[ e' cis' e'] g[ e' a e']
 fis[ d' a d'] d[ b fis b] e[ b gis! b] e[ d' gis d']
 a,8 <a, e a>[ <a, e a> <a, e a>] r <a, e a>[ <a, e a> <a, e a>] r <a, e b>[ <a, e b> <a, e b>] r <a, e b>[ <a, e b> <a, e b>]
 r8 <a, e a>[ <a, e a> <a, e a>] r <a, e a>[ <a, e a> <a, e a>] r <a, e b>[ <a, e b> <a, e b>] r <a, e b>[ <a, e b> <a, e b>]
 <a, e a>4 r8 <a, a> <b, b>4 r8 <b, b> <cis cis'>4 r8 <cis cis'> <dis dis'>8[ <dis dis'> <dis dis'> <dis dis'>]
 <e gis>4 r8 <e gis> <fis a>4 r8 <fis a> <gis b>4 r8 <gis b> <e gis>8[ <e gis> <e gis> <e gis>]
 <a cis'>8[ <a cis'> <b dis'> <b dis'>] <cis' e'>[ <cis' e'> <dis' fis'> <dis' fis'>]
 <e gis>8[ <e gis> <fis a> <fis a>] <gis b>[ <gis b> <e gis> <e gis>]
 <a cis'>\f[ <a cis'>] <gis b>[ <gis b>] <fis a>[ <fis a>] <b, fis>[ <b, fis>]
 <e gis>8 r r4 \clef treble r16 e'16[ fis' gis'] a'[ b' cis'' dis''] e''[ gis' a' b'] cis''[ dis'' e'' fis'']
 gis''[ b' cis'' dis''] e''[ fis'' gis'' a''] b''8\staccato[ gis''\staccato e''\staccato b'\staccato]
 gis'\staccato[ e'\staccato b\staccato gis\staccato] \clef bass e4\staccato \new Voice { \stemDown e,4_\staccato } r2 R1
 \new Voice { \stemDown d,2. } d8[ d] d[ d] e[ e] fis[ fis] e[ e] d4 d r2 R1
 \new Voice { \stemDown dis,2. } dis8[ dis] dis[ dis] e[ e] fis[ fis] e[ e] dis4 dis r2 <dis fis>1 <e a>1 <e b>2.\p <e gis>4
 << { gis4( a) } \\ { fis2 } >> r2 <dis fis>1 <e a>2 <e cis' e'>2 ~ <e cis' e'>4 <e b d'> <e a cis'> <e, gis, b, e>
 <a, cis>16\p[ e <a, cis> e] <a, cis>[ e <a, cis> e] <a, d>[ e <a, d> e] <a, d>[ e <a, d> e]
 <a, cis>16[ e <a, cis> e] <a, cis>[ e <a, cis> e] <a, d>[ e <a, d> e] <a, d>[ e <a, d> e]
 <a, cis>16[ e <a, cis> e] <a, cis>[ e <a, cis> e] <a, d>[ e <a, d> e] <a, d>[ e <a, d> e]
 <a, cis>16[ e <a, cis> e] <a, cis>[ e <a, cis> e] <a, d>[ e <a, d> e] <a, d>[ e <a, d> e]
 a,16[ b, cis d] e[ fis gis a] d[ e fis g] a[ b cis' d'] e[ fis gis! a] b[ cis' d' e'] dis'[ e' dis' e'] dis'[ e' dis' e']
 a,16[ b, cis d!] e[ fis g a] d[ e fis g] a[ b cis' d'] e[ e fis gis!] a[ gis a b] cis'8 r r4
 R1 r16 e,[ fis, gis,] a,[ gis, a, b,] cis[ gis, a, b,] cis[ b, cis d] e4 r r2 R1 R1 R1 R1 R1
 <a cis'>8 e <a cis'> e <b d'> e <gis d'> e <a cis'> e <a cis'> e <a cis'> e <a cis'> e
 d'8 a d' a dis' a dis' a e' b e' d'! cis' a e' a d' a d' a dis' a dis' a e' b e' d'! cis' a e' a
 d'16[ a d' a] d'[ a d' a] c'[ a c' a] c'[ a c' a] cis'![ a cis' a] cis'[ a cis' a] <e b d'>4\f\staccato <e b d'>\staccato
 R1 R1 R1 R1 cis8\p( d e fis gis a b cis' \clef treble d' dis' e' eis' fis' b e' d')
 \clef bass <a cis'> e' <a cis'> e' <gis b> e' <gis b> e' <a cis'> e' <a cis'> e' <a cis'>[ e'] \clef treble <a e'>[ g']
 <a d'> fis' <a d'> fis' <b d'> f' <b d'> f' <b d'> e' <b d'> e' <a cis'> e' <a e'> g'
 <a d'> fis' <a d'> fis' <b d'> f' <b d'> f' <b d'> e' <b d'> e' <a cis'> e' <a e'> g'
 a16[ fis' d' fis'] a[ fis' d' fis'] a[ fis' c' fis'] a[ fis' c' fis'] a[ e' cis'! e'] a[ e' cis' e'] a[ eis' cis' eis'] a[ eis' cis' eis']
 a[ fis' d' fis'] a[ fis' d' fis'] a[ fis' d' fis'] a[ fis' d' fis']
 \clef bass b[ e' d' e'] b[ e' d' e'] b[ e' d' e'] b[ e' d' e'] a[ e' cis' e'] cis'[ e' cis' e'] b[ fis' b fis'] b[ fis' b fis']
 cis'[ e' cis' e'] cis'[ e' cis' e'] gis[ e' gis e'] gis[ e' gis e'] fis[ d' a d'] fis[ d' a d'] fis[ d' a d'] fis[ d' a d']
 gis[ e' b e'] gis[ e' b e'] gis[ e' b e'] gis[ e' b e'] a[ e' cis' e'] a[ e' cis' e'] d[ b fis b] d[ b fis b]
 e[ cis' a cis'] e[ cis' a cis'] e[ b gis b] e[ b gis b] a[ e' cis' e'] a[ e' cis' e'] d[ b fis b] d[ b fis b]
 e[ cis' a cis'] e[ cis' a cis'] e[ b gis b] e[ b gis b]
 <a, cis e a>8\ff a,[ a, a,] a, a, fis, dis, e, e, cis, a,, e, e, e, e, <a,, a,>4\ff r4 r2
 cis4( a, gis, b,) e,2. fis,16( gis, a, b,) cis4( a, gis, b,)
 cis4( a, gis, b, a, e, dis, fis, e, cis, b,, d,! cis, a,, gis,, b,,) a,,8\pp a,, a,, a,, a,, a,, a,, a,, a,,4 r r2
 a,,8 a,, a,, a,, a,, a,, a,, a,, a,, a,, a,, a,, a,, <a,, cis, e, a,>[ <a,, cis, e, a,> <a,, cis, e, a,>]
 <a,, cis, e, a,>4\f r <a,, cis, e, a,> r <a,, cis, e, a,> r r2 \bar "|."
}