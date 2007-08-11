\version "2.10.3"

 violinoone = {
 \set Staff.instrumentName = "Violino I."
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key g \major
 \time 4/4
 \partial 4 g'8.\pp^\markup { "con sordini" } g'16 a'4( b'8) r8 r4 g'8. g'16 a'4( b'8) r8 r4 b'8. b'16 g''4( e'' b' cis'')
 cis''2. fis''8. cis''16 dis''4( e''8) r8 r4 e''8. b'16 cis''4\<( d''!2.~ d''4\!\>( c''!4 a' b'\!)
 g'2\< d'8([ g' b' d''\!]) d''4\>( c''8 b' a' c'' b' a'\!) g'8 r d' r b r r4 r2 r4 d'8.\p_\markup { \italic "    dolce" } d'16
 fis'4( g'8) r8 r4 b'8. b'16 b'4 b' b'4( ais')
 \cadenzaOn ais'4^\fermata r2^\fermata s2 s8 ais'8. ais'16 \cadenzaOff \bar "|"
 <fis' a'!>4( gis'8) r8 r4 g'8. g'16 g'4( fis' g' gis') a'2 <c' fis'>2 <b g'>2( d')
 e'2( fis'2) g'8 r b r g r r4 r2 g'8\p^\markup { "pizz." } r8 r4 r2 g'8 r8 r4 r2 r4 fis'8 r8
 \cadenzaOn fis'8 r8 s4 s4 r2^\fermata s4 r4 \cadenzaOff \bar "|"
 r2 e'8 r8 r4 r2 d'8 r8 r4 r2 fis'8 r8 r4 r4 \setTextCresc g'8\< r8 r4 d'8 r8 r4 e'8 r fis' r fis' r
 <g g'>8\!\f^\markup { "arco" } r8 d'8 r b8 r g'8.\f g'16 a'4( b'8) r8 r4 g'8. g'16 a'4( b'8) r8 r4 b'8. b'16
 g''4( e'' b' cis'') cis''2. fis''8. cis''16
 dis''4( e''8) r8 r4 e''8. b'16 cis''4( d''!2.)~ d''4( c''! a' b') g'2 d'8([ g' b' d'']) d''4\>( c''8 b' a'\! c'' b' a')
 \cadenzaOn g'8\p r8 r4 g'8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn r2 b'8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn s4 s1 s2 r1 s2 s4 \cadenzaOff \bar "|" d'8 r8 r4 r2 R1 d'1\pp e'1
 c'2. fis'4 r4 g'2( fis'4) g'1 g'2. a'4( b'8) r8 r4 r2 c''8 r8 r4 r2 R1 R1
 r2 r4 g'8^\markup { "pizz." } r8 a'8 r b' r r4 g'8 r a'8_\markup { "sempre perdendosi" } r b' r r4 b'8 r
 g''4 e'' b' cis'' cis''4 r r cis'' dis''4 e'' r b'
 cis''4 d''! r8 d''8[ d'' d''] d''4 c''! a' b' g'4\pp g' b' d'' d''4 c'' a' b' b1^\markup { "arco" } c'1
 b1 c'4\staccato^\markup { \italic "cresc." }( fis'\staccato fis'\staccato fis'\staccato) fis'8\p r8 r4 r2 R1
 R1 R1 \cadenzaOn s1 r1 s4 \cadenzaOff \bar "|" R1 R1 R1
 \cadenzaOn s4  s1 r1 s2 s4 s8 \cadenzaOff \bar "|" r2 r4 c'4\pp( b1) c'1 b1
 c'1 b8 r8 r4 r2 g'8 r8 r4 r2 b'8 r8 r4 d''8 r8 r4
 R1 r2 r4 g'8.\pp g'16 a'4( b'8) r8 r4 g'8..\f g'32 cis''2.\ff cis''8.. cis''32
 d''4~ d''8.. d''32 d''8.. d''32 f''8.. gis'32
 \cadenzaOn a'8( s8 s4 r8 s8 s4 r4 r4 s4 r8 s8) \cadenzaOff \bar "||"
}