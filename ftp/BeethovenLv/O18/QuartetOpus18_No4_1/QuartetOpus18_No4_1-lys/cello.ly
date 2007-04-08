\version "2.7.40"

 cello = {
 \set Staff.instrument = "Violoncello"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key c \minor
 \time 4/4
 \partial 4 r4
 \repeat volta 2 { c,8\p c c c c c c c c\sf c c c c c c c c, c c c c c c c c\sf c c c c c c c
 c,8 c c c c c c c c, c c c c c c c f f aes aes fis fis g g
 ees ees ees( b,) c\staccato g\staccato ees\staccato c\staccato g, f f f f f ees ees
 r8 b, b, b, b, b, c c f,_\markup { \italic "cresc." } f f f aes aes f f fis fis aes aes g g g, g,
 c4\staccato r g,\staccato r c\staccato g,\staccato c\staccato r
 g,4\staccato r c\staccato r g,\staccato c\staccato g,\staccato r ees2\ff( d c bes,) aes,2. aes,4
 g,8\fp g g g g g g g g,8 g g g g g g g g,8 g g g g g g g g,8 g g g g g g g
 g,4\staccato c\sf\staccato g,\staccato c\sf\staccato <g, g>4\ff <g, g> r2
 ees4\staccato des\staccato c\staccato g,\staccato aes,\staccato des\staccato c\staccato g,\staccato
 aes,\staccato g,( aes,) g,( aes,2.) r4 c4\fp bes\staccato aes\staccato e\staccato
 f4\staccato bes,\staccato aes,\staccato e,\staccato f,\staccato e,( f, aes,) bes,2. r4 R1 R1 R1 R1 R1
 r2 g,4\p r c r f, r bes,!4^\markup { \italic "cresc." }( aes,! f, ees,)
 ees,8\p\staccato bes,\staccato ees\staccato bes,\staccato d\staccato bes,\staccato d\staccato bes,\staccato
 ees8 bes, ees bes, ees bes, g, ees, d, bes, d bes, ees d ees a, bes, bes bes bes a( bes aes bes)
 g2_\markup { \italic "cresc." }( f ees d) c f, bes,8 bes\p bes bes bes4 r4 r8 bes[ bes bes] bes4 r4
 r4 bes_\markup { \italic "cresc." } r bes r bes,\f r2
 ees4\p\staccato g4.\sf g8\staccato f\staccato ees\staccato d4( f bes, d)
 ees4\staccato g4.\sf g8\staccato f\staccato ees\staccato d4( f bes, d)
 ees4\p\staccato g4.\sf g8\staccato f\staccato ees\staccato
 ees8( aes) aes4.\sf aes8\staccato g\staccato f\staccato bes2_\markup { \italic "cresc." }( a4 aes)
 g,8\p\staccato g4\sf g8 ~ g8 g\staccato f\staccato ees\staccato
 aes,8\staccato aes4\sf aes8 ~ aes8 aes\staccato g\staccato f\staccato
 bes,8\staccato bes4\sf bes8 ~ bes8 bes\staccato aes\staccato g\staccato
 aes8\staccato aes\staccato aes\staccato g\sf\staccato aes\staccato aes\staccato aes\staccato g\sf\staccato
 aes2_\markup { \italic "cresc." }( ges f ees) d4 r r2
 aes4( f d aes,) g,4 r r2 bes8\f bes, bes, bes, bes, bes, bes, bes, ees4\staccato r bes\pp\staccato g\staccato
 ees4\staccato e\staccato f\staccato g\staccato aes\staccato r ces\staccato r
 bes,4\staccato r4\f bes,\staccato bes,\staccato ees\staccato r bes\pp\staccato g\staccato
 ees4\staccato e\staccato f\staccato g\staccato aes\staccato r c!\staccato r }
 \alternative { { b,4\staccato r4\f g,\staccato g,\staccato } { cis4\staccato r\f d\staccato d\staccato } }

 g,8\fp g g g g g g g g g g g g g f f ees ees c c g g g, g, aes, aes aes aes aes aes g g fis fis fis fis fis fis ees ees
 d d' d' d' d' d' ees' ees' cis' cis' ees' ees' d' d' d d
 g\staccato bes\staccato bes( fis) g\staccato d'\staccato bes\staccato g\staccato
 d_\markup { \italic "cresc." } c' c' c' c' c' bes bes r a a a a a g g r c c c ees ees c c d, d d d d, d d d
 g,2\sf ~ g,8[ g,( bes, a,)] a,2\sf( g,4) r a,2 ~ a,8[ a,( c bes,)] bes,2\sf( a,4) r
 bes,4 r r8 bes,( d c) c4( bes,4.) bes,8( aes g) g4_\markup { \italic "cresc." }( f) r2
 g,2\sf ~ g,8\staccato[ aes,( g, f,)] ees,4 r r2
 g,2.\sf aes,8.( g,16) g,4\staccato r r2 g,2.\sf aes,8.( g,16) g,4\staccato r r2 R1
 r2 r8 e8_\markup { \italic "cresc." }( g f e\staccato) g( bes aes g\staccato) c c c
 des8\p des des des des des des des des_\markup { \italic "cresc." } des des des des des des des
 c4\ff\staccato f,\staccato c\staccato r f,\staccato c\staccato f,\staccato r
 <c, c>4\staccato r f,\staccato r <c, c>\staccato \clef treble c''2_\markup { \italic "decresc." } c''4
 c''8\p( a'') a''2( g''4) \grace { fis''16[ g'' a''] } g''2( f''!4) c''4 c''8( bes'') bes''2( a''4) a''2( g''4) c''
 c''8( c''') c'''2 bes''4 ~ bes''4 a''2 g''4 ~ g''8( f'') e''\staccato d''\staccato d''( c'') c''( b')
 c''4 \clef bass bes,4_\markup { \italic "cresc." }( g, e,) f,2\p( c,)
 f,8\staccato c( b, c des c aes, f,) e,2( f,) \new Voice { \stemUp c,8\staccato([ \stemDown c' des' bes] g[ e c bes,]) }
 aes,!2_\markup { \italic "cresc." } e f c des a, bes, aes,!
 g,4\staccato b,\staccato d!\staccato g\staccato g,4 r r2 g,4\staccato c\staccato ees\staccato g\staccato g, r r2
 g,8 r b, r d r g r aes_\markup { \italic "cresc." } r b r d' r ees' r f' r d' r b r aes r g r f r ees r d r

 c,8\fp c c c c c c c c\sf c c c c c c c c, c c c c c c c c\sf c c c c c c c
 c,8 c c c c c c c c, c c c c c c c f f aes aes fis fis g g
 ees ees ees( b,) c\staccato g\staccato ees\staccato c\staccato g, f f f f f ees ees
 r8 b, b, b, b, b, c c f,_\markup { \italic "cresc." } f f f aes aes f f fis fis aes aes g g g, g,
 c4\f\staccato r g,\staccato r c\staccato g,\staccato c\staccato r g,\staccato c\staccato g,\staccato r
 c4\staccato_\markup { \italic "sempre piu f." } g,\staccato c\staccato r
 aes,\staccato des\staccato aes,\staccato r des\staccato aes,\staccato des\staccato r
 bes,\staccato ees\staccato bes,\staccato r ges,\ff\staccato r g,\staccato r aes,\staccato r aes,\staccato r
 g,4\staccato r r2
 c4\p r g, r c r r2 b,4 r c r g, r r2 R1 r2 e,4 r a, r d r g,_\markup { \italic "cresc." }( f d b,)
 c8( g) g2( f4) f2( e8) g( e c) b,8( b) b4( c' fis) g,8 g g g fis( g f g) e2( d c b,) a, d,
 g,8\p g g g g4 r r8 g g g g4 r r4 g_\markup { \italic "cresc." } r g r g,\f\staccato r2
 c4\p\staccato e4.\f\staccato e8\staccato d\staccato c\staccato
 b,4( d g, b,) c\p\staccato e4.\sf e8\staccato d\staccato c\staccato
 b,4( d g, b,) c\staccato e4.\sf e8\staccato d\staccato c\staccato
 c8( f) f4.\sf f8\staccato e\staccato d\staccato g2( fis4 f)
 e8\p e4\sf e8 ~ e8 e\staccato d\staccato c\staccato f,8\staccato f4\sf f8 ~ f8 f\staccato e\staccato d\staccato
 g,8\staccato g4\sf g8 ~ g8 g\staccato f\staccato e\staccato f f f e\sf f f f e\sf
 f2_\markup { \italic "cresc." }( ees! d c b,4) r4 r2 f4( d b, f,) e,4 r r2
 g8\f g, g, g, g, g, g, g, c4 r g\pp\staccato e\staccato c\staccato cis\staccato d\staccato e\staccato
 f\staccato r aes,!\staccato r g,\staccato r g,\f\staccato g,\staccato
 c\staccato r g\staccato ees!\pp\staccato c\staccato cis\staccato d\staccato ees\staccato
 f\staccato r g,\staccato r aes,\staccato r\f aes,\staccato aes,\staccato
 aes,2.\ff a,4\sf bes,2. bes,4\sf ces4( c\sf des d\sf) ees( e\sf f fis\sf) g4 r aes r f! r g r
 c8\p\staccato g\staccato f\staccato g\staccato ees!\staccato g\staccato b,\staccato g\staccato
 c8 g f g ees! g b, g c c bes,! c aes, c e, c f, f f, f g, g g, g c8\f c bes,! c aes, c e, c f, f f, f g, g g, g
 c8\ff c' c' c' c' c' c'\sf c' c' c' c'\sf c' c' c' c'\sf c' c' c c c c c c\sf c c c, c, c, c, c,( ees,\sf d,)
 c,4\ff r <c, c> r <c, c>2.^\fermata \bar "|."
}