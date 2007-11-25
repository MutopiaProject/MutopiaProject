\version "2.10.3"

 viola = {
 \set Staff.instrumentName = "Viola."
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key d \major
 \time 6/8
 \partial 8 r8 R2. R2. R2. R2. R2. R2. R2. R2. r8 a8\p[ d] a4 r8 r8 a\staccato[ a\staccato] a8 r8^\fermata r8
 R2. R2. R2. R2. R2. R2. R2. R2. a4\p a8 a8[ a] r8 r8 a8\staccato[ a\staccato] a8 r8^\fermata r8
 r8 d'\ff d' d'4 r8 r8 d'8 d' d'4 r8 r8 cis'8 d' r b' g' a8[ e' d'] cis'4 r8 r8 d'8 d' d'4 r8
 r8 d'8 d' d'4 r8 r8 cis'8 d' r b g g8[ g a] b[ b cis'] d'[ d' e'] fis'[ fis' g'] fis'[ fis' g'] fis'[ fis' g']
 <d' fis'>16\sf[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] <d' e'>[ <d' e'> <d' e'> <d' e'> <d' e'> <d' e'>]
 <d' fis'>16[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] cis'[ cis' cis' cis' cis' cis']
 <d' fis'>16[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] <d' e'>[ <d' e'> <d' e'> <d' e'> <d' e'> <d' e'>]
 <d' fis'>16[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] cis'[ cis' cis' cis' cis' cis']
 <d' fis'>[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] <d' e'>[ <d' e'> <d' e'> <d' e'> <d' e'> <d' e'>]
 d'[ d' d' d' d' d'] cis'[ cis' cis' cis' cis' cis']
 d'4.\sf cis'8._\prall[ b16\staccato a8\staccato] d'8.[ fis'16\staccato a'8\staccato] r4 r8
 d'4.\sf cis'8._\prall[ b16\staccato a8\staccato] d'8.[ fis'16\staccato a'8\staccato] a8.[ a16 a8]
 d'4\staccato a8^\markup { \italic "dimin." } d4\staccato a8\staccato
 d4\staccato a8\staccato d4\staccato a8\staccato d4^\p\staccato a8\staccato d4\staccato a8\staccato
 d4\staccato a8\staccato d4\staccato a8\staccato d4 r8 r4 r8 R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. r4 r8 r4 a8\p gis4 r8 gis4 r8 gis4 r8 r8 e'8\f\staccato[ cis'\staccato]
 a4( cis'8) gis4( b8) a4.~ a8 r8 r8 R2. r4 r8 r8 e'\f\staccato[ c'\staccato] a4( c'8) gis4( b8) a4.~ a8 r8 r8
 r4 r8 b4\p r8 a4 r8 r4 r8 r4 r8 b4 r8 a4 r8 r4 r8 R2. a4 r8 r4 r8
 R2. R2. a4._\markup { \italic "cresc." }( aes4. f4. aes4. ges4\f\staccato) r8 r4 r8 R2.
 a4.\p_\markup { \italic "    cresc." }( aes4. f4. aes4. ges4\f\staccato) r8 r4 r8
 r4 r8 r4 e8\p e4 a8\staccato cis'8([ e']) r8 r4 r8 r4 e8 e4 gis8\staccato b8([ d']) r8 R2. a2.\f
 bes2.\p a2.\f bes2.\p a4 r8 r4 r8 R2.

 R2. \cadenzaOn a4\pp r8 r4^\fermata s4 s4 r8 \cadenzaOff \bar "|" R2. R2. R2. R2. R2. R2. R2.
 R2. r8 a8\p[ d] a4 r8 r8 a\staccato[ a\staccato] a8 r8^\fermata r8 R2. R2. R2. R2. R2. R2.
 R2. R2. a4\p a8 a8[ a] r8 r8 a8\staccato[ a\staccato] a r8^\fermata r r8 d'8\ff[ d'] d'4 r8 r8 d'[ d'] d'4 r8
 r8 cis'[ d'] r b'[ g'] a8[ e' d'] cis'4 r8 r8 d'[ d'] d'4 d'8\staccato
 bes4 d'8\staccato f'8([ bes']) r8 r8 ees'8 ees' ees'4 g'8\staccato
 c'4 e'!8\staccato g'([ c'']) r8 r8 <f a> <f a> <f a>4 r8 r8 <fis! a> <fis a> <fis a>4 r8 r8 fis'!8\p fis' fis'4 r8 R2. R2. R2.
 g2.\p~ g2.~ g2.~ g2.~ g2.~ g2. f4.( e!4 f8) d4 r8 r4 r8
 r8 g g r d d r g g r g g r g g r g g r g g r g g r g g r d d
 r8 g g r g g r f f r e f d4 r8 r4 r8 f2. f4.\<~ f4\!\> <f aes>8\! g'2. << { g2. } \\ { s4.\< s4\!\> s8\! } >>
 g2.~ g4. g4 g8 bes4.( a4 bes8) g4._\markup { \italic "cresc." }( f4.)
 f8\p[ f f] r f f r8 <f a>8\<[ <f a>\!] <f aes>8\>[ <f aes> <f aes>\!]
 r8 g g r g g r g8\< g\! g8\>[ g g\!] r8 g g r d d r g g r g g r g g r a( g)
 g2._\markup { \italic "dimin." }( a2. bes2. a2.) a2. a2.~ a2.~ a2.\pp~ a2.
 a4_\markup { \italic "cresc." } cis'8\staccato e'8([ a']) r8 R2.
 bes4 d'8\staccato g'([ bes']) r8 R2. c4 e8\staccato g([ c']) c8\staccato cis!4\f r8 r4 r8 R2. R2.
 R2. R2. R2. R2. R2. R2. R2. r8 a8\p d a4 r8 r8 a8\staccato[ a\staccato] a8 r8^\fermata r8
 R2. R2. R2. R2. R2. R2. R2. R2. a4\p a8 a8[ a] r8 r8 a8\staccato[ a\staccato] a8 r8^\fermata r8
 r8 d'\ff d' d'4 r8 r8 d'8 d' d'4 r8 r8 cis'8 d' r b' g' a8[ e' d'] cis'4 r8 r8 d'8 d' d'4 r8
 r8 d'8 d' d'4 r8 r8 cis'8 d' r b g g8[ g a] b[ b cis'] d'[ d' e'] fis'[ fis' g'] fis'[ fis' g'] fis'[ fis' g']
 <d' fis'>16\sf[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] <d' e'>[ <d' e'> <d' e'> <d' e'> <d' e'> <d' e'>]
 <d' fis'>16[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] cis'[ cis' cis' cis' cis' cis']
 <d' fis'>16[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] <d' e'>[ <d' e'> <d' e'> <d' e'> <d' e'> <d' e'>]
 <d' fis'>16[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] cis'[ cis' cis' cis' cis' cis']
 <d' fis'>[ <d' fis'> <d' fis'> <d' fis'> <d' fis'> <d' fis'>] <d' e'>[ <d' e'> <d' e'> <d' e'> <d' e'> <d' e'>]
 d'[ d' d' d' d' d'] cis'[ cis' cis' cis' cis' cis']
 d'4.\sf cis'8._\prall[ b16\staccato a8\staccato] d'8.[ fis'16\staccato a'8\staccato] r4 r8
 d'4.\sf cis'8._\prall[ b16\staccato a8\staccato] d'8.[ fis'16\staccato a'8\staccato] a8.[ a16 a8]
 d'4\staccato a8^\markup { \italic "dimin." } d4\staccato a8\staccato
 d4\staccato a8\staccato d4\staccato a8\staccato d4^\p\staccato a8\staccato d4\staccato a8\staccato
 d4\staccato a8\staccato d4\staccato a8\staccato d4 r8 r4 r8 R2. R2. R2. a4.\p~ a4.
 g4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. a4 r8 r4 r8 fis4\f( a8) g4( a8)
 a4.\sf( fis8) r8 r R2. r4 r8 r f8\f\staccato[ a\staccato] f4( a8) g4( a8)
 << { a4.~ a8 } \\ { a4.( f8) } >> r8 r r4 r8 a4\p r8 a4 r8 r4 r8 r4 r8 a4 r8 d4 r8 r4 r8 R2. d4 r8 r4 r8 R2. R2.
 fis4._\markup { \italic "cresc." } g4.~ g2. aes4\f r8 r4 r8 R2.
 fis4.\p_\markup { \italic "   cresc." } g4.~ g2. aes4\f r8 r4 r8 R2. R2. R2.

 R2. R2. a2.\f a2.\p a2.\f a2.\p a2. a2. a2.~ a4._\markup { \italic "dimin." } g4.~ g4. gis4. a4\pp r8 r4 r8
 R2. R2. R2. fis16_\markup { \italic "cresc." } fis g g a a g g fis fis e e d d e e fis fis e e fis fis g g
 fis16 fis g g a a g g fis fis e e d\sf d e e fis fis e\sf e fis fis g g fis\sf fis a' a' fis' fis' d'\sf d' fis' fis' d' d'
 b\sf b d' d' b b gis gis b b gis gis a2.\sf^\fermata R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. r8 aes8_\markup { "sempre pp" } aes aes4 r8
 r8 a! a a4 r8 r8 a a a4 r8 r8 a a a4 r8 r8 a a a4 r8 r8 a a a4 r8 r8 bes bes bes4 r8
 r8 a a a4 r8 r8 a a a4 r8 r8 b! b b4 r8 r8 a a a4 r8 R2. r8 a a a4 r8 R2. R2. R2. R2. R2.
 d4^\markup { "pizz." } r8 r4 r8 R2. d4 r8 d4 r8 d4 r8 d4 r8 d4 r8 r4 r8 R2. d4 r8 d4 r8
 d4 r8 d4 r8 d4_\markup { \italic "cresc." } d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8 d4 d8
 d4 d8 d4 d8 d'16\ff d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d'
 d'16 d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d'
 cis'16 cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' d' d' d' d' d' d' d' d' d' d' d' d'
 d'16 d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d'
 d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' d' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
 d'8\ff d'([ fis]) d'([ g]) d'([ gis]) d'([ a]) d'([ bes]) bes << { bes2. } \\ { s16\sf s16\> s4 s4.\! } >> a4\p r8 a4 r8
 d'8\ff d'([ fis]) d'([ g]) d'([ gis]) d'([ a]) d'([ bes]) bes << { bes2. } \\ { s16\sf s16\> s4 s4.\! } >> a4\p r8 a r8 a\ff
 d4 fis8\staccato a([ d']) d fis4 a8\staccato d'([ fis']) fis a4 d'8\staccato fis'[( a') a\staccato]
 d'4._\markup { \italic "dimin." } d'4. d'4.\p d'4. d'4._\markup { \italic "perdendosi" } d'4.
 d'4.\pp d4. d4. d4. d4 r8 r4 r8 R2. r4 r8 r4 a8\ff <d d'>4 r8 r4 \bar "|."
}