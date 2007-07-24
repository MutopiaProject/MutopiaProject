\version "2.10.3"

 pianotwo = {
 \set Staff.instrument = ""
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key f \major
 \time 2/4
 \partial 8 r8 <f, f>4 <c, c> <f,, f,>4 r4 e8 c f a c'16.[ c32 e16. g32] c'8 r8 c8 c'8 bes, bes <a, a>8 <f, f> r8 <d, d>
 bes,,8 bes, c, c f,8 a,16. c32 f8 r8 <c c'>8 r <c c'> r c'16 c e g <c c'>8[ r16 <f, f>]
 g,8 g g, g c,8[ c c,] r8 <c, c>4 <c, c> <c, c>4.\sf^\fermata <e, e>8\p <f, f>8 <b,, b,> <c, c> <c, c>
 <f, f>8[ c f,] \bar "|."
 \break

 r8 r8 r16 f([ c']) r r c([ f]) r r8 r4 r8 r16 e([ f]) r r b,( c) r16 r8 r4
 r8 r16 c([ bes,]) r r bes,([ a,]) r r8 r4 r8 r16 b,([ c]) r r c,([ f,]) r r c'([ a]) f([ f,]) \clef treble <f' a'>(
 <e' g'>) r r <dis' fis'>([ <e' g'>]) r r <f' a'>([ <e' g'>]) r r8 r4 r8 \clef bass r16 fis,([ g,]) r r g,([ c]) r r8 r8 r16 e16(
 c) r r g([ e]) r r \clef treble e'~ <c' e' g' c''>8_\fermata\fp
 \cadenzaOn s8 s8 s8 s16 r8^\fermata r8 \clef bass <bes des' e'>8([ \cadenzaOff
 <a c' f'>16]) r16 d'!8\staccato[ bes\staccato c'\staccato] f8 r16 c16([ f,8\staccato]) \bar "|."
 \break

 r8 R2 r8 <a,, a,>4\f <aes,, aes,>8~ <aes,, aes,>8 <g,, g,> <fis,, fis,>4 <g,, g,>8 r8 r4
 r8 c,4 <bes,, bes,>8~ <bes,, bes,>8 <a,, a,>4 <d, d>8 <bes,, bes,>8\p[ <b,, b,> <c, c> c,] <f,, f,>8 r8 r4
 e16\p[( c) c\staccato c\staccato] f16[( c) c\staccato c\staccato]
 e16( c) g,\staccato c\staccato e,\staccato g,\staccato c,\staccato e,\staccato g,,8 r <g,, g,> r
 c,8[ c c] r8 <c, c>4 <e, e>8 <d, d> <c, c>4.\sf^\fermata <cis, cis>8\p <d, d>8 <a,, a,> <bes,, bes,> <c,! c!>
 <f, f>8 c f,8 \bar "|."
 \break

 \clef treble b'32\p[ c'' b' c''] a'[ c'' b' c''] f'[ a' gis' a'] e'[ g' fis' g'] c'[ e' dis' e']
 \clef bass a[ c' b c'] f![ a gis a] c[ f e f] a,[ c b, c] f,[ a, gis, a,] d,[ f, e, f,] bes,,![ d, cis, d,] g,,![ gis, fis, gis,]
 c,![ c b, c] b,[ c b, c] c,8 r8 g,32[ bes,! a, bes,] bes,[ e dis e] e[ g fis g] g[ bes a bes]
 a,[ c b, c] c[ f! e f] f[ a gis a] a[ c' b c'] cis'[ d' cis' d'] ais[ b ais b] b[ c' b c'] c[ c' b c']
 f,32[ f e f] c,[ c b, c] f,,8 r8 r32 c32([ d e f g a b] c'32\staccato) \clef treble c'([ d' e' f' g' a' b']) c''8\staccato r8 r4
 \clef bass g,32([ a, b, c d e f g]) fis([ g fis g fis g fis g]) fis32[ g fis g] b[ c' b c'] fis[ g fis g] dis[ e dis e]
 c[ g fis g] e[ c' b c'] g[ e' dis' e'] \clef treble c'[ g' fis' g'] bes'4.\sf^\fermata gis'32[ a' gis' a']
 cis''32[ d'' cis'' d''] ais'[ b' ais' b'] b'[ c'' b' c''] \clef bass b[ c' b c'] f[ f' e' f'] c[ c' b c'] f,8 \bar "|."
 \break

 r8 R2 r4 r8 \clef treble e''16\p_\markup { \italic "    dolce" }([ f'']) f''([ e'']) e''([ f'']) f''([ e'']) e''([ d''])
 d''([ c'']) c''([ g']) c'8 r8 \clef bass <c, c>4 <bes,, bes,> <a,, a,>4. \clef treble a'16\p( bes')
 bes'16([ a']) a'([ g']) g'([ f']) f'([ bes]) \clef bass bes([ c']) c'([ c]) f8 r8 <c, c>4 <c, c> <c, c>4. \clef treble b'16\p([ c''])
 c''16([ gis']) gis'([ a']) a'([ f']) f'([ e']) e'([ d']) d'([ c']) c'8 r8 \clef bass <c, c>4 <c, c> <c, c>4.\sf^\fermata
 \clef treble e''16([ f'']) f''([ cis'']) cis''([ d'']) d''([ bes']) bes'([ c''!])
 c''16\staccato[ c'\staccato c'\staccato c'\staccato] f'8\staccato \bar "|."
 \break

 r8 r4 \clef treble c'16.([ e'64 g' bes'8\sf]) a'16.([ f'64 c' a8\sf]) \clef bass a,16.([ c64 f a8\sf])
 bes,16.\staccato[ bes,32\staccato c16.\staccato c32\staccato]
 d16.\staccato[ d32\staccato b,16.\staccato b,32\staccato] c16.\staccato[ c32\staccato f,16.\staccato f,32\staccato]
 c8\staccato r8 r4 \clef treble c'16.([ e'64 g' bes'8\sf])~ bes'16[( g') e'\staccato c'\staccato]
 \clef bass c,16.([ e,64 g, bes,8\sf]) a,16.\staccato[ a,32\staccato b,16.\staccato b,32\staccato]
 c16.\staccato[ c32\staccato c,16.\staccato c,32\staccato]
 f,16.\staccato[ c,32\staccato f,16.\staccato c,32\staccato] f,8 r8 r4 \clef treble c'16.([ e'64 g' c''8\sf])~
 c''32([ b' c'' b' c''8]) \clef bass c,16.([ e,64 g, c8\sf])~ c16.\staccato[ c32\staccato fis,16.\staccato fis,32\staccato]
 g,16.\staccato[ g,32\staccato g,,16.\staccato g,,32\staccato]
 c,16.\staccato[ g,32\staccato c16.\staccato g,32\staccato] c8 r8
 r4 \clef treble c'16.([ e'64 g' bes'8\sf])~ bes'32([ g' e' c']) bes4\sf^\fermata \clef bass cis16.\staccato cis32\staccato
 d16.\staccato[ d32\staccato b,16.\staccato b,32\staccato]
 c!16.\staccato[ c32\staccato c,16.\staccato c,32\staccato]
 f,16.\staccato[ c,32\staccato f,16.\staccato c,32\staccato] f,8 \bar "|."
 \break

 r8 r8 <f, a, c f>8\p r <c, e, g, c> r8 <f,, a,, c, f,> r4 r8 <e, g, c e> r <f, a, c f> r <c, e, g, c> r4
 r8 <c e g> r <bes, c e g> r8 <a, c f a> r <d d'> bes8( b c' c) f8 r8 r4
 r8 \clef treble <c' dis' fis'>8\sf([ <c' e' g'>16]) r16 <c' dis' fis'>8\sf( <c' e' g'>16) r16 r8 r4
 \clef bass r8 <g, g> r <g,, g,> r <c, c> r4 r8 <c, c> r <c g bes> r8 <g bes e'>4\f^\fermata <a cis' e'>8\p
 <a d' f'>8 <g d' f'> <a c'! f'> <g c' e'> <f a f'>4 r8 \bar "|."
 \break

 r8_\markup { \italic "sempre pianissimo" } <f a c'>4 <f g bes e'> <f a c' f'>8 r8 r4
 <e g bes c'>4 <f a c'> <c e g c'>8 r8 r4 <c e g>4 <bes, c e g> <a, c f a>8 r8 r4 <c f a>4 <c g bes>
 <f a>8 r8 r16 \clef treble a'16( g' f') <e' g' c''>4 <f' a' c''> <e' g' c''>4 r8 <c' d'>8
 <c' e'>4 \clef bass <g, b, d f>4 <c e>8 r8 r4 R2
 \cadenzaOn <c e g bes>4.^\fermata s1 <d f a>8 \cadenzaOff \bar "|" <bes, d g>4 <c g bes>
 r16 f16( e f) f,8 \bar "|."
 \break

 \clef treble c'16\p\staccato c'\staccato f'16\staccato[ <a' c''>32( <g' bes'>) <f' a'>16\staccato] r16
 r16 <g' bes'>8[ <bes g'>16\staccato] <a f'>16\staccato[ <c' a'>32( <bes g'>)]
 <a f'>16\staccato[ <a f'>\staccato] <a f'>8\staccato[ r16 <f' a'>16\staccato]
 <g' bes'>16\staccato[ <bes' d''>32( <a' c''>)] <g' bes'>16\staccato r r <a' c''>32[( <g' bes'>) <f' a'>16\staccato] r16
 r16 <e' g'>32([ <d' f'>]) <c' e'>16\staccato[ <f d'>\staccato] \clef bass <e c'>8\staccato r8
 <c e>16\staccato_\markup { \italic "cresc." } <d f>\staccato <e g>\staccato <f a>\staccato
 \clef treble <g bes>\staccato <a c'>\staccato <bes d'>\staccato <g e'>\staccato
 <a f'>\staccato <e' g'>\staccato <f' a'>\staccato <g' bes'>\staccato
 <a' c''>\staccato <bes' d''>\staccato <g' e''>\staccato <a' f''>\staccato
 <a' f''>\sf( <c'' e''>) <bes' d''>\staccato <a' c''>\staccato <a' c''>\sf( <g' bes'>) <f' a'>\staccato <bes g'>\staccato
 <a f'>16\staccato <bes g'>\staccato <a f'>\staccato <bes g'>\staccato <a f'>8\staccato[ r16 <a' c''>32( <f' a'>)]
 <e' g'>16\staccato[ <e' g'>8\sf( <f' a'>16)] <e' g'>16\staccato[ <e' g'>8\sf( <f' a'>16)]
 <e' g'>16\staccato <g' c''>\staccato <c'' e''>\staccato <b' d''>\staccato <a' c''>\sf( <gis' b'>) <a' c''>\staccato <f' a'>\staccato
 <e' g'!>\sf( <dis' fis'>) <e' g'>\staccato <c' e'>\staccato <d' f'>\sf( <cis' e'>) <d' f'>\staccato <f d'>\staccato
 \clef bass <e c'!>16\staccato <f d'>\staccato <e c'>\staccato <f d'>\staccato <e c'>8\staccato c'16\staccato d'\staccato
 \clef treble <c' e'>\sf( <g c'>) <c' e'>\staccato <d' f'>\staccato <e' g'>\sf( <c' e'>) <e' g'>\staccato <f' a'>\staccato
 <e' g' bes'>4.\sf^\fermata <bes' des''>16\p\staccato <g' bes'>\staccato
 <a' c''>16\staccato_\markup { \italic "cresc." } <f' a'>\staccato <a' c''>\staccato <f' a'>\staccato
 <g' bes'>\staccato <e' g'>\staccato <g' bes'>\staccato <e' g'>\staccato
 <f' a'>16\f\staccato <a f'>\staccato <a f'>\staccato <a f'>\staccato <a f'>8\staccato \bar "|."
 \break

 r8 r4 r8 c'([ f']) c'([ g']) g'([ c']) <c' f'>8[ <d' g'> <d' g'>] <e' g'>8 r8 r4 r8 a'([ bes']) fis'([ g'])
 <bes e'!>8\sf([ <c' f'>]) \clef bass <g cis'>\sf([ <a d'>]) <bes e'>\sf([ <a d'>]) <bes d'>\sf\staccato
 <a c'>8\staccato[ <g bes>\staccato <f a>\staccato] r8 \clef treble r4 r8 a'8_\markup { \italic "cresc." }([ g'])
 fis'([ g']) <c' fis'>\sf([ <c' g'>)] <c' a'>\sf([ <c' g'>)] <c' f'!>\sf([ <c' g'>])
 <f' b'>8\staccato[ <e' c''>\staccato] r8 r8 c'8\sf([ e']) e'\sf([ g'\staccato])
 <c' e'>8\ff\staccato[ <c' g'>\staccato^\fermata] r8 \clef bass
 r8 <bes e'>8\p([ <a f'>]) r r8 <c bes>\pp([ <f a>]\staccato]) \bar "|."
 \break

 \key f \minor
 r8 r8 <f aes c'>\p r <e bes c'> r8 <f aes c'>[ <f aes c'> <f aes c'>] r8 <bes, f g> r <des f bes>
 r8 <c f aes> r <c e g> r8 <bes, des g>[ <bes, des g> <bes, des g>] r <b, d f aes>[ <b, d f aes> <b, d f aes>]
 <c f aes>4 <c g bes>4 r8 <f bes>8([ <f aes>]) r8 r16. <c c'>32\pp[ <c c'>8] r16. <c c'>32[ <c c'>8]
 r16. c32[ c16. c32] <fis, c fis>8 r8 r16. <g, g>32[ <g, g>8] r16. <g, g>32[ <g, g>8]
 r16. <c, c>32[ <c, c>16. <c, c>32] <c, c>8 r8 r16. <bes, des g>32[ <bes, des g>8] r16. <bes, des g>32[ <bes, des g>8]
 r16. <bes, des g>32\f[ <bes, des g>16. <bes, des g>32] <bes, des g>8^\fermata( <b, d f aes>8\sfp)
 <c f aes>4 <c g bes!>4 r8 <f,, f,>8[ <f,, f,>] \bar "|."
 \break

 \clef treble r8 \override TupletBracket #'transparent = ##t
 \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 <aes c' f'>8\p\staccato([ <aes c' f'>\staccato])
 <aes c' f'>\staccato([ <aes c' f'>\staccato <aes c' f'>\staccato])
 <aes c' f'>[ <c' f' aes'> <c' f' aes'>] <c' f' aes'>[ <c' f' aes'> <c' f' aes'>]
 <bes f' g'>\<[ <bes f' g'> <bes f' g'>] <des' f' g'>[ <des' f' g'> <des' f' g'>\!]
 <c' e' g'>\>[ <c' e' g'> <c' e' g'>] <c' e' g'>[ <c' e' g'> <c' e' g'>\!]
 <bes des' e' g'>[ <bes des' e' g'> <bes des' e' g'>] <bes des' e' g'>\<[ <bes des' e' g'> <bes des' e' g'>]
 <b d' f' aes'>\!\>[ <b d' f' aes'> <b d' f' aes'>] <des' f' aes' b'>[ <des' f' aes' b'> <des' f' aes' b'>\!]
 <c' f' aes' c''>[ <c' f' aes' c''> <c' f' aes' c''>] <c' g' bes'!>[ <c' g' bes'> <c' g' bes'>] }
 <f' aes'>4 r4 c''4 b' c'' \clef bass
 \times 2/3 { <fis a c' ees'!>8\<[ <fis a c' ees'> <fis a c' ees'>] <g c' ees'>[ <g c' ees'> <g c' ees'>\!]
 <g d' f'!>\>[ <g d' f'> <g d' f'>\!] <c' ees'> r r r \clef treble <bes' des''>\sf([ <aes' c''>]
 <g' bes'>\staccato)[ <bes' des''>\sf( <aes' c''>] <g' bes'>)[ <g' bes' c''> <f' aes' c''>] }
 \cadenzaOn <e' g' bes' c''>4\fp_\fermata s2 s32 r8^\fermata r8 \cadenzaOff \bar "|"
 d''4\pp\<( c''\!\> f'8\!) r8 r4 \clef bass d'4\pp\<( c'\!\> f8\!) r8 r4
 d,4\p( b,, c,2)~ c,4.^\fermata_\markup { \center-align { "attacca subito" } } s8 \bar "||"
 \break

 \key f \major
 \time 3/4
 \partial 4 r4 <f,, f,>4\p r r <f,, f,> r8 c8[ a, f,] e,([ d, c, e, f, a,]) c4 r r8 g,8 c,4( c bes,)
 a,4( f d) bes,( g, c) <f, f>4 r r a16\f f' c' f' a f' c' f' bes g' c' g' a f' c' f' a f' c' f' a f' c' f'
 bes16 f' d' f' bes g' c' g' a f' c' f' g e' c' e' g e' c' e' g e' c' e' g e' c' e' g e' c' e' g e' c' e'
 a16 f' c' f' a f' c' f' a f' d' f' g f' d' f' g f' d' f' g e' bes e' a f' c' a f4 r4 c8 c' c'[ c' c' c'] c c' c'[ c' c' c'] c'8 r g r g r
 c4 r4 r r4 <g, c>8\staccato[ <f, c>\staccato <e, c>\staccato <d, c>\staccato] <c, c>2\sf^\fermata r8 <d, d>8
 <bes,, bes,>8[ <b,, b,>] <c, c>8 r <c, c> r <f,, f,>4 r4 r4 \clef treble
 c'8\staccato <e' g'>4\sf <e' g'>8\staccato[ <f' a'>\staccato <dis' fis'>\staccato]
 <e' g'>8 g'4\sf\staccato g'8\staccato[ a'\staccato fis'\staccato] g'4 <g c' e'>4 <g d' f'!> <g c' e'>4 r4 r
 c'8([ b]) <bes! bes'!>8\staccato[ <a a'>\staccato] <g g'>\staccato[ <f f'>\staccato]
 \clef bass <e e'>2\sf^\fermata \clef treble <d' f'>4\p <bes d' g'>\staccato <c' f' a'>\staccato <c' g' bes'>\staccato
 <f' a'>4\staccato r4 r d'16( f' a' g' f' e' d' c' bes d' f' e' \clef bass d' c' bes a g bes d' c' bes a g f)
 e16( g bes a bes a g f e d c bes,) a,4 bes, c <f, f> r8 \clef treble c''16( bes' a' g' f' e')
 d'16( f' a' g' f' e' d' c' bes d' f' e' d' c' bes a) \clef bass g16( bes d' c' bes a g f) e( g bes a g f e d) cis4\sf\staccato
 d4\sf\staccato dis\p\staccato e\staccato f!\staccato fis\staccato g\staccato
 gis4\staccato a\staccato ais\staccato b\staccato cis'\staccato d'\staccato g4\pp a a, <d, d>\p r r <d, d> r r
 cis4 a, d a,4 r4 r8 e,8 c,4( a, g,) fis,( d b,) g,( gis, a,) <d, d>4 r4 d'4 b c'! c!
 f,16\p c a, c f, c a, c e, c bes, c f, c a, c f, c a, c f, c a, c e, c g, c e, c g, c f, c a, c
 c,16 c e, c g, c e, c g, c e, c c,\f e, g, c e g e g bes, g e g a, a f a f a f a d a f a
 bes,16 g f g bes, g f g c bes e bes f c' a f c f c a, f, c a, f, c, e, g, c e g e g bes, g e g a, a f a a, a f a d a f a
 bes, g f g c g f a c bes e bes f4\p r4 r4 R2. r4 r4 f,4 f, r <f, f> <f, f>8\f r8 r4 r4
 r4 r4 <c c'>4\f\staccato <f f'>\staccato r r r4 r \clef treble <c' g'>4\f\staccato
 <f' a'>8\staccato c''16( bes' a' g' f' e' \clef bass d' c' bes a g f e d) c8 r <c g>4\pp\staccato
 \set doubleSlurs = ##t <c g>2( <f a>8) r8 <c g>2( <f, f>8) r8 \set doubleSlurs = ##f
 f,4\pp <f,, f,> <f,, f,> <f,, f,>4 r4^\fermata \bar "|."
}