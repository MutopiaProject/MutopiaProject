\version "2.10.3"

 violoncello = {
 \set Staff.instrumentName = "Violoncello."
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key g \major
 \time 4/4
 \partial 4 g8.\pp g16 d4( g8) r8 r4 g8. g16 d4( g8) r8 r4 g8. g16 g4 g g( fis) fis2. fis8. fis16
 b,4( e8) r8 r4 e8. e16 a,4\<( d2.~ d2\!\> d2\!) g,2\<( b, c\!\> d) g,8\! r8 g, r g, r r4 R1 R1 R1
 \cadenzaOn r4^\fermata r2^\fermata s2 s8 r4 \cadenzaOff \bar "|" R1 R1 R1 R1
 R1 r2 r4 b,8.\p_\markup { \italic "    dolce" } b,16 d4( g,8) r8 r4 b,8. b,16 d4( g,8) r8 r4 g8. g16 g4 g g( fis)
 \cadenzaOn fis4^\fermata s4 s4 r2^\fermata s4 fis8. fis16 \cadenzaOff \bar "|"
 b,4( e8) r8 r4 e8. e16 a,4( d2.)~ d2 d2 \setTextCresc g,2\<( b,2 c d)
 g,8\!\f^\markup { "arco" } r g, r g,8 r g8.\f g16 d4( g8) r8 r4 g8. g16 d4( g8) r8 r4 g8. g16 g4 g g( fis) fis2. fis8. fis16
 b,4( e8) r8 r4 e8. e16 a,4( d2.)~ d2 d2 g,2( b, c\> d\!)
 \cadenzaOn g,8\p r8 r4 g,8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn r2 g,8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn s4 s1 s2 r1 s2 s4 \cadenzaOff \bar "|" g,8 r8 r4 r2 R1 g,1\pp g,1
 g,1 r4 g,2( a,4) b,1 c2. c4( d8) r8 r4 r2 d8 r8 r4 r2 R1 R1
 R1 r4 r8 d8_\markup { "pizz." }[ g,] r8 r4 r4_\markup { \italic "sempre perdendosi" } r8 d8[ g,] r8 r4 R1
 r4 r8 fis8[ fis,] r8 r4 r4 r8 b,8[ e,] r8 r4
 r4 r8 a,8[ d,] r8 r4 R1 r4 r8 g8\pp[ b,] r8 r4 r4 r8 c8[ d,] r8 r4 g,1^\markup { "arco" } g,1
 g,1~ g,4\staccato^\markup { \italic "cresc." }( g,\staccato g,\staccato g,\staccato) g,8\p r8 r4 r2 R1
 R1 R1 \cadenzaOn s1 r1 s4 \cadenzaOff \bar "|" R1 R1 R1
 \cadenzaOn s4  s1 r1 s2 s4 s8 \cadenzaOff \bar "|" r2 r4 d4\pp( g,1) g,1 g,1
 g,1 g,8 r8 r4 r2 g,8 r8 r4 r2 R1
 R1 R1 r2 r4 bes,8..\f bes,32 a,2.\ff a,8.. a,32 bes,4~ bes,8.. bes,32 bes,8.. bes,32 bes,8.. bes,32
 \cadenzaOn a,8( s8 s4 r8 s8 s4 r4 r4 s4 r8 s8) \cadenzaOff \bar "||"
}