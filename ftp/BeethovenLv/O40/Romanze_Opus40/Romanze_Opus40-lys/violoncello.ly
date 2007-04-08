\version "2.10.3"

 violoncello = {
 \set Staff.instrumentName = \markup { \center-align { "Violoncello e" "Basso." } }
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key g \major
 \time 4/4
 \partial 2 r2 R1 R1 R1 r2 g4\p^\markup { "pizz." } a4 b4. fis8 g4 c d4. c8 b,4 a
 g8.[ fis16 g8 e8] a4 a,4 d2 r R1 R1 R1 r2 d4\p^\markup { "pizz." } e fis g c cis
 d4 d'8 c'! b4_\markup { \italic "cresc." } b c'4\f r8 cis'8 d'4\p d g8 r r4
 d8.\f^\markup { "arco." }[ e16\staccato fis8\staccato d\staccato] g8.[ a16\staccato b8\staccato g\staccato]
 c8 r d r g,8 r r4 d8.\ff[ e16\staccato fis8\staccato d\staccato] g8 r r4 c8 r d r g,8 r r4 r2
 g,1\p~ g,4 g, g, g, g,1~ g,4 r e g a8 r r4 fis4 a b8 r r4 b, b
 cis8[ cis' cis'_\markup { \italic "cresc." } cis'] cis'[ cis' cis' cis'] d'8\p r g r a r a, r d8 r r4 r2
 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t
 d8.[ e16\staccato fis8\staccato d\staccato] a8 } \\ { d8 f,8\rest f,4\rest } >> r8 << { a,8 } \\ { a,8 } >> r8
 << { d8 } \\ { d8 } >> r8 r4 r2 d8.^\markup { "unis." }[ e16\staccato fis8\staccato d\staccato] a8 r a, r
 d8[ d d d] d[ d d d] d[ d d d] d[ d d d] d8 r8 r4 r2 d8^\markup { "pizz." } r8 r4 g8 r r4
 R1 R1 R1 r2 g8\p^\markup { "arco" }([ b d' c'] b[ a g fis] g[ f e c])
 d([ cis d c] b,_\markup { \italic "cresc." }[ a g fis!]) e([ dis e g,] a,\p[ gis,) a, a,] d!8\staccato[ d'( a fis] d) r8 r4
 R1 R1 R1 << { b8\rest g8\p([ fis e] d)[ d( e d)] } \\ { g,2\rest d8\p[ d( e d)] } >>
 fis^\markup { "unis." }([ d g b,] c)[ b,( c cis] d[ cis d c]) b,8_\markup { \italic "cresc." }([ d f b,]
 c8[ b, c cis]) d8\p[( e) d d] g,8 r r4 d8.\f[ e16\staccato fis8\staccato d\staccato]
 g8.[ a16\staccato b8\staccato g\staccato] c'8 r d' r g8 r r4 d8.\ff[ e16\staccato fis8\staccato d\staccato]
 g8 r r4 c8 r d r g,8 r r4 r2 e8\p r e r dis r b, r e r c r b, r r4 e8 r e r fis r g r fis r fis r b, r r4
 e8 r e r dis r b, r e r c' r b r r4
 e8 r e r fis r g r fis r fis r b, r r4 e8 r e r a r a r c r c r b, r r4 e8 r e r a,4. a8
 b8 r b, r e r r4 e8 r e r a r a r c r c r b, r r4 e8 r e r a2
 d!2~ d8 r8 r4 d8^\markup { "pizz." } r8 r4 r2 R1 r2 g4\p^\markup { "arco" }( a b4. fis8) g4( c)
 d8( d'4 c'8) b4( a) g8([ fis g e]) a4( a,) d8 r8 r4 d4( e fis g) c4.( cis8) d8( d'4 c'!8) b8 r b[ b]
 c'8 r c'[ cis'] d'8 r d r g8 r8 r4 d8.\f[ e16\staccato fis8\staccato d\staccato]
 g8.[ a16\staccato b8\staccato g\staccato] c8 r d r g8 r r4 r2 r2 b4. b8
 b4.\sf b8 b8\sf[ b, b b\sf]( c'8) r8 r4 d8\p r d r g8 r r4 g2~ g8 r8 r4 g2~ g8 r8 r4 g,8\ff r g r g,2^\fermata \bar "|."
}