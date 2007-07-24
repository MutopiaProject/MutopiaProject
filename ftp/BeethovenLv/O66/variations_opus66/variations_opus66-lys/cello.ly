\version "2.10.3"

 cello = {
 \set Staff.instrumentName = "Violoncello"
 \set Staff.midiInstrument = "cello"
 \clef tenor
 \key f \major
 \time 2/4
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 78
 \partial 8 r8^\markup { "Allegretto." }^\markup { \large "TEMA." }
 a8\staccato c'\staccato e\staccato c'\staccato f8\staccato a\staccato c'\staccato f'\staccato
 g'8\staccato g'\staccato \acciaccatura g'16 f'16.([ e'32 f'16. g'32]) e'4 r4 g'8 g'8 e' e'
 f'8( g'16 a' bes' a' g' f') \clef bass d'8 bes c' c f4 r8 r16 f'16 e'8( c'16) f'\staccato e'8( c'16) f'\staccato
 e'16 e' e' e' e'8[ r16 f'16] f'16( e') c'\staccato e'\staccato e'( d') b\staccato d'\staccato b4( c'8) r8
 c'8( b16_\markup { \italic "cresc." } bes a8 g16 f) e4.\sf^\fermata c'8\p(~ c'8[ d') c'\staccato c'\staccato]
 c'4 r8 \bar "|."
 \break

 r8^\markup { \large "VAR. I." } R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 r8^\fermata \cadenzaOn s8 s8 s8 s16 r8^\fermata r4 \cadenzaOff \bar "|" R2 r4 r8 \bar "|."
 \break

 \clef treble c'8\f^\markup { \large "VAR. II." } f'4( g'4) a'8.( g'16) f'8\staccato f'\staccato bes'4
 \acciaccatura bes'16 a'16( g' a' bes') g'4 r8 g'16\p( a') bes'4_\markup { \italic "cresc." }( g')
 c''4\f d''16( c'' bes' a') g'8\p\staccato g'\staccato \acciaccatura a'16 g'16( f' g' a') f'4 r8 a'16( c'')
 g'16\p( c'') c''\staccato c''\staccato a'16( c'') c''\staccato c''\staccato
 g'16[ a'32 b'] \acciaccatura d''16 c''32[ b' c'' d''] e''[ d'' c'' b'] c''[ d'' e'' f'']
 g''16( e'') g''( e'') g''( f'') d''\staccato b'\staccato d''8.[( e''32 d'') c''8\staccato] c''8(
 bes'8._\markup { \italic "cresc." }) d''32( c'') bes'16\staccato[ d''32( c'')] bes'16\staccato[ d''32( c'')]
 bes'4.\sf^\fermata bes'8\p bes'16( a') g'\staccato f'\staccato \acciaccatura a'16 g'16( f') g'\staccato a'\staccato
 f'4 r8 \bar "|."
 \break

 \clef bass r8^\markup { \large "VAR. III." } c'2\p~ c'2~ c'8[ d'\f( bes g] c'8\staccato) r8 r4
 c'2\p_\markup { \italic "    cresc." }~ c'4. \clef tenor f'8\<~ f'8 g'\!( a'8\>[ bes'16. g'32\!]) f'8 r8 r4
 \clef bass c'2\p~ c'4~ c'16[ c'\staccato a\staccato fis\staccato] g4\f~ g16[ g,\staccato a,\staccato b,!\staccato]
 c8 r8 r4 c'2\p\<~ c'4.^\fermata\! r8 r4 c4\sf( f,8) r8 r8 \bar "|."
 \break

 c8\p_\markup { \italic "    dolce" }^\markup { \large "VAR. IV." } \set doubleSlurs = ##t <a, f>4( <c g>)
 \set doubleSlurs = ##f <f a>8.( <c g>16) <a, f>8\staccato r8 R2
 r4 r8 \clef treble c'8 bes'4 g'8\<([ a'16 bes'\!]) c''4\>( f''8\!\staccato) r8 R2 r4 r8 r16 a'16
 g'8.\<( fis'16\!) g'16\>( fis' g' a'\!) g'4( c''8\staccato) r8 R2 r4 r8 r16 a'16 g'8.\<( fis'16\!) g'16\>( fis' g' a'\!)
 bes'4.\sf^\fermata r8 R2 r4 r8 \bar "|."
 \break

 \clef bass r8^\markup { \large "VAR. V." } R2 f16.[( a64 c') f'8\sf](~ f'16[ c') a\staccato f\staccato]
 d'16.\f\staccato[ d'32\staccato c'16.\staccato c'32\staccato] b16.\staccato[ b32\staccato d'16.\staccato d'32\staccato]
 c'16.\staccato[ c'32\staccato f16.\staccato f32\staccato] c'8\staccato r8 R2
 c16.[( e64 g) bes8\sf](~ bes16[ g) e\staccato c\staccato]
 c'16.\staccato[ c'32\staccato d'16.\staccato d'32\staccato] c'16.\staccato[ c'32\staccato] c16.\staccato[ c32\staccato]
 f16.\staccato[ c32\staccato f16.\staccato c32\staccato] f8\staccato r8 R2
 c16.[( e64 g) c'8\sf](~ c'32[ b c' b) c'8\sf]~ c'16.[ e'32\staccato d'16.\staccato d'32\staccato]
 e'16.\staccato[ e'32\staccato f'16.\staccato f'32\staccato] e'16.\staccato[ g32\staccato c'16.\staccato g32\staccato] c'8 r8
 R2 c16.[( e64 g)] bes4\sf^\fermata cis'16.\staccato cis'32\staccato d'16.\staccato[ d'32\staccato d'16.\staccato d'32\staccato]
 c'!16.\staccato[ c'32\staccato bes16.\staccato bes32\staccato] a16.\staccato[ c32\staccato f16.\staccato c32\staccato]
 f8 \bar "|."
 \break

 r8^\markup { \large "VAR. VI." } r8 \acciaccatura b8 c'8\p\staccato r8 \acciaccatura b8 c'8\staccato
 r16 c'16\staccato[ a\staccato f\staccato] c\staccato[ a,\staccato f,\staccato] r16
 r8 \acciaccatura b8 c'8\staccato r8 \acciaccatura b8 c'8\staccato
 r16 c,16\staccato[ e,\staccato g,\staccato] c\staccato[ e\staccato g\staccato c'\staccato]
 r8 \acciaccatura b8 c'8\staccato r8 \acciaccatura b8 c'8~ c'16[ a\staccato f\staccato c\staccato]
 a,16\staccato[ f,\staccato d,\staccato d\staccato] bes,8\<[( b, c\staccato\!\>) c,\staccato] f,8\!\staccato r8 r4
 r8 \clef tenor a'8\sf([ g'16\staccato]) r16 a'8\sf([ g'16\staccato]) r16 r
 \clef bass c16\p e16\staccato[ g\staccato c'\staccato e'\staccato] g'4.\<( f'8\!\> e'8\!\staccato) r8 r4
 bes4_\markup { \italic "cresc." }~ bes16[ bes\staccato g\staccato e\staccato]
 c4.\f^\fermata cis8\p\<( d8[ bes,\! c!\>\staccato) c,\!\staccato] f,4 r8 \bar "|."
 \break

 r8^\markup { \large "VAR. VII." }_\markup { \italic "sempre pianissimo" } r8 a8([ c' bes]) a8\staccato r8 r4
 r8 e8([ f a]) c'8\staccato r8 r4 r8 g8([ e c]) a8\staccato r8 r4 r8 c'4( bes8 a8\staccato) r8 r4 r8 c'8\staccato r c'\staccato
 r8 c'8 r fis( g4. a16 b) c'2\<(~ c'8\!\>[ bes! g f!\!])
 \cadenzaOn e4.^\fermata s1 f8( \cadenzaOff \bar "|" d'4\<) e8( bes\!) bes4\<( a8\!) \bar "|."
 \break

 r8^\markup { \large "VAR. VIII." } f16\p\staccato c\staccato f\staccato c\staccato
 e\staccato c\staccato e\staccato c\staccato f\staccato c\staccato f\staccato c\staccato
 f\staccato c\staccato a,\staccato f,\staccato e,\staccato c,\staccato d,\staccato e,\staccato
 f,\staccato g,\staccato a,\staccato b,\staccato c\staccato g\staccato a\staccato b\staccato
 c'\staccato g\staccato e \staccato g\staccato
 c16\staccato_\markup { \italic "cresc." } c'\staccato c'\staccato c'\staccato c'\staccato c'\staccato c'\staccato bes!\staccato
 a\staccato c'\staccato a\staccato c'\staccato a\staccato c'\staccato a\staccato f\staccato
 c\sf\staccato c'\staccato c\staccato c'\staccato c\sf\staccato c'\staccato c\staccato c'\staccato
 f\staccato c\staccato f\staccato c\staccato f\staccato c\staccato f\staccato a\staccato
 c'\staccato c\staccato c'\sf( b) c'\staccato c\staccato c'\sf( b) c'8 r8 r8 f,16\staccato f\staccato
 g,16\sf\staccato g\staccato g,\staccato g\staccato g,\sf\staccato g\staccato g,\staccato g\staccato
 c\staccato g,\staccato c\staccato g,\staccato c8\staccato r8
 c16\sf( bes) g\staccato f\staccato e\sf( g) e\staccato d\staccato c4.\sf^\fermata bes16\p\staccato g\staccato
 a16\staccato_\markup { \italic "cresc." } f\staccato a\staccato f\staccato c'\staccato c\staccato c'\staccato c\staccato
 f16\f\staccato c\staccato a,\staccato c\staccato f,8\staccato \bar "|."
 \break

 r8^\markup { \large "VAR. IX." } R2 r4 r8 c8\p([ a]) a\<([ bes b\!] c'8\staccato\>) r8\! r4
 r4 r8 a8([ bes]) g\sf([ a]) e\sf([ f]) cis\sf([ d]) bes,\sf([ c!]) c,8\staccato[ f,\staccato] r8 R2 r4 r8 a8\sf([
 g]) fis\sf([ g]) a\sf([ g]) g,8\staccato[ c\staccato] c\sf([ e\p]) e\sf([ g]) g\sf([ bes\staccato])
 g\ff\staccato[ e8^\fermata] e'\p([ f']) r8 r e'\pp\staccato([ f'\staccato]) r8 r8 \bar "|."
 \break

 \key f \minor
 r8^\markup { "Adagio." }^\markup { \large "VAR. X." } R2 R2 R2 R2 R2 R2
 R2 r4 r16 aes16\pp([ g f]) c'8.. c'32 c'8.. c'32 c'4 r16 ees'!16([ d' c']) g8.. g32 g8.. g32
 c4 r16 c'16([ b c']) des'!8.. des'32_\markup { \italic "cresc." } bes!8.. bes32 g4.\f^\fermata aes16.\sfp( b,32)
 c4. bes!16.( e32) e4( f8) \bar "|."
 \break

 c8\p_\markup { \italic "    e dolce" }^\markup { \large "Poco Adagio quasi Andante." }^\markup { \large "VAR. XI." }(
 f4 c4 aes, f,) bes,4\<( des c2\!\>) des4\!( bes,4\> b,\!\> d\!) c4( c, f,) r4 R2 r4 fis,4\p\<( g,2\!\>) c,4\! r4
 c8\staccato r8 c\staccato r
 \cadenzaOn c4.\fp^\fermata s2 s32 r8 \cadenzaOff \bar "|"
 d'4\pp\<( c'\!\> f8\!) r8 r4 d4\pp\<( c\!\> f,8\!) r8 r4
 \once \override DynamicLineSpanner #'padding = #2.5
 d4\p\<( b, c2\!\>_\markup { "ca -- -- lan --  -- do" })~ c4.^\fermata\!\pp s8 \bar "||"
 \break

 \clef tenor
 \key f \major
 \time 3/4
 \partial 4 c'4\p_\markup { \italic "    e dolce" }^\markup { \large "Allegro." }^\markup { \large "VAR. XII." }( f'4\staccato)
 f'( g') a'4.( g'8) f'4\staccato bes'4 bes'8.[( c''16) a'8.( bes'16)] g'4 r4 g'8( a' bes'4\staccato) bes'4( g')
 c''4( d''8[ c'') bes'\staccato a'\staccato] a'8([ g']) \acciaccatura a'16 g'8[( f') g'\staccato a'\staccato] f'4 r r
 \clef bass f8\f\staccato[ c'\staccato a\staccato f\staccato e\staccato c\staccato]
 f8_\markup { \italic "sempre staccato" }[ f, f f,] f[ ees] d8[ f e! g f a] c[ c' g e c g,] c,[ c e g bes, g] a,[ f a f d a]
 bes,8[ g bes, g] c[ bes] <f, c a>4 r4 \clef tenor a'8.\p( g'16) g'8\staccato g'4\sf e'8\staccato[ a'\staccato f'\staccato]
 g'8\staccato e'4\sf e'8\staccato[ a'\staccato fis'\staccato] g'8\staccato c''4\sf b'16( a') g'[( f'!) e'( d')]
 d'4( c'8) r8 c'8\staccato_\markup { \italic "cresc." } c'\staccato c'8[( d') e'\staccato f'\staccato g'\staccato a'\staccato]
 bes'2\sf^\fermata r8 a'8\p \acciaccatura a'16 g'8([ f']) f'8\staccato[ f'( g' e')] g'4( f'8) r8 r4
 \clef bass c8 c'\sf\staccato c'8[ c' c' c'] c8 c'\sf\staccato c'[ c' c' c'] c'8 r g r g, r c8 r r4 r4
 r4 g8\staccato_\markup { \italic "cresc." }[ f\staccato e\staccato d\staccato] c2\sf^\fermata d4\p
 bes,4\staccato c\staccato c\staccato f,\staccato r a\p\staccato
 d4\staccato_\markup { \italic "cresc." } f\staccato bes,\staccato d\staccato g,\staccato bes,\staccato
 e,4\staccato c'4\sf~ c'8[ d'16( e')] f'8[( c') d'( bes) g\staccato c'\staccato] f4\staccato r a\p\staccato
 d4\staccato f\staccato_\markup { \italic "cresc." } bes,\staccato
 d4\staccato g,\staccato bes,\staccato e,\staccato g,\staccato cis,\sf\staccato d,\sf\staccato r4 r4 R2.
 R2. R2. R2. \clef tenor d'4\p_\markup { \italic "    e dolce" } d'( e') fis'4.( e'8) d'4
 g'4 g'8.( a'16) fis'8.( g'16) e'4 r4 e'8( fis' g'4\staccato) g'4( e') a'4( b'8[ a' g' fis'])
 fis'8( e') \acciaccatura fis'16 e'8[( e') e'\staccato fis'\staccato] d'4 r4 r4 R2.
 \clef bass c'8\p \setTextCresc c'4\< c'4 c'8~ c'8 c'4 c'4 c'8~ c'8 c'4 c'4 c'8~ c'8 c'4 c'4 c'8~ c'8\!\f c'4 c'4 c'8~
 c'8 f'4 f'4 f'8~ f'8 d'4 d'8[( e') e']( f'8) c'4 c'4 c'8~ c'8 c'4 c'4 c'8~ c'8 f'4 f'4 f'8~ f'8[ d'( e' f') c'( bes)]
 a4\staccato r4 f'\p\staccato f'4\staccato r f'\staccato f'\staccato r f4~ f4 d'4( bes) a8\staccato r8 r4 r4
 r4 r4 c4\f\staccato f8\staccato c'16( bes) a\staccato g\staccato f\staccato e\staccato
 d16\staccato c\staccato bes,\staccato a,\staccato g,16\staccato f,\staccato e,\staccato d,\staccato c,4 c4\f\staccato
 f8\staccato r8 r4 r4 r4 r4 c'4\pp\staccato c'2._\markup { \italic "cresc." }~ c'4. b8([ c' b])
 c'8\pp\staccato[ a\staccato f\staccato c\staccato a,\staccato c\staccato] f,4 r4^\fermata \bar "|."
 }
