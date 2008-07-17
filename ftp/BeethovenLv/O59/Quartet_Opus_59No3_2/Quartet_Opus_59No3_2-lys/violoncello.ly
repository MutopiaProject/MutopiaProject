\version "2.10.3"

 violoncello = {
 \set Staff.instrumentName = "Violoncello."
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key a \minor
 \time 6/8
 \repeat volta 2 { e,4\f^\markup { "pizz." } r8 e,4\p r8 e,4 r8 e,4 r8 e,4 r8 e,4 r8 e,4 r8 e,4 r8 }
 \alternative { { a,8_\markup { \italic "cresc." }[ b, a,] gis,[ a, g,] f,[ e, d,] c,[ d, dis,] }
 { a,8_\markup { \italic "cresc." }[ b, a,] gis,[ a, g,] f,[ g, f,] e,[ f, d,] } } \bar "||"
 \repeat volta 2 { c,4\f r8 c4\p r8 f,4 r8 a,4 r8 d,4 r8 d4\f r8 a,4\p r8 a,4 r8 d,4 r8 e4.^\markup { "arco." }
 a,4 a,8 c8\sfp( b, a,) e,4. e4. a,4 a,8 c8\sfp( b, a,)
 e,4. c8\sfp( b, a,) e,4. f8_\markup { \italic "cresc." }( e d) c4\p( f8 d4 e8)
 f4_\markup { \italic "cresc." } r8 r8 r8 gis,8^\markup { "pizz." } a,4\f f,8 d,4\> e,8\! }
 \alternative { { a,8\p[ g,! e,_\markup { \italic "cresc." }] g,[ f, d,] } { a,4\p r8 a,4 r8 } }
 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 c,4\f r8 c,4\p r8 c,4 r8 c,4 r8 c,4 r8
 c,4 r8 c,4 r8 c,4 r8 c,4 r8 c,4 r8 c,4 r8
 f,8_\markup { \italic "cresc." } aes( f des f c\sfp b,! d! f) des( f c\sfp b,! d! f) des( f c)
 b,8_\markup { \italic "cresc." }( d! aes, g, b, g, aes, c aes,~ aes, g, fis,) g,4\p r8 g,4\p^\markup { "pizz." } r8
 g,4 r8 g,4 r8 g,4 r8 g,4 r8 g,4 r8 g,4 r8 g,4_\markup { \italic "dimin." } r8 g,4 r8 g,4 r8 g,4 f,8
 e,4 r8 f,4 r8 g,4 r8 c8[ g, f,] e,4 r8 f,4 r8 g,4 r8 c4 r8
 r8 b,16\staccato^\markup { "arco." }[ c\staccato d\staccato e\staccato] f4 f,8 g,4. c4 r8
 r8 b,16\staccato[ c\staccato d\staccato e\staccato] f4 f,8 g,4._\markup { \italic "cresc." } g,4.
 c,4\p r8 c4^\markup { "pizz." } r8 c4 r8 c4 r8 c,4 r8 c,4 r8 c,4 r8 c,4 r8 c,4 r8 c,4 r8 c,4 r8 c,4 r8
 c,4^\markup { \italic "dim." } r8 c,4 r8 c,4 r8 c,4 r8 c,4\pp r8 c,4 r8 c,8 r8 e8^\markup { "arco" }( g8 e c
 des8 bes, aes,) ges,( bes, f,\sfp e, g,! bes,) ges,( bes, f,\sfp e, g,! bes,) ges,( bes, f, e, g,! des, c, e, g,)
 f,8 r8 r r4 r8 r4 r8 r r bes,8\sf^\markup { "pizz." } bes,4\p r8 r r bes,\sf bes,4\p r8 r r bes,\sf
 bes,4\p r8 bes,4 r8 bes,2.^\markup { "arco." }~ bes,2.~ bes,4 bes,8(~ bes,8( ges, ees, d, f,)
 bes,(~ bes, aes, f, ees, ges, bes,_\markup { \italic "cresc." }) ees( bes, ges,) ees( c a,!) c( a, f,)
 des\p( bes,) f,~ f,4.~ f,2.~ f,4 des8(~ des8 bes, f,~ f, c) ees(~ ees c f,~ f, bes,)
 des8_\markup { \italic "cresc." }~ des( bes, f,) c( g, e,!) g,( e, c,)
 f,8\f( aes, c f\> aes f) des( f d b,!\! d g,) c4\f r8 r4 r8 r4 r8 r r d,8\p(~ d, g, bes,~ bes, g,) d,(~ d, a, c~ c a,)
 d,(~ d, g, bes,) g,4^\markup { "pizz." } r8 fis,4 r8 d,4 r8 g,8\f^\markup { "arco." }( bes, ees g bes g)
 r8 g8\p( e!) r cis( a,) d4\f r8 r4 r8 r4 r8 r r e,8\p^\markup { "pizz." } a,4 r8 f,4 r8 e,4 r8 r r gis,\sf a,4\p r8 f,4 r8
 e,4 r8 r r gis,\sf a,4\p r8 f,4 r8 e,4 r8 r r f, e,4 r8 r r f,
 e,4_\markup { \italic "dim." } r8 e,4 r8 e,4 r8 e,4 d,8 cis,4 r8 d,4 r8 e,4 r8 a,4 r8
 cis,4 r8 d,4 r8 e,4 r8 a,4 r8 r8 gis,16\staccato^\markup { "arco." }[ a,\staccato b,\staccato cis\staccato] d4.
 e4. a,4 r8 r8 gis,16\staccato[ a,\staccato b,\staccato cis\staccato] d4 d,8
 e,4_\markup { \italic "cresc." }( e8)~ e( d) b,\staccato a,4\p r8 a,4^\markup { "pizz." } r8 a,4 r8 a,4 r8
 a,4_\markup { \italic "cresc." } r8 a,4 r8
 a,4_\markup { \italic "dim." } r8 a,4 r8 a,4 r8 a,4 r8 a,4\pp r8 r a8^\markup { "arco." } a8
 bes4 r8 r bes8_\markup { \italic "cresc." } bes8 aes4\f r8 r4 r8
 r4 r8 r8 r16 c16\staccato^\p[ bes,\staccato aes,\staccato] g,4 r8 aes,4 r8
 bes,4. ees8[ d16\staccato c\staccato bes,\staccato aes,\staccato] g,4 r8 aes,4 r8
 bes,4._\markup { \italic "cresc." } bes,4. ees,4\p r8 ees,4^\markup { "pizz." } r8 ees,4 r8 ees,4 r8
 ees,4\sf r8 ees,4\p r8 ees,4 r8 ees,8 r bes
 ees'8\fp d' c' bes c' aes g f ees d ees c bes, aes, g, f, ees, d, cis, e,! d, cis, e, cis,
 d,8_\markup { \italic "sempre dim." } cis, d, cis, d, cis, d, cis, d, cis, d, d, e, dis, e, dis,\pp e, dis,
 e,8 dis, e, dis, e, dis, e,4 r8 e,4 r8 e,4 r8 e,4 r8 e,4\f r8 e,4\p r8 e,4 r8 e,4 r8 e,4 r8 e,4 r8 e,4 r8 e,4 r8
 a,8 b, a, gis,_\markup { \italic "cresc." } a, g, f, e, d, c, d, dis,
 e,4\f r8 e,4\p r8 e,4 r8 e,4 r8 e,4 r8 e,4 r8 e,4 r8 e,4 r8 a,8 b, a, gis,_\markup { \italic "cresc." } a, g,
 f,8 g, f, e, f, d, c,4 r8 c4\p r8 f,4 r8 a,4 r8 d,4 r8 d4\f r8 a,4\p r8 a,4 r8 d4 r8 e,4 r8
 a,4^\markup { "arco." } a,8 c8\sfp([ b, a,]) e,4. e,4. a,4. c8\sfp( b, a,) e,4. c8\sfp( b, a,)
 e,4. f8_\markup { \italic "cresc." }( e d)
 c4\p( f8 d4 e8) f4_\markup { \italic "cresc." }( e8 d[ c b,]) c8\f r8 f,8\> d,4^\markup { "pizz." } e,8\!
 a,8\p g, e, g, f, d, c,4 c'8 bes[ a e] e8 f f g f cis cis d d f\fp e d cis bes, a, g, f, e, d, e, f, e, e e,
 e8 a, a, c\sf b,\p a, e, gis, b, e e, e a, e a, c\sf b,\p a, e, gis, b, c\sf b,\p a,
 e,8 gis, b, f_\markup { \italic "cresc." } e d c8\p c, f, d, d e, f,_\markup { \italic "cresc." } f e d c b,
 c,8\f\> c f d d, e,\! a,4\p r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8
 a,8 r bes,8\f^\markup { "arco." }( ges, bes, f,\sf e, g,! bes,) ges,( bes, f,\sf e, g,! bes,)
 g,8( bes, f,) e,\f( g, f, cis,\> d, f,\!) e,2.\p~ e,4._\markup { \italic "cresc." }~ e,4
 des,8\sf~ des,4( c,8) r8 r des,8\sf~ des,4( c,8) r8 r
 cis,8\f~ cis,4.~ cis,4\> cis8\! d!4\p f8 e4 e,8 a,4 r8 a,4^\markup { "pizz." } r8 a,4 r8 a,4 r8
 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4_\markup { \italic "dim." } r8 a,4 r8 a,4 r8 a,4 r8
 a,8\pp[ g, f,] e, f, d, c, d, dis, e, fis, gis, a,8_\markup { \italic "cresc." } b, c d dis e f d! e c d b,
 c8 a, b, a,_\markup { \italic "dim." } b, a, b,8 a, b, a,\pp b, a, a,4 r8 a,4 r8 a,4 r8 r4 r8 \bar "|."
}