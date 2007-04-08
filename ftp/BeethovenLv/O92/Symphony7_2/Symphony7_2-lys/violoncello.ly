\version "2.6.0"

 violoncello = {
 \set Staff.instrument = "Violoncello I"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key a \minor
 \time 2/4
 R2 R2 c4\p^\markup { \large \italic "ten." } c8\staccato c\staccato b,4\staccato( b,\staccato)
 b,4 b,8\staccato b,\staccato c4\staccato( c\staccato)
 c4 c8\staccato c\staccato c4\staccato( c\staccato)
 b,4 a,8\staccato( b,\staccato) c4 r
 e4 e8\staccato e\staccato dis4\staccato( dis\staccato)
 d!4 d8\staccato d\staccato cis4\staccato( c\staccato)
 c4 c8\staccato c\staccato b,4\staccato( c\staccato)
 b,4 b,8\staccato( b,\staccato) c4 r
 e4\pp e8\staccato e\staccato dis4\staccato( dis\staccato)
 d!4 d8\staccato d\staccato cis4\staccato( c\staccato)
 c4 c8\staccato c\staccato b,4\staccato( c\staccato)
 b,4 b,8\staccato( b,\staccato) c4 r
 c'2\p( b) \grace { b16[ c'] } d'4.( c'16 b) b8( c') c'4
 c'4. c'16( d') dis'8[( e') e'\staccato e'\staccato] \grace { d'!16[ e'] } f'4.( e'16 d') d'8( e') e'4
 e'2( dis'2) d'!8( b16 cis' d'8 e'16 d') d'8( cis') c'4
 c'2( b4 c') \grace { b16[ c'] } d'4.( c'16 b) a8\staccato a16( b c'8\staccato) c'16( d'
 e'2\pp)( dis'2) d'!8( b16 cis' d'8 e'16 d') d'8( cis') c'4
 c'2( b4 c') \grace { b16[ c'] } d'4.( c'16 b) a4 r
 r8 a_\markup { \large \italic "cresc. poco a poco" }([ c' e]) r gis([ b e]) r8 gis([ b e]) r a([ c' e])
 r8 a([ c' c]) r g!([ c' c]) r b([ d' g]) r g([ c' c])
 r8 c'([ e' e]) r fis([ b b,]) r b([ d' d]) r e([ a a,])
 r8 a([ e' e]) r b([ e' e]) r b([ e' e]) r c'([ e' a])
 r8 c'\f([ e' e]) r fis([ b b,]) r b_\markup { \large \italic "piu f." }([ d' d]) r e([ a a,])
 r8 a([ e' e]) r b([ e' e]) r b([ e' e]) r c'([ e' a])
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \override TupletBracket #'transparent = ##t
 \times 2/3 { a,8\ff[ a c'] } a,4 \times 2/3 { gis,8[ gis b] } gis,4
 \times 2/3 { e,8[ gis b] } e,4 \times 2/3 { a,8[ a c'] } a,4
 \times 2/3 { a,8[ a c'] } a,4 \times 2/3 { g,!8[ g c'] } g,4
 \times 2/3 { g,8[ b d'] } g,4 \times 2/3 { c,8[ g c'] } c,4
 \times 2/3 { c,8[ g c'] } a,4 \times 2/3 { b,8[ b, b] } b,4
 \times 2/3 { b,8[ b d'] } b,4 \times 2/3 { a,8[ a, a] } a,4
 \times 2/3 { a,8[ a c'] } a,4 \times 2/3 { gis,8[ gis b] } gis,4
 \times 2/3 { e,8[ gis b] } e,4 \times 2/3 { a,8[ a, a] a,[ a, b,] }
 \times 2/3 { c8_\markup { \large \italic "dimin." }[ g! c'] } c,4 \times 2/3 { b,8[ b, b] } b,4
 \times 2/3 { b,8[ b d'] } b,4 \times 2/3 { a,8[ a, a] } a,4
 \times 2/3 { a,8_\markup { \large \italic "sempre dimin." }[ a c'] }
 a,4 \times 2/3 { gis,8[ gis b] } gis,4 \times 2/3 { e,8[ gis e'] e[ e e] } a,4\p r4 R2 R2
 e,4^\markup { \large \italic "pizz." } fis,8 gis,8
 \bar "||"

 \key a \major
 a,4 a8 a a,4 a8 a a,4 a8 a a,4\< a8 a a,4 a8 a a,4 a8 a a,4\! a8\> a a,4 a8 a\!
 a,4 a8\< a a,4 a8 a a,4 a8 a a,4 a8 a\! fis,8\>[ gis, a, a,] b,4 b8 b\!
 e4 e'8 e' e4 e'8 e' e4 e'8 e' e4 e'8 e' e4 e'8 e' e4 e'8 e' e4 e'8 e'
 cis4_\markup { \large \italic "cresc." } cis'8 cis' d4 d'8 d' cis4 cis'8 cis' d4 d'8 d'
 cis4_\markup { \large \italic "dimin." } cis'8 cis' d4 d'8 d' e4\p e'8 e'
 a,4_\markup { \large \italic "cresc." } a8 a cis4 cis'8 cis' d4 d'8 d'
 cis4 cis'8 cis' d4 d'8 d' cis4_\markup { \large \italic "dimin." } c8 c f,4 f8 f g,4\p g8 g c4 c'8 c'
 \bar "||"

 \key a \minor
 c4 c'8 c' c4 c'8 c' c4 c'8 c' c4 c'8 c' c4_\markup { \large \italic "cresc." } c'8 c' R2 R2 r4
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 r c'8\f\staccato^\markup { \large \italic "arco" } b\staccato[ a\staccato g\staccato]
 f\staccato[ e\staccato d\staccato] c\staccato[ b,\staccato a,\staccato] }
 gis,8\ff\staccato gis,\staccato R2
 e,4\p^\markup { \large \italic "pizz." } e,8 e, e,4 e, e, e,8 e, e,4 e,
 e,4 e,8 fis,8 g,!4 g, g, g,8 g, g,4 r
 g,4 g,8 a, b,4 b, fis,4 fis,8 gis, a,4 a, e, e,8 e, e,4 e, e, fis,8 gis, a,4 r
 g,!4 g,8 a, b,4 b, fis,4 fis,8 gis, a,4 a, e, e,8 e, e,4 e, e, fis,8 gis, a,4 r
 a,4 a,8 a, a,4 r a,4 a,8 a, a,4 r
 a,8_\markup { \large \italic "cresc." }[ a, a,] r a,[ a, a,] r a,[ a, a,] r
 r4 a,8_\markup { \large \italic "dimin." } a, r4 a,8 a, r4 a,8 a, R2
 R2 R2 R2 R2 R2 R2 a4\pp^\markup { \large \italic "arco" } a8\staccato b\staccato
 c'4\staccato( c'\staccato) b4 b8\staccato cis'\staccato
 d'8\staccato[ c'!\staccato b\staccato a\staccato]
 g16_\markup { \large \italic "sempre pp" } a b a g a g fis e fis g a b cis' dis' e'
 e'16 a b cis' d'! b e' d' c'! b c' d' e' e fis gis
 a8\staccato[ g!\staccato fis\staccato e\staccato]
 fis16 fis g a d d e fis g8[ f! e d] ~ d8 c4 g8 ~ g8 c4 c'8 R2 R2
 d'4 d'8\staccato e'\staccato f'4\staccato( f'\staccato) f16 e g f e g f e
 d16 e f g a b! cis' d' d' d d d d d d d d d d d d d d d d d d d d d d d d d d d d d c b,
 a,4\ff a,8\staccato a,\staccato gis,4\staccato( gis,\staccato)
 e,4 e,8\staccato e,\staccato a,4\staccato( a,\staccato)
 a,4 a,8\staccato a,\staccato gis,4\staccato( a,\staccato)
 e,4^\markup { \large \italic "ten." } e8\staccato e\staccato a,4 r4 R2 R2
 e,4\p^\markup { \large \italic "pizz." } fis,8 gis,
 \bar "||"

 \key a \major
 a,4 a8 a a,4 a8 a a,4\< a8 a a,4 a8 a a,4 a8 a\! a,4\> a8 a a,4 a8 a a,4 a8 a\!
 a,4 a8\< a a,4 a8 a a,4 a8 a a,4 a8 a\! a,4\> a8 a a,4 a8 a a,4 a8 a\!
 a,4_\markup { \large \italic "dimin." } a8 a a,4 a8 a a,4 a8 a
 a2\pp^\markup { \large \italic "arco" }( f e d) g,8\ff r g r
 \bar "||"

 \key a \minor
 c4 r4 e4\p^\markup { \large \italic "ten." } e8\staccato e\staccato a,8 r r4
 g,8\ff r g r
 c4 r4 e4\p^\markup { \large \italic "ten." } e8\staccato e\staccato R2
 r4 a,4\p^\markup { \large \italic "pizz." } r e r e r a r a r g g, g,8 g, g,4 r r c'
 r4 b r e' r a r a gis a e, fis,8 gis, a,4 r R2 R2 e,4 fis,8 gis, a,4 r a, r
 a,4\f^\markup { \large \italic "arco" } r4 R2 R2
 \bar "|."
}