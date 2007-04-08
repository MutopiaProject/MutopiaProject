\version "2.4.0"

 violoncello =  {
 \set Staff.instrument = "Violoncello"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key f \minor
 \time 3/2
 \override Staff.AccidentalPlacement   #'padding = #0.5
 << {  f,1.\fermata } \\
 { \override DynamicLineSpanner   #'padding = #2.0 s2\f s4 s4\> s4 s4\! } >>
 f,2\staccato_"marcato" f,2\staccato r4 r8 f,8
 ees,2\staccato aes,2\staccato r4 r8 aes,8 g,2\staccato g,2\staccato r4 r8 g8\p
 c4 r4 r2 r2 R1. R1.
 << { r2 c1 } \\ { s4 s4\< s4\!\> s4\! s2 } >> f,1.\ff
 f,2\staccato f,2\staccato r4 r8 f,8 ees,2\staccato aes,2\staccato r2 R1. R1.
 r2 r2 aes,2\p des4\pp\staccato r4 r2 r4 r8 des8 des2\staccato des2\staccato r4 r8 des8
 c2\staccato c2\staccato r4 r8 c8 a,2 a,2 r4 r8 a,8 bes,2 bes,2 r4 r8 bes,8
 g,2 g,2 r4 r8 g,8 e,2 c2 r4 r8 c8 c4 r4 r2 r4 r8 c8 c4 bes4\p( c'8 bes aes g) g4 r4
 r4 bes4\pp( c' bes aes g) \bar "||"

 \time 3/4 r8 \cresc bes8([ c' bes aes g] c' bes aes g c' bes)
 aes( g c' bes aes g) c'8( bes aes g)
 c'4\sfp( des' c' aes f des c aes, f, des, c,) r4 c'\sfp( des' c' bes g e des c bes, g,8) e,
 c,4( f,) << { \stemDown f4 ~ f4. f8\staccato[ f\staccato g\staccato] } \\
 { s4\< s4\!\> s4 s8 s8\! } >> aes4( f)
 << { \stemDown f4 ~ f4. f8\staccato[ f\staccato g\staccato] } \\
 { s4\< s4\!\> s4 s8 s8\! } >> aes4( f)
 << { \stemDown f4 ~ f4. f8\staccato[ f\staccato g\staccato] } \\
 { s4\< s4\!\> s4 s8 s8\! } >> aes8 c8 c2 c8 c c2 c8 c c2 c8 c c2 c8 c c2
 \cresc << { c2.( bes,2.)( g,2.) } \\ { \stemUp c,2. ~ c,2. ~ c,2. } >> e,2.
 << { c2.( bes,2.)( g,2.) } \\ { \stemUp c,2. ~ c,2. ~ c,2. } >> e,2.
 c,8 c, c,2 c,8 c, c,2 c,8 c, c,2 c,4 r4 c,8\ff([ des,8]
 c,8 des, c, des, c, des,) c,( des, c, des, c, des,) c,( des, c, des, c, des,)
 c,8( des, c, des, c, des,) c,( des, c, des, c, des,) c,( des, c, des, c, des,)
 c,8( des, c, des,) c,4 f,8 f, f2 f8 f f2 f8 f f2 f4 f f
 f,8 f, f,2 f,8 f, f,2 f,8 f, f,2 f,4 f, fes,
 ees,2.\sf ees,\sf ees,\sf ees,\sf ees,\sf ees,\sf ees,\sf ees,4 r r
 aes,4\ff\staccato aes,4\staccato r8 aes,8 des4 des r R2. R2.
 aes,4\ff aes,4 r8 aes,8 des4 des r R2. R2.
 aes,4\ff aes,4 r8 aes,8 des4 des r
 \override TextScript   #'padding = #1.5
 a,2._\markup { \italic \large "p cresc." } ~ a,2. ~ a,2. ~ a,2. ~ a,2. ~ a,2.
 aes,!2.\f g,2.\ff aes,2.\sf des2.\sf bes,2.\sf ees2.\sf
 aes,8\f aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes,
 aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes,
 aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes, aes,
 aes,2.:8\sf aes,2.:8\sf aes,2.:8\sf aes,2.:8\sf aes,2.:8\sf aes,2.:8\sf
 aes,4 r r R2. R2. R2. g,4\p r r R2. ees4 r r r r ees4\f\staccato
 aes,4\staccato r r R2. R2. R2. a,4\p r r R2. f,4 r r r r f4\f\staccato
 bes,4\staccato r r R2. R2. R2. a,4\p r r R2. f,4 r r r r f4\f\staccato
 bes,4\staccato r r R2. R2. r4 r g,\p R2. r4 r g4\p\<( aes g ees c aes, g,\! ees,\> ees c\!)
 g,4\< r g( aes g f d b, g f d b,\!) R2. R2. R2. R2. R2. R2. R2.
 r4 r c'8([ bes] \cresc aes[ g c' bes aes g]) c'([ bes aes g])
 c'4\sfp( des' c' aes f des c aes, f, des, c,) r c'\sfp( des' c' bes g e des c bes, g,8 e,)
 c,4( f,) f4\< ~ f4.\! f8\staccato\>[ f\staccato g\staccato\!] aes4( f)
 f4\< ~ f2.\!\> ~ f4\! r f4\< ~ f4.\! f8\staccato\>[ f\staccato g\staccato\!] aes8 c c2
 c8 c c2 c8 c c2 c8 c c2 c8 c c2
 \slurUp  \override DynamicLineSpanner   #'padding = #2.0
 \cresc <c, c>2.( ~ <c, bes,>2.)( ~ <c, g,>2.) e,2.
 <c, c>2.( ~ <c, bes,>2.)( ~ <c, g,>2.) e,2. c,8 c, c,2 c,8 c, c,2 c,8 c, c,2
 c,4 r \slurDown c,8\ff([ des,] c,[ des, c, des, c, des,]) c,( des, c, des, c, des,)
 c,8( des, c, des, c, des,) c,( des, c, des, c, des,) c,( des, c, des, c, des,)
 c,8( des, c, des, c, des,) c,([ des, c, des,]) c,4 f, f,
 f4\f ~ f4. f8\staccato[ f\staccato g\staccato] \slurUp aes4( f4)
 f4 ~ f4. f8\staccato[ f\staccato g\staccato] aes4( f4)
 f4 ~ f4. f8\staccato[ f\staccato g\staccato] aes4( f4) r
 des8 des des2 des8 des des2 des8 des des2 des4 des des
 des8 des des2 des8 des des2 des8 des des2 bes,4 bes, aes,
 g,8[ ees] ees[ ees ees ees] ees ees ees ees ees ees
 aes,2.\sf aes,2.\sf aes,2.\sf aes,2.\sf aes,2.\sf aes,2.\sf aes,2.\sf aes,4 r r
 des4\ff\staccato des4\staccato r8 des ges,4 ges, r R2. R2.
 des4\ff des4 r8 des ges,4 ges, r R2. R2. des4\ff des4 r8 des ges,4 ges, r
 d2.\p ~ d2. ~ d2. ~ d2. ~ d2. ~ d2. ees2.\f aes,2.\ff des2.\sf ges,2.\sf ees,2.\sf aes,2.\sf
 des8\sf des des des des des des des des des des des des2.:8 des2.:8 des2.:8 des2.:8
 des2.:8\sf des2.:8\sf des2.:8\sf des2.:8\sf des2.:8\sf des2.:8\sf des4 r r R2. R2. R2.
 des'4\p\staccato des'4\staccato r des'4\staccato des'4\staccato r c'4 c' r a a r R2. R2. R2. R2.
 bes4\p\staccato bes4\staccato r bes bes r g g r e e r
 f,4\ff f, r8 f, f,4 f, r8 f, e,4 e, r r4 r r8 r^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \key f \major \times 4/4
 \slurDown c8\pp( b,) c\staccato c\staccato c c c c c( b,) c\staccato c\staccato c c c c
 c8( b,) c\staccato c\staccato c c c c c( b,) c\staccato c\staccato c c c c
 c8_\markup { \italic \large "cresc." }( b,) c\staccato c\staccato c( b,) c\staccato c\staccato
 c8( b,) c\staccato c\staccato c( b,) c\staccato c\staccato
 c8( b,) c\staccato c\staccato c( b,) c\staccato c\staccato c8 c' c' c' c' c' c' c'
 f2\ff ~ f8( c) a,\staccato c\staccato f2\sf ~ f8( c) a,\staccato c\staccato
 f8\sf( c) a,\staccato c\staccato f\sf( c) a,\staccato c\staccato
 f8\sf( c) a,\staccato c\staccato f\sf( c) a,\staccato c\staccato f2 d bes,4 g, c c
 f2\sf ~ f8( c) a,\staccato c\staccato f2\sf ~ f8( c) a,\staccato c\staccato
 f8\sf( c) a,\staccato c\staccato f\sf( c) a,\staccato c\staccato
 f8\sf( c) a,\staccato c\staccato f\sf( c) a,\staccato c\staccato f2 d bes,4 g, c c
 \clef tenor \slurUp f'4\sf( ees' d' fis') g'\sf( des' c' e'!)
 f'!4\sf( ees' d'! fis') g'\sf( des' c' e'!)
 f'!4\sf( ees' d' fis') g'\sf( des' c' e'!)
 \clef bass \slurDown f,4\sf( ees, d, fis,) g,\sf( des, c, bes,)
 g,8\ff g, bes, c d c bes, a, bes,\sf a, bes, g, c c, c c
 f,2_\markup { \italic \large "marcato" } e, f, g, gis,4 a,2. ~ a,1
 <c, c>4 <c, c> <c, c> <c, c> <c, c> <c, c> <c, c> <c, c>
 f,4. f,8 e,4. e,8 f,4. f,8 g,4. g,8 gis,4 a,2. ~ a,1
 <c, c>4 <c, c> <c, c> <c, c> <c, c> <c, c> <c, c> <c, c>
 f2.\sf c4 f\staccato c\staccato a,\staccato c\staccato
 f2.\sf c4 f\staccato c\staccato a,\staccato c\staccato f2\staccato a\staccato
 c'2.\sf c4 f2\staccato a\staccato c'2.\sf c4 f2\staccato a\staccato
 c'2.\sf c4 c'2.\sf c4 c'2.\sf c4 f,8\ff f, f, f, f, f, f, f, f, f, f, f, f, f, f, f,
 f,4 r r2 f,4 r r2 f,4 r r2
 f,4 r f, r f, r r2 \bar "|."
}