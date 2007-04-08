\version "2.7.40"

 cello = {
 \set Staff.instrument = "Violoncello"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key c \minor
 \time 4/4
 \repeat volta 2 { \partial 4 r4
 c4\p r c r c r r c\staccato b,\staccato_\markup { \italic "cresc." } c\staccato g,\staccato c\staccato
 g,2.\f r4 c4\p r c r c r r cis d\staccato_\markup { \italic "cresc." } ees\staccato d\staccato d,\staccato g,2.\sf }
 \repeat volta 2 { \partial 4 r4
 c4\p r f r bes, r ees r aes, r aes r g2.^\fermata r4 c4\p r c r
 c_\markup { \italic "cresc." } bes, aes, g, f,\staccato aes,\f\staccato g,\staccato g,\staccato c,2. }
 \repeat volta 2 { \partial 4 r4
 aes1\p( bes1) c'2( f ees) ees' ~ ees'\<( des'\! ~ des'\> c'\!) des( ees) aes,2. }
 \repeat volta 2 { \partial 4 r4 ees4( bes g ees) bes,4 r r2 ees4( bes g ees) aes4 r r2 ees1 bes,1
 ees,2_\markup { \italic "cresc." } ees2( f g) aes1\p( bes1) c'2( f ees) ees' ~ ees' des' ~ des'( c'4) c4 des2 ees }
 \alternative { { aes,2. } { aes,4\staccato \bar "" fis,\staccato g,\staccato \partial 4 g,4\staccato } }
 c,4\p r c r c r r c\staccato b,\staccato_\markup { \italic "cresc." } c\staccato g,\staccato c\staccato
 g,2.\f r4 c4\p r c r c r r cis d\staccato_\markup { \italic "cresc." } ees\staccato d\staccato d,\staccato g,2.\sf r4
 c,8\p c c c c_\markup { \italic "cresc." } c c c c c c c c c c c b,\f b, c c g, g, c c g, g, f, f, ees, ees, d, d,
 c,8\p c c c c_\markup { \italic "cresc." } c c c c c c c cis cis cis cis d\f d ees ees cis cis d d
 g, g, aes,! aes, g, g, f,! f,
 e,4\p c, f, r bes, r ees! r aes, r aes r g2.^\fermata r4
 c4\p r c r c\staccato_\markup { \italic "cresc." } bes,\staccato aes,\staccato g,\staccato
 f,4\staccato aes,\f\staccato g,\staccato g,\staccato c,2. r4
 c8\sf c c c f4 r bes,8\sf bes, bes, bes, ees4 r aes,8\ff aes, aes, aes, aes, aes, aes, aes,
 g,8 g, f, f, ees, ees, d, d, c,8\p c c c c_\markup { \italic "cresc." } c c c c c bes, bes, aes, aes, g, g,
 f,8\f f, f, f, g, g, g, g, c,4 r r r8
 \key c \major
 \repeat volta 2 {
 \partial 8 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { g,16([ a, b,] } c1\fp) ~ c1 ~ c1 ~ c4 c c c
 d4 r d r g, r r r8 }
 \repeat volta 2 {
 \partial 8 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d16([ e fis] } g1\fp) ~ g2 ~ g4.
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d16([ e fis] } g1\fp) ~ g1 ~ g1 ~ g2.( fis4 g4) r g, r }
 \alternative { { c4 r r r8 } { c4 \bar "" r r \partial 4 r4 } }
 \key c \minor
 \repeat volta 2 { c4\p r c r c r r c\staccato
 b,4\staccato_\markup { \italic "cresc." } c\staccato bes,\staccato aes,\staccato g,4\f\staccato r r2
 c4\p r c r c r r cis\f d4\staccato ees\staccato d\staccato d,\staccato }
 \alternative { { g,4\ff\staccato g,\staccato g,\staccato g,\p } { g,4\ff\staccato g,\staccato g,\staccato g,\p } }
 c,4 r f r bes, r ees r aes, r aes, r g,2.^\fermata r4 c4\p r c r
 c\staccato_\markup { \italic "cresc." } bes,\staccato aes,\staccato g,\staccato
 f,4 aes\f\staccato g\staccato g,\staccato
 c\ff\staccato c,\staccato c,\staccato c,\p c,4 c f, r bes, r ees, r aes, r aes, r
 g,4_\markup { \italic "cresc." } g, g, g, c,4\f r c r c4 bes, aes, g, f, aes, g, g,
 c4 r r2 r2 r4 a,8( b, c2.\sf) ees8( f g2.\sf) ees8( c g,2.\sf) d8( b, g,4\staccato) d8( b, g,4\staccato)
 d8( b, g,2.\ff^\fermata) r4 c'1\p( d'1) e'2( a) g1 cis'2( d') b( c') f( g)
 c4 r r2 c4^\markup { "pizz." } r r2 g,4 r r2 c4 r a, r g, r r2
 a,4 r d r g, r c r f, r g, r c r r bes,! a, r d r g, r c r f,_\markup { \italic "cresc." } r f r g r g, r
 c4\pp r r2 e4^\markup { "arco" } r r2 d4 r r2 g,4\staccato( g,\staccato g,\staccato g,\staccato) c4 r r2
 ees!4 r r2 bes,!4 r r2 bes,4\staccato( bes,\staccato bes,\staccato bes,\staccato) ees,4 r r2 g4 r r2 c4 r r2
 c4 c c bes, aes,4_\markup { \italic "cresc." } r r2 aes,4 r r2 aes,4 r r2 aes,4 aes, aes, aes,
 g,1\f ~ g,4 g g g g,1 ~ g,4 g g g g,4\f r r2 R1 g,4\f r r2 R1 R1 R1^\markup { \musicglyph #"scripts.ufermata" }
 \break

 c,4\ff c2\sf c4 ~ c4 c2\sf c4 b, c g, c g, g, g, g, c,4 c2 c4 ~ c4 c cis cis d ees d d, g,2. r4
 c4 c2\sf f4 bes, bes,2\sf ees4 aes, aes aes aes g2. r4 c,4\ff c2 c4 ~ c4 bes, aes, g, f, aes, g, g, c4 r r g,\p c r r g,
 c4 r r g,4_\markup { \italic "cresc." } c4 g, c g, c r bes r aes r f r g4\f r r2 g,4 r r2
 c4\p r bes,_\markup { \italic "cresc." } r aes, r g, r f, r r2 aes,4\f r r2
 g,4\f r r2 g,4\f r r2 c4 r r g,\sf d4 r r g,\sf ees r r c\sf f d g g, c g, c g,\sf d g, d g,\sf ees r ees r R1
 f4_\markup { \italic "decresc." } r f r R1 g4\pp r r2 g,4 r r2 c,1\sf ~ c,4 c c c c,1\sf ~ c,4 c c c c,2.\sf c4 c,2.\sf c4
 c,2.\sf c4 R1 R1 R1 r2 r4 r8 \times 2/3 { g,16\ff([ a, b,] } c4)
 r8 \times 2/3 { g,16([ a, b,] } c4) r8 \times 2/3 { g,16([ a, b,] } c4) r4 r2 r2 r4^\fermata
 \bar "|."
}