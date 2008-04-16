\version "2.10.3"

 violinotwo = {
 \set Staff.instrumentName = "Violino II."
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key ees \major
 \time 2/4
 \repeat volta 2 {
 \partial 8 g'8\p^\markup { \italic "con sordino" }( f' ees') r8 g'( e' f') r f'( ees'! d') r f'( d' ees') r
 g'8\staccato c''8( ees') r8 d'\staccato f'( ees') r ees'\staccato d'8( ees') r aes( g4) r8 g'8\staccato
 f'8( a') r bes'16( g') f'8( a) r8 bes'8( a'4) r4 r8 a'8([ bes']) r r8 f'([ e']) r r4 c'8\staccato a\staccato R2
 d'32( f' d' f' d' f' d' f') d'( f' d' f' d' f' d' f') ees'( f' ees' f' ees' f' ees' f') ees'( f' ees' f' ees' f' c' f')
 bes( f' bes f' bes f' bes f') bes( f' bes f' d' f' d' f') ees'( f' ees' f' ees' f' ees' f') ees'( f' ees' f' ees' f' c' f')
 bes8\staccato r r g'16( ees') d'8\staccato r r c'16( a) bes8\staccato r r g'16( ees')
 d'8\staccato r r c'16( a) bes8\staccato r r }
 \repeat volta 2 { bes8 des'( c') r des' b( c') r c' bes'!( aes'!) r e' g'( f') r aes! ces'( bes) r ces' a( bes) r bes aes'!( g') r d'
 f'8( ees') \times 2/3 { ees'16([ f' g']) } \times 2/3 { f'16\staccato[ d'\staccato bes\staccato] }
 \times 2/3 { a16([ c' bes]) } \times 2/3 { c'\staccato[ ees'\staccato d'\staccato] }
 \times 2/3 { ees'16([ g' f']) } \times 2/3 { g'\staccato[ f'\staccato ees'\staccato] }
 \times 2/3 { d'16([ f' ees']) } \times 2/3 { d'([ ees' c']) } bes8\staccato f'\staccato ges'( f') r a c'( bes) r4
 r8 f'16([ aes']) aes'\<([ d'']) d''([ f'']) f''4\!\f r4
 R2 r4 r8 g'!8\p( f' ees') r g'( e' f') r f'( ees'! d') r f'( d' ees') r g'\staccato
 c''( ees') r d'\staccato f'( ees') r ees'\staccato d'( ees') r aes g16[( bes) ees'( bes)] g'[( ees' bes g)]
 bes16[( e') g'( e')] bes'[( g' e' c')] c'[( f') a'( f')] c''[( a' f' c')] a[( c') fis'( d')] a'[( fis' d' a)]
 d'16[( g' b' d'')] g'4:16 g'4:16 bes'!4:16 ees'4:16 f'4:16
 bes'4:16 g'16[ g' ees' ees'] d'4 r8 d'( ees' d') r ees'16( c') bes8( d') r ees'( d'4) r4 r8 f'([ ges']) r r d'([ ees']) r R2
 f''8\staccato d''\staccato r4 g32([ bes g bes] g[ bes g bes]) g([ bes g bes] g[ bes g bes])
 aes([ bes aes bes] aes[ bes aes bes]) aes([ bes aes bes] d'[ bes f' d'])
 ees'([ bes g bes] g[ bes g bes]) g([ bes g bes] g[ bes g bes])
 aes([ bes aes bes] aes[ bes aes bes]) aes([ bes aes bes] d'[ bes f' d']) ees'4 r8 c''16( aes')
 g'8\staccato r r f'16( d') ees'8\staccato r r c''16( aes') g'8\staccato r r f'16( d') ees'8\staccato r r } \bar "|."
}