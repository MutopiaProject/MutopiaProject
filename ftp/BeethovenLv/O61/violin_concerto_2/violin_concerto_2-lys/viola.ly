\version "2.10.3"

 viola = {
 \set Staff.instrumentName = "Viola."
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key g \major
 \time 4/4
 \partial 4 d'8.\pp d'16 d'4( d'8) r8 r4 d'8. d'16 d'4( d'8) r8 r4 b8. b16 b4 b b4( ais)
 ais2. fis'8. fis'16 fis'4( e'8) r8 r4 e'8. e'16 e'4\<( d' e' f'4\! fis'!2\> c'4 d'\!)
 b2\< d8([ g b d'\!]) d'4\>( c'8 b a c' b a\!) g8 r d r d r r4 R1 R1 R1
 \cadenzaOn r4^\fermata r2^\fermata s2 s8 r4 \cadenzaOff \bar "|" R1 r4 d'2.\p~ d'2 d'2 g( b)
 c'2( d'2) g8 r g r g r d8.\p_\markup { \italic "    dolce" } d16 fis4( g8) r8 r4 d8. d16 fis4( g8) r8 r4 g8. g16 g4 g g( fis)
 \cadenzaOn fis4^\fermata s4 s4 r2^\fermata s4 <fis ais>8. <fis ais>16 \cadenzaOff \bar "|"
 << { a!4( gis8) } \\ { fis4( e8) } >> r8 r4
 << { g!8. g16 g4( fis g gis) a2 fis2 } \\ { e8. e16 e4( d e f) fis!2 d2 } >>
 \setTextCresc g2\<( d e2 fis) g8\!\f^\markup { "arco" } r8 d r d8 r8 b8.\f b16 d'4 d'8 r8 r4  b8. b16
 d'4 d'8 r8 r4 b8. b16 b4 b4 b( ais) ais2. fis'8. fis'16
 fis'4( e'8) r8 r4 e'8. e'16 e'4( d' e' f') fis'!2( c'4 d' ) b2( d e\> fis\!)
 \cadenzaOn g8\p r8 r4 g8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn r2 g8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn s4 s1 s2 r1 s2 s4 \cadenzaOff \bar "|" g8 r8 r4 r2 R1 g1\pp g1
 a2. a4 r4 g2( fis4) g1 c'2. c'4( d'8) r8 r4 r2 d'8 r8 r4 r2 R1 R1
 R1 r8 d'8_\markup { "pizz." } g r8 r2 r8_\markup { \italic "sempre perdendosi" } d'[ g] r r2
 g'4 g' g' fis' fis'8[ fis' fis] r8 r4 fis'4 b8[ b e] r8 r4 e'4
 e'8[ a d] r8 r8 d'[ e' f'] fis'!4 d' d' d' d'8\pp[ g' b] r8 r4 b4 c'8[ c' c] r8 d'4 d' d1^\markup { "arco" } d1
 d1 d4\staccato^\markup { \italic "cresc." }( a\staccato a\staccato a\staccato) a8\p r8 r4 r2 R1
 R1 R1 \cadenzaOn s1 r1 s4 \cadenzaOff \bar "|" R1 R1 R1
 \cadenzaOn s4  s1 r1 s2 s4 s8 \cadenzaOff \bar "|" r2 r4 d4\pp d1 d1 d1
 d1 d8 r8 r4 r2 d8 r8 r4 r2 g8 r8 r4 g'8 r8 r4
 R1 R1 r2 r4 g8..\f g32 e'2.\ff e'8.. e'32 d'4~ d'8.. d32 d8.. d32 d8.. d32
 \cadenzaOn e8( s8 s4 r8 s8 s4 r4 r4 s4 r8 s8) \cadenzaOff \bar "||"
}