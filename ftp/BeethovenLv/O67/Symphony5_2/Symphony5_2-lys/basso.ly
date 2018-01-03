\version "2.16.2"



pizz = \markup{\italic "pizz."} 
arco = \markup{\italic "arco"} 


 basso = {
 %\set Staff.instrumentName = "Basso.      "
 \set Staff.midiInstrument = "contrabass"
 \override MultiMeasureRest #'expand-limit = 1
 \compressFullBarRests
 \clef bass
 \key aes \major

 \partial 8 r8 aes,4\p_\pizz r8 des4 r8 bes,8[ g, bes,] c4 r8 f8[ bes,] r8 ees[ aes,] r
 ees,8\f r r aes,\p r c16.^\arco( aes,32) ees,4.\f( aes,8\p) r8 r 
R4.*5 % R4. R4. R4. R4.
 f4.\p c4._\markup { \italic "cresc." } ees8\f[ ees ees]( aes,8\p) r r r8 r ees8\f( aes,16) r aes,16\p r aes, r
 aes,8 r r aes8^\pizz[ aes ees] aes,8 r r aes8[ aes aes] aes4 r8
 R4.*2 aes,4.\ff^\arco g,8\staccato[ g,\staccato g,\staccato]
 c8[ c,] r c8_\markup {\dynamic ff \italic sempre }[ c g,] c4 c16. c32 c8[ c c] c4\sf c16. c32 c4\sf c16. c32
 c8 r r 
 R4.*10
 ees8\f r r r8 r aes,8\p^\pizz
 aes,4 r8 des4 r8 bes,8[ g, bes,] c8 r c f8[ bes,] r ees[ aes,] r ees,8\f[ ees, ees,]
 aes,8\p r16 c16_\markup { \italic "cresc." }[ c( aes,)] ees,4.\f aes,8\p r r 
 R4.*5
 f4.\p c4._\markup { \italic "cresc." } ees8\f[ ees ees]( aes,8\p) r8 r
 r8 r ees\f( aes,16) r aes,16\p r aes, r aes,8 r r
 aes8^\pizz[ aes ees] aes,8 r r aes,8[ aes aes] aes8 r r R4.*2
 aes,32\ff^\arco[ aes, aes, aes,] aes,[ aes, aes, aes,] aes,[ aes, aes, aes,]
 g,16[ c32 e] g8[ g,] c8[ c,] r c8[ c g,] c4 c16. c32 c8[ c c] c4\sf c16. c32 c4\sf c16. c32
 c8 r r
 R4.*10 
ees8\f r r r8 r aes,8\p^\pizz aes,8[ aes,] r16 aes,
 des8[ des] r16 des bes,8[ bes,] r16 bes, c8[ c] r16 c f8[ bes,] r16 bes, ees8[ aes,] r16 aes,
 ees,8\pp[ ees, ees,] aes,8 r8 r aes,4.\pp^\arco des4. bes,4.
 c4. f8( bes,4) ees8( aes,4) ees,4. aes,8 r32 ees32\f^\arco[ f g] \acciaccatura bes64 aes32[ g aes bes]
 c'32([ bes aes g] aes[ bes aes g] aes[ bes c' aes]) f([ g f e] f[ a bes a] bes[ c' des' c'])
 des'([ c' des' c'] bes[ des' aes! bes] g[ aes f g]) e([ f g e] c[ e g b] c'[ g c' bes!])
 a([ g a f] bes[ c' bes a] bes[ c' des' bes]) g([ f g ees] aes![ bes, aes, g,] aes,[ bes, c d]) ees4.
 ees8~ ees16( f32 g aes[ bes c' d']) ees'4^\fermata ees8\pp ees r ees ees r ees ees r ees
 ees8_\markup { \italic sempre \dynamic pp } r ees ees r ees
 ees8 r ees ees r ees ees r ees ees8\f r r
 R4.*10
 r8 r r16 e\p\staccato f\staccato[ g\staccato aes\staccato] r r8 R4.*2 r8 r c16.\ff c32 c8[ c g,] c4.~
 c4 c16.[ g,32] c8[ c c] c4.~ c4 c16.[ c32] c4 c16.[ c32] c4 c16.[ c32]
  c4.\>~ c4. c8\!\p r8 r f8 r r ees r r 
 R4.*5
 r8 r8 aes,8^\pizz
 aes,8[ aes, aes,] ees[ ees ees] aes[ aes aes] ges[ ges ges] ces'[ ces' ces']
 ges8[ ges ges] aes[ aes aes] ees8_\markup { \italic "cresc." }[ ees16 aes, aes aes]
 ees8[ ees16 ees aes aes,] ees16\f\staccato[ ees\staccato] r8 r R4.*3
  r8 r a16\pp^\arco( bes  c'\cresc[ des' ees' f' ees' des'] c'[ bes aes! g f ees]
 des[ c bes, aes, g, f,] ees,[ des c bes, aes, g,\!])
 aes,4.:32\ff des4.:32 bes,32[ bes, bes, bes,] g,[ g, g, g,] bes,[ bes, bes, bes,] c4.:32
 ees!32[ ees ees ees] des[ des des des] bes,[ bes, bes, bes,] des[ des des des] c[ c c c] aes,[ aes, aes, aes,]
 ees,32[ d, ees, f,] g,[ aes, bes, c] des![ ees f g] aes8 r aes16.[ c'32] ees'4.\sf
 c'32 aes,32[ bes, c] des[ ees f g] aes[ bes c' des'] ees'8 r r 
 R4.*4 f4.\p c4. ees8[ ees ees] aes,8 r ees( aes,) r ees,( aes,16) r aes,\pp r aes, r
 aes,16 r aes, r aes, r aes,16 r aes, r aes, r
 aes,16 r aes, r aes, r aes,16 r aes, r aes, r aes,16 r aes, r aes, r aes,16 r aes, r aes, r aes,16 r aes, r aes, r
 aes,8 r r r8 r ees8\f( aes) r r r8 r ees8\f( aes) r8
 \override TupletBracket #'transparent = ##t \times 2/3 { r16 aes,([ c]) }
 \times 2/3 { ees16\ff([ aes c']) } ees'8 r8
 R4.*5
 f4._\markup { \italic "cresc." }
 des8\f([ aes8.\sf]) aes16 bes8\f([ c'8.\sf\>]) c16( des8\p\!) r8 r
 ees8\pp r r aes,4.~ aes,4 aes,16.[ aes,32] aes,4.~ aes,4 aes,16.[ aes,32] aes,4.~ aes,4.~ aes,4
 c16._\markup { \italic "cresc." }( ees32 aes4) c16.( ees32 aes8)[ c16.( ees32 aes8)]
 c16.[( ees32 aes8) c16.( ees32]
 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { aes16\f\staccato)[ c\staccato ees\staccato]
 aes\staccato[ c\staccato ees\staccato] aes\staccato[ c\staccato ees\staccato]
 aes[ c ees] aes,[ c ees] aes[ aes aes] aes[ aes aes] ees[ ees ees] c[ c c] } aes,8\ff r r ees\ff r r
 aes8 r ees\p\staccato aes\staccato r r ees8\ff r r aes,8 r \bar "|."
}
