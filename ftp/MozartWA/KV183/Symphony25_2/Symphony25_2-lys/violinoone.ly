\version "2.10.3"

 violinoone = {
 \set Staff.instrumentName = "Violino I. "
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key ees \major
 \time 2/4
 \repeat volta 2 {
 \partial 8 bes'8\p^\markup { \italic "con sordino" }( aes' g') r8 c''( bes' aes') r aes'( g' f') r bes'( aes' g') r
 ees''8\staccato ees''8( f') r8 bes'\staccato aes'( g') r c''\staccato c''8( bes') r d'( ees'4) r8 bes'8\staccato
 a'8( c'') r des''16( bes') a'8( c'') r8 des''8( c'') f''4( ees''16 des'') des''8( c'') r bes''( a'') f''\staccato r
 bes''( a'') f''\staccato r4 ees''!8\staccato c''\staccato r4
 r4 r8 bes'32( d'' f'' bes'') a''16\staccato a''\staccato a''\staccato a''\staccato a''\staccato a''\staccato
 c'''32( a'' f'' ees'') d''16\staccato d''\staccato d''\staccato d''\staccato d''\staccato d''\staccato bes'32( d'' f'' bes'')
 a''16\staccato a''\staccato a''\staccato a''\staccato a''\staccato a''\staccato c'''32( a'' f'' ees'')
 d''8\staccato r r bes''16( g'') f''8\staccato r r ees''16( c'') bes'8\staccato r r bes''16( g'')
 f''8\staccato r r ees''16( c'') bes'8\staccato r8 r8 }
 \repeat volta 2 { bes'8 des''( c'') r des'' b'( c'') r c'' bes''!( aes''!) r e'' g''( f'') r aes'!
 ces''8( bes') r ces'' a'( bes') r bes' aes''!( g'') r d'' f''( ees'') r bes' ees''( a') r a' bes'( f') r f'
 ges'( f') r a\staccato c'( bes) r4 r8 aes'!16([ d''!]) d''\<([ f'']) f''([ aes'']) aes''4.\!\fp( f''8)
 d''8( bes') g'16( aes' f' d') ces'4( bes8) bes'( aes' g') r8 c''( bes' aes') r aes'( g' f') r bes'( aes' g') r8 ees''\staccato
 ees''8( f') r bes'\staccato aes'( g') r c''\staccato c''( bes') r d'( ees'4) r8 bes'
 des''8( c'') r bes' a'( c'') r c'' ees''( d''!) r c'' b'( d'') r f'' f''( ees'') r8 f''16( des'') des''8( c'') r d''( ees'' g'') r8 a'
 bes'8( f') r f'( ges' f') r ges'16( ees') d'8( f') r ges'( f') bes'4( aes'16 ges') ges'8( f') r ees''( d'' f'') r a''( bes'') bes'\staccato r4
 aes''!8\staccato f''\staccato r4 r4 r8 ees'32([ g' bes' ees''])
 d''16\staccato[ d''\staccato d''\staccato d''\staccato] d''\staccato d''\staccato f''32([ d'' bes' aes'])
 g'16\staccato[ g'\staccato g'\staccato g'\staccato] g'\staccato g'\staccato ees'32([ g' bes' ees''])
 d''16\staccato[ d''\staccato d''\staccato d''\staccato] d''\staccato d''\staccato f''32([ d'' bes' aes'])
 g'4 r8 ees'''16( c''') bes''8\staccato r r aes''16( f'') ees''8\staccato r r ees''16( c'')
 bes'8\staccato r r aes'16( f') ees'8\staccato r r } \bar "|."
}