\version "2.10.3"

 violoncello = {
 \set Staff.instrumentName = "Violoncello.  "
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key d \major
 \time 3/8
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 a16\f\staccato a,\staccato fis\staccato fis,\staccato d\staccato d,\staccato

 b,8\staccato e\sf\staccato e16( d) cis8\staccato d\staccato e\staccato cis\staccato fis\sf\staccato fis16( e)
 dis8\staccato e\staccato fis\staccato g,4_\markup { \italic "dim." } gis,8 gis8\p( a) cis'~
 cis'8 b16 cis' d'8~ d'8_\markup { \italic "cresc."}( cis') b cis8 cis e~
 e8( d) r8 e,8 e, g, fis,4._\markup { \italic "p cresc." } gis,4 ais,8~ ais,( b,) cis~ cis8\fp( d) dis~ dis( e) e,
 fis,8( gis, ais,) fis,8( b,) b,16( ais,) b,16_\markup { \italic "cresc." }( a,! g,! fis,) b,\staccato b\staccato
 a16\staccato a,\staccato g\staccato g,\staccato e\staccato e,\staccato c,8\ff( fis,) fis,16\staccato e,\staccato
 fis,8( c) c16\staccato b,\staccato c8( fis) fis16\staccato e\staccato fis8( c') c'16\staccato b\staccato
 c'4._\markup { \italic "dim." }~

 c'8 b\staccato b,\staccato c4 cis8 d8\staccato_\markup { \italic "cresc." } e\staccato fis_\accent~
 fis8 g\staccato a_\accent~ a g\staccato fis\staccato b16 a g fis e dis g fis e d! cis b, a, b, cis d e fis
 d,8\f\staccato e,\staccato fis,\sf~ fis, g,\staccato a,\sf~ a, g,\staccato fis,\staccato
 e,16 d, cis, b, ais, g, g fis e d cis b, ais, ais, b, cis d\p e d cis b, a,! g,\f fis,
 cis,16 d, e, fis, g,\p a, b, a, g, fis, e,\f d, e, fis, g, a, b,\p cis
 dis16 cis b, a, g,_\markup { \italic "cresc." } fis, g, a, b, cis d! e fis d e d e fis

 g16 bes gis a a,8\f~ a,4.~ a,4.~ a,4.~ a,8 a16\staccato a,\staccato fis\staccato fis,\staccato
 d16\staccato d,\staccato g,8\staccato g,16( fis,) e,8\staccato a,\staccato a,16( g,)
 fis,8\staccato b,\staccato b,16( a,) g,8\staccato c\staccato c16( b,)
 a,16\staccato g,\staccato fis,\staccato e,\staccato d,8\sf~ d,8 d,4\sf~ d,8 cis,8. bes,16
 cis,16\ff\staccato cis\staccato e,\staccato e\staccato a,\staccato a\staccato
 g,16( fis,) e,8\staccato a,\sf\staccato d,8\staccato c\staccato bes,~
 bes,8 a,16\staccato g,\staccato fis,\staccato fis\staccato
 a,16\staccato a\staccato b,!\staccato b\staccato r8 r8 g,8\staccato_\markup { \italic "dim." } c8~
 c4_\markup { \italic "p cresc." } b,16( a,) g,16 fis, e, d, cis,! d,
 <d, bes,>4.~ <d, bes,>8\p( <d, a,>4^\fermata) \bar "|."
}