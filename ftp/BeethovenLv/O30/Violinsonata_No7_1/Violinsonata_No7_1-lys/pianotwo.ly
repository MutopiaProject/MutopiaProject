\version "2.10.3"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key c \minor
 \time 4/4
 g2.\p( ees16 f g ees c4\staccato) r4 r2 c'2.( aes16 bes c' aes f4\staccato) r4 r2
 \clef bass f2 ~ f8 ees8\staccato d\staccato c\staccato
 b,4\staccato( bes,\staccato a,\staccato aes,\staccato) g,2\p <c, g,> <g,, g,>1
 c,1\p c,16 b,, c, b,, c, b,, c, b,, c, b,, c, b,, c, b,, c, b,, c,1 c,16 b,, c, b,, c, b,, c, b,, c, b,, c, b,, c, b,, c, b,,
 c,1 \new Voice { \stemDown c,2. ees,4 } << { g,1 } \\ { g,2\sf g,,2 } >>
 \new Voice { \stemDown e,16\rest c,16( ees, g,) c4 c16\rest c16( ees g) c'4\staccato }
 \clef treble <d' f' aes'>2 ~ <d' f' aes'>8 <d' f' aes'> <d' f' aes'> <d' f' aes'>
 <ees' g'>2 ~ <ees' g'>8 ees'( aes' fis') << { g'4( ees' <d' f'!> f') ees'4 } \\ { g2 g c'4 } >> r4 r2
 \clef bass r8 b,8( c d ees c aes, fis,)
 g,8\staccato <g, c ees g> <g, c ees g> <g, c ees g> r <g, d f! g> <g, d f g> <g, d f g>
 <c, ees, g, c>4\ff r <g,, b,, d, g,> r <c, ees, g, c>4 r r2
 \clef treble << { g'2. g'4( ~ g'4 fis' g') } \\ { <d' f'>2. <c' ees'>4 g2. } >> r4
 \clef bass <c, ees, g, c>4\ff\staccato r <bes,,! d, f,! bes,!>4\staccato r <bes, d f bes>\staccato r r2 R1 R1
 R1 R1 R1 R1 R1 r2 r4 bes,8.\p\staccato bes,16\staccato
 ees4\staccato ees8.\staccato ees16\staccato bes,4\staccato bes,8.\staccato bes,16\staccato
 g,2 ~ g,8.[ ees,16\staccato f,8.\staccato g,16\staccato]
 aes,4\staccato aes,8.\staccato g,16\staccato f,4\staccato f,8.\staccato ees,!16\staccato
 d,4( f,2\sf) d,8.\staccato ees,16\staccato f,4\staccato f,8.\staccato g,16\staccato
 aes,8.\staccato[ bes,16\staccato c8.\staccato d16\staccato] ees2. c8.\staccato aes,16\staccato
 bes,4\p\staccato bes,8.\staccato bes,16\staccato bes,4\staccato bes,8.\staccato bes,16\staccato
 ees2. ces8.\staccato bes,16\staccato
 a,4\staccato a,8.\staccato a,16\staccato a,4\staccato a,8.\staccato a,16\staccato
 bes,,16 bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes,
 bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes,
 bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes,
 bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes,
 bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes, bes,, bes,
 bes,, bes, bes,, bes, bes,, bes, bes,, bes, c, bes, c, bes, d, bes, d, bes,
 ees,4 r4 r8 d16( ees f8\staccato) bes,8\staccato
 <ees, ees>4 r8 <bes,, bes,> <ees, ees>4 r8 <bes, bes> <ees ees'>4\sf r4 r8 d16( ees f8\staccato bes,\staccato)
 ees8\staccato e16( f g8\staccato) c\staccato f8\staccato g16( aes bes8\staccato) ees\staccato
 aes8\staccato d16( ees f8\staccato) bes,\staccato ees8\staccato d16( ees f8\staccato) bes,\staccato
 ees8\f\staccato[ <bes, bes>\staccato] <ees ees'>\staccato[ <bes, bes>\staccato]
 <ees ees'>\staccato[ <bes, bes>\staccato] <ees ees'>\staccato[ <bes, bes>\staccato] <g, g>2\ff <g,, g,>2
 <aes,, aes,>2 <a,, a,>2 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { <bes,, bes,>8[ ees g] bes[ g ees] bes,[ ees g] bes[ g ees] bes,[ ees g] bes[ g ees] bes,[ ees g] bes,[ d aes] }
 <ees g>8\p\staccato g'16( f') ees' d' c' bes aes g f ees d c bes, aes,
 g,16 bes, ees g aes\sf( f) d\staccato aes,\staccato g, bes, ees g aes\sf( f) d\staccato aes,\staccato
 \new Voice { \stemUp g,8[ \stemDown g'16 f'] ees' d' c' bes aes g f ees d c bes, aes, }
 g,8 e16( f g8\staccato) c\staccato f\staccato g16( aes bes8\staccato) ees\staccato
 aes8\staccato d'16( ees' f'8\staccato) bes\staccato ees'8\staccato bes16( c' d'8\staccato) bes\staccato
 ees'8\staccato\f[ <bes, bes>\staccato] <ees ees'>\staccato[ <bes, bes>\staccato]
 <ees ees'>\staccato[ <bes, bes>\staccato] <ees ees'>\staccato[ <bes, bes>\staccato]
 <g, g>2\ff <g,, g,>2 <aes,, aes,>1\sf <f,, f,>2 <ees, ees> <d, bes, d>1\sf
 <ees, ees>4\staccato r <aes,, aes,>\ff\staccato r <bes,, bes,>4\ff\staccato r r2 <bes,, bes,>4\ff\staccato r r2
 bes,2.( g,16 aes, bes, g, ees,1) ces2.( aes,16 bes, ces aes, ees,1) bes,2.( ges,16 aes, bes, ges, ees,1)
 fis,2.( dis,16 e, fis, dis, b,,1) g,!2.( e,16 fis, g, e, b,,1) fis,2.( d,16 e, fis, d, b,,1) d,2.( b,,16 c,! d, b,, g,,1)
 ees,!2.( c,16 d, ees, c, g,,1) d,2.( b,,16 c, d, b,, g,,4\staccato)
 b,,16_\markup { \italic "cresc." }( c, d, b,, g,,4\staccato) b,,16_( c, d, b,, g,,4\staccato) b,,16( c, d, b,, g,,4\staccato)
 c,16( d, ees, c, g,,4\staccato) d,16( ees, f, d, g,,4\staccato) ees,16( f, g, ees,)
 <aes,, aes,>4\fp\staccato aes8.\staccato aes16\staccato ees4\staccato ees8.\staccato ees16\staccato
 c2 ~ c8. aes,16\staccato bes,8.\staccato c16\staccato des4\staccato des8.\staccato c16\staccato bes,4\staccato bes,8.\staccato aes,16\staccato
 \new Voice { \stemDown g,4\staccato g,8.\staccato f,16\staccato ees,8\staccato g,8\rest g,4\rest }
 aes,,16\p aes, bes,, bes, c, c des, des ees, ees f, f g, g ees, ees aes,4 r r8 c, c, c,
 f,,16\f f, g,, g, aes,, aes, bes,, bes, c, c d, d e, e c, c <f, f>4 r r8 r16 <aes,, aes,>16\staccato[ <bes,, bes,>8.\staccato <c, c>16\staccato]
 <des, des>4\f\staccato <des, des>8.\staccato <des, des>16\staccato <aes,, aes,>4\staccato <aes,, aes,>8.\staccato <aes,, aes,>16\staccato
 <f,, f,>2.\sf <f, f>8.\staccato <f, f>16\staccato
 <bes, bes>4\staccato <bes, bes>8.\staccato <bes, bes>16\staccato <f, f>4\staccato <f, f>8.\staccato <f, f>16\staccato
 <des, des>2.\sf <des, des>8. <des, des>16 <ges,, ges,>8 bes,8\staccato[ des\staccato f\staccato] ges\staccato[ bes\staccato]
 des'\staccato[ f\staccato] e16[ r g! r bes r g] r e[ r g r e r c] r <f, f>8\staccato[ aes\staccato] c'\staccato[ e'\staccato]
 \clef treble f'\staccato[ g'\staccato] aes'\staccato[ c'\staccato] \clef bass b\staccato[ d'!\staccato] f'\staccato[ d'\staccato] b\staccato[ d'\staccato]
 b\staccato[ g\staccato] <c, c>\staccato[ ees!\staccato] g\staccato[ b\staccato] c'\staccato[ d'\staccato] ees'\staccato[ b\staccato]
 c'8\staccato[ fis\staccato] g\staccato[ d\staccato] ees\staccato[ b,\staccato] c\staccato[ aes,\staccato]
 g,16\p( aes, g, a, g, bes,! g, b, g, c g, cis g, d g, ees) g, e g, f g, aes! g, g g,_\markup { \italic "decresc." } f g, ees! g, d g, c!
 g,16\pp b, d b, g, b, d b, g, b, d b, g, b, d b, g, c ees c g, c ees c g, c ees c g, c ees c
 g,_\markup { \italic "cresc." } b, g, a, g, bes, g, b, g, c g, cis g, d g, ees g, e g, f g,_\markup { \italic "decresc." } aes! g, g g, f g, ees! g, d g, c!
 g,16\p b, d b, g, b, d b, g, b, d b, g, b, d b, g,_\markup { \italic "decresc." } c ees c g, c ees c g, c ees c g, c ees c
 g,\pp b, d b, g, b, d b, g, c ees c g, c ees c g, b, d b, g, b, d b, g, c ees c g, c ees c
 \setTextCresc b,\< g, aes,! g, aes, g, aes, g, aes, g, aes, g, aes, g, aes, g, aes, g, aes, g, f, g, f, g, ees, g, ees, g, d, g, d, g,\!
 <c, ees, g,>2.\ff ees16( f g ees c4\staccato) r4 r2 c'2.\sf( aes16 bes c' aes f4\staccato) r4 r2
 f2\p( ~ f8 ees) d\staccato c\staccato b,4\staccato_\markup { \italic "cresc." }( bes,\staccato a,\staccato aes,\staccato)
 g,2\p <c, g,> <g,, g,>1 aes,2 <des, aes,> <aes,, aes,>1 r2 <f,, f,>2 <g,, g,>1
 << { b2\rest aes2( ~ aes2 g4 f) } \\ { <c ees>1_\markup { \italic "cresc." } <b, d>1 } >>
 << { c,1 } \\ { \once \override Staff.DynamicLineSpanner #'padding = #3
 s2\sustainDown s4 s8 s16 s16\sustainUp } >> c,16 b,, c, b,, c, b,, c, b,, c, b,, c, b,, c, b,, c, b,,
 << { c,1 } \\ { \once \override Staff.DynamicLineSpanner #'padding = #3
 s2\sustainDown s4 s8 s16 s16\sustainUp } >> c,16 b,, c, b,, c, b,, c, b,, c, b,, c, b,, c, b,, c, b,,
 c,1 \new Voice { \stemDown c,2. ees,4 } << { g,1 } \\ { g,2\sf g,,2 } >>
 \new Voice { \stemDown e,16\rest c,16( ees, g,) c4 c16\rest c16( ees g) c'4\staccato }
 \clef treble <d' f' aes'>2 ~ <d' f' aes'>8 <d' f' aes'> <d' f' aes'> <d' f' aes'>
 <ees' g'>2 ~ <ees' g'>8 ees'( aes' fis') << { g'4( ees' <d' f'!> f') ees'4 } \\ { g2 g c'4 } >> r4 r2
 \clef bass r8 b,8( c d ees c aes, fis,) g,8\staccato <g, c ees g> <g, c ees g> <g, c ees g> r <g, d f! g> <g, d f g> <g, d f g>
 <c, ees, g, c>4\ff r <g,, b,, d, g,> r <c, ees, g, c>4 r \clef treble r4 <c' ees' g'>4\p
 << { g'2. g'4( ~ g'4 fis' g') } \\ { <d' f'>2. <c' ees'>4 g2. } >> r4
 \clef bass <c, ees, g, c>4\ff\staccato r <bes,, d, f,! bes,>\staccato r <bes, d f bes>\staccato r r2 <g, bes, e g>4\sf\staccato r r2
 <aes, c f aes>4\sf\staccato r <aes,, aes,>\staccato r <g,, g,>4 r r2 R1 R1 R1 R1 R1 R1 R1 r2 r4 g,8.\p\staccato g,16\staccato
 c4\staccato c8.\staccato c16\staccato g,4\staccato g,8.\staccato g,16\staccato
 e,2 ~ e,8. c,16\staccato d,8.\staccato e,16\staccato f,4\staccato f,8.\staccato e,16\staccato d,4\staccato d,8.\staccato c,16\staccato
 b,,4( d,2\sf) b,,8.\staccato c,16\staccato d,4\staccato d,8.\staccato e,16\staccato
 f,8.\staccato g,16\staccato a,8.\staccato b,16\staccato c2.\sf a,8.\staccato f,16\staccato
 g,4\p\staccato g,8.\staccato g,16\staccato g,4\staccato g,8.\staccato g,16\staccato c2. aes,!8.\staccato g,16\staccato
 fis,4\staccato fis,8.\staccato fis,16\staccato fis,4\staccato fis,8.\staccato fis,16\staccato g,,16\p g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g,
 g,,16 g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g,
 g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, g,, g, a,, g, b,, g, c,4 r r8 b,16( c d8\staccato) g,8\staccato
 c4\staccato r8 <g, g>8\staccato <c c'>4\staccato r8 <g, g>\staccato <c c'>4\sf\staccato r4 r8 b,16( c d8\staccato) g,8\staccato
 c8\staccato c16( des ees8\staccato) aes,\staccato des8\staccato e16( f g8\staccato) c\staccato
 f8\staccato d'!16( ees'! f'8\staccato) g\staccato c'8\staccato d'16( ees' f'8\staccato) g\staccato
 c'8\f\staccato[ <g, g>\staccato] <c c'>\staccato[ <g, g>\staccato] <c c'>\staccato[ <g, g>\staccato] <c c'>\staccato[ <g, g>\staccato]
 <ees, ees>2\ff <e, e> <f, f>\sf <f,, f,>
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3
 { <g,, g,>8[ c ees] g[ ees c] g,[ c ees] g[ ees c] g,[ c ees] g[ ees c] g,[ c ees] g,[ b, f] }
 c16 g fis g f ees d c b, c d c b, aes, g, f, ees, g, c ees f( d) b,\staccato f,\staccato ees, g, c ees f( d) b,\staccato f,\staccato
 ees,16 g fis g f ees d c b, c d c b, aes, g, f, ees,8 c16( des ees8\staccato) aes,\staccato des8( e16 f g!8\staccato) c\staccato
 f8 b16( c' d'!8\staccato) g\staccato c'8 b16( c' d'8\staccato) g\staccato
 c'8\staccato[ <g, g>\staccato] <c c'>\staccato[ <g, g>\staccato] <c c'>\staccato[ <g, g>\staccato] <c c'>\staccato[ <g, g>\staccato]
 <ees, ees>2\ff <e, e> <f, f>1\sf <des, des>2 <c, c> <b,, g, b,>1\sf
 <c, c>4\ff\staccato r <f,, f,>\ff\staccato r <g,, g,>\ff\staccato r r2 <g,, g,>4\ff\staccato r r2
 g,2.( e,16 f, g, e, c,1) aes,2.( f,16 g, aes, f, c,1) g,2.( e,16 f, g, e, c,1) aes,2.( f,16 g, aes, f, c,1)
 c,16 g, c, g, c, g, c, g, c, g, c, g, c, g, c, g, c, g, c, g, c, g, c, g, c, g, c, g, c, g, c, g, <bes,, bes,>4\ff\staccato <bes, e g>\staccato r2
 r4 e16\p( f g e c4\staccato) r4 \new Voice { \stemDown <aes,, aes,>4\ff\staccato } <aes, c f aes>4\staccato r2
 r4 aes16\p( bes c' aes f4\staccato) aes16( bes c' aes)
 des'4\pp\staccato des'8.\staccato des'16\staccato aes4\staccato aes8.\staccato aes16\staccato
 f2 ~ f8. des16\staccato ees!8.\staccato f16\staccato
 ges4\staccato ges8.\staccato f16\staccato ees4\staccato ees8.\staccato des16\staccato
 c2 ~ c8.\staccato c16\staccato des8.\staccato ees16\staccato
 f4\staccato f8.\staccato ees16\staccato des4\staccato des8.\staccato c16\staccato
 bes,8.\staccato des16\staccato c8.\staccato bes,16\staccato aes,8.\staccato c16\staccato bes,8.\staccato aes,16\staccato
 g,8.\staccato bes,16\staccato aes,8.\staccato g,16\staccato f,4( g, aes,2_\markup { \italic "cresc." } <aes,, aes,>)
 <g,, g,>16\p aes, g, b, g, aes, g, b, g, aes, g, b, g, aes, g, b,
 g,_\markup { \italic "cresc." } aes, g, c g, aes, g, c g, aes, g, c g, aes, g, c g, aes, g, d g, aes, g, d g, aes, g, e g, aes, g, e
 g, f g, f g, f g, f g, fis g, fis g, fis g, fis g,\f g c' g ees g c ees g, c ees, g, c, g, ees, c,
 aes,,16 g, g,, g, aes,, g, g,, g, aes,, g, g,, g, aes,, g, g,, g, c, c b,, b, c, c d, d ees, ees f, f g, g ees, ees c, c b,, b, c, c d, d ees, ees e, e f, f g, g
 aes,16 aes e, e f, f g, g aes, aes bes,! bes c c' aes, aes f, f g, g aes, aes g, g f, f ees,! ees! d, d c, c
 b,, b, d, d f, f g, g aes, aes d, d g, g f, f ees, ees g, g b, b c c' ees ees' c c' aes, aes fis, fis
 g,\p g c c' ees ees' c c' g, g b, b d d' g g' ees8( g fis g f ees d c) b,( d f g aes d g f) ees( g b c' ees' c' aes fis) g( ees c ees g fis g g,)
 <c c'>8\f\staccato[ <g g'>\staccato] <ees ees'>\staccato[ <c c'>\staccato] <g, g>\staccato[ <c c'>\staccato] <g, g>\staccato[ <ees, ees>\staccato]
 <c, c>8\staccato[ <g, g>\staccato] <ees, ees>\staccato[ <c, c>\staccato] <b,, b,>\sf\staccato[ <d, d>\staccato] <g,, g,>\staccato[ <b,, b,>\staccato]
 <c, c>8\staccato[ <g g'>\staccato] <ees ees'>\staccato[ <c c'>\staccato] <g, g>\staccato[ <c c'>\staccato] <g, g>\staccato[ <ees, ees>\staccato]
 <c, c>8\staccato[ <g, g>\staccato] <ees, ees>\staccato[ <c, c>\staccato] <b,, b,>\sf\staccato[ <d, d>\staccato] <g,, g,>\staccato[ <b,, b,>\staccato]
 <c, c>8\staccato[ <g, g>\staccato] <ees, ees>\staccato[ <c, c>\staccato] <b,, b,>\sf\staccato[ <d, d>\staccato] <g,, g,>\staccato[ <b,, b,>\staccato]
 c,16\ff c g, g ees, ees c, c b,, b, d, d g,, g, b,, b, <c, c>4\staccato r <c, ees, g, c>\staccato r
 << { <ees g c'>4\staccato } \\ { <c, ees, g, c>4\staccato } >> r4 r2 \bar "|."
}