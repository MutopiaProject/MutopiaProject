\version "2.10.3"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key g \minor
 \time 4/4
 \repeat volta 2 {
 <f, f>2\f( <fis, fis>2 <g, g>2.\sf) <ees, ees>4\staccato
 << { \override Stem #'length = #20 s4 a4 f ees d s4 } \\
 { <c, c>4\staccato <a,, a,>\staccato <f,, f,>\staccato ees,\staccato d,\staccato bes,\staccato } >> r2
 <d, bes, d>1\p <ees, bes, ees>4\staccato r r2 <f, c f>1 <g, bes, g>4\staccato r r2
 <ees g c'>1 <ees f c'>2 <d f bes> <ees g c'> <f c'> <bes, bes>4\staccato r r2
 <d, d>1^\markup { \italic "cresc." } \set doubleSlurs = ##t <ees, ees>1~ <ees, ees>2( <e, e>)
 \set doubleSlurs = ##f <f, f>2.^\sf( <fis, fis>4) <g, g>2\f <ees,! ees!>2 <f,! f!>4\p r <f,, f,>4 r
 <bes,, bes,>8\staccato d\staccato bes,\staccato d\staccato bes,\staccato d\staccato bes,\staccato d\staccato
 bes,8\staccato d\staccato bes,\staccato d\staccato bes,\staccato d\staccato bes,\staccato d\staccato
 c8 ees c ees c ees c ees c ees c ees c ees c ees d f d f d f d f d f d f d f d f ees8([ g ees d] c[ ees c bes,])
 << { a8[( c') a\staccato g\staccato] f[ ees\staccato d\staccato c\staccato] bes,4 } \\
 { f,2 <f,, f,>2 bes,,4 } \\ { a,8 b,8\rest b,4\rest s2 s4 } >> r4 r2
 r4 <bes,, bes,>4\staccato <d, d>\staccato <f, f>\staccato <c, c>4\staccato r4 r2
 r4 <c, c>\staccato <ees,! ees!>\staccato <f, f>\staccato <d, d>4 <d, d> r <d, d> r4 <ees, ees> r <e, e>
 <f, f>4 ees'!4( d' bes f ees d bes, f,\staccato) ees'( d' bes f ees d bes, <f, f>\staccato) r <f,, f,>\ff\staccato r
 <f,, f,>4\staccato r4 r2 <d fis>2\pp r2 r2 r4 <a, e>4 <d fis>2\staccato <a, e>\staccato <d, d>1
 <g, bes, d g>2 r r2 r4 <d a>4 <g bes>2\staccato <f! g bes>\staccato <e g bes c'>1
 f4\p\staccato r c\staccato r f,\staccato r r2 R1 <c, c>2\<( <d, d>\!\> <g,, g,>4\!\staccato) r <d, d>\staccato r
 g,4\staccato r r2 R1 <c, c>4\p r <c, c> r \clef treble f'8\staccato[ a'\staccato c''\staccato a'\staccato]
 bes'\staccato[ g'\staccato c''\staccato bes'\staccato] a'8([ c'' b' c''] d''[ c'') bes'!\staccato a'\staccato]
 g'8\staccato[ a'\staccato f'\staccato g'\staccato] e'\staccato[ f'\staccato d'\staccato e'\staccato]
 c'8_\markup { \italic "staccato" }[ d' e' f'] g'[ a' b' c''] bes'![ g' d' bes] c'[ a d' c']
 \clef bass bes8[ c' bes a] g[ f e d] c[ d bes, c] a,[ c bes, d] c[ f a c'] c[ g bes c'] <f, f>4 r4 r2 R1 R1
 r4 bes,4( c c,) <c, c>4\f <f, f>2\sf <e, e>4\staccato <d, d>4\staccato <g, g>2\sf <f, f>4\staccato
 <e, e>4\staccato <a, a>2\sf <gis, gis>4\staccato <a, a>4\p( d e e,) a,4( bes,! c c,) c\pp( d e e,)
 a,4( bes,! c c,) c_\markup { \italic "cresc." }( d e e,) a,4\f( bes,! c c,)
 f,8[ f <a c'> f] <a c'>[ f <a c'> f] <g bes e'>8[ f <g bes e'> f] <g bes e'>[ f <g bes e'> f]
 <a c' f'>8[ f <a c' f'> f] <a c' f'>[ f <a c' f'> f] <g bes e'>[ f <g bes e'> f] <g bes e'>[ f <g bes e'> f]
 <f a c' f'>4 r4 <f, f> r <f, f> r <f, f> r <f, f>8\f\staccato[ <c c'>\staccato <bes, bes>\staccato <a, a>\staccato]
 <g, g>8\staccato[ <f, f>\staccato <e, e>\staccato <d, d>\staccato]
 <c, c>4\staccato <bes,, bes,>\staccato <a,, a,>\staccato <g,, g,>\staccato
 <fis, a, d fis>2\ff( <g, bes, d g>4) r4 <e, e>4\p\staccato <f,! f!>\staccato <bes,, bes,>\staccato <c, c>\staccato
 <fis, a, d fis>2\ff( <g, bes, d g>4\staccato) r4
 <e, e>4\p\staccato <f,! f!>\staccato <bes,, bes,>\staccato <c, c>\staccato
 <fis, fis>\staccato <g, g>\staccato <e, e>\staccato <f, f>\staccato
 <d, d>\staccato <e, e>\staccato <cis, cis>\staccato <d, d>\staccato
 b,,4\p\staccato d,\staccato g,\staccato b,\staccato d\staccato g\staccato b2\sf
 c,4\p\staccato f,\staccato a,\staccato c\staccato f\staccato a\staccato c'2\sf c1
 \new Voice { \stemDown <c, c>1\sf <f,, f,>4 } g,4\rest g,2\rest
 <c c'>4 r r2 <f f'>4 r r2 <c c'>4 r r2 <f, f>4 r r2 <c, c>1 <f, f>1 <c, c>1
 <f,, f,>4 r <f, a, c f>4\ff r <f,, f,>4 r r2 }

 <des, des>2\pp r2 r2 r4 aes,4 des2\staccato aes,2\staccato <des, des>1 <ges, bes, des ges>2 r2
 r2 r4 <a,! a!>4 <bes, bes>2\staccato <aes, aes>\staccato <g,! g!>1 <ges, ges>2 <f, f> <ges,, ges,> <aes,, aes,>
 <des, des>4\p r r2 <ges,, ges,>1 <aes,, aes,>1 <des, des>4 r r2 R1 <ges,, ges,>1
 << { <c c'>2 <ees ees'>2 } \\ { <aes,, aes,>1 } >> <des, des>4\f r r des\staccato
 aes,4\staccato f,\staccato des,\staccato ces,\staccato
 bes,,4\staccato bes,\staccato r bes,,\staccato bes,,\staccato bes,\staccato r4 r8
 \times 2/3 { bes,16([ c d] } ees4\staccato) r4 r4 ees4\staccato
 bes,\staccato ges,\staccato ees,\staccato des,\staccato c,4\staccato c\staccato r c,\staccato
 c,4\staccato c\staccato r4 r8 \times 2/3 { c16([ d e] } f4\staccato) r r f4\staccato
 c4\staccato aes,\staccato f,\staccato ees,!\staccato d,\staccato d\staccato r d,\staccato
 d,4\staccato d\staccato r d,\staccato d,\ff\staccato d\staccato r d,\staccato
 d,\staccato d\staccato r d,\staccato <d, d>4 r4 r2
 R1 R1 <f, f>1\fp~ <f, f>1 <f, f>1 <f, f>4 r r ees!4\p\staccato c4\staccato a,\staccato f,\staccato ees,\staccato
 des,4\staccato f,\staccato r des,\staccato
 bes,,4\staccato des,\staccato r bes,,\staccato f,,\staccato f,\staccato r ees\staccato
 c4\staccato a,\staccato f,\staccato ees,\staccato des,\staccato f,\staccato r des,\staccato
 bes,,4\staccato des,\staccato r bes,,\staccato f,,\staccato f,\staccato r bes,,\staccato
 f,,4\staccato f,\staccato r bes,,\staccato f,,8 f,\staccato[ g,\staccato a,\staccato]
 bes,8\staccato[ c\staccato d!\staccato e\staccato] R1 R1 R1
 <f f'>2\ff( <fis fis'>2\sf <g g'>2.\sf) <ees ees'>4\staccato
 <c c'>4\staccato <a, a>\staccato <f, f>\staccato <ees, ees>\staccato <d, d>\staccato <bes, bes>\staccato r2
 <d, bes, d>1\p <ees, bes, ees>4\staccato r4 r2 <f, c f>1 <bes, f>4\staccato r4 r2
 <g,, g,>1^\markup { \italic "cresc." } <aes,, aes,>1^\sf <bes,, bes,>1
 ees,8\fp\staccato[ g,\staccato ees,\staccato g,\staccato] ees,\staccato[ g,\staccato ees,\staccato g,\staccato]
 ees,\staccato[ g,\staccato ees,\staccato g,\staccato] ees,\staccato[ g,\staccato ees,\staccato g,\staccato]
 f,8[ aes, f, aes,] f,[ aes, f, aes,] f,[ aes, f, aes,] f,[ aes, f, aes,] g,[ bes, g, bes,] g,[ bes, g, bes,]
 g,8[ bes, g, bes,] g,[ bes, g, bes,] aes,8\staccato[ c'( aes g] f[ aes f ees])
 << { d8 g8\rest g4\rest bes8\staccato[ aes\staccato g\staccato f\staccato] ees4 } \\
 { bes,2 <bes,, bes,>2 ees,4 } >> r4 r2 r4 <c, c>4\staccato <ees, ees>\staccato <g, g>\staccato
 <d, d>4\staccato r r2 r4 <d, d>4\staccato <f,! f!>\staccato <g, g>\staccato <ees, ees>4\staccato r r
 g,4( fis,2 g,4. bes,,!8 a,,4\staccato) r8 f,!8\staccato g,,4\staccato r8 f,8\staccato
 f,,4\staccato r r2 <bes, bes>4\p\staccato r <f, f>\staccato r <bes,, bes,>4\staccato r r2 R1
 <f, f>2( <g, g> <c, c>4\staccato) r4 g,\staccato r c4\staccato r r2 R1
 <f, f>4\p r <f, f> r bes8\staccato[ d'\staccato f'\staccato d'\staccato]
 ees'8\staccato[ c'\staccato f'\staccato ees'\staccato] d'([ f' e' f'] g'[ f' ees'\staccato d'\staccato])
 c'8\staccato[ d'\staccato bes\staccato c'\staccato] a\staccato[ bes\staccato g\staccato a\staccato]
 f8_\markup { \italic "staccato" }[ g a bes] c'[ d' e' f'] ees'![ g' f' ees'] d'[ f' ees' d'] c'[ d' ees' d'] c'[ bes a g]
 f8[ g ees f] d[ f ees g] f,8[ bes, d f] f,[ c ees f] bes,4 r r
 << { f4^\sf\staccato b\staccato c'\staccato a4\rest g4^\sf\staccato cis'\staccato d'\staccato a4\rest a\staccato } \\
 { f,\staccato b,\staccato c\staccato g,4\rest g,4\staccato cis\staccato d\staccato a,4\rest a,\staccato } >>
 d4( ees f f,) <f, f>4\f\staccato <bes, bes>2\sf <a, a>4\staccato <g, g>\staccato <c c'>2\sf <bes, bes>4\staccato
 <a, a>4\staccato <d d'>2\sf <cis cis'>4\staccato d4\p( g a a,) d( ees! f f,) f^\pp( g a a,) d( ees! f f,)
 f4( g a a,) d\f( ees! f f,) bes,,8 bes,8[ <d f> bes,] <d f>[ bes, <d f> bes,]
 <c ees a>8[ bes, <c ees a> bes,] <c ees a>[ bes, <c ees a> bes,]
 <d f bes>8[ bes, <d f bes> bes,] <d f bes>[ bes, <d f bes> bes,]
 <c ees a>[ bes, <c ees a> bes,] <c ees a>[ bes, <c ees a> bes,] <bes, d f bes>4 r <bes,, bes,> r
 <bes,, bes,>4 r <bes,, bes,> r <bes,, bes,>8^\f\staccato[ f'\staccato ees'\staccato d'\staccato]
 c'8\staccato[ bes\staccato a\staccato g\staccato] f4\staccato ees\staccato d\staccato c\staccato
 <b, d g b>2\ff( <c ees g c'>4\staccato) r4
 <a, a>4\p\staccato <bes,! bes!>\staccato <ees, ees>\staccato <f, f>\staccato
 <b,, b,>2\ff( <c, c>4\staccato) r4 <a,, a,>4\staccato <bes,,! bes,!>\staccato ees,\staccato f,\staccato
 <b, b>4\staccato <c c'>\staccato <a, a>\staccato <bes, bes>\staccato
 <g, g>4\staccato <a, a>\staccato <fis, fis>\staccato <g, g>\staccato
 e,4\p\staccato g,\staccato c\staccato e\staccato g\staccato c'\staccato e'2\sf
 f,4\p\staccato bes,\staccato d\staccato f\staccato bes\staccato d'\staccato f'2\sf f1
 << { s2 s4 f16 f' ees ees' <d d'>4 } \\ { <f,, f,>1\sf <bes,, bes,>4 } >> r4 r2
 <f, f>4 r4 r2 <bes, bes>4 r r2 <f, f>4 r r2 <bes,, bes,>4 r r2 <f, f>1 <bes, bes>1 <f, f>1
 <bes,, bes,>4\f\staccato r <bes, d f bes>\staccato r <bes,, bes,>4\staccato r r2
 <c, c>4\ff\staccato r <c e g c'>\staccato r <c e g c'>4\staccato r r2
 <f,, f,>4\ff r <f a c' f'>4\staccato r <f a c' f'>4\staccato r r2
 \clef treble f''2\p( fis'' g'' ees'') f''!2 f'2 bes'4 r r2 \clef bass <f,, f,>2( <fis,, fis,> <g,, g,> <ees,, ees,>)
 <f,,! f,!>4\ff r <f, f> r <bes,, bes,>4 r r2^\fermata \bar "|."
}