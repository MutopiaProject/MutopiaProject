\version "2.10.3"

 basso = {
 \set Staff.instrumentName = "Basso."
 \set Staff.midiInstrument = "contrabass"
 \clef bass
 \key g \major
 \time 4/4
 \partial 4 g8.\pp g16 d4( g8) r8 r4 g8. g16 d4( g8) r8 r4 g8. g16 g4 g g( fis) fis2. fis8. fis16
 b,4( e8) r8 r4 e8. e16 a,4\<( d2.~ d2\!\> d2\!) g,2\<( b, c\!\> d) g,8\! r8 g, r g, r r4 R1 R1 R1
 \cadenzaOn r4^\fermata r2^\fermata s2 s8 r4 \cadenzaOff \bar "|" R1 R1 R1 R1
 R1 R1 r2 g,8\p^\markup { "pizz." } r8 r4 r2 g,8 r8 r4 r2 r4 fis,8 r8
 \cadenzaOn fis,8 r8 s4 s4 r2^\fermata s4 r4 \cadenzaOff \bar "|"
 r2 e8 r8 r4 r2 d8 r8 r4 r2 d8 r8 r4 r4 \setTextCresc g,8\< r8 r4 b,8 r8 r4 c8 r d r d r
 g,8\!\f^\markup { "arco" } r g, r g,8 r g8.\f g16 d4( g8) r8 r4 g8. g16 d4( g8) r8 r4 g8. g16 g4 g g( fis) fis2. fis8. fis16
 b,4( e8) r8 r4 e8. e16 a,4( d2.)~ d2 d2 g,2( b, c\> d\!)
 \cadenzaOn g,8\p r8 r4 g,8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn r2 g,8 r8 r4 s4 s2 s2 \cadenzaOff \bar "|"
 \cadenzaOn s4 s1 s2 r1 s2 s4 \cadenzaOff \bar "|" g,8 r8 r4 r2 R1 g,1\pp g,1
 g,1 r4 g,2( a,4) b,1 c2. c4( d8) r8 r4 r2 d8 r8 r4 r2 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 g,1\pp^\markup { "arco" } g,1
 g,1~ g,4\staccato^\markup { \italic "cresc." }( g,\staccato g,\staccato g,\staccato) g,8\p r8 r4 r2 R1
 R1 R1 \cadenzaOn s1 r1 s4 \cadenzaOff \bar "|" R1 R1 R1
 \cadenzaOn s4  s1 r1 s2 s4 s8 \cadenzaOff \bar "|" r2 r4 d4\pp( g,1) g,1 g,1
 g,1 g,8 r8 r4 r2 g,8 r8 r4 r2 R1
 R1 R1 r2 r4 bes,8..\f bes,32 a,2.\ff a,8.. a,32 bes,4~ bes,8.. bes,32 bes,8..
 bes,32_\markup { "attacca subito il Rondo." } bes,8.. bes,32
 \cadenzaOn a,8( s8 s4 r8 s8 s4 r4 r4 s4 r8 s8) \cadenzaOff \bar "||"
}