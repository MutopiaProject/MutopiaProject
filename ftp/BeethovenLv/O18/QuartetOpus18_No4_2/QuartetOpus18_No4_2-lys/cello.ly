\version "2.7.40"

 cello = {
 \set Staff.instrument = "Violoncello"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key c \major
 \time 3/8
 \repeat volta 2 {
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. g,8\p\staccato g,_\markup { \italic "cresc." }\staccato g,\staccato
 c8\staccato c\staccato c16([ bes,]) a,8\staccato a,\staccato a,\staccato d d d c c c f8 f, f ~ f\sf f( fis) g8\p r r
 R4. g,8\staccato f!8\sf([ d]) g,\staccato e\sf([ c]) g,\staccato r8 r R4. g,8\staccato f8\sf([ d]) g,\staccato e\sf([ c])
 g,16\staccato g\staccato g\staccato g\staccato e\staccato c\staccato
 g,16\staccato g\staccato g\staccato g\staccato e\staccato c\staccato
 g,\staccato_\markup { \italic "cresc." } g\staccato e\staccato c\staccato g,\staccato g\staccato
 e\staccato c\staccato g,\staccato g\staccato e\staccato c\staccato g,8\f\staccato g\staccato r
 e,8\f\staccato e,\staccato e,\staccato c\staccato c\staccato c16([ b,]) a,8\staccato a\staccato a16([ g])
 fis8\staccato fis\staccato fis16([ e]) d8\staccato d'4\sf ~ d'4. d8\staccato d'4 ~ d'4.
 d8\staccato d'\staccato d'\staccato d'\staccato r r R4. R4. R4. R4. R4. R4. R4. R4.
 R4. e8\pp\staccato e\staccato e\staccato a8 r r d\staccato d\staccato d\staccato g8 r r R4. R4. R4. R4. R4.
 b,16\staccato b\staccato_\markup { \italic "cresc." } b\staccato b\staccato b\staccato a\staccato
 g,16\staccato g\staccato g\staccato g\staccato g\staccato fis\staccato
 e\staccato d\staccato c\staccato b,\staccato a,\staccato g,\staccato
 fis8\staccato f4\sf e8\staccato b,4\sf c16.([ a,32]) d8\staccato[ d,\staccato] g,8 r r R4. R4. R4. R4. d,8\p d, d,
 d,4. d8 d d g16\p\staccato d'\staccato c'\staccato b\staccato a\staccato g\staccato
 fis16\staccato e\staccato d\staccato c\staccato b,\staccato a,\staccato
 g,\staccato d\staccato b,\staccato g,\staccato d\staccato d,\staccato
 g,\staccato d\staccato b,\staccato g,\staccato d\staccato d,\staccato
 g,\staccato_\markup { \italic "cresc." } b,\staccato d\staccato d,\staccato g,\staccato b,\staccato
 d\staccato d,\staccato g,\staccato b,\staccato d\staccato d,\staccato g,8 r g'\pp g' r r }
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. bes,8\f bes, bes,
 ees16\staccato bes\staccato aes\staccato g\staccato f\staccato ees\staccato
 d\staccato c\staccato bes,\staccato aes,\staccato g,\staccato f,\staccato g,8\staccato ees,\staccato r
 R4. R4. R4. R4. R4. aes,8\p r r ees\sf r r aes\sf r r ees\sf r r e!_\markup { \italic "decresc." } r r f r r ges r r g! r r
 R4. R4. R4. cis8\pp\staccato( cis\staccato cis\staccato) d\staccato( d\staccato d\staccato)
 d8 d d gis, gis, gis, gis, gis, gis, a, a, a, f, f, f, e, e e a4. e8 e e a4. e8 e, e, a,4.\sf e,8 e, e, a,4.\sf e,8 a,4\sf
 e,8 a,4\sf e,8 e\pp\staccato( e\staccato) e4. ~ e4. ~ e4. ~ e8 d\staccato( d\staccato)
 d4. ~ d4. ~ d4. ~ d8 d\staccato( d\staccato) d4. ~ d4. ~ d4 r8 R4. R4. R4.
 r8 r b16\pp\staccato b\staccato c'\staccato g\staccato e\staccato c\staccato d\staccato e\staccato
 f\staccato e\staccato f\staccato g\staccato a8\sf ~ a16 d\staccato g\staccato f\staccato e\staccato d\staccato
 c\staccato g\staccato c'\staccato b\staccato a\staccato g\staccato
 fis\staccato e\staccato d\staccato c\staccato b,\staccato a,\staccato g,8 g r g, g r g,4. ~ g,8 g\staccato g\staccato
 c'8\staccato[ c'\staccato] c'16\staccato b\staccato a\staccato g\staccato f\staccato e\staccato d\staccato c\staccato
 b,8\staccato d\staccato g ~ g fis\staccato c'\staccato( b) d16.\staccato[ d32\staccato d16.\staccato d32\staccato]
 g,8 << { c4\sf ~ c8 fis,8 fis,8^\trill } \\ { s4 s8 s8 s16 \stemUp \override NoteHead #'font-size = #-2 e,32([ fis,]) } >>
 g,8\staccato d\staccato g\sf\staccato ~ g16 f!\staccato e\staccato d\staccato c\staccato bes,\staccato
 a,8\staccato c\staccato e\sf ~ e16 d a g f e f cis d e f fis g8\p r r R4.
 g,8\staccato f!\sf( d) g,8\staccato e\sf( c) g,8 r r R4. g,8\staccato f\sf( d) g,8\staccato e\sf( c)
 g,16\staccato g\staccato g\staccato g\staccato e\staccato c\staccato
 g,16\staccato g\staccato g\staccato g\staccato e\staccato c\staccato g,16 g e c g, g e c g, g e c
 g,8\sf\staccato g\staccato r c8\f c c a8[ a] a16( g) f8[ f] f16( e) d8 d16( c b, a,)
 g,8\staccato g4\sf ~ g4. g,8\staccato g4\sf ~ g4. g,8 g\staccato g\staccato g\staccato r r
 R4. R4. R4. R4. R4. R4. R4. R4. R4.
 a8\pp\staccato a\staccato a\staccato d8 r r g\staccato g\staccato g\staccato c8 r r R4. R4. R4. R4. R4.
 e16\staccato e'\staccato e'\staccato e'\staccato e'\staccato d'\staccato
 c\staccato c'\staccato c'\staccato c'\staccato c'\staccato b\staccato
 a\staccato g\staccato f\staccato e\staccato d\staccato c\staccato b,8\staccato bes,4\sf a,8\staccato e4\sf
 f16.([ e32]) g8\staccato g,\staccato c8\p r r R4. R4. R4. R4. g,8\p g, g, g,4. g,8 g, g,
 c16\staccato g\staccato f\staccato e\staccato d\staccato c\staccato
 b,\staccato a,\staccato g,\staccato f,\staccato e,\staccato d,\staccato
 \new Voice { \stemUp c,16 \stemDown e' d' c' b a } gis fis e d c b,
 \new Voice { \stemUp a,16_\markup { \italic "cresc." } \stemDown c' bes a g! f! } e d c bes, a, g,
 f,8\ff f, f, fis, fis, fis, g,4 r8 R4. g8\p\staccato g\staccato g\staccato c'4.\sf b8 r8 r
 R4. R4. e'8\pp\staccato( e'\staccato e'\staccato) f'_\markup { \italic "cresc." } f' f' f' f' f' g g g a a a
 f8_\markup { \italic "decresc." } f f g g g c8\pp r r b, r r a, r r f, r r g, r r
 c8\staccato e\staccato g\staccato d\staccato g,\staccato r c16 c e e g g d8\staccato g,\staccato r
 c16 c e e g g c c e e g g c c e e g, g, c c e e g, g, c_\markup { \italic "cresc." } c g, g, g, g, g, g, g, g, g, g,
 c,8 r c'\p c'8 r r
 \bar "|."
}