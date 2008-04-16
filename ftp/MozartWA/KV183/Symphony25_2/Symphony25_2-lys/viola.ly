\version "2.10.3"

 viola = {
 \set Staff.instrumentName = "Viola.        "
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key ees \major
 \time 2/4
 \repeat volta 2 {
 \partial 8 r8 d8\p( ees) r4 g8( f) r4 a8( bes) r4 f8( ees) r4 aes!8( c') r4 b8( c') r4 aes8( g) r f( ees4) r4
 c'16( a f8) r4 r8 f'\fp([ a bes]) r8 a([ bes ees]) f8([ f' e']) r r8 a([ bes]) r R2 c''8\staccato a'\staccato r4
 r8 bes8\staccato[ d'\staccato bes\staccato] r c'\staccato[ f\staccato a\staccato]
 r8 bes\staccato[ d'\staccato bes\staccato] r c'\staccato[ f\staccato a\staccato]
 bes8\staccato[ d( ees)] r r8 e([ f]) r r fis([ g]) r r e!([ f!]) r r a([ bes]) }
 \repeat volta 2 { r8 r8 g([ aes]) r r aes([ g]) r r8 f'([ aes'! g']) r c'8( aes4)
 r8 f([ ges]) r r ges([ f]) r r bes'([ ees' f']) aes'( g') r4 r8 ees4 \times 2/3 { ees'16\staccato[ d'\staccato c'\staccato] }
 bes4 r8 f'\staccato ges'8( f') r a\staccato c'( bes) r4 r8 d'16([ f']) f'\<([ aes']) aes'([ d']) d'4\!\f r4
 R2 R2 d8\p( ees) r4 g8( f) r4 a8( bes) r4 f8( ees) r4 aes!8( c') r4 b8( c') r4 aes8( g) r f( ees4) r8 <bes g'>8
 <bes g'>4 r8 \set doubleSlurs = ##t <bes g'>( <a f'>4) r8 <d' a'> <d' a'>4 r8 <d' a'>( <b g'>4) r8 <b d'>
 \set doubleSlurs = ##f <b d'>8( <c' ees'>) r <bes des'> <bes des'>( <aes c'>) r
 << { d'8( ees' g') } \\ { bes8 aes4 } >> r8 << { ees'8 d'!4 } \\ { f8 f4 } >> r4 bes4 r4
 r8 bes8\p([ d ees]) bes([ aes ges aes]) bes([ d' ees']) r r bes([ a]) r r4 f'8\staccato d'\staccato R2
 r8 ees\staccato[ g\staccato ees\staccato] r bes\staccato[ f\staccato f\staccato]
 r8 ees\staccato[ g\staccato ees\staccato] r bes\staccato[ f\staccato f\staccato]
 ees8\staccato[ g( aes)] r r a([ bes]) r r b([ c']) r r a([ bes!]) r r d([ ees]) } \bar "|."
}