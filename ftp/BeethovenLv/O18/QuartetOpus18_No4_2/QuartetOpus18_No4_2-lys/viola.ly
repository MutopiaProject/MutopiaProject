\version "2.7.40"

 viola = {
 \set Staff.instrument = "Viola"
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key c \major
 \time 3/8
 \repeat volta 2 {
 R4. R4. R4. R4. R4. d'8\pp\staccato d'\staccato d'\staccato g'\staccato g'\staccato g'16\staccato[ f'\staccato]
 e'16\staccato d'\staccato c'\staccato b\staccato a\staccato g\staccato
 fis8\staccato a\staccato d'\sf ~ d' b\staccato f'!\sf ~
 f'16 e'\staccato d'\staccato c'\staccato d'\staccato e'\staccato
 f'\staccato a'\staccato b'\staccato a\staccato a\staccato a\staccato
 d'\staccato_\markup { \italic "cresc." } c'\staccato b\staccato a\staccato g\staccato f\staccato
 e8 e'4\sf ~ e'16 d'\staccato cis'\staccato b\staccato a\staccato g\staccato f8\staccato f'4\sf
 g'16\staccato f'\staccato e'\staccato d'\staccato c'!\staccato bes\staccato
 a8\staccato a'8\sf( g'16 f') f'( e') e'( d') d'( c') b8\p\staccato b\sf([ d'])
 g8\staccato c'\sf([ e']) g\staccato d'\sf([ f']) g\staccato c'\sf([ e']) g\staccato b\sf([ d'])
 g8\staccato c'\sf([ e']) g\staccato d'\sf([ f']) g\staccato c'\sf([ e'])
 g8 r16 d'\staccato g\staccato c'\staccato b8 r16 d'\staccato g\staccato c'\staccato
 b16\staccato_\markup { \italic "cresc." } d'\staccato g\staccato c'\staccato b\staccato d'\staccato
 g\staccato c'\staccato b\staccato d'\staccato g\staccato c'\staccato b8\f\staccato <g g'>\staccato r R4.
 e8\f\staccato e\staccato e\staccato c'\staccato c'\staccato c'16([ b])
 a8\staccato a8.( b32 c') d'8 r a'8\sf( g' fis' g') d'8 r a'\sf( g' fis' g' d'\staccato) a'\staccato a'\staccato
 a'8\staccato r r R4. R4. R4. R4. R4. R4. R4. R4.
 b'16\pp\staccato ais'\staccato b'\staccato c''\staccato b'\staccato a'\staccato
 gis'8\staccato gis'\staccato gis'\staccato
 a'16\staccato gis'\staccato a'\staccato b'\staccato a'\staccato g'\staccato fis'8\staccato fis'\staccato fis'\staccato
 g'16\staccato fis'\staccato g'\staccato a'\staccato g'\staccato f'\staccato
 e'\staccato dis'\staccato e'\staccato fis'\staccato e'\staccato d'\staccato
 c'\staccato b\staccato a\staccato g\staccato fis\staccato e\staccato
 d8\staccato e4\sf fis8\staccato g4\sf c'16.([ a32]) d'8\staccato([ d\staccato])
 g16\staccato g'\staccato_\markup { \italic "cresc." } g'\staccato g'\staccato g'\staccato fis'\staccato
 d16\staccato d'\staccato d'\staccato d'\staccato d'\staccato dis'\staccato
 e'\staccato b\staccato c'\staccato g\staccato fis'\staccato g'\staccato
 c'8\staccato g4\sf g8\staccato g4\sf g16.([ e'32]) d'8\staccato[ c'\staccato] b8 r r R4.
 r8 g16\p\staccato a\staccato b\staccato c'\staccato
 d'\staccato e'\staccato fis'\staccato g'\staccato a'\staccato fis'\staccato g'4 r8 d8 d d
 d4. c'8 c' c' b8 r16 d''\p\staccato[ c''\staccato b'\staccato]
 a'16\staccato g'\staccato fis'\staccato e'\staccato d'\staccato c'\staccato b8 r16 g'\staccato[ a'\staccato a'\staccato]
 g'8 r16 g'\staccato[ a'\staccato a'\staccato] g'16_\markup { \italic "cresc." } g' a' a' g' g' a' a' g' g' a' a'
 g'8 r b'\pp b'8 r r }
 g8\p g g c'8[ c'] c'16\sf([ bes]) aes8[ aes] aes16\sf([ g])
 \new Voice { \stemUp f8[ \stemDown f'] } f'16\sf([ ees']) d'8[ d'] d'16\sf([ ees']) d'8[ d'] d'16\sf([ ees']) d'8 r r
 r8 r bes16\pp( a!) bes8[ bes] bes16([ a]) bes8[ bes] bes16([ a]) bes8 r r R4.
 R4. R4. R4. g8\f g g c'16\staccato g'\staccato f'\staccato ees'\staccato d'\staccato c'\staccato
 b!\staccato aes\staccato g\staccato f\staccato ees\staccato d\staccato ees8\staccato c\staccato r R4.
 r8 c'\sf r r des'\sf r r ees'\sf r r des'\sf r r_\markup { \italic "decresc." } des' r r des' r r des' r r des' r R4. R4. R4.
 bes8\pp\staccato( bes\staccato bes\staccato) a\staccato( a\staccato a\staccato)
 a8 a a b! b b b b b a a a a a a b r r r fis' fis' gis' r r r a' a' gis' r r
 r8 <e c'>\sf <e c'> <e b> r r r <e c'>\sf <e c'> <e b>8 <e c'>4\sf
 <e b>8 <e c'>4\sf <e b>8 r r R4. r8 b8\pp\staccato( b\staccato) b4. ~ b4. ~ b4. ~ b8 b\staccato( b\staccato)
 b4. ~ b4. ~ b4. ~ b8 b\staccato( b\staccato) b4 r8 R4. R4. R4. R4.
 r8 g'16.\staccato\pp[ g'32\staccato g'16.\staccato g'32\staccato] c'8
 << { s4 s8 s8 \override NoteHead #'font-size = #-2 a16([ b]) } \\ { f'4\sf ~ f'8 b b } >> c'8 r r
 d'8\staccato d'\staccato d'\staccato g'\staccato[ g'\staccato] g'16\staccato f'!\staccato
 e'16\staccato d'\staccato c'\staccato b\staccato a\staccato g\staccato fis8\staccato a\staccato d'\sf\staccato ~
 d'8[ b] b'16\staccato b'\staccato c''\staccato g'\staccato e'\staccato c'\staccato d'\staccato e'\staccato
 f'16\staccato e'\staccato f'\staccato g'\staccato a'8\sf ~ a'16 d'\staccato g'\staccato f'\staccato e'\staccato d'\staccato
 e'16\staccato a\staccato d'\staccato c'\staccato b\staccato a\staccato d'8 r r
 r8 e'16\staccato d'\staccato c'\staccato b\staccato a8 d8[ d] g8 r b
 \new Voice { \stemDown g'8 \stemUp c\staccato c\staccato } f8\staccato r a\sf ~
 a16_\markup { \italic "cresc." } a a a a a a a a a a a
 g8\p\staccato b\sf([ d']) g8\staccato c'\sf([ e']) g8\staccato d'\sf([ f']) g8\staccato c'\sf([ e'])
 g8\staccato b\sf([ d']) g8\staccato c'\sf([ e']) g8\staccato d'\sf([ f']) g8\staccato c'\sf([ e'])
 g8 r16 d'16\staccato[ g\staccato c'\staccato] b8 r16 d'16\staccato[ g\staccato c'\staccato]
 b16_\markup { \italic "cresc." } d' g c' b d' g c' b d' g c' g'8\f\staccato g\staccato r R4. c8\f c c
 a'8[ a'] a'16( g') f'8 f'16( e' d' c') b8 r d'\sf( c' b c' f') r d'\sf( c' b c' f') d'\staccato d'\staccato
 b'8\staccato r r R4. R4. R4. R4. R4. R4. R4. R4.
 e'16\pp\staccato dis'\staccato e'\staccato f'\staccato e'\staccato d'\staccato
 cis'8\staccato cis'\staccato cis'\staccato
 d'16\staccato cis'\staccato d'\staccato e'\staccato d'\staccato c'\staccato
 b8\staccato b\staccato b\staccato
 c'16\staccato b'\staccato c''\staccato d''\staccato c''\staccato b'\staccato
 a'\staccato gis'\staccato a'\staccato b'\staccato a'\staccato g'\staccato
 f'\staccato e'\staccato d'\staccato c'\staccato b\staccato a\staccato g8\staccato a4\sf b8\staccato c'4\sf
 f'16.([ d'32]) g'8\staccato( g\staccato)
 c'16_\markup { \italic "cresc." }\staccato c''\staccato c''\staccato c''\staccato c''\staccato c''\staccato
 g\staccato g'\staccato g'\staccato g'\staccato g'\staccato gis'\staccato
 a'\staccato e'\staccato f'\staccato c'\staccato b\staccato c'\staccato
 g8\staccato c4\sf c'8\staccato c'4\sf c'16.([ a'32]) g'8\staccato f'\staccato e'8\p r r R4.
 r8 c16\p\staccato d\staccato e\staccato f\staccato
 g\staccato a\staccato b\staccato c'\staccato d'\staccato b\staccato c'8 r r r8 b b c'4.
 <g f'>8 <g f'> <g f'> <g e'>8 r16 g'\staccato f'\staccato e'\staccato
 d'16\staccato c'\staccato b\staccato a\staccato g\staccato f\staccato e8 r16 e'' d'' c''
 b' a' gis' fis' e' d' c'_\markup { \italic "cresc." } c'' bes' a' g'! f'! e' d' c' bes a g
 f8\ff f f fis fis fis g\staccato g\pp\staccato g\staccato c'4.\sf
 b8\staccato_\markup { \italic "cresc." } b\staccato b\staccato ees'4.\sf d'8 r r
 R4. R4. g'8\pp\staccato( g'\staccato g'\staccato) g'_\markup { \italic "cresc." } g' g' a' a' a' d'' d' d' c' e' e'
 d'8_\markup { \italic "decresc." } d' d' f' f' f' e'8 c'\pp([ e']) r b( d') r a( c') r a( d') d'8 b b c' c' c'
 b8 b b c' c' c' b b b c'8 r16 c'\staccato b\staccato b\staccato c'8 r16 c'\staccato b\staccato b\staccato
 c'8 r16 e'\staccato f'\staccato f'\staccato e'8 r16 e'\staccato f'\staccato f'\staccato
 e'16\staccato_\markup { \italic "cresc." } g'\staccato d'\staccato f'\staccato e'\staccato g'\staccato
 d'\staccato f'\staccato e'\staccato g'\staccato d'\staccato f'\staccato e'8 r e'\p e'8 r r
 \bar "|."
}