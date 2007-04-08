\version "2.10.3"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key a \major
 \time 3/4
 R2. R2. R2. R2. <a,, a,>4\fp( <d, d> <f, f>) << { e2 \stemDown e4 } \\ { e,4. s8 s4 } >>
 << { c'8.( b16 ) a8([ a b c']) c'4( b8) } \\ { f2 fis4 g4. } >> r8 r4 r4 <c' e'>4\staccato( <c' e'>\staccato)
 <b fis'!>4. r8 r4 r4 e,4 e,( f,) <f,, f,>( <fis,, fis,>)
 <g,, g,>4 r8 r16 <g bes>16([ <fis a>]) r r <fis a>( <g b!>8\staccato) r8 r r16
 <g bes>16([ <fis a>]) r r <fis a>( <g bes>8\staccato) r8 r r16 <g bes>16([ <f a>]) r r <cis! a>( <d a>8) r8 r r16
 <cis a>16([ <d a>]) <cis a>([ <d a>]) <cis a>( <d a>8) r8 r r16
 \clef treble <a g'>16([ <d' f'>]) <a g'>16([ <d' f'>]) <a g'>16( <d' f'>8) r8 \clef bass r4^\fermata
 \bar "||" \break

 \key a \minor
 \time 4/4
 \repeat volta 2 {
 \partial 4 r4 <d, d>2.\sf <f, f>4 <e, e>4 r r2 a,4 r r2 <e, e>4 r r2
 <a,, a,>4_\markup { \italic "cresc." } r r2 <a,, a,>4 r <a,, a,> r
 <g,, g,>4_\markup { \italic "rallent." } r r2 <g,, g,>4\sf r r2 <c, g, c>2.\sf^\fermata r4
 <d a d'>2.\sf <f a>4\staccato <e b>4\staccato r r2 <a, c e a>4 r r2 <e, gis, b, e>4 r r2
 <a,, c, e, a,>4_\markup { \italic "cresc." } r r2 <a,, a,>4 r  <a,, a,> r
 <g,, g,>4_\markup { \italic "rallent." } r r2 <g, b, d g>1\sf

 \new Voice { \override NoteHead #'font-size = #-2
 \cadenzaOn c,16[ c e g c'] s1 s2 s4 s8 r8 c,8^\fermata r4 \cadenzaOff \bar "|" }
 a,,4\p a, a, a, bes,, bes, bes, bes, bes,, bes, bes, bes, bes,,\f bes, bes, bes, b,,!\f b,! b, b, c,4 c f, f e, e e e e, e e e
 a,8\p a c' a c' a c' a c' a c' a c' a c' a a,, a, gis, a, a,, a, b,, a, c, a, b,, a, c, a, a,, a,
 <e, e>8 gis b gis b gis b gis b gis b gis b gis b gis e, e dis e e, e f,! f! e, e d,! d! c, c b,, b, <a,, a,>4 r r2 R1
 a,,8 a, gis, a, a,, a, b,, a, c, a, b,, a, c, a, a,, a, e,4 r r2 R1 e,8 e dis e e, e f,! f! e, e d,! d! c, c b,, b,
 <a,, a,>8\f c e c e\sf c a, c a, c f c f\sf c a, c b, d f g b d' f' d' f' d' b g f g f d
 c8 e g e g\sf e c e cis e a e a\sf e cis e d f a f dis fis b dis' fis' a' fis' dis' b a g fis
 e8 g b g b\sf g e g fis a dis' a dis'\sf a fis a g b e' b a\sf c' e' c'
 a8\sf c' e' a ais\sf cis' e' ais b dis' fis' dis' c'!\ff dis' fis' dis' c' dis' fis' dis' c' dis' fis' dis'
 c'8 dis' fis' dis' b,4( b e e' ais, ais) b,8 dis fis dis c dis fis dis c dis fis dis c dis fis dis c dis fis dis
 b,,4( b, e, e ais,, ais,) b,,8 fis, b, fis, ais,\sf cis ais, fis, b,, fis, b, fis, ais,\sf cis ais, fis,
 b,, fis, b, fis, ais,\sf cis ais, fis, b,, fis, b, fis, ais,\sf cis ais, fis, b,, fis, b, fis, b,,\sf dis, fis, b,
 b,,8\sf dis, fis, b, b,,\sf dis, fis, b, b,,\sf dis, fis, b, b,,\sf dis, fis, b, b,,\sf dis, fis, b, b,,\sf dis, fis, b,
 <b,, b,>1\f ~ <b,, b,>2_\markup { \italic "decresc." }( cis4 dis)
 <e, e>1 <fis, e> <gis, e> << { e1 } \\ { a,2( gis,4 fis,) } >> <e, e>1 <fis, e> <gis, e> << { e1 } \\ { a,2( gis,4 fis,) } >>
 <e, e>1 <fis, e>2 <gis, e> <a, e>1_\markup { \italic "cresc." } <ais, e> <b, e> <c! e> <b, fis>4\p r r2
 <b, dis>2( <cis e>4 <dis fis>) <e g!>1\p( <fis a> <g b> <a c'>2 <g b>4 <fis a>)
 <e g>1( <fis a> <g b> <a c'>2 <g b>4 <fis a>) <e g>1_\markup { \italic "cresc." }
 <fis a c' d'>2.^\fermata\arpeggio\sustainDown r4\sustainUp
 d,8\p d e, d fis, d d, d g, d a, d b, d g,\f d d, d e, d fis, d d, d g, b, fis,\p b, g, b, e, b,
 b,,8 b, cis, b, dis, b, b,, b, e, b, fis, b, g, b, e,\f b, b,, b, cis, b, dis, b, b,, b,
 e,8 b, fis, b, g, b, e, b, b,, b, cis, b, dis, b, b,, b, e, b, fis, b, g, b, e, b, b,, b, cis, b, dis, b, b,, b,
 e,8 e fis, e g, e e, e fis, e g, e a, e fis, e gis, e a, e b, e gis, e a, e b, e c e dis e
 e8 e' fis e' g e' e e' fis e' g e' a e' fis e' gis e' a e' b e' c' e' d' e' b e' gis e' b e'
 d'8 e' b e' gis e' b e' d' e' b e' a e' gis e' d' e' b e' gis e' b e' d' e' b e' a e' gis e'
 c8 c' a, a g,! g! fis, fis a, a fis, fis e, e dis, dis e, e c, c b,, b, ais,, ais, b,, b, ais,, ais, b,, b, <b,, b,>4
 <e, e>4\sf <g b> <g b> <g b> <e, e> <g b> <g b> <g b> <e, e> <g b> <g b> <g b>
 e4 <g b> e <g b> e <e' g'> b <e' g'> a, <e' g'> a <e' g'> d <d' f'!> a <d' f'> g, <d' f'> g <d' f'>
 c4 <c' e'> g <c' e'> c <c' e'> a <c' e'> b, b g e b, a, g, fis,
 e,4 r8 dis,8( e,2\sf) ~ e,4. dis,8( e,2\sf) ~ e,4. dis,8( e,4.) fis,8( g,4\staccato) r8 ais,8( b,4\staccato) r8 dis8( e1\sf)
 << { d!4( cis) b,\staccato cis\staccato d2 a,2 } \\ { a,!1 d,4 d,4\rest d,2\rest } >>
 \acciaccatura b,,16 b,1 \startTrillSpan <c, c>1\sf \stopTrillSpan
 <b,, b,>4( <a,, a,>) <gis,, gis,>\staccato <a,, a,>\staccato <b,, b,>2 e,2 fis,2 b,,4 a,,
 g,,4 g, g, g, c, c c c b,, b, b, b, a,, a, a, a,
 g,,8\ff g, g, g g, g g, g c, c c c' c c' c c' b, b g e b, g, e, g, b,, b, a,, a, g,, g, fis,, fis,
 e,8 e dis e e, e fis, e g, e fis, e g, e e, e <b,, dis, fis, b,>4\staccato r r2 <b, dis fis b>4\staccato r r2
 e,8 e dis e e, e fis, e g, e fis, e g, e e, e <b,, dis, fis, b,>4\staccato r r2 <b, dis fis b>4\staccato r r2
 <e, g, b, e>4\sf\staccato r r2 <b,, dis, fis, b,>4\sf\staccato r r2
 <e, g, b, e>4\sf\staccato r r2 <b,, dis, fis, b,>4\sf\staccato r r2
 <e, g, b, e>4\sf\staccato r r2 <b,, b,>4\sf\staccato r <a,, a,>\sf\staccato r <gis,, gis,>1\sf ~ <gis,, gis,>1^\fermata }
 \alternative { { <a,, a,>1\p ~ <a,, a,>2.^\fermata }
 { <a,, a,>4\p ~ \bar "" <a,, a,>2 ~ \partial 4 <a,, a,>4 ~ <a,, a,>2 ~ <a,, a,>4.^\fermata r8 } }
 <f, f>4\p <a c'> <a c'> <a c'> <f, f> <a c'> <a c'> <a c'> <f, f> <a c'> <a c'> <a c'> f <a c'> f <a c'>
 f4 <a c'> <a c'> <a c'> f <a c'> f <a c'> fis <a c'> <a c'> <a c'>
 <d d'>4\f( <c c'>) <bes, bes>\staccato <a, a>\staccato <g, g>4 r r2 <g,, g,>4 r r2 <g,, g,>4 r r2
 <g,, g,>4 r <g,, g,> r <g,, g,>1 <a,, a,> <g,, g,> <f,,! f,!>
 ees,2\f ~ ees,4. d,8( ees,2\sf) ~ ees,4. d,8( ees,2\sf) ~ ees,4. fis,8( g,4\staccato) r8 a,!8( bes,4\staccato) r8
 d8( <ees, ees>1) <d, d>4( <cis, cis>) <b,,! b,!>\staccato <c, c>\staccato <d, d>2 <a,, a,>
 \acciaccatura b,,!16 b,!1 \startTrillSpan <c, c>1 \stopTrillSpan
 <bes,, bes,>4( <a,, a,>) <g,, g,>\staccato <a,, a,>\staccato <bes,, bes,>2 <f,, f,>
 \acciaccatura g,,16 g,1 \startTrillSpan <aes,, aes,>1 \stopTrillSpan
 <g,, g,>4( <f,, f,>) <e,,! e,!>\staccato <f,, f,>\staccato
 <g,, g,>4 r e,2 \startTrillSpan <f,, f,>4 \stopTrillSpan r b,!2 \startTrillSpan <c, c>4 \stopTrillSpan r4 r2 R1 R1 R1
 <f, f>4 des'8 bes c' aes bes g aes f des' bes c' aes bes g aes f des' bes c' aes bes g aes f ges ees f des ees c
 bes,4 r8 bes,,8( bes,2) ~ bes,4. bes,8( bes2) ~ bes4. \clef treble bes8( bes'4\staccato) r4 R1
 \clef bass <ees, ees>4 ces'8 aes bes g aes f g ees ces' aes bes g aes f g ees ces' aes bes g aes f
 g8 ees f des ees c des bes, c aes, bes g aes f g ees f des ees c des bes, c aes, bes, g, aes f g e! f d
 e8 c des bes, c aes, bes, g, aes, f, <e g>4 <f aes> <g bes>
 <aes c'>4 <a c'> <bes des'> <c' ees'> <des' f'> <d! f> <ees g!> <f aes> <g bes> <g bes> <aes c'> <bes des'>
 <c' ees'>4 aes,,8 aes, bes,, bes, c, c des, des des, des ees, ees f, f g, g g,, g, aes,, aes, bes,, bes,
 c,8 c c, c d,! d! e, e f, f f,, f, f,, f, f,, f, f,, f, f,, f, f,, f, f,, f, ges,, ges, ges,, ges, ges,, ges, ges,, ges,
 aes,, aes, aes,, aes, aes,, aes, aes,, aes, <des, des>4 r r2 <des, des>4 r r2 <des, des>4 r r2
 <des, des>4 r <des, des> r <des, des>1 <des, des>1 <c, c>1 <bes, e>1
 <aes, f>2( <c, c>) ~ <c, c>4( <bes,, bes,> <aes,, aes,> <bes,, bes,>) <c, c>2( <f,, f,>) <g,, g,>( c,)
 <f,, f,>4\sf\staccato g,\staccato aes,\staccato f,\staccato <c, c>\sf\staccato d\staccato e\staccato c\staccato
 <f, f>\sf\staccato g\staccato aes\staccato f\staccato <c c'>\sf\staccato d'\staccato e'\staccato c'\staccato
 <f f'> \clef treble ees''4\p\staccato d''\staccato c''\staccato b'!\staccato c''\staccato b'\staccato aes'\staccato
 g'\staccato aes'\staccato g'\staccato f'\staccato ees'\staccato d'\staccato c'\staccato b\staccato
 \clef bass <c, c>\sf d\staccato ees\staccato c\staccato <g, g>\sf\staccato a\staccato b\staccato g\staccato
 <c c'>\sf\staccato d'\staccato ees'\staccato c'\staccato
 \clef treble <g g'>\sf\staccato a'\staccato b'!\staccato g'\staccato <c' c''>4\p bes'\staccato a'!\staccato g'\staccato
 fis'\staccato g'\staccato fis'\staccato ees'\staccato d'\staccato ees'\staccato d'\staccato c'\staccato
 \clef bass bes\staccato a\staccato g\staccato fis\staccato <g, g>\sf\staccato a\staccato bes\staccato g\staccato
 <d d'>\sf\staccato e'\staccato fis'\staccato d'\staccato
 \clef treble <g g'>\sf\staccato a'\staccato bes'\staccato g'\staccato a'\staccato g'\staccato f'!\staccato e'\staccato
 \clef bass <d, d>\sf\staccato e\staccato f\staccato d\staccato <a, a>\sf\staccato b\staccato cis'\staccato a\staccato
 <d d'>\sf\staccato e'\staccato f'\staccato d'\staccato e'\staccato d'\staccato c'!\staccato b\staccato
 a,,8\ff a, b,, b, c, c a,, a, e, e fis, fis gis, gis e, e a, a b, b c c' a, a e\ff e' d d' c c' b, b a, a g,! g! f,! f! e, e
 d,8 d c, c b,, b, a,, a, e,4 r r b,8( gis, e,4) r r c8( a, e,4) r r b,8( gis, e,4) r r c8( a, e,4)
 r4 r r8 e8( e,4) r r r8 e( e,4) r r r8 e( e,4) r r r8 e( e,4) r r2 R1
 r2 <e b d'>2\p <e b d'> <e b d'> <e b d'>1\pp ~ <e b d'>2. r4 a,,4 r4 r4 r8 a,8( a,,4) r4 r r8 a,8(
 a,,4) r r r8 a,( a,,4) r4 r r8 a,8( a,,4) r4 r2 R1 r2 <a, e g>2\p <a, e g>2_\markup { \italic "decresc." } <a, e g>2
 <a, e g>1\pp ~ <a, e g>2.^\fermata r4 <g,, d, g,>1^\pp ~ <g,, d, g,>2.^\fermata r4
 <g, d g>2. <bes, d>4( <a, e>) r4 r2 <d, d>4 r r2 <a,, a,>4 r r2 <d, d>4 r r2 <d, d>4 r <d, d> r <c, c> r r2
 <c, e, g, c>1\sustainDown <f, a, c f>1 ~ <f, a, c f>2.^\fermata r4\sustainUp
 r2 r4 \clef treble fis'4\pp( g'2.) fis'4( g'2.) fis'4( g'2.) \clef bass c'4( f2.) c4( f,2.) c,4( f,,2.) c,4\sf( f,) c,4\sf( f,) <a,, a,>4
 <d, d>2.\sf <f, f>4( <e, e>4) r4 r2 <a,, a,>4 r r2 <e, e>4 r r2 <a,, a,>4 r r2 <a,, a,>4 r <a,, a,>4 r
 <g,, g,>4 r r2 <g,, g,>4 r r2 <c, g, c>1\sf ~ <c, g, c>1^\fermata <g, b, d g>1\f <g,, b,, d, g,>1\sf <c, e, g, c>4 r r2
 r2 <a, cis e a>2 <d f a d'>1 <f, a, d f>1\sf
 <e, gis, b, e>4 r r2 r2 <e, e>2\sf( <f, f>4) f4 f f <f, f> f f f e, e e e e, e e e a,8\p a c' a c' a c' a c' a c' a c' a c' a
 a,,8 a, gis, a, a,, a, b,, a, c, a, b,, a, c, a, a,, a, <e, e> gis b gis b gis b gis b gis b gis b gis b gis
 e, e dis e e, e f, f e, e d,! d! c, c b,, b, <a,, a,>4 r r2 R1 a,,8 a, gis, a, a,, a, b,, a, c, a, b,, a, c, a, a,, a, e,4 r r2 R1
 e,8 e dis e e, e f,! f! e, e d,! d! c, c b,, b, <a,, a,>\f c e c e\sf c a, c a, c f c f\sf c a, c b, d f g b d' f' d' f' d' b g f g f d
 c8 e g e g\sf e c e cis e a e a\sf e cis e d f a f dis\sf fis b fis e g b g e\sf g c' g f a c' a
 fis\sf\staccato a d' a g\sf\staccato b d' b gis\sf\staccato b e' b a\sf\staccato c' e' c' \clef treble b\sf\staccato d' gis' d'
 c'\sf\staccato e' a' e' dis'\sf\staccato fis' a' fis' e' gis' b' gis' f'!\ff gis' b' gis' f' gis' b' gis' f' gis' b' gis' f' gis' b' gis'
 \clef bass e4 e'( a a' dis dis') e8 gis b gis f!\ff gis b gis f gis b gis f gis b gis f gis b gis e,4( e a, a dis, dis)
 e,8 gis, b, e c\sf e c a, e, gis, b, e c\sf e c a, e, gis, b, e c\sf e c a, e, gis, b, e c\sf e c a,
 e,8 gis, b, e e,\sf gis, b, e e,\sf gis, b, e e,\sf gis, b, e e,\sf gis, b, e e,\sf gis, b, e e,\sf gis, b, e e,\sf gis, b, e
 << { s1 e,2( fis,4 gis,) } \\ { <e, e>1 ~ <e, e>1 } >> <a,, a,>1 <b,, a,> <cis, a,> << { a,1 } \\ { d,2( cis,4 b,,) } >>
 <a,, a,>1 <b,, a,> <cis, a,> << { a,1 } \\ { d,2( cis,4 b,,) } >> <a,, a,>1 << { a,1 } \\ { b,,2( cis,) } >>
 <d, a,>1_\markup { \italic "cresc." } <dis, a,> <e, a,> <f,! a,> <e, b,>4 r r2
 <e gis>2( <fis a>4 <gis b>) <a c'!>1\p( <b d'> <c' e'> <d' f'!>2 <c' e'>4 <b d'>) <a c'!>1( <b d'> <c' e'> <d' f'!>2 <c' e'>4 <b d'>)
 <a c'>1_\markup { \italic "cresc." } <b d' f' g'>2.\p^\fermata\arpeggio\sustainDown r4\sustainUp
 g,,8^\p g, a,, g, b,, g, g,, g, c, g, d, g, e, g, c, g, g,, g, a,, g, b,, g, g,, g, c, g, d,^\p g, e, g, c, g,
 e, e fis, e gis, e e, e a, e b, e c e a, e e, e fis, e gis, e e, e a, e b, e c e a, e e, e fis, e gis, e e, e a, e b, e c e a, e
 e, e fis, e gis, e e, e a, a b, a c\sf a a, a b, a c a d\sf a b, a cis a d a e\sf a cis a d a e a f a gis a
 \clef treble a8 a' b a' c'\sf a' a a' b a' c' a' d'\sf a' a a' cis' a' d' a' e'\sf a' f' a'
 g'\sf a' e' a' cis' a' e' a' g'\sf a' e' a' cis' a' e' a' g'\sf a' e' a' d' a' cis' a'
 \clef bass g8\sf a e a cis a e a g\sf a e a d a cis a f,\sf f d, d c,! c! b,,! b,! d,\sf d b,, b, a,, a, gis,, gis,
 a,,8\sf a, f,, f, e,4 dis, e, dis, e, e, <a,, a,>4 <c e> <c e> <c e> <a,, a,>4 <c e> <c e> <c e> <a,, a,>4 <c e> <c e> <c e>
 a,4\staccato <a c'> a,\staccato <a c'> a,4\staccato <a c'> e <a c'> d,\staccato <a c'> d <a c'>
 g,\staccato <g bes> d <g bes> c,\staccato <g bes> c <g bes> f,\staccato <f a>\staccato c\staccato <f a>\staccato
 f,\staccato <f a> d <f a> e, e c a, <e, e> <d, d> <c, c> <b,, b,>
 <a,, a,>4 r8 gis,8( a,2\sf) ~ a,4. gis,8( a,2\sf) ~ a,4. gis,8( a,4.\sf) b,8( c4\staccato) r8 dis( e4\staccato) r8 gis( a1\sf)
 << { g!4( fis) e\staccato fis\staccato g2 d2 } \\ { d1 g,4 e,4\rest e,2\rest } >>
 \acciaccatura c,16 e1 \startTrillSpan f1\sf \stopTrillSpan <e, e>4(  <d, d>) <c, c>\staccato <d, d>\staccato
 <e, e>2 <a,, a,> <b,, b,> e,4 d, c,\sf c c c f, f f f e, e e e e, e d, d
 c,8\ff c c c' c c' c c' f, f f f' f f' f f' e e' c' a e c a, c e, e d, d c, c b,, b, a,, a, gis, a, a,, a, b,, a, c, a, b,, a, c, a, a,, a,
 <e, gis, b, e>4\staccato r r2
 <e gis b e'>4\staccato r r2 a,,8 a, gis, a, a,, a, b,, a, c, a, b,, a, c, a, a,, a,
 <e, gis, b, e>4\staccato r r2 <e gis b e'>4\staccato r r2 <a, c e a>4\sf\staccato r r2
 <e, gis, b, e>4\sf\staccato r r2 <a, c e a>4\sf\staccato r r2 <e, gis, b, e>4\sf\staccato r r2 <a, c e a>4\sf\staccato r r2
 <c e g c'>4\sf\staccato r r2 <f, a, c f>4\sf\staccato r r2 <a, cis e a>4\sf\staccato r r2
 <d, f, a, d>4\sf\staccato r r2 <f, a, c! f>4\sf r <f,, f,>\sf r <f,, f,>\sf r <f,, f,>\sf r <f,, f,>\sf r <f,, f,>\sf r
 << { bes,1^\sf } \\ { bes,,4 b,,4\rest b,,2\rest } >>
 a,8\p bes, ees bes, g, bes, ees bes, a, bes, d bes, f, bes, d bes, a, bes, cis bes, e,! bes, cis bes,
 a, bes, d bes, f, bes, d bes, a, bes, ees bes, g, bes, ees bes, a,\pp bes, d bes, f, bes, d bes, a, bes, ees bes, g, bes, ees bes,
 a, bes, d bes, f, bes, d bes, f, bes, d bes, f, bes, d bes, gis, a, d a, f, a, d a, f, a, d a, f, a, d a,
 e,! gis, d gis, f, a, d a, e, gis, d gis, f, a, d a, e, gis, d gis, f, a, d a, e, fis, gis, a, b, c d e
 f2.\ff a,4 gis,4\staccato e,\staccato e,\staccato gis,\staccato <a,, a,>\sf\staccato e,\staccato e,\staccato a,\staccato
 <b,, b,>4\sf\staccato e,\staccato e,\staccato b,\staccato
 <c, c>4\sf\staccato e,\staccato <cis, cis>\sf\staccato e,\staccato <d, d>\sf\staccato e,\staccato
 <dis, dis>\sf\staccato e,\staccato e4 e, f,\sf f fis fis, g,\sf g,, gis,, gis, a,,\sf a, bes,,\sf bes, b,,\sf b,
 c,4 c cis, cis d, d dis, dis e, e f, f d,! d! e, e <c e c'>1\sf <b, e b>1\sf
 <a, e a>2 <e, e>2 ~ <e, e> <e, e>2 ~ <e, e>4 <e, e> <d, d> <c, c> <b,, b,> <f, f> <e, e> <d, d> <c, e, c>1\sf
 <b,, e, b,>1\sf <a,, e, a,>2 <e, e>2\sf ~ <e, e>4 <f, f> <e, e> <d, d> <c, c>4 <b,, b,> <a,, a,> <g,, g,> <f,, f,> d, e, e
 <a,, a,>4 r r2 R1 <a,, a,>4\p r <c, c> r <e, e> r <c, c> r <a,, a,> r r2 R1
 <a,, a,>2( <c, c> <e, e> <c, c> <a,, a,> <c, c> <e, e> <c, c> <a,, a,> <c, c> <e, e> <c, c>)
 <a,, a,>8\pp a,( c a, c a, c a,) c8 a, c a, c a, c a, c a, c a, c a, c a, c a, c a, c a, c a, <f, a, c>1 ~ <f, a, c>1
 <bes,, f, bes,>1 ~ <bes,, f, bes,>2.^\fermata r4 <d, d>1 <f, d f> <a, e a>1 ~ <a, e a>2.^\fermata r4
 <e, gis, b, e>4\f\staccato r r2 <e gis b e'>4\staccato r r2 <a, c e a>8\staccato b,8[ c d] e fis gis e a8 g! f! e d c b, a,
 <e, gis, b, e>4\staccato r r2 <e gis b e'>4\staccato r r2 <a, c e a>8\staccato b,8[ c d] e fis gis e
 a8 g! f! e d c b, a, <e, gis, b, e>4\staccato r r2 <e gis b e'>4\staccato r r2
 <a, c e a>8\f a8[ g! f] e f e d c\sf f e d c d c b, a,\sf f, e, d, c, d, c, b,,
 a,,8\ff f, e, d, c, d, c, b,, a,,4 r r2 <e, gis, b, e>4\staccato r r2 <a,, c, e, a,>4\staccato r r2^\fermata \bar "|."
}