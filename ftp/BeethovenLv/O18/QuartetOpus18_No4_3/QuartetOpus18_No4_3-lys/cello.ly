\version "2.7.40"

 cello = {
 \set Staff.instrument = "Violoncello"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key c \minor
 \time 3/4
 \partial 4
 \repeat volta 2 { r4 c,4\staccato c\staccato bes,\sf\staccato ees ees, c\sf g, g( c'\sf a bes) r4
 f,4\staccato f\staccato g\sf\staccato aes aes, f\sf( g,) g\staccato g\staccato c4 r }

 \partial 4
 \repeat volta 2 { r4 c4 c' c' c' c' c' c' c' c' c'\sf c' c' f c' c\sf f c' c\sf f c' c\sf f r r
 des4\p des'_\markup { \italic "cresc." } des' des' des' des' des' des' des' des' des' des'
 des'4 des2\sf ~ des4  des2\sf ~ des4 des2\sf ~ des4( c b,)
 c2( bes,!4 aes, g, fis,) g,2. ~ g,2. ~ g,2._\markup { \italic "decresc." } ~ g,2. ~ g,4 g4 g g r r
 c,4\staccato c\staccato bes,\sf\staccato ees ees, c\sf g, g( c'\sf a bes) e'( g' f')
 des( b, c) aes,!( fis, g,) f!( d_\markup { \italic "cresc." } ees) a,( b, c) aes,!( fis, g,) g,\staccato
 c,4 g g\sf g g g c\sf( g,) r c\sf( g,) r g, g g\sf g g g g,2.\sf }
 \alternative { { c4 r } { c4 \bar "" r \partial 4 r4 } }
 \break

 \repeat volta 2 {
 \key aes \major
 aes,2.\p ~ aes,2. ~ aes,4 ees\staccato ees\staccato ees4.( c8 aes,4\staccato)
 g,2. ~ g,2. ~ g,4 ees\staccato ees\staccato ees4.( bes,8 g,4\staccato)
 aes,4 r r R2. f,4_\markup { \italic "cresc." } r r R2. d,4 r r
 d4._\markup { \italic "cresc." }( f8 bes4\staccato) d'2.\sf^\fermata
 r4 r aes\p( g) r r aes r r r bes bes, ees r r }

 <ees, bes,>2.\p ~ <ees, bes,>2. ~ <ees, bes,>4 bes,\staccato bes,\staccato bes,4.( g,8 ees,4\staccato)
 <d, bes,>2. ~ <d, bes,>2. ~ <d, bes,>4 bes,\staccato bes,\staccato bes,4.( f,8 d,4\staccato) des,!4\staccato r r
 r4 des!4\staccato_\markup { \italic "cresc." } des\staccato c4 r r
 r4 c\staccato c\staccato g,\staccato r r R2. R2. g4.( bes8 ees'4\staccato) g'2.\sf^\fermata
 r4 r des'4\p( c') r r des' r r r ees ees aes r r
 r4 ees,^\markup { \italic "decresc." }( e, f,) r r f\pp r r fis r r g r r r r \bar "|."
}