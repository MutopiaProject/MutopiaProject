\version "2.10.3"

 violoncello = {
 \set Staff.instrumentName = "Violoncello"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key bes \major
 \time 4/4
 \partial 8*3 r8 r4
 d8\p\staccato bes\staccato f\staccato bes\staccato ees\staccato bes\staccato g\staccato bes\staccato
 d\staccato bes\staccato f\staccato bes\staccato d\staccato bes\staccato f\staccato bes\staccato
 ees\staccato a\staccato f\staccato a\staccato ees\staccato a\staccato f\staccato a\staccato
 d\staccato bes\staccato d\staccato bes\staccato d4 r r4 bes4 r4 ees' r4 bes r bes, r f, r f
 bes,4 <bes, f bes> <bes, f bes> r ees8\p\staccato f\staccato ees\staccato f\staccato
 ees8\staccato f\staccato ees\staccato f\staccato d f d f d f d f f4\staccato a\staccato c'\staccato r
 f4\staccato bes\staccato d'\staccato r r4 d'\p\staccato r ees'\staccato r8 d'8( f' d' bes4) r4
 r4 a4\staccato r ees'\staccato d'4\staccato <bes, f bes>4 <bes, f bes>8 \bar "|."
 \break

 r8 r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 r8 \bar "|."
 \break

 \clef tenor s8 s4 \bar "" bes4\pp( f'^\markup { "Solo." } g' ees') f'( d') ees'8( d' c' d') ees'4( c' a f)
 \clef bass bes4( a8) g\staccato f\staccato[ ees\staccato d\staccato c\staccato] d4( bes, ees c) d4( f2 bes4)
 a4( c'2 ees'4~ ees'8[ d' f' d'] bes8) r8 d'4( \bar "||"
 \repeat volta 2 { c'4 f c' ees') d'8( ees' d' c') bes2(~ bes4 a8 g)
 f2(~ f2_\markup { \italic "cresc." }~ f8)[ f( g a)] bes4( d' ees' c') d'4\p( bes2) f4(~ f4\pp ees2 c4) }
 \alternative { { d8\staccato bes\staccato f\staccato d\staccato bes,4\staccato d'4 }
 { d8\staccato bes\staccato f\staccato d\staccato bes,8\staccato } } \bar "|."
 \break

 r8 r4 R1 R1 R1 \clef tenor r2 r8 bes'8\f\staccato_\markup { \italic "   con fuoco" } bes'\staccato bes'\staccato
 bes'8\staccato f'\staccato bes'4.\sf g'8\staccato bes'4\sf~ bes'8 f'8\staccato bes'4\sf(~
 \times 2/3 { bes'8[ a') g'\staccato] } \times 2/3 { f'8\staccato[ ees'\staccato d'\staccato] }
 \times 2/3 { c'8[( d') ees'\staccato] } \times 2/3 { d'\staccato[ c'\staccato bes\staccato] }
 \times 2/3 { a\staccato[ g\staccato f\staccato] } \times 2/3 { ees\staccato[ d\staccato c\staccato] }
 \times 2/3 { bes,\staccato[ d\staccato ees\staccato] } \times 2/3 { f\staccato[ g\staccato a\staccato] }
 bes8\staccato r8 r4 r8 g'16\p( f' ees' d' c' bes) a8\staccato r8 r4
 r8 bes16( a bes c' d' ees') f'8\staccato g'16( f' ees' d' c' bes) a8\staccato r8 r4 r8 bes16( a bes c' d' ees')
 f'8\staccato r8 r4 r2 bes16\f d' f' d' f'\sf d' f' d' bes ees' g' ees' g'\sf ees' g' ees'
 \times 2/3 { d'8\staccato[ bes\staccato c'\staccato] } \times 2/3 { d'\staccato[ ees'\staccato f'\staccato] }
 \times 2/3 { g'[( f') ees'\staccato] } \times 2/3 { d'\staccato[ c'\staccato bes\staccato] }
 \clef bass \times 2/3 { a8[( bes) c'\staccato] } \times 2/3 { bes\staccato[ a\staccato g\staccato] }
 \times 2/3 { f\staccato[ ees\staccato d\staccato] } \times 2/3 { c\staccato[ bes,\staccato a,\staccato] }
 bes,4 r r \bar "|." \break

 \key bes \minor
 r4 R1 r4 des'4\p( c' bes a) r4 r2 r4 c'4( bes a bes) r4 r2 r4 des'4( c' bes) bes2.\< a4\!( c'4\> a bes\staccato) r4\!
 R1 r4 des'4\<( c'\!\> des'\!) R1 r4 e'4\<( f'\!\> a bes\!) r4 r2 r4 des'4( c' bes)
 bes2.\< a4\!( c'4\> a bes4\staccato\!) \bar "|." \break

 \key bes \major
 r4 <bes, f d'>2\ff <bes, g ees'>2 <bes, f d'>2( bes4\staccato) r4 R1
 R1 <bes, f d'>2\ff <bes, g ees'>2 <bes, f d'>2( bes4\staccato) r4 R1
 R1 a4.\sf( c'8) a4.\sf( c'8) bes4.\sf( d'8) bes4.\sf( d'8) a4.\sf( c'8) a4.\sf( c'8)
 bes4.\sf( d'8) bes4 r4 <bes, f d'>2\ff <bes, g ees'>2 <bes, f d'>2( bes4\staccato) r4 R1 r2 r8 \bar "|."
 \break

 r8 r4 r4 d'8\p( bes) r4 ees'8( bes) r4 d'8( bes) r2 r4 b8( c') r4 gis8( a) r4 bes!4 r2
 d'8( bes) r4 ees'8( bes) r4 d'8( bes) r4 r2 r4 f4\<( a c'\!) c'2\>( bes4) r4\! r4 e'8\p( f') f'( a) r4
 R1 r4 g'8( f') f'( a) r4 R1 r4 cis'8\p( d') r4 d'8( ees') r4 cis'8( d') r4 a8( bes)
 r4 f4\<( a c'!\!) c'2\>( bes4\!) \bar "|."
 \break

 \key bes \minor
 bes,8.\ff\staccato bes,16\staccato bes1\fp r2 r4 bes,8.\staccato bes,16\staccato f1\fp
 r2 r4 bes,8.\staccato bes,16\staccato bes1\fp r2 r4 bes8.\staccato bes16\staccato
 f2. f8.\ff\staccato f16\staccato bes,4 r r bes,8.\staccato bes,16 a,2\sf( ees2 des4)
 r4 r bes,8.\staccato bes,16\staccato a,2\sf( ees des4) r4 r4 bes,8.\staccato bes,16\staccato
 bes1\fp~ bes1_\markup { \italic "cresc." } f1\ff bes,4 r r \bar "|."
 \break

 \key bes \major
 \clef tenor f'4\p_\markup { \italic "   dolce" } bes'2.( a'8 g') f'2.( ees'8 d') c'2( f')
 d'2( bes4) r4 R1 R1 R1 r2 r4 g'8( f')
 \repeat volta 2 { f'2.\<( a'4\!) bes'2\>(~ bes'8[ a' g' f'\!]) f'1\<~ f'4 g'8( a' bes'[ a' bes' a'\!])
 bes'2.\sf( a'8 g') f'2.( ees'8 d') c'2\<( f'2\!\>) }
 \alternative { { bes4\! r4 r4 g'8( f') } { bes4 r4 r8 } } \bar "|."
 \break

 r8 r4 R1 R1 R1 R1 r8 bes8\staccato[ d'\staccato ees'\staccato] f'4\staccato bes'4\sf~ bes'8
 bes'8\staccato[ a'\staccato g'\staccato] f'4\staccato f'4\sf~ f'8 f'8\staccato[ ees'\staccato d'\staccato]
 c'4\staccato f'4\sf~ f'8 ees'8\staccato[ d'\staccato c'\staccato] bes8.( c'16) bes4\staccato
 r8 bes8\staccato[ a\staccato bes\staccato] c'4\staccato f'4\sf~ f'8 f'8\staccato[ d'\staccato bes\staccato]
 f8\staccato[ d\staccato] bes,4\staccato r8 bes8\staccato[ a\staccato bes\staccato] c'4\staccato
 f'4\sf~ f'8 f'8\staccato[ d'\staccato bes\staccato] f8\staccato[ d\staccato] bes,4\staccato
 r8 bes8\staccato[ d'\staccato ees'\staccato] f'4\staccato bes'4\sf~ bes'8
 bes'8\staccato[ a'\staccato g'\staccato] f'4\staccato bes'4\sf~ bes'8
 bes'8\staccato[ a'\staccato g'\staccato] f'\staccato[ g'\staccato f'\staccato ees'\staccato]
 d'4\staccato bes8.( c'16) bes4 r4 R1 R1 R1 R1 R1
 R1 R1^\fermata \bar "||"

 \key g \major
 \clef bass
 \time 6/8
 R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r8 b!8\pp\staccato[ c'\staccato d'\staccato]
 ees'4\staccato r8 a8\staccato[ bes\staccato c'\staccato] d'4\staccato r8 r4 r8 \bar "||"

 \key bes \major
 d'8\f[( bes) bes\staccato] bes[( a) bes\staccato] bes([ a) bes\staccato] b[( a) b\staccato]
 c'8[( g) g\staccato] a[( g) a\staccato]
 bes!\staccato bes\staccato bes\staccato bes\staccato bes\staccato c'\staccato
 d'8[( bes) bes\staccato] bes[( a) bes\staccato] bes([ a) bes\staccato] b[( a) b\staccato]
 c'8[( g) g\staccato] a[( g) a\staccato] bes!4 r8 a8\sf([ c' f]) bes4 r8 a8\sf([ c' f]) bes4 r8 ees4\p r8
 f4 r8 f,4 r8 bes,4 r8 f8\sf( a c') bes4 r8 f8\sf( a c') bes4.(~ bes8 b c') bes!4( d'8) a4( c'8)
 bes4\staccato d'8\sf(~ d'8 c') bes\staccato a4\staccato r8 r4 r8
 r4 d'8\sf(~ d' c') bes\staccato a4\staccato r8 r4 r8 r4 a8\ff(~ a bes) c'\staccato bes4\staccato r8 r4 r8 R2.
 R2. R2. r4 r8 ees4\p^\markup { "pizz." } r8 d4 r8 c4 r8 bes,4 r8 a,4 r8 g,4 r8 f,4 r8 \bar "||"
 \time 4/4
 e,4 r4 r2 <f, d bes>4\f^\markup { "arco" } r4 r2 <f, c a>4 c'4.\sf c'8\staccato[ bes\staccato a\staccato]
 d8\ff\staccato[ f\staccato d\staccato f\staccato] d8\staccato \bar "|."
}