\version "2.10.3"

 viola = {
 \set Staff.instrumentName ="Viola    "
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key a \minor
 \time 6/8
 \repeat volta 2 { R2. R2. r8 r8 a8\p( gis a b) a( gis f e4 d8) }
 \alternative { { c4 r8 r4 r8 R2. } { c4 r8 r4 r8 R2. } } \bar "||"
 \repeat volta 2 { r8 r c'8\p( bes[ a e]) e( f) f g( f cis) cis([ d]) a8( f'\fp[ e' d']) cis'( bes a g f e)
 d( e f) b!( c' d' c' b a) dis'4.\fp( e'4.) b8( c' d'! c' b a) dis'4.\fp( e'4.) dis'4.\sfp( e'4.) b4 _\markup { \italic "cresc." } b8
 c'4\p( f'8)~ f'4( b8) b8_\markup { \italic "cresc." }( f' e' d' c' b) c'8\f[( a) a\staccato] f8\>( f' b\!) }
 \alternative { { c'4\p r8 r4 r8 } { e4\p( a8 gis[ a) e\staccato] } }
 e4( a8) gis16[( a) d( e) f( e)] e4( a8) gis16[( a) gis( a) e8\staccato]
 e4( a8) gis16[( a) d( e) f( e)] e4( f16 e) e4( f16 e) e4 c''8 des''8\f\>( bes' aes'\!)
 g'8\p( bes' f') e'( g' c' des' bes aes) ges( bes f\sfp e g! bes) ges( bes f\sfp e g! bes) ges( bes f\sfp
 e g des) c( e g) f4 r8 r r aes'8\sfp~ aes'4( g'8) r8 r aes'8\sfp~ aes'4( g'8) des'8( f' c')
 b8_\markup { \italic "cresc." }( d'! aes g b g aes c' f fis g a) d4\p d8\sf^\trill( ees4 c8) d4\p d8\sf^\trill( ees4 c8)
 d4 d8\sf^\trill( ees4 c8) d4 d8\sf^\trill( ees4 c8) d4_\markup { \italic "dimin." } ees8( d4 e8) f4( fis8 g4.)~
 g4.^\markup { \italic "dol." }( gis8 a) a\staccato b8( c' d' c'8) r8 g8~ g4.( gis8 a) a\staccato
 b8( c' d') c'8[ a16\staccato b\staccato c'\staccato d'\staccato]
 \grace { c'16[ d'] } e'8\staccato[ d'\staccato c'\staccato] b[( c') a\staccato]
 g4.~ g8[ a16\staccato b\staccato c'\staccato d'\staccato]
 \grace { c'16[ d'] } e'8\staccato[ d'\staccato c'\staccato] b[( c') a\staccato]
 g4._\markup { \italic "cresc." }~ g8( f) d\staccato
 c8\p( g c') f( d b) g( e c') f( d b) g( e c') f( d b) e8( g aes\sfp)~ aes( f g) e( g aes\sfp)~ aes( f g)
 e( g aes\sfp)~ aes( f g) e( g f) e( g f) e( g f) e( g f) e4\pp r8 e4 r8 e4 r8 r4 r8
 r4 r8 r r des8\sfp~ des4( c8) r8 r des8\sfp~ des4( c8) r8 r des8~ des8( c bes)~ bes( g c')
 aes8 c'([ e'] f'[ c' bes]) aes( c' g) f( aes ees\sfp d f aes) f( aes ees\sfp d f aes) f( aes ees\sfp d f aes)
 d8( f bes) ees( ges) bes(~ bes ges ees d f) bes(~ bes aes f ees ges) bes~ bes4.~ bes2.~
 bes4 ges8_\markup { \italic "cresc." }~ ges4. f4.~ f8( c' ees') des'8\p r des'8(~ des' bes f~ f c')
 ees'(~ ees' c' f~ f bes des') f4.~ f2.~ f4
 << { bes8_\markup { \italic "cresc." }~ bes4.~ bes4.~ bes4 g8 } \\ { s8 s4. c2. } >>
 <c aes>4\f c'8\sf(~ c'4\> des'8 b!4. d'!4.\!) c8\f( ees g c'\> ees' c' aes c' a fis a d\!)
 d2.\p~ d2.~ d4 d8~ d( g bes c' a) d(~ d fis a) bes4\f r8 r r g'8\sf~ g'4.\p~ g'8( e' a) d8\f( f bes d' f' d')
 r8 d'\p( b!) r gis( e) a8 a( b c' a f) e( gis b) e( b d'\sf) c'8\p( a b c' a f) e( gis b) e( b d'\sf)
 c'8\p( a b c' a f) e( gis b) c'\sf( a f) e( gis b) c'\sf( a f)
 e8_\markup { \italic "dim." }( gis b) e( gis b) e( gis b) e4.~ e4.( eis8 fis) fis\staccato gis8( a b a4) r8
 e4.( eis8 fis) fis\staccato gis8( a b) a8\staccato[ fis16\staccato gis\staccato a\staccato b\staccato]
 \grace { a16[ b] } cis'8\staccato b\staccato a\staccato gis( a) fis\staccato
 e4.~ e8[ fis16\staccato gis\staccato a\staccato b\staccato]
 \grace { a16[ b] } cis'8\staccato b\staccato a\staccato gis( a) fis\staccato
 e4_\markup { \italic "cresc." }( e'8)~ e'8( d') b\staccato a8\p a( cis' b gis d') a( e cis' gis d b)
 e_\markup { \italic "cresc." }( cis a) d( f! e)
 cis4_\markup { \italic "dim." }( d8) cis4( d8) cis4( d8) cis4( d8) d4\pp r8 r4 r8
 r4 r8 r bes8_\markup { \italic "cresc." } bes <bes f'>4\f r8 r4 r8 R2. r4 r8 r r aes8\p\staccato
 f8( g aes g4) r8 r4 r8 r4 aes8_\markup { \italic "cresc." } f8( g aes bes4 aes8)
 g8\p( bes g d' bes f') ees'( bes g') d'( bes f') ees'\sfp( bes g)~ g( f aes)~ aes( g bes)~ bes( d') d'
 ees'2.\fp~ ees'4._\markup { \italic "dim." }( g'4.)~ g'4.( bes'4.)~ bes'4.( a'4.)
 a'2._\markup { \italic "sempre dim." }~ a'4. a'4.( gis'4.) gis'4.\pp( a'4. fis'4.) gis'4 r8 r4 r8 R2. R2.
 r4 r8 d'8\p( e' f' e' d' c') gis( a b) a( b c' d' c' b) a4 r8 r4 r8 R2.
 r4 r8 c'8( b a) gis( a b) d'( c' b a gis a) gis( a b a g! f) e4( d8 c4) r8 r4 r8 R2. r8 r e8\p bes( a e) g( f) f g( f cis)
 e8([ d]) a8 f'\fp( e' d' cis' bes a g f e d e f) b!( c' d' c' b a) e4.\sfp~ e4. b8( c' d' c' b a)
 e4.\sfp~ e4. e4.\sfp~ e4. b8_\markup { \italic "cresc." }( c' d')
 c'4\p( f8 f'4 b8) d'8_\markup { \italic "cresc." }( gis a b c' d') c'\f( a\>) f~ f( f') <e d'>\! <e c'>4\p r8 r4 r8
 r4 e'8\p e'( f' g') g'( f' c') cis'( d' e') e'( d') d' a4.\fp~ a4.~ a8( b! cis') d'8( cis' a) b( c' d' c' b a) dis'4.\sfp(
 e'4.) b8( c' d' c' b a) dis'4.\sfp( e'4.) dis'4.\sfp( e'4.) b4._\markup { \italic "cresc." }
 c'4\p( a8~ a4 gis8) gis4_\markup { \italic "cresc." }( a8 b c' <gis d'>)
 a4\f\> f8~ f8( f' b8\!) <e c'>4\p a8( gis8 a) e\staccato e4( a8) gis16[( a) d( e) f( e)]
 e4( b8) gis16[( a) gis( a) e8] e4( a8) gis16[( a) d( e) f( e)] e4( f16 e) e4( f16 e)
 e8 r8 bes8\f( ges bes f\sf e g! bes) ges( bes f\sf e g! bes) g8( bes4)~ bes4\f( a8 g\> f) a\staccato\!
 a4.\p( gis4 g8)~ g8 e4_\markup { \italic "cresc." }~ e4 des8\sf~ des4( c8) r8 r des8\sf~ des4( c8)
 r8 r cis8\f~ cis4.~ cis8\>( e a\!) a4\p a8~ a4 e8~ e4( a8 gis a) e\staccato
 e4( a8) gis16[( a) d( e) f( e)] e4( a8) gis16[( a) gis( a) e8] e4( a8) gis16[( a) d( e) f( e)]
 e4_\markup { \italic "dim." }( f16 e) e4( f16 e) e4( f16 e) e4( f16 e)
 e2.\pp~ e2.~ e2._\markup { \italic "cresc." }~ e4. e4.~ e4. e4._\markup { \italic "dim." }~ e4.
 e4.\pp~ e4 r8 a4^\markup { "pizz." } r8 a4 r8 r4 r8 \bar "|."
}