\version "2.10.3"

 cellobasso = {
 \set Staff.instrumentName =  \markup { \column { "Violoncello" "e Basso." } }
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key ees \major
 \time 2/4
 \repeat volta 2 { \partial 8 r8 r8 ees\p ees,4 r8 f f,4 r8 bes bes,4 r8 ees ees,4 r8 aes8\fp([ a bes]) r c'\fp([ bes aes!])
 r8 bes,\fp[ bes bes,] r8 ees8 ees,4 r8 f\fp([ ges e]) f4 r4 f4 r r8 f8([ ges]) r r f([ ges]) r r4 a8\staccato f\staccato R2
 r8 bes8\staccato[ d'\staccato bes\staccato] r c'\staccato[ f\staccato f,\staccato]
 r8 bes,\staccato[ d'\staccato bes\staccato] r8 c'\staccato[ f\staccato f,\staccato]
 bes,8\staccato([ d ees]) r r e([ f]) r r fis([ g]) r r e!([ f!]) r r a,([ bes,]) }
 \repeat volta 2 { r8 r8 e([ f]) r r f([ e]) r r des'([ b c']) r aes!( f4) r8 d([ ees!]) r r ees([ d]) r r ees([ g bes]) ees4 ees8 d
 c4 c8 f bes,4 r8 f\staccato ges( f) r a,\staccato c8( bes,) r4 r8 bes\<[ bes bes\!] bes,4\f r4
 R2 R2 r8 ees8\p ees,4 r8 f f,4 r8 bes bes,4 r8 ees ees,4 r8 aes8\fp([ a bes]) r c'\fp([ bes aes!]) r bes\fp[ bes, bes]
 ees4 r8 ees8( e4) r8 e( f4) r8 f( fis4) r8 fis( g4) r8 g( c4) r8 g( aes4) r8 aes g( ees) r c( bes, bes) bes,4
 r8 bes,8\fp([ ces a,]) bes,4 r bes, r r8 bes([ a]) r r bes,([ ces]) r r4 d'8\staccato bes\staccato R2
 r8 ees\staccato[ g\staccato ees\staccato] r bes,\staccato[ d\staccato bes,\staccato]
 r8 ees\staccato[ g\staccato ees\staccato] r bes,\staccato[ d\staccato bes,\staccato]
 ees8\staccato[ g,( aes,)] r r a,([ bes,]) r r b,([ c]) r r a,([ bes,!]) r r d,([ ees,]) } \bar "|."
}