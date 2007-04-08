\version "2.6.0"

 viola = {
 \set Staff.instrument = "Viola"
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key a \minor
 \time 2/4
 R2 R2 e4\p^\markup { \large \italic "ten." } e8\staccato e\staccato e4\staccato( e\staccato)
 e4 e8\staccato e\staccato e4\staccato( e\staccato)
 e4 e8\staccato <d fis>\staccato <e g>4\staccato( <e g>\staccato)
 <d g>4 <c g>8\staccato( <d g>\staccato) <e g>4 r
 g4 g8\staccato a\staccato b4\staccato( b\staccato)
 fis4 fis8\staccato gis\staccato a4\staccato( a\staccato)
 e4 e8\staccato e\staccato e4\staccato( e\staccato)
 e4 <e fis>8\staccato( <e gis>\staccato) <e a>4 r
 g4\pp g8\staccato a\staccato b4\staccato( b\staccato)
 fis4 fis8\staccato gis\staccato a4\staccato( a\staccato)
 e4 e8\staccato e\staccato e4\staccato( e\staccato)
 e4 <e fis>8\staccato( <e gis>\staccato) <e a>4 r
 c'2\p( b) \grace { b16[ c'] } d'4.( c'16 b) b8( c') c'4
 c'4. c'16( d') dis'8[( e') e'\staccato e'\staccato] \grace { d'!16[ e'] } f'4.( e'16 d') d'8( e') e'4
 e'2( dis'2) d'!8( b16 cis' d'8 e'16 d') d'8( cis') c'4
 c'2( b4 c') \grace { b16[ c'] } d'4.( c'16 b) a8\staccato a16( b c'8\staccato) c'16( d'
 e'2\pp)( dis'2) d'!8( b16 cis' d'8 e'16 d') d'8( cis') c'4
 c'2( b4 c') \grace { b16[ c'] } d'4.( c'16 b) a4 r
 r8 a_\markup { \large \italic "cresc. poco a poco" }([ c' e]) r gis([ b e]) r8 gis([ b e]) r a([ c' e])
 r8 a([ c' c]) r g!([ c' c]) r b([ d' g]) r g([ c' c])
 r8 c'([ e' e]) r fis'([ b' b]) r b([ d' d]) r e'([ a' a])
 r8 a([ e' e]) r b([ e' e]) r b([ e' e]) r c'([ e' a])
 r8 c'\f([ e' e]) r fis'([ b' b]) r b_\markup { \large \italic "piu f." }([ d' d]) r e'([ a' a])
 r8 a([ e' e]) r b([ e' e]) r b([ e' e]) r c'([ e' a])
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \override TupletBracket #'transparent = ##t
 \times 2/3 { r8\ff a[ c'] } e4 \times 2/3 { r8 gis[ b] } e4
 \times 2/3 { r8 gis[ b] } e4 \times 2/3 { r8 a[ c'] } e4
 \times 2/3 { r8 a[ c'] } c4 \times 2/3 { r8 g![ c'] } <c g>4
 \times 2/3 { r8 b[ d'] } g4 \times 2/3 { r8 g[ c'] } c4
 \times 2/3 { r8 g[ c'] } c4 \times 2/3 { r8 b[ b'] } b4
 \times 2/3 { r8 b[ d'] } d4 \times 2/3 { r8 a[ a'] } a4
 \times 2/3 { r8 a[ c'] } e4 \times 2/3 { r8 gis[ b] } <e a>4
 \times 2/3 { r8 gis[ b] } e4 \times 2/3 { r8 a[ a'] a[ a b] }
 \times 2/3 { c'8_\markup { \large \italic "dimin." }[ g! c'] } c4 \times 2/3 { r8 b[ b'] } b4
 \times 2/3 { r8 b[ d'] } d4 \times 2/3 { r8 a[ a'] } a4
 \times 2/3 { r8_\markup { \large \italic "sempre dimin." } a[ c'] } e4 \times 2/3 { r8 gis[ b] } <e a>4
 \times 2/3 { r8 gis[ e'] e[ e e'] } b4\p r4 R2 R2 R2

 \key a \major
 <cis e>\p ~ <cis e> <d fis>2 ~
 <d fis>4\<( <cis e>8 cis') <b d'>4 <a cis'>8 <cis e>
 <d fis>4 e fis\! gis\> gis4( e8) e8\!
 e4( cis\<) ~ cis2 ~ cis4( d ~ d e\!) fis8\>([ gis a e]) e([ gis a fis\!])
 e4( e')( fis'2) e'2( fis') e'( fis')( e'4) e4
 e2_\markup { \large \italic "cresc." } ~ e2 ~ e2 ~ e2
 e4_\markup { \large \italic "dimin." }( g fis8)[ fis( d fis]) cis\p([ e) e( d]
 cis_\markup { \large \italic "cresc." }) a( \times 2/3 { b8[ bis cis']) }
 e2 ~ e2 ~ e2 ~ e2 e4_\markup { \large \italic "dimin." }( g a8)[ a( f a]) e\p([ g) g( f)] e4( c'

 \key a \minor
 d'2 c') d'( c')( d'_\markup { \large \italic "cresc." }) R2 r4
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 r b8\f\staccato a\staccato[ g\staccato f\staccato]
 e\staccato[ d\staccato c'\staccato] b\staccato[ a\staccato g\staccato]
 f\staccato[ e\staccato d\staccato] } c8 r e8\ff\staccato e\staccato R2
 R2 r16\p b16\staccato gis\staccato b\staccato e'\staccato b\staccato gis\staccato b\staccato e8 r r4
 r16_\markup { \large \italic "sempre stacc." } c' a c' e' c' a c' e8 r r4
 r16 e' c' e' g'! e' c' e' g8 r r4 r16 e' c' e' g' e' c' e' g8 r r4
 r16 fis'_\markup { \large \italic "sempre p." } dis' fis' b' fis' dis' fis' a8 r r4 r16 cis' a cis' e' c' a c' e8 r r4
 r16 b gis b e' c' a c' e8 r r4 r16 c' a c' e' c' a c' e8 r r4
 r16 fis' dis' fis' b' fis' dis' fis' a8 r r4 r16 cis' a cis' e' c' a c' e8 r r4
 r16 b gis b e' c' a c' e8 r r4 r16 e' cis' e' g'! e' cis' e' g8 r r4
 r16 f! d f a f d d' gis8 r r4 r16 e' cis' e' g'! e' cis' e'
 g8_\markup { \large \italic "cresc." } r r4
 r16 f d f a f d d' gis8 r r4
 r16 e'_\markup { \large \italic "dimin." } cis' e' g'! e' cis' g gis8 r r4 R2 R2
 R2 R2 R2 R2 R2 R2 c'16\pp d' e' d' c' d' c' b a b c' d' e' fis' gis' a'
 gis'16 e' fis' gis' a' b' a' g' fis' fis' g' a' b' b cis' dis'
 e'4_\markup { \large \italic "sempre pp" } e'8\staccato fis'\staccato g'4\staccato( g'\staccato)
 fis'4 fis'8\staccato( gis'\staccato) a'\staccato[ f'!\staccato e'\staccato d'\staccato]
 dis'16 dis' e' f' a a b c' d'8\staccato[ c'!\staccato bes\staccato a\staccato]
 b!16 b c' d' g g a b c'4 r r r8 e'8 ~ e'8 d'4 d'8 ~ d'8 c'4 c''8
 bes16 c' d' c' bes d' c' bes a bes c' d' e' f' g' a' b!4 b8\staccato cis'\staccato
 d'4\staccato( d'\staccato) <b d'>16_\markup { \large \italic "cresc." }
 <b d'>16 <b d'> <b d'> <b d'> <b d'> <b d'> <b d'>
 <b d'>16 <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'>
 <b d'>16 <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'>16 b b b b b e' d'
 <e c'>4\ff <e c'>8\staccato <e c'>\staccato <e c'>4\staccato( <e c'>\staccato)
 <e c'>4 <e c'>8\staccato <e c'>\staccato <e c'>4\staccato( <e c'>\staccato)
 <e c'>4 <e c'>8\staccato <e c'>\staccato <e d'>4\staccato( <e c'>\staccato)
 <e b>4^\markup { \large \italic "ten." } <e a>8\staccato <e b>\staccato <e c'>4 r4 R2 R2 R2
 \bar "||"

 \key a \major
 <cis e>\p ~ <cis e>
 <d fis>2\< ~ <d fis>4( <cis e>8 cis') <b d'>4( <a cis'>8 <cis e>\!)
 <d fis>4\>( e fis gis) gis4\!( e8) e8 e4\<( cis) ~ cis2 ~ cis4( d ~ d e\!)
 fis4\>( e fis gis) e2( fis4_\markup { \large \italic "dimin." }\! gis) e2( fis4 gis)
 e2\pp^\markup { \large \italic "arco" } a g f g8\ff r <g g'> r
 \bar "||"

 \key a \minor
 <c c'>4 r4 b4\p^\markup { \large \italic "ten." } b8\staccato b\staccato a8 r r4
 g8\ff r <g g'> r
 <c c'>4 r4 b4\p^\markup { \large \italic "ten." } b8\staccato b\staccato R2
 r4 a4\p^\markup { \large \italic "pizz." } r e r e r a r a r g g g8 g g4 r r c'
 r4 b r e' r a r e e e e e8 e e4 r R2 R2 e4 e8 e e4 fis8 gis a4 r
 a4\f^\markup { \large \italic "arco" } r R2 R2
 \bar "|."

}