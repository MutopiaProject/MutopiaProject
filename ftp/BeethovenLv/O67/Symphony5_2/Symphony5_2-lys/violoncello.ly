\version "2.16.2"




pizz = \markup{\italic "pizz."} 
arco = \markup{\italic "arco"} 

 violoncello = {
 %\set Staff.instrumentName = "Violoncello.  "
 \set Staff.midiInstrument = "cello"
 \override MultiMeasureRest #'expand-limit = 1
 \compressFullBarRests
 \clef bass
 \key aes \major
 
 \partial 8
 ees16.\p( aes32_\markup { \italic "dolce" }) c'8\staccato[ c'16.( bes32 aes16. c'32)]
 f8~ f16.([ a32 bes16. c'32]) des'16.([ c'32 bes16. des'32 g16. bes32]) e16.([ g32]) c'8(~ c'16. bes32)
 a16.([ f32]) bes8.( des'16) g16.([ ees32]) aes!8[ aes16.( c'32)] ees'4.\f c'8\p r8 c16.( aes,32)
 ees,4.\f( aes,8\p) r8 r
 R4.*5 % R4. R4. R4. R4.
 f4.\p c4._\markup { \italic "cresc." } ees8\f[ ees ees]( aes,8\p) r r
 r8 r ees8\f( aes,16) r aes,16\p r aes, r aes,8 r r aes8^\pizz[ aes ees] aes,8 r r
 aes8[ aes aes] aes4 r8 
R4.*2
aes,4.\ff^\arco g,8\staccato[ g,\staccato g,\staccato]
 c8[ c,] r c8_\markup { \dynamic ff \italic sempre }[ c g,] c4 c16. c32 c8[ c c] c4\sf c16. c32 c4\sf c16. c32
 c8 r r R4. r8 e,4\pp r8 e,4~ e,4._\markup {\dynamic p \italic sempre }~ e,4.( ees,!4.)( d,4. des,!4. c,4.
 des,4._\markup { \italic "cresc." }) ees,8\f\staccato ees8\f\staccato r
 r8 r ees16_\markup { \dynamic p \italic "dolce" }( aes c' bes aes g aes c') f( a bes a bes c')
 des'16( c' bes des' g bes) e( g c' g c' bes) a( f bes c' des' bes) g ees \acciaccatura bes32 aes!16 g aes c'
 d'16\f( ees' f' ees' d' ees') c'8\p r16 c16_\markup { \italic "cresc." }[ c( aes,)] ees,4.\f aes,8\p r r 
 R4.*5
 f4.\p c4._\markup { \italic "cresc." } ees8\f[ ees ees]( aes,8\p) r8 r
 r8 r ees\f( aes,16) r aes,16\p r aes, r aes,8 r r
 aes8^\pizz[ aes ees] aes,8 r r aes,8[ aes aes] aes8 r r R4.*2
 aes,32\ff^\arco[ aes, aes, aes,] aes,[ aes, aes, aes,] aes,[ aes, aes, aes,]
 g,16[ c32 e] g8[ g,] c8[ c,] r c8[ c g,] c4 c16. c32 c8[ c c] c4\sf c16. c32 c4\sf c16. c32
 c8 r r R4. r32 e,32\pp[ e, e,] e,16[ e, e,] r r32 e,32[ e, e,] e,16[ e, e,] r r32 e,32[ e, e,] e,4:16
 r32 e,32[ e, e,] e,4:16 r32 ees,![ ees, ees,] ees,4:16 r32 d,[ d, d,] d,4:16 r32 des,!32[ des, des,] des,4:16
 r32 c,[ c, c,] c,4:16 r32 des,_\markup { \italic "cresc." }[ des, des,] des,4:16
 ees,16\f ees16\staccato[ ees'\staccato] r16 r8
 r8 r ees32_\markup { \dynamic p \italic "dolce" }([ g aes bes]) c'32([ bes aes g] aes[ bes aes g] aes[ bes c' aes])
 f32([ g f e] f[ a bes a] bes[ c' des' c']) des'([ c' des' c'] bes[ des' aes! des'] g[ des' f des'])
 e32([ g a b] c'[ g a b] c'[ g c' bes!]) a([ c' f c'] bes[ des' f des'] bes[ des' aes! des'])
 g32([ bes ees bes] aes[ c' ees c'] aes[ c' ees c'])
 g\pp([ ees' bes ees'] g[ ees' bes ees'] g[ ees' bes ees']) c'8 r r
 c16^\pizz[ ees] c16[ ees c ees]
 des[ f] des[ f des f] 
 des[ f] des[ f des f]
 e16[ g] e[ g e g] ees![ f] des[ f des f] des[ ees] c[ ees c ees] <ees, bes,>[ ees] <ees, bes,>[ ees <ees, bes,> ees]
 aes,8 r32 ees32\f(^\arco[ f g] \acciaccatura bes64 aes32[ g aes bes])
 c'32([ bes aes g] aes[ bes aes g] aes[ bes c' aes]) f([ g f e] f[ a bes a] bes[ c' des' c'])
 des'([ c' des' c'] bes[ des' aes! bes] g[ aes f g]) e([ f g e] c[ e g b] c'[ g c' bes!])
 a([ g a f] bes[ c' bes a] bes[ c' des' bes]) g([ f g ees] aes![ bes, aes, g,] aes,[ bes, c d]) ees4.
 ees8~ ees16( f32 g aes[ bes c' d']) ees'4^\fermata ees8\pp ees r ees ees r ees ees r ees
 ees8_\markup { \italic sempre \dynamic pp } r ees ees r ees
 ees8 r ees ees r ees ees r ees ees8\f r r 
R4.*10 
 r8 r r16 e\p\staccato f\staccato[ g\staccato aes\staccato] r r8 R4.*2 r8 r c16.\ff c32 c8[ c g,] c4.~
 c4 c16.[ g,32] c8[ c c] c4.~ c4 c16.[ c32] c4 c16.[ c32] c4 c16.[ c32]
  c4.\>~ c4. c8\!\p^\pizz r8 r f8 r r ees r r R4.*2 bes,32\pp^\arco([ g, ees, g,]) bes,([ g, ees, g,])
 bes,([ g, ees, g,]) bes,8 r r R4. r8 r8 aes,8^\pizz
 aes,8[ aes, aes,] ees[ ees ees] aes[ aes aes] ges[ ges ges] ces'[ ces' ces']
 ges8[ ges ges] aes[ aes aes] ees8_\markup { \italic "cresc." }[ ees16 aes, aes aes]
 ees8[ ees16 ees aes aes,] ees16\f\staccato[ ees\staccato] r8 r
 R4.*3 
%\pageBreak
r8 r a16\pp^arco( bes c'\cresc[ des' ees' f' ees' des'] c'[ bes aes! g f ees]
 des[ c bes, aes, g, f,] ees,[ des c bes, aes, g,\!])
 aes,4.:32\ff des4.:32 bes,32[ bes, bes, bes,] g,[ g, g, g,] bes,[ bes, bes, bes,] c4.:32
 ees!32[ ees ees ees] des[ des des des] bes,[ bes, bes, bes,] des[ des des des] c[ c c c] aes,[ aes, aes, aes,]
 ees,32[ d, ees, f,] g,[ aes, bes, c] des![ ees f g] aes8 r aes16.[ c'32] ees'4.\sf
 c'32[ aes,32 bes, c] des[ ees f g] aes[ bes c' des'] ees'8 r r 
R4.*4 f4.\p c4. ees8[ ees ees] aes,8 r ees( aes,) r ees,( aes,16) r aes,\pp r aes, r
 aes,16 r aes, r aes, r aes,16 r aes, r aes, r aes,16 r aes, r aes, r aes, r aes, r ees16\staccato[ f\staccato]
 ges16\staccato[ f\staccato ees\staccato f\staccato ges\staccato ees\staccato]
 f\staccato[ ees\staccato des\staccato ees\staccato f\staccato des\staccato]
 fes\staccato[ ees\staccato des\staccato ees\staccato fes\staccato des\staccato] ees8
 r16. aes,32_\markup { \italic "cresc." }([ c16. ees32] aes8[ c' ees'\f] c'8)
 r16. aes,32\p_\markup { \italic "    cresc." }([ c16. ees32]) \times 2/3 { aes16([ c' ees']) }
 aes8( ees\f aes) \override TupletBracket #'transparent = ##t
 \times 2/3 { r16 aes,16_\markup {\dynamic p \italic "cresc." }([ c] } \times 2/3 { ees16[ aes c']) }
 \times 2/3 { ees16\ff([ aes c']) } ees'8 r8 
R4.*5
 f4._\markup { \italic "cresc." }
 des8\f([ aes8.\sf]) aes16 bes8\f([ c'8.\sf\>]) c16( des8\p\!) r8 r
 ees8\pp r r aes,4.~ aes,4 aes,16.[ aes,32] aes,4.~ aes,4 aes,16.[ aes,32] aes,4.~ aes,4.~ aes,4
 c,16._\markup { \italic "cresc." }( ees,32 aes,4) c,16.( ees,32 aes,8)[ c,16.( ees,32 aes,8)]
 c,16.[( ees,32 aes,8) c,16.( ees,32]
% \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
% \set tupletSpannerDuration = #(ly:make-moment 1 4) 
\times 2/3 { aes,16\f\staccato)[ c,\staccato ees,\staccato] }
\times 2/3 { aes,\staccato[ c,\staccato ees,\staccato] }
\times 2/3 {aes,\staccato[ c,\staccato ees,\staccato]}
\times 2/3 { aes,[ c, ees,] }
\times 2/3 {aes,[ c ees] }
\times 2/3 {aes[ aes aes] }
\times 2/3 {aes[ aes aes] }
\times 2/3 {ees[ ees ees]}
\times 2/3 { c[ c c] } 
aes,8\ff r r ees\ff r r
 aes8 r ees\p\staccato aes\staccato r r ees8\ff r r aes,8 r 
 %\bar "|."
}
