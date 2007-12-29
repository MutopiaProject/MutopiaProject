\version "2.10.3"

 violoncello = {
 \set Staff.instrumentName = "Violoncello"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key g \minor
 \time 4/4
 \repeat volta 2 {
 f2\f( fis2 g2.\sf) ees4\staccato c4\staccato a,\staccato f,\staccato ees,\staccato d,4\staccato bes,4\staccato r2
 R1 ees'2.\p\<( c'4\!\> a4\staccato) r4\! r2 d'2.\<( bes4\!\> ees'4\staccato) r4\! r2 R1 R1 R1
 bes1_\markup { \italic "cresc." }(~ bes2 b2) c'1~ c'4 c'4^\trill( \grace { b16[ c'] } f'4 ees')
 ees'4\f( d'4 g' f'8 ees') ees'4\p( d'4~ d'8[ f' ees' c']) bes4 r r f'4( e'2\< f'4.\!\> bes8 a4\!\staccato) r4 r2
 R1 r2 r4 f'4_\markup { \italic "cresc." }( e'2 f'4. b8)
 c'2 \acciaccatura d'16 c'8( b c' d') ees'!4( a) a\staccato a\staccato
 bes!8 d\staccato[ bes,\p\staccato d\staccato] bes,[ d bes, d] bes,[ d bes, d] bes,[ d bes, d]
 c8[ ees c ees] c[ ees c ees] c8[ ees c ees] c[ ees c ees]
 d_\markup { \italic "cresc." }[ f d f] d[ f d f] ees[ g ees g] e[ g e g] f4 r r2
 r4 a8\sfp( f bes[ f d' bes] a4\staccato) r4 r2 r4 a8\sfp( f bes[ f d' bes] a4\staccato) r4 <f, c a f'>\ff\staccato r
 <f, c a f'>4\staccato r4 r2 R1 R1 R1 d'2.\<( c'8\!\> a) g4\! r4 r2 R1 R1 R1
 a8\p\staccato[ f\staccato a\staccato c'\staccato] bes\staccato[ g\staccato c'\staccato bes\staccato]
 a[( bes) c'\staccato bes\staccato] a\staccato[ c'\staccato bes\staccato a\staccato]
 g\staccato[ c'\staccato f\staccato c'\staccato] e\staccato[ c'\staccato d\staccato b\staccato]
 c8\<[( e) g\staccato c'\!\staccato] c'\>\staccato[ c'\staccato c'\staccato c'\!\staccato]
 bes!8\staccato g\staccato_\markup { \italic "cresc." } bes\staccato d'\staccato]
 c'\staccato[ a\staccato d'\staccato c'\staccato] bes\staccato[ c'\staccato bes\staccato a\staccato]
 g\staccato[ f\staccato e\staccato d\staccato] c\staccato[ d\staccato bes,\staccato c\staccato]
 a,\staccato[ f\staccato bes,\staccato f\staccato] c\p\staccato[ f\staccato a\staccato c'\staccato]
 c\staccato[ g\staccato bes\staccato c'\staccato] a4 r4 r2 R1 c'1\p~
 c'4 r4 r2 R1 R1 R1 << { a2( bes2)( <f, c a>4) } \\ { c1\p s4 } >> r4 r2
 r4 g4\sf\staccato cis'\staccato d'\staccato r4 a4\sf\staccato dis'\staccato e'\staccato
 r4 d'!\p( c' bes! a\staccato) r4 g4\sf\staccato c'\sf~ c'4 bes4\staccato a\staccato d'\sf~
 d'4 c'\staccato b\staccato e'8\sf( d' c'4\p b a gis) R1
 c'8\pp\staccato[ c'( b) b]( a)[ a( gis) gis\staccato] R1
 c'8\staccato_\markup { \italic "cresc." }[ c'( b) b]( a)[ a( gis) gis]( a8\f)[ a( d') d']( c')[ c'( bes!) bes]( a4) r4 r2
 R1 R1 R1 c'4\staccato f'2\sfp f'16( e' d' c')
 bes16_\markup { \italic "cresc." }( c' d' c' bes a g f e f g f e d c bes,)
 a,8\f\staccato[ c'\staccato bes\staccato a\staccato] g\staccato[ f\staccato e\staccato d\staccato]
 c4\staccato bes,\staccato a,\staccato g,\staccato R1 R1 fis2\ff( g4\staccato) r4
 g4\p\staccato f!\staccato g\staccato e\staccato a4 bes2_\markup { \italic "cresc." } a4~ a4 g2 f4~ f4 r4 r2
 r2 f'4.\sf( b8) c'4\p r4 r2 r2 c'4.\sf( a8) g4\staccato_\markup { \italic "cresc." } bes!8.( e'16)
 g'4\staccato g'\staccato \afterGrace e'1\f \startTrillSpan { d'16[ \stopTrillSpan e'] }
 f'8\staccato[ c'\p\staccato c'\staccato c'\staccato] b[( c') a\staccato f\staccato]
 g8\staccato[ c'\staccato c'\staccato c'\staccato] b[( c') bes\staccato g\staccato]
 a8\staccato[ c'\staccato c'\staccato c'\staccato] b[( c') a\staccato f\staccato]
 g\staccato[ bes!\staccato g\staccato f\staccato] e\staccato[ d\staccato c\staccato bes,\staccato] a,4 r r2
 e2_\markup { \italic "cresc." }( bes) a2( f') e'4( c' bes g) a4 r <f, c a>4\ff r <f, c a f'>4 r r2 }

 R1 R1 R1 des'2.\pp\<( ces'8\!\> aes) ges4\! r4 r2 R1 R1 des'1\p c'!2\<( des'\! ees'\> c'\!)
 aes2_\markup { \italic "cresc." }( a2) bes2.\sfp ges4\staccato
 ees4\staccato c\staccato aes,\staccato ges,\staccato f,4\staccato r4 r2 R1 ges,1\fp aes,1
 des,4\staccato r4 r2 r2 r4 aes4\f\staccato
 aes4\staccato f\staccato d!\staccato ces\staccato bes,4\staccato r4 r2 R1 r2 r4 bes4\f\staccato
 bes4\staccato g!\staccato e\staccato des\staccato c4\staccato r4 r2 R1 r2 r4 c'4\f\staccato
 c'4\staccato a!\staccato fis\staccato ees!\staccato d!\staccato r r fis\staccato g2\ff( bes2 e g) fis4 r r2
 R1 c'1\fp( des'2 d') ees'1\<( des'2\!\> bes2 a4\!) r4 r2 R1 r2 r4 des'4\staccato
 des'2.\sf\>( c'8 bes a4\!\staccato) r4 r2 R1 r2 r4 des'4\staccato
 des'2.\sf\>( c'8 bes a4\!\staccato) r4 bes2\p( a4\staccato) r4 bes2\pp( a4\staccato) r4 r2
 R1 R1 R1 f2\ff( fis\sf g2.\sf) ees4\staccato c4\staccato a,\staccato f,\staccato ees,\staccato
 d,4\staccato bes,\staccato r2 R1 ees'2.\p\<( c'4\!\> a4\staccato) r4\! r2
 r8 bes,8\p\staccato[ c\staccato d\staccato] ees\staccato[ f\staccato g\staccato aes\staccato]
 bes2_\markup { \italic "cresc." }( b2) c'2.\sf aes4\staccato f4\staccato d\staccato bes,\staccato aes,\staccato
 g,4 r r bes4\p_\markup { \italic "   dolce" }( a!2 bes4. ees8) d4\staccato r4 r2 R1
 r2 r4 ees'4( d'2_\markup { \italic "cresc." } ees'4. g8 f2) c'2(~ c'4 f\staccato) bes\staccato aes\staccato
 g8\staccato g8\p\staccato[ ees\staccato g\staccato] ees[ g ees g] ees8[ g ees g] ees[ g ees g]
 f8[ g f g] f[ g f g] f[ g f g] f[ g f g] ees8[ g_\markup { \italic "cresc." } ees g] ees[ g ees g]
 fis2\sf( g4. bes,!8) a,4\staccato f!4\sf\staccato g,\staccato f\sf\staccato
 f,8\staccato[ f\p\staccato g\staccato a\staccato] bes\staccato[ c'\staccato d'\staccato ees'\staccato]
 d'8\staccato[ bes\staccato d'\staccato f'\staccato] ees'\staccato[ c'\staccato f'\staccato ees'\staccato]
 d'[( ees') f'\staccato ees'\staccato] d'\staccato[ f'\staccato ees'\staccato d'\staccato]
 c'\staccato[ f\staccato bes\staccato f\staccato] a\staccato[ f\staccato g\staccato e\staccato]
 f8\<[( a) c'\staccato f'\!\staccato] f'\>\staccato[ f'\staccato f'\staccato f'\!\staccato]
 ees'!8\staccato_\markup { \italic "cresc." }[ g'\staccato ees'\staccato g'\staccato]
 f'\staccato[ g'\staccato f'\staccato g'\staccato] ees'\staccato[ f'\staccato g'\staccato f'\staccato]
 ees'\staccato[ d'\staccato c'\staccato bes\staccato] a\staccato[ g\staccato f\staccato ees\staccato]
 d\staccato[ bes\staccato ees\staccato bes\staccato]
 f\p\staccato[ bes\staccato d'\staccato bes\staccato] a\staccato[ g\staccato f\staccato ees\staccato]
 d4 r4 r2 R1 f'1\p~ f'4 r4 r2 R1 R1 R1 d'2( e') d'4\staccato r c'\staccato f'\sf~ f' e'\staccato d'\staccato
 g'4\sf~ g' f'\staccato e'!\staccato a'8_\markup { \italic "decresc." }( g' f'4 ees'!\p d' c')
 r2 c'4\f\staccato f'4\sf~ f'4 ees'\staccato d'\staccato g'\sf~ g' f'\staccato e'\staccato
 a'8\sf( g' f'4\p e' d' cis') R1 f'8\pp\staccato[ f'( e') e']( d')[ d'( cis') cis'\staccato] R1
 f'8\staccato[ f'_\markup { \italic "cresc." }( e') e']( d')[ d'( cis') cis'](
 d'\f)[ d'( g') g']( f')[ f'( ees'!) ees']( d'4\staccato) r4 r2 R1
 R1 R1 f4\staccato bes2\sfp bes16( a g f)
 ees16_\markup { \italic "cresc." }( f g f ees d c bes, a, bes, c bes, a, g, f, ees,)
 d,8\f\staccato[ f\staccato ees\staccato d\staccato] c\staccato[ bes,\staccato a,\staccato g,\staccato]
 f,4\staccato ees,\staccato d,\staccato c,\staccato R1 R1 b2\ff( c'4\staccato) r4
 a4\p\staccato bes!\staccato g\staccato a\staccato f'4\p ees'2_\markup { \italic "cresc." } d'4~ d'4
 c'2 bes4~ bes4 r4 r2 r2 bes4.\sf( e8) f4\p r4 r2 r2 d'4.\sf( bes8) a4 r4 r2
 \afterGrace c'1 \startTrillSpan { bes16[ \stopTrillSpan c'] }
 bes8\staccato[ f'\p\staccato f'\staccato f'\staccato] e'[( f') d'\staccato bes\staccato]
 c'8\staccato[ f'\staccato f'\staccato f'\staccato] e'[( f') ees'\staccato c'\staccato]
 d'8\staccato[ f'\staccato f'\staccato f'\staccato] e'[( f') d'\staccato bes\staccato]
 c'8\staccato[ ees'!\staccato c'\staccato a\staccato] f\staccato[ a\staccato f\staccato ees\staccato] d4 r r2
 a,2_\markup { \italic "cresc." }( ees2 d bes) a4\staccato ees'2\sf( c'8 a)
 bes4\sf\staccato r <bes, f d'>\staccato r <bes, f d'>4\staccato r r2 c4\ff\staccato r <c, c bes>\staccato r
 <c, c bes>4\staccato r r2 f4\ff\staccato r <f, c a>\staccato r <f, c a>4\staccato r4 r2
 R1 R1 R1 r8 bes,8\p\staccato[ c\staccato d\staccato] ees\staccato[ f\staccato g\staccato a\staccato]
 bes4\staccato_\markup { \italic "cresc." } bes2 bes4~ bes4 bes4^\trill( d' c') bes2\ff( c'4. a8)
 <bes, f bes>4 r r2^\fermata \bar "|."
}