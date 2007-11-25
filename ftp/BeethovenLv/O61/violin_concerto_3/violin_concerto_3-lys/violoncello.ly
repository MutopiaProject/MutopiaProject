\version "2.10.3"

 violoncello = {
 \set Staff.instrumentName = "Violoncello."
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key d \major
 \time 6/8
 \partial 8 r8 r8 d,8\p d,8 d,4 r8 r8 d,8 d,8 d,4 r8 r8 cis' d' r b g r a d a,4 r8
 r8 d,8 d,8 d,4 r8 r8 d,8 d,8 d,4 r8 r8 cis' d' r b g r8 e8[ a] d4 r8 r8 a8[ d] a,4 r8
 r8 a\p\staccato[ d\staccato] a,8 r^\fermata r8 R2. R2. R2. R2. R2. R2. R2. R2. r8 a\p[ d] a,4 r8
 r8 a\staccato[ d\staccato] a,8 r8^\fermata r8
 r8 d\ff[ d] d4 r8 r8 d[ d] d4 r8 r8 cis[ d] r b[ g] a[ a d] a,8 r r r8 d[ d] d4 r8 r8 d[ d] d4 r8 r8 cis[ d] r b,[ g,]
 g,8[ g, a,] b,[ cis cis] d[ d e] fis[ fis g] fis[ fis g] fis[ fis g]
 fis8\sf[ fis fis] g[ g g] a[ a a] g[ g g] fis[ fis fis] g[ g g] a[ a a] g[ g g] fis[ fis fis] g[ g g] a[ a a] a,[ a, a,]
 d4.\sf cis8._\prall[ b,16\staccato a,8\staccato] d8.[ fis16\staccato a8\staccato] a,8.[ a,16 a,8]
 d4.\sf cis8._\prall[ b,16\staccato a,8\staccato] d8.[ fis16\staccato a8\staccato] a,8.[ a,16 a,8]
 d4\staccato a8\staccato_\markup { \italic "dimin." } d4\staccato a8\staccato
 d4\staccato a8\staccato d4\staccato a8\staccato d4\p r8 r4 r8 R2. R2. R2. R2. R2. R2. R2.
 R2. r4 r8 r4 a8\p e4 r8 r4 e8 a,4 r8 r4 a8 e4 r8 r4 e8 a,4 r8 r4 a8
 e4 r8 e4 r8 e4 r8 r4 r8 a4.\f e4. a,4.~ a,8 r8 r8 r4 r8 r8 e8\p\staccato[ a,\staccato] e4 r8 r4 r8
 a4.\f e4. a,4.~ a,8 r8 r8
 r4 r8 r8 e8\p\staccato[ e,\staccato] a,4 r8 r4 r8 r4 r8 r8 e8\staccato[ e,\staccato] a,4 r8 r4 r8 R2. a,4 r8 r4 r8
 R2. a,4 r8 r4 r8 a4._\markup { \italic "cresc." }( aes4. f4. bes,4. ees4\f\staccato) r8 r4 r8 R2.
 a4.\p_\markup { \italic "    cresc." }( aes4. f4. bes,4. ees4\f\staccato) r8 r4 r8
 R2. R2. R2. R2. r4 r8 r4 e8\p a,4\f^\markup { "ten." } cis8\staccato e8([ a]) r8 r4 r8 r4 bes,8\p
 a,4\f^\markup { "ten." } cis8\staccato e8([ a]) r8 r4 r8 r4 bes,8\p a,4 r8 r4 r8 R2.

 R2. \cadenzaOn a,4\pp r8 r4^\fermata s4 s4 r8 \cadenzaOff \bar "|"
 r8 d,8\p d,8 d,4 r8 r8 d,8 d,8 d,4 r8 r8 cis' d' r b g r a d a,4 r8 r8 d,8 d,8 d,4 r8 r8 d,8 d,8 d,4 r8 r8 cis' d' r b g
 r8 e a d4 r8 r8 a d a,4 r8 r8 a8\p\staccato d\staccato a,8 r8^\fermata r8 R2. R2. R2. R2. R2. R2.
 R2. R2. r8 a8\p[ d] a,4 r8 r8 a\staccato[ d\staccato] a,8 r8^\fermata r r8 d8\ff[ d] d4 r8 r8 d[ d] d4 r8
 r8 cis[ d] r b[ g] a[ a d] a,4 r8 r8 d[ d] d4 r8
 R2. r8 ees ees ees4 r8 R2. r8 f8 f f4 r8 r8 fis!8 fis fis4 r8 R2. R2. R2. R2.
 g,2.\p g,2. g,2. g,2. g,2. g,2. f,4. a,4( d8) d4 r8 r4 r8
 g,4^\markup { "pizz." } r8 g,4 r8 g,4 r8 g,4 r8 g,4 r8 g,4 r8 g,4 r8 g,4 r8 g,4 r8 g,4 r8
 g,4 r8 g,4 r8 f,4 r8 a,4^\markup { "arco" }( d8) d4 r8 r4 r8 bes,2.
 << { f,2. } \\ { s4.\< s4\!\> s8\! } >> c2. << { g,2. } \\ { s4.\< s4\!\> s8\! } >>
 g,2. g,4.( ees4 c8) d4.~ d4 g,8 g,4._\markup { \italic "cresc." }( f,4.) bes,2.\p << { f,2. } \\ { s8\< s8\!\> s8\! s8 s4 } >>
 c2. << { g,2. } \\ { s8\< s8\!\> s8\! s8 s4 } >> g,4^\markup { "pizz." } r8 g,4 r8
 g,4 r8 ees4 c8 d4 r8 d4^\markup { "arco" }( g,8)
 g,2._\markup { \italic "dimin." }( a,2. bes,2. cis!2.) d2. a,2.
 d2. a,2.\pp a,2. a,4_\markup { \italic "cresc." } cis8\staccato e8([ a]) r8 R2.
 bes,4 d8\staccato g([ bes]) r8 R2. c4 e8\staccato g([ c']) r8 cis!4\f r8 r4 r8 R2.
 r8 d,8\p d,8 d,4 r8 r8 d,8 d,8 d,4 r8 r8 cis' d' r b g r a d a,4 r8
 r8 d,8 d,8 d,4 r8 r8 d,8 d,8 d,4 r8 r8 cis' d' r b g r8 e8[ a] d4 r8
 r8 a8[ d] a,4 r8 r8 a8\staccato[ d\staccato] a,8 r8^\fermata r8 R2. R2. R2. R2. R2. R2. R2. R2.
 r8 a\p[ d] a,4 r8 r8 a\staccato[ d\staccato] a,8 r8^\fermata r8
 r8 d\ff[ d] d4 r8 r8 d[ d] d4 r8 r8 cis[ d] r b[ g] a[ a d] a,8 r r r8 d[ d] d4 r8 r8 d[ d] d4 r8 r8 cis[ d] r b,[ g,]
 g,8[ g, a,] b,[ cis cis] d[ d e] fis[ fis g] fis[ fis g] fis[ fis g]
 fis8\sf[ fis fis] g[ g g] a[ a a] g[ g g] fis[ fis fis] g[ g g] a[ a a] g[ g g] fis[ fis fis] g[ g g] a[ a a] a,[ a, a,]
 d4.\sf cis8._\prall[ b,16\staccato a,8\staccato] d8.[ fis16\staccato a8\staccato] a,8.[ a,16 a,8]
 d4.\sf cis8._\prall[ b,16\staccato a,8\staccato] d8.[ fis16\staccato a8\staccato] a,8.[ a,16 a,8]
 d4\staccato a8\staccato_\markup { \italic "dimin." } d4\staccato a8\staccato
 d4\staccato a8\staccato d4\staccato a8\staccato d4\p r8 r4 r8 R2. R2. R2. R2. R2. a,4.\p( d4.)
 g,4 r8 r4 r8 R2. r4 r8 r4 g8 d4 r8 r4 d'8 g4 r8 r e8[ e] a4 r8 r4 a8
 d4 r8 r4 d'8 a4 r8 r4 a8 d4 r8 r4 d'8 a4 r8 a4 r8 a,4 r8 r4 r8 d4.\f a,4.
 d4.\sf~ d8 r8 r r4 r8 r a8\p\staccato d\staccato a,4 r8 r4 r8 d4.\f a,4. d4.~ d8 r8 r
 r4 r8 r a8\p\staccato a,\staccato d4 r8 r4 r8 r4 r8 r a8\staccato a,\staccato d4 r8 r4 r8 R2. d4 r8 r4 r8 R2. R2.
 d'4._\markup { \italic "cresc." }( des'4. bes4. ees4. aes4\f) r8 r4 r8 R2.
 d'4.\p_\markup { \italic "   cresc." }( des'4. bes4. ees4. aes4\f) r8 r4 r8 r4 r8 r4 a,!8\p
 a,4 d8\staccato fis8([ a]) r8 r4 r8 r4 a,8

 a,4 cis8\staccato e8([ g]) r8
 r4 r8 r4 a,8\p d4\f fis8\staccato a8([ d']) r8 r4 r8 r4 ees8\p d4\f fis8\staccato a8([ d']) d8\p\staccato
 ees2. e!2. f2. fis!2.~ fis4._\markup { \italic "dimin." }( g4.~ g4. gis4.) a4\pp r8 r4 r8 R2. R2. R2.
 fis8\staccato_\markup { \italic "cresc." } g\staccato a\staccato g\staccato fis\staccato e\staccato
 d8\staccato e\staccato fis\staccato e\staccato fis\staccato g\staccato
 fis8\staccato_\markup { \italic "cresc." } g\staccato a\staccato g\staccato fis\staccato e\staccato
 d8\sf e fis e\sf fis g fis\sf a fis d\sf fis d b,\sf d b, gis,\sf b, gis, a,2.\sf^\fermata R2.
 r4 r8 r4 e8\f a,4 cis8\staccato e([ g]) r8 r4 r8 r4 g8
 cis4 e8\staccato g([ bes]) r r4 e8\staccato_\markup { \italic "dimin." } g([ bes]) r r4 g8\staccato bes([ des']) r
 r4 g8\p\staccato bes([ des']) r bes8( des') r bes( des') r R2. R2. R2. R2. R2. R2. R2. R2.
 r8 aes,8_\markup { "sempre pp" } aes, aes,4 r8 r8 ges ges ges4 r8 r8 f f f4 r8 r8 e! e e4 r8
 r8 ees ees ees4 r8 r8 d d d4 r8 r8 d d d4 r8
 r8 cis! cis cis4 r8 r8 d d d4 r8 r8 gis, gis, gis,4 r8 r8 a, a, a,4 r8 R2. r8 a, a, a,4 r8 R2. R2. R2. R2. R2.
 d4^\markup { "pizz." } r8 r4 r8 R2. d4 r8 d4 r8 d4 r8 d4 r8 d4 r8 r4 r8 R2. d4 r8 d4 r8
 d4 r8 d4 r8 d4_\markup { \italic "cresc." } d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8
 d4 d8 d4 d8 d4\ff fis8\staccato a8[( d') d\staccato] R2. b,4 d8\staccato fis8([ b]) b, R2. g,4 r8 r4 r8
 a,4 r8 r4 r8 d4 fis8\staccato a8[( d') d'\staccato] d'4 r8 r4 r8 b,4 d8\staccato fis[( b) b\staccato] b4 r8 r4 r8
 g,4 r8 r4 r8 a,4 r8 r4 r8 d8\ff fis,4 g, gis,8~ gis,8 a,4 bes, bes,8 << { bes,2. } \\ { s16\sf s16\> s4 s4.\! } >>
 a,4\p r8 a,4 r8 d8\ff fis,4 g, gis,8~ gis,8 a,4 bes, bes,8 << { bes,2. } \\ { s16\sf s16\> s4 s4.\! } >> a,4\p r8 a,4 a8\ff
 d4 fis8\staccato a([ d']) d fis,4 a,8\staccato d([ fis]) fis, a,4 d8\staccato fis[( a) a,\staccato]
 d4._\markup { \italic "dimin." } d4. d4.\p d4. d4._\markup { \italic "perdendosi" } d4.
 d4.\pp d4. d4. d4. d4 r8 r4 r8 R2. r4 r8 r4 a,8\ff d4 r8 r4 \bar "|."
}