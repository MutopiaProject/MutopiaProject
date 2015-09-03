\version "2.18.2"

\include "defs.ily"

 basso =  {
 \set Staff.instrumentName = "Basso"
 \set Staff.midiInstrument = "contrabass"
 \clef bass
 \key f \minor
 \time 3/2
 \moreAccidentalPadding
 f,1.\fermata_\forteSforzato-\hideF
 f,2\staccato_\txtMarcato f,2\staccato r4 r8 f,8
 ees,2\staccato aes,2\staccato r4 r8 aes,8 g,2\staccato g,2\staccato r4 r8 g8\p
 c4 r4 r2 r2 R1. R1.
 << { r2 c1 } \\ { s4. s8\< s4\> s8 s4.\! s4 } >> f,1.\ff
 f,2\staccato f,2\staccato r4 r8 f,8 ees,2\staccato aes,2\staccato r2 R1. R1.
 r2 r2 aes,2\p des4\pp\staccato r4 r2 r4 r8 des8 des2\staccato des2\staccato r4 r8 des8
 c2\staccato c2\staccato r4 r8 c8 a,2 a,2 r4 r8 a,8 bes,2 bes,2 r4 r8 bes,8
 g,2 g,2 r4 r8 g,8 e,2 c2 r4 r8 c8 c4 r4 r2 r4 r8 c8
 c4 r4 r2 r4 r8 c8 c4 r4 r2 r2 \bar "||"

 \time 3/4 R2._\allegro R2. R2. r4 r4 f,4\sfp ~ f,4-\hideP r4 r4 R2. R2. r4 r4 c4\sfp ~ c4 r4 r4 R2. R2.
 r4 r4 << { f,4_( bes,2.) } \\ { \hairpinPastBarline s4-\hideP\< s4\!\> s4 s4\! } >>
 f,4 r4 << { f,4_( bes,2.) } \\ { \hairpinPastBarline s4-\hideP\< s4\!\> s4 s4\! } >>
 f,4 r4 << { f,4_( bes,2.) } \\ { \hairpinPastBarline s4-\hideP\< s4\!\> s4 s4\! } >>
 f,8 c8 c2 c8 c c2 c8 c c2 c8 c c2 c8 c c2
 c8\cresc c c2 bes,8 bes, bes,2 g,8 g, g,2 e,8 e, e,2
 c8 c c2 bes,8 bes, bes,2 g,8 g, g,2 e,8 e, e,2 c8 c c2 c8 c c2 c8 c c2 c4 r4 f,4\ff ~
 f,2. ~ f,2. ~ f,4 f,4( aes, c) r4 c4\ff ~ c2. ~ c2. ~ c4 c c f8 f f2 f8 f f2 f8 f f2
 f4 f f f,8 f, f,2 f,8 f, f,2 f,8 f, f,2 f,4 f,4 fes,
 ees,2.\sf ees,\sf ees,\sf ees,\sf ees,\sf ees,\sf ees,\sf ees,4 r r
 aes,4\ff\staccato aes,4\staccato r8 aes,8 des4 des r R2. R2.
 aes,4\ff aes,4 r8 aes,8 des4 des r R2. R2.
 aes,4\ff aes,4 r8 aes,8 des4 des r
 R2. R2. R2. R2. R2. R2. aes,!2.\f g,2.\ff aes,2.\sf des2.\sf bes,2.\sf ees2.\sf
 aes,8\f aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes,
 aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes,
 aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes,
 aes,2.:8\sf aes,2.:8\sf aes,2.:8\sf aes,2.:8\sf aes,2.:8\sf aes,2.:8\sf
 aes,4 r r R2. R2. R2. g,4\p r r R2. ees4 r r r r ees4\f\staccato
 aes,4\staccato r r R2. R2. R2. a,4\p r r R2. f,4 r r r r f4\f\staccato
 bes,4\staccato r r R2. R2. R2. a,4\p r r R2. f,4 r r r r f4\f\staccato
 bes,4\staccato r r R2. R2. r4 r g,\p R2. r4 r g4\p\<( aes g ees c aes, g,\! ees,\> ees c\!)
 g,4\< r g( aes g f d b, g f d b,\!) R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r f,^\txtPizz f, f, r r f, r r f, r r c r r c r r c r r c r
 r4 f,^\txtArco
 \spaceSpannerE
 \hairpinPastBarline f,\<( bes,2.\!\>) f,4\! r r R2.
 r4 r \hairpinPastBarline f,\<( bes,2.\!\>) f,8\! c c2
 c8 c c2 c8 c c2 c8 c c2 c8 c c2
 c8\cresc c c2 bes,8 bes, bes,2 g,8 g, g,2 e,8 e, e,2
 c8 c c2 bes,8 bes, bes,2 g,8 g, g,2 e,8 e, e,2
 c8 c c2 c8 c c2 c8 c c2 c4 r f,\ff ~ f,2. ~ f,2. ~ f,4 f,( aes, c) r
 c4\ff ~ c2. ~ c2. ~ c4 c c f f, f,4\f
 bes,2\sf bes,4 f,4 r r R2. r4 r f,4 bes,2\sf bes,4 f,4 r r
 des8 des des2 des8 des des2 des8 des des2 des4 des des
 des8 des des2 des8 des des2 des8 des des2 bes,4 bes, aes,
 g,!8[ ees] ees[ ees ees ees] ees ees ees ees ees ees
 aes,2.\sf aes,2.\sf aes,2.\sf aes,2.\sf aes,2.\sf aes,2.\sf aes,2.\sf aes,4 r r
 \stemUp des4\ff\staccato des4\staccato r8 des \stemNeutral ges,4 ges, r R2. R2.
 \stemUp des4\ff des4 r8 des \stemNeutral ges,4 ges, r R2. R2.
 \stemUp des4\ff des4 r8 des \stemNeutral ges,4 ges, r R2. R2. R2. R2. R2. R2.
 ees2.\f aes,2.\ff des!2.\sf ges,2.\sf ees,2.\sf aes,2.\sf
 des8\f des des des des des des des des des des des des2.:8 des2.:8 des2.:8 des2.:8
 des2.:8\sf des2.:8\sf des2.:8\sf des2.:8\sf des2.:8\sf des2.:8\sf des4 r r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 f,4\ff f, r8 f, f,4 f, r8 f, e,4 e, r r4 r r8 r^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \key f \major \time 4/4
 c8\pp ( b,) c\staccato c\staccato c c c c c( b,) c\staccato c\staccato c c c c
 c8( b,) c\staccato c\staccato c c c c c( b,) c\staccato c\staccato c c c c
 c8_\txtCresc( b,) c\staccato c\staccato c( b,) c\staccato c\staccato
 c8( b,) c\staccato c\staccato c( b,) c\staccato c\staccato
 c( b,) c\staccato c\staccato c( b,) c\staccato c\staccato c8 c' c' c' c' c' c' c'
 f2\ff ~ f8( c) a,\staccato c\staccato f2\sf ~ f8( c) a,\staccato c\staccato
 f8\sf( c) a,\staccato c\staccato f\sf( c) a,\staccato c\staccato
 f8\sf( c) a,\staccato c\staccato f\sf( c) a,\staccato c\staccato f2 d bes,4 g, c c
 f2\sf ~ f8( c) a,\staccato c\staccato f2\sf ~ f8( c) a,\staccato c\staccato
 f8\sf( c) a,\staccato c\staccato f\sf( c) a,\staccato c\staccato
 f8\sf( c) a,\staccato c\staccato f\sf( c) a,\staccato c\staccato f2 d bes,4 g, c c f, r r2 R1
 R1 R1 R1 R1 f4\sf( ees d fis) g\sf( des c bes,)
 g,8\ff g, bes, c d c bes, a, bes,\sf a, bes, g, c c, c c
 f,2_\txtMarcato e, f, g, gis,4 a,2. ~ a,1 c4 c c c c c c c
 f,4. f,8 e,4. e,8 f,4. f,8 g,4. g,8 gis,4 a,2. ~ a,1 c4 c c c c c c c
 f2.\sf c4 f\staccato c\staccato a,\staccato c\staccato
 f2.\sf c4 f\staccato c\staccato a,\staccato c\staccato f2\staccato a\staccato
 c'2.\sf c4 f2\staccato a\staccato c'2.\sf c4 f2\staccato a\staccato
 c'2.\sf c4 c'2.\sf c4 c'2.\sf c4 f,8\ff f, f, f, f, f, f, f, f, f, f, f, f, f, f, f,
 f,4 r r2 f,4 r r2 f,4 r r2
 f,4 r f, r f, r r2 \bar "|."
}