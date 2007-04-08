\version "2.10.3"

 viola = {
 \set Staff.instrumentName = \markup { \center-align { "Viola." } }
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key g \major
 \time 4/4
 \partial 2 r2 R1 R1 R1 r2 b4\p^\markup { "pizz." } c'4 d'4. d'8 g'4 e' d'4 d'8 c' b4 dis' e'4. g'8 a'4 e'4 d'!2 r2
 R1 R1 R1 r2 d'4\p^\markup { "pizz." } d' d' d' c' e' d'4. a8 b4_\markup { \italic "cresc." } b4
 c'4\f r8 bes8 b4\p c'4 b8 r r4 d8.\f^\markup { "arco." }[ e16\staccato fis8\staccato d\staccato]
 g8.[ a16\staccato b8\staccato g\staccato] c'8 r d' r g8 r r4 d'8.\ff[ e'16\staccato fis'8\staccato d'\staccato]
 g'8 r r4 c''8 r d'' r <g g'>8 r r4 r2 g8\p([ d g d] fis[ d a d]) g([ d g d] g[ d fis d]) g([ d g d] fis[ d a d])
 g8[ g' g' g'] r e' r g' r a'[ a' a'] r fis' r a' r8 b'[ b' b'] b'[ d' d' d'] e'[ e' e'_\markup { \italic "cresc." } e'] e'[ e' e' e']
 r8 d'8\p r b r a r g fis8 r8 r4 r2 d8.[ e16\staccato fis8\staccato d\staccato] a8 r a r d'8 r r4 r2
 d8.[ e16\staccato fis8\staccato d\staccato] a8 r a r a8[ a a a] a[ a a a] a[ a a a] a[ a a a] a8 r8 r4 r2
 d'8^\markup { "pizz." } r8 r4 <g d'>8 r8 r4
 R1 R1 R1 r2 g8\p^\markup { "arco" }([ b d' c'] b[ a g fis]) g([ f' e' c'])
 d'([ cis' d' c'] b_\markup { \italic "cresc." }[ dis' e' dis'])
 e'([ fis' e' g] a\p[ b e a]) d!8\staccato[ d'( a fis] d8) r8 r4 R1 R1 R1
 r8 g8\p([ fis e] d)[ d'( e' d')] fis'8([ d' g' b] c')[ b( c' cis'] d'[ cis' d' c'])
 b_\markup { \italic "cresc." }([ d' f' b] c'8[ b c' cis'] d'\p) g4( fis!8) g8 r r4
 d8.\f[ e16\staccato fis8\staccato d\staccato] g8.[ a16\staccato b8\staccato g\staccato] c'8 r d' r
 g8 r r4 d'8.\ff[ e'16\staccato fis'8\staccato d'\staccato] a'8 r r4 c'8 r d' r g8 r r4 r2
 r8 b8\p r b r b r b r b r c' r b r4 r8 e' r e' r d'! r d' r d' r fis' r fis' r4 r8 b r b r b r b r b r e' r fis' r4
 r8 e' r e' r d'! r d' r d' r e' r d' r4 r8 e' r e' r e' r e' e r e r fis r r4 r8 b r b r a4 a8
 r8 b r b b r r4 r8 b r b r c' r c' e r e r fis r r4 r8 b r b r a4\sf a8
 r8 <d d'>4\sf <d d'>8 <d d'>8 r8 r4 <d c'>8^\markup { "pizz." } r8 r4 r2 R1
 r2 g4\p^\markup { "arco" }( a b4. fis8) g4( c') d'4.( c'8) b4( fis'8 b)~ b8([ a b g]) a8([ d' a cis'])
 <a d'>8 r8 r4 d'2(~ d'4 g4) c'4.( cis'8) d'4.( c'!8) b16[ <b d'> <b d'> <b d'>] r16 <b d'> r <b d'>
 r16 <c' e'>[ <c' e'> <c' e'>] r <c' e'> r <cis' e'> r d'[ d' d'] r d'[ d' d']
 d'8 r8 r4 d8.\f[ e16\staccato fis8\staccato d\staccato] g8.[ a16\staccato b8\staccato g\staccato] c'8 r d' r
 g8 r8 r4 r2 r2 f8.\sf[( g16) aes8\staccato g8\staccato]
 f8.\sf[( g16) aes8\staccato g8\staccato] f8.\sf[( g16) gis8\staccato gis8\sf\staccato](
 gis8)[ a\p( c' e')] r8 d' r d' d'8 r r4 g8([ d a d]) g8 r r4 g8([ d a d])
 g8 r8 r4 <b g'>8\ff r <g d' b'> r g2^\fermata \bar "||"
}