\version "2.10.3"

 violinotwo = {
 \set Staff.instrumentName = "Violino II."
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key g \major
 \time 4/4
 \partial 4 b8.\pp^\markup { "con sordini" } b16 fis'4( g'8) r8 r4 b8. b16 fis'4( g'8) r8 r4 b8. b16 g'4( e' b fis')
 fis'2. ais'8. ais'16 a'!4( gis'8) r8 r4 g'!8. g'16 g'4\<( fis' g' gis' a'2\!\> fis'2\!)
 g'!2\<( d' e'\!\> fis') <b g'>8\! r8 b r g r r4 r2 r4 b8.\p_\markup { \italic "    dolce" } b16
 d'4( g8) r8 r4 g'8. g'16 g'4 g' g'4( fis')
 \cadenzaOn fis'4^\fermata r2^\fermata s2 s8 fis'8. fis'16 \cadenzaOff \bar "|"
 b4( e'8) r8 r4 e'8. e'16 <a e'>4( d' e' eis') fis'2 d' g( b)
 c'2( d'2) g8 r g r g r r4 r2 g8\p^\markup { "pizz." } r8 r4 r2 g8 r8 r4 r2 r4 fis'8 r8
 \cadenzaOn fis'8 r8 s4 s4 r2^\fermata s4 r4 \cadenzaOff \bar "|"
 r2 e'8 r8 r4 r2 d'8 r8 r4 r2 c'8 r8 r4 r4 \setTextCresc b8\< r8 r4 g8 r8 r4 c'8 r c' r c' r
 b8\!\f^\markup { "arco" } r8 b8 r g8 r d'8.\f d'16 fis'4( g'8) r8 r4 d'8. d'16 fis'4( g'8) r8 r4 b8. b16
 g'4( e' b fis') fis'2. ais'8. ais'16
 a'!4( gis'8) r8 r4 g'8. g'16 g'4( fis' g' gis') a'2( fis') g'!2( d' e'\> fis'\!)
 \cadenzaOn b8\p r8 r4 b8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn r2 g'8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn s4 s1 s2 r1 s2 s4 \cadenzaOff \bar "|" b8 r8 r4 r2 R1 b1\pp c'1
 a2. c'4 r4 <b d'>2 <c' d'>4 d'1 e'2. e'4( g'8) r8 r4 r2 fis'8 r8 r4 r2 R1 R1
 r2 r4 b8^\markup { "pizz." } r8 d'8 r g' r r4 b8 r d'8_\markup { "sempre perdendosi" } r g' r r4 g'8 r
 b'4 b' b' ais' ais'4 r r ais' a'!4 gis' r g'
 g'4 fis' r8 fis'8[ g' gis'] <d' a'>4 fis' c' d' b4\pp d' g' d' e'4 e' c' d' g1^\markup { "arco" } a1
 g1 a4\staccato^\markup { \italic "cresc." }( c'\staccato c'\staccato c'\staccato) c'8\p r8 r4 r2 R1
 R1 R1 \cadenzaOn s1 r1 s4 \cadenzaOff \bar "|" R1 R1 R1
 \cadenzaOn s4  s1 r1 s2 s4 s8 \cadenzaOff \bar "|" r2 r4 a4\pp( g1) a1 g1
 a1 g8 r8 r4 r2 b8 r8 r4 r2 d'8 r8 r4 b'8 r8 r4
 R1 r2 r4 b8.\pp b16 d'4( g'8) r8 r4 g8..\f g32 g'2.\ff g'8.. g'32 f'4~ f'8.. <d' f'>32 <d' f'>8.. <d' f'>32 <d' f'>8.. d'32
 \cadenzaOn cis'8( s8 s4 r8 s8 s4 r4 r4 s4 r8 s8) \cadenzaOff \bar "||"
}