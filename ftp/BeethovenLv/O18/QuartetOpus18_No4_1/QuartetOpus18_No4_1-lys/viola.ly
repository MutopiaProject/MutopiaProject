\version "2.7.40"

 viola = {
 \set Staff.instrument = "Viola"
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key c \minor
 \time 4/4
 \partial 4 r4
 \repeat volta 2 { ees2.\p( f4) aes4.\sf( f8) ees4\staccato r aes2.( bes4) des'4.\sf( bes8) aes4\staccato r4
 r4 aes2( g4) f8( b) b2( c'4) f'8 f' ees' ees' ees' ees' d' d'
 g8 g g( f') ees'\staccato g\staccato ees\staccato c\staccato g8 b b b b b c' c'
 r8 g g g g g g g aes <c' aes'>_\markup { \italic "cresc." }[ <c' aes'> <c' aes'>] <c' f'>[ <c' f'> <c' aes'> <c' aes'>]
 <c' a'>8 <c' a'> fis' fis' g' g' <g f'> <g f'>
 <g ees'>4\ff\staccato r <g g'> r <g g'>\staccato <g g'>\staccato <g g'>\staccato r4
 <g g'>4\staccato r <g g'>\staccato r <g g'>\staccato <g g'>\staccato <g g'>\staccato r
 r4 g\ff( a b) c'( ees f g) aes!( ees c c') b8\fp b b b b b b b r c' c' c' c' c' c' c' b\fp b b b b b b b r c' c' c' c' c' c' c'
 r8 b c'\sf c' r b c'\sf c' b4\ff <g g'> r2
 ees1\fp ~ ees1 ~ ees4 bes( ees) bes ~ bes( ees aes) r
 c1\fp ~ c1 ~ c4 c'2 c'4 ~ c'8_\markup { \italic "cresc." }( a bes a c' bes aes f)
 ees8\p\staccato bes\staccato ees\staccato bes\staccato aes\staccato bes\staccato aes\staccato bes\staccato
 aes8 bes aes bes g bes ees bes d bes d' bes ees' bes ees' a ees' bes ees' bes d' bes d' aes!
 g bes g bes f bes f bes ees g ees g d g d g c g c ees c ees c ees
 ees8_\markup { \italic "cresc." }( bes a bes a bes c' bes) bes8\p( g') g'2( f'4)
 \grace { e'16([ f' g']) } f'2( ees'!4) bes4 bes8( aes') aes'2( g'4)
 \grace { f'16([ g' aes']) } g'2( f'4) r8 d'8 ees'8_\markup { \italic "cresc." }( bes g' ees') ees'( d' c' d')
 ees'8( g ees' c') c'( b a b) c'8 g g g f f c' c' bes!8 d'\p[ d' d'] d'4 r r8 ees'[ ees' ees'] ees'4 r
 r4 f'4_\markup { \italic "cresc." } r ees' r <bes aes'>\f r2
 bes4\p\staccato bes4.\sf bes8\staccato bes\staccato bes\staccato bes4( d' f' bes)
 bes4\staccato bes4.\sf bes8\staccato bes\staccato bes\staccato bes4( d' f' bes)
 bes4\staccato bes4.\sf bes8\staccato aes\staccato g\staccato
 g8( c') c'4.\sf c'8\staccato bes\staccato aes\staccato bes4_\markup { \italic "cresc." }( bes' c'' bes')
 bes'8\p bes4\sf bes8 ~ bes8 bes\staccato bes\staccato bes\staccato
 c'8 c'4\sf c'8 ~ c'8\staccato c'\staccato c'\staccato c'\staccato
 des'8 e'4\sf e'8 ~ e' e'\staccato f'\staccato f'\staccato
 f'8\staccato f'\staccato f'\staccato f'\sf\staccato f'\staccato f'\staccato f'\staccato f'\sf\staccato
 f'4_\markup { \italic "cresc." }( ees'! c' bes) a2( c') f4 r r2
 aes'!4( f' d' aes) g4 r r8 g'\staccato ees'\staccato g'\staccato
 d'8\f\staccato d\staccato f\staccato aes\staccato d'\staccato f'\staccato aes'\staccato aes\staccato
 g4\staccato r bes\pp\staccato g\staccato
 ees4\staccato e\staccato f\staccato g\staccato aes\staccato r ces'\staccato r
 bes4\staccato r4\f bes\staccato bes\staccato ees'\staccato r bes\pp\staccato g\staccato
 ees4\staccato e\staccato f\staccato g\staccato aes\staccato r c'\staccato r }
 \alternative { { b4\staccato r4\f g\staccato g\staccato } { cis'4\staccato r\f d'\staccato d'\staccato } }

 g'8\fp g' g' g' g' g' fis' fis' fis' fis' fis' fis' g' g' g' g' g' g' g' g' g' g' f'! f' f' f' f' f' ees' c' c' c'
 c' c' c' c' c' c' c' c' c' fis' fis' fis' fis' fis' g' g' g' g' bes' bes' bes' bes' a' a' d' d' d' d' d' d' bes g
 \new Voice { \stemUp d8_\markup { \italic "cresc." }[ \stemDown fis' fis' fis'] } fis' fis' g' g'
 r d' d' d' d' d' d' d' r g g g g g g g g g g g a a a a g <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'>
 <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'>
 <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> <d d'> g( bes a) a4( g)
 r8 g8( f' ees') ees'4( d') ~ d'8 d'_\markup { \italic "cresc." }( b c' d') f'( d' ees' f'\staccato)
 aes'( f' g' aes'\staccato) d'4 d'8 ees'8 <g ees'> <g ees'> <g ees'> <g ees'> <g ees'> <g ees'> <g ees'>
 <g ees'> <g ees'> <g ees'> <g ees'> <g ees'> <g ees'> <g ees'> <g ees'>
 <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'>
 <g e'>4 r r2 R1 r8 e_\markup { \italic "cresc." }( g f e\staccato) g( bes aes g\staccato)
 e'( g' f' e'\staccato) e e e f8\p aes aes aes aes aes aes aes
 aes8_\markup { \italic "cresc." } aes aes aes aes\staccato aes( f aes)
 <c c'>4\ff\staccato <c c'>\staccato <c c'>\staccato r <c c'>\staccato <c c'>\staccato <c c'>\staccato r
 <c c'>\staccato r <c c'>\staccato r <c c'>\staccato r r2
 f4\p r c r f r r2 e4 r f r c r r bes a r g r f r e r d r g r c( <c c'>2_\markup { \italic "cresc." }) <c c'>4
 << { c'2( bes!) } \\ { c1\p } >> <c aes!>8\staccato c'( b c' des' c' aes g)
 <c c'>1 ~ <c c'>8\staccato c'8( des' bes g e c' bes)
 aes!4 r g8_\markup { \italic "cresc." }( g') g'4 ~ g'4( f') ees8( ees') ees'4 ~ ees'( des') c8( c') c'4 ~ c'4( bes f fis)
 g16\pp b b b b b b b b b b b b b b b b b b b b b b b b b b b b b b b
 c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c' c'
 <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'>
 <b d'>_\markup { \italic "cresc." } <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'>
 <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'>
 <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'>
 <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'> <g f'>

 <g ees'>8\fp ees4 ees ees f8 \new Voice { \stemUp f8\staccato[ \stemDown aes'\sf( g' f'] ees' d' c' bes!) }
 aes8 aes4 aes aes bes8 bes8\staccato des'\sf( c' bes aes g f ees) d!8( aes) aes2( g4) f8( b) b2( c'4)
 f'8 f' ees' ees' ees' ees' d' d' g g g( f') ees'\staccato g\staccato ees\staccato c\staccato g d' d' d' d' d' ees' ees'
 r8 g g g g g g g f_\markup { \italic "cresc." } <c' aes'> <c' aes'> <c' aes'> <c' f'> <c' f'> <c' aes'> <c' aes'>
 <c' a'>8 <c' a'> fis' fis' g' g' g g
 c'4\f\staccato r <g g'>\staccato r <g g'>\staccato <g g'>\staccato <g g'>\staccato r
 <g g'>\staccato <g g'>\staccato <g g'>\staccato r
 <g g'>\staccato_\markup { \italic "sempre piu f." } <g g'>\staccato <g g'>\staccato r
 <aes aes'>\staccato <aes aes'>\staccato <aes aes'>\staccato r
 <aes aes'>\staccato <aes aes'>\staccato <aes aes'>\staccato r bes\staccato bes'\staccato bes'\staccato r
 bes'\ff r <g e'>\staccato r <aes f'>\staccato r <aes fis'>\staccato r <g g'>\staccato r r2
 e8\p( g c' g) b( g f g) f( g f g) e( g c' e') d'( g d' g) c'( g c' g) c'( g c' g) b( g f g)
 e8 g e' g d' g d' g c' e c' e b e b e c' e c' e a d a d g2._\markup { \italic "cresc." } <f g>4
 <e g>8( e') e'2( d'4) \grace { cis'16[ d' e'] } d'2( c'!4) e!4 d8( d') d'2( c'4) \grace { b16[ c' d'] } c'2( b4) r8 b8
 c'8( g e' c') c'( b a b) c'( e c' a) a( gis fis gis) a4 e( c c')
 b8\p b b b  b4 r r8 c' c' c' c'4 r r4 d'_\markup { \italic "cresc." } r c' r b\f\staccato r2
 g4\p\staccato g4.\sf g8\staccato g\staccato g\staccato g4( b d' g)
 g4\p\staccato g4.\sf g8\staccato g\staccato g\staccato g4( b d' g)
 g4\staccato g4.\sf g8\staccato g\staccato g\staccato g( a) a4.\sf a8\staccato a\staccato a\staccato
 g4_\markup { \italic "cresc." } g'( a' aes')
 g'8\p\staccato c'4\sf c'8 ~ c'8 c'\staccato g\staccato g\staccato
 c'8\staccato d'4\sf d'8 ~ d'8 d'\staccato a\staccato a\staccato
 cis'8\staccato cis'4\sf cis'8 ~ cis'8 cis'\staccato d'\staccato d'\staccato
 d'8 d' d' d'\sf d' d' d' d'\sf d'4_\markup { \italic "cresc." }( c' a g) fis2( a) d4 r r2
 f'!4( d' b f) e4 r4 r8 e'\staccato c'\staccato e'\staccato
 d'8\f\staccato f\staccato g\staccato b\staccato d'\staccato f'\staccato g'\staccato <g f'>\staccato
 <g e'>4 r g'\pp\staccato e'\staccato c'\staccato cis'\staccato d'\staccato e'\staccato
 f'\staccato r aes!\staccato r g\staccato r d'\f\staccato d'\staccato
 c'4\staccato r g'\pp\staccato ees'\staccato c'\staccato cis'\staccato d'\staccato ees'\staccato
 f'\staccato r g\staccato r aes\staccato r\f aes\staccato aes\staccato
 aes2.\ff a4\sf bes2. bes4\sf ces'4( c'\sf des' d'\sf) ees'( e'\sf f' fis'\sf) g'8 d'[ d' d'] r c'[ c' c']
 r8 <c' d'>[ <c' d'> <c' d'>] r d' d' d' c'4 <g g'>2\p <g g'>4 ~ <g g'>4 <g g'>2 <g g'>4 ~
 <g g'>8 c_\markup { \italic "cresc." } <c c'>2 <c c'>4 ~ <c c'>8( aes) r g r f r <ees f>
 c'16\f c' ees ees c' c' e e c' c' f f c' c' g g c' c' aes aes c' c' aes aes c' c' ees' ees' d' d' f' f'
 ees4\ff ees'4 ~ ees'8 ees'( f'\sf) f'( ees') ees'( f'\sf) f'( ees') ees'( f'\sf) f'( ees'4)
 r4 r8 g8( b\sf\staccato) b( c'4) r4 r8 c8( ees\sf d) c4\ff r <c c'> r <c c'>2.^\fermata
 \bar "|."
}