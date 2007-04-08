\version "2.7.40"

 viola = {
 \set Staff.instrument = "Viola"
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key c \minor
 \time 3/4
 \partial 4
 \repeat volta 2 { r4 g2( bes4\sf) bes2( aes4\sf) g4 g'( a'\sf c'' bes') r
 aes2( bes4\sf) c'4\staccato c\staccato d'\sf\staccato( ees') ees'\staccato d'\staccato c'4 r }

 \partial 4
 \repeat volta 2 { r4 c'2\f d'4( dis' e' f' fis' g' aes') bes'2\sf( aes'8 g') f'2( e'4\sf) f'2( e'4\sf) f'2( e'4\sf) f'4 r r
 des2^\p_\markup { \italic "cresc." }( ees4 e f fis g aes a bes c'8 bes aes! ges!)
 f4( des' aes\sf) des'( aes' aes\sf) des'( aes' aes\sf) des'( c' b)
 c'2( bes!4 aes g fis) g2( f'!4 ees'2 c'4) b2_\markup { \italic "decresc." }( f'4 ees'2 fis'4) g'2( fis'4 g') r r
 g2( bes4\sf) bes2( aes4\sf) g4 g'( a'\sf c'' bes') g( e f) f'( aes'! g') fis( a g)
 d'( b_\markup { \italic "cresc." } c') c'( aes' g') fis'\sf( a' g') d'\staccato
 c'4 r ees'\sf ~ ees'( d') b\staccato c'4\sf( b\staccato) r c'4\sf( b\staccato) r
 r4 r f'\sf ~ f'( ees') c'\staccato b4.\sf( d'8[ b d']) }
 \alternative { { c'4 r } { c'4 \bar "" r \partial 4 r4 } }
 \break

 \repeat volta 2 {
 \key aes \major
 ees2.\p ~ ees2. ~ ees4 ees ees\staccato ees4.( aes8 c'4\staccato)
 <ees bes>2. ~ <ees bes>2. ~ <ees bes>4 ees4\staccato ees\staccato ees4.( g8 bes4\staccato)
 ees4 r r r c\staccato c\staccato aes4._\markup { \italic "cresc." }( f8 d4\staccato)
 r4 aes'\staccato aes'\staccato aes'4.( f'8 d'4\staccato) f4.( bes8 d'4\staccato) f'2.\sf^\fermata
 r4 r bes\p ~ bes r r c'4 r r r g( aes g) r r }

 g2.\p ~ g2. ~ g4 bes\staccato bes\staccato bes4.( ees'8 g'4\staccato) aes'4\staccato r r
 f2. ~ f4 bes\staccato bes\staccato bes4.( d'8 f'4\staccato) g'4\staccato r r
 r4 ees\staccato_\markup { \italic "cresc." } ees\staccato ees4.( aes8 c'4\staccato)
 r4 ees\staccato ees\staccato ees4.( bes8 des'!4\staccato) R2. R2. bes4.( ees'8 g'4\staccato)
 bes'2.\sf^\fermata r4 r ees'4\p ~ ees' r r f' r r r c'( des' c') r r
 r4 c^\markup { \italic "decresc." }( des c) r r aes4\pp r r a r r b r r r r \bar "|."

}