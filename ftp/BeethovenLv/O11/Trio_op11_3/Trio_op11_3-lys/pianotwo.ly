\version "2.10.3"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key bes \major
 \time 4/4
 \partial 8*3 r8 r4 bes,4 r bes4 r bes,4 r bes4 r f,4 r f4 r bes,4 <bes, bes> <bes, bes> r
 <bes,, bes,>4 r <ees, ees> r <bes,, bes,> r <bes,, bes,> r <f, f> r <f, f> r
 <bes,, bes,>4 <bes,, bes,> <bes,, bes,> r f,4\staccato a,\staccato c\staccato r
 f,\staccato bes,\staccato d\staccato r f,\staccato a,\staccato c\staccato r f,\staccato bes,\staccato d\staccato r
 bes,8 d f bes bes, ees g bes bes, d f bes bes, d f bes f, a, c f f, a, c f bes,, bes, bes,, bes, bes,, \bar "|."
 \break

 << { f16^\p( d) f4\rest d16( f a bes) } \\ { g,8\rest bes,,16( d, f, bes,) f,4\rest } >>
 bes,16^\markup { \italic "cresc." }( ees g bes) r4 \clef treble bes16( d' f' bes') R1
 \clef bass r4 <f, ees>4\p <f, ees> <f, ees> <bes, ees>2( <bes, d>8^\p)
 << { f16( d) f4\rest d16( f a bes) } \\ { g,8\rest bes,,16( d, f, bes,) f,4\rest } >>
 bes,16^\markup { \italic "cresc." }( ees g bes) r4 \clef treble bes16( d' f' bes') R1
 \clef bass r4 <f, ees>4\p <f, ees> <f, ees> <bes, ees>2( <bes, d>8) f8^\p( e f)
 ees!8( f c f f, f e f) d( f bes, f f, f e f) ees!( f c f f, f e f) d( f bes, f) r2
 \clef treble r8 f''\sf([ e'' f'']) d''\staccato d''\sf([ cis'' d'']) bes'8( c''!) d''\staccato c''\staccato
 bes'8\staccato aes'\staccato g'\staccato f'\staccato ees'4\f r \clef bass <f c' ees'> r
 <bes, d f bes>4 <bes,, bes,> <bes,, bes,>8 \bar "|."
 \break

 s8 s4 \bar "" R1 R1 R1 R1 R1 R1 R1 R1 \bar "||"
 \repeat volta 2 { R1 R1 R1 R1 R1 R1 R1 }
 \alternative { { R1 } { r2 r8 } } \bar "|."
 \break

 r8 r4 <bes,, bes,>4.\f <d, d>8 <ees, ees>4. <g, g>8 <bes, bes>4\staccato <bes, bes>\staccato r2
 a,4. f,8 c4. f,8 bes,4\staccato bes,\staccato r2
 <bes,, bes,>4. <d, d>8 <ees, ees>4. <g, g>8 <bes, bes>4\staccato <bes, bes>\staccato r2
 <f, f>4 r <f,, f,> r <bes,, bes,>4 r r2 ees8\p( f c f f, f ees f) d( f bes, f f, f d f) ees( f c f f, f ees f)
 \new Voice { \stemDown d8_( f bes, d f, bes, d, f,) } <bes,, bes,>4.\ff <d, d>8 <ees, ees>4. <g, g>8
 bes,4 <bes, bes>4 r2 <f, f>4 r <f,, f,> r <bes,, bes,>4 r r \bar "|."
 \break

 \key bes \minor
 r4 <bes,, bes,>2( <a,, a,> <bes,, bes,>4\staccato) r4 r2 <f, f>2( <e, e> <f, f>4\staccato) r4 r2
 <bes, des f>2( <a, c ees! ges!> <bes, des f>4\staccato) r4 r2 ees,4( e, f, f,,)
 bes,,4\staccato f,,\staccato bes,,\staccato r <ges,,! ges,!>2\pp <f,, f,> <ges,, ges,>4\staccato r4 r2
 <ges,, ges,>2 <ges,, ges,>( <f,, f,>4\staccato) r4 r2 <bes, des f>2( <a, c ees! ges> <bes, des f>4\staccato) r4 r2
 ees,4( e, f, f,,) bes,,4\staccato f,,\staccato bes,,\staccato \bar "|."
 \break

 \key bes \major
 << { bes,16^\ff( a, bes, a,) bes,8\staccato^\sf c16( d ees f g a) s2 } \\
 { bes,,16\ff( a,, bes,, a,,) bes,,8\sf\staccato c,16( d, ees, f, g, a,) bes,8\sf\staccato c16( d ees f g a) } >>
 \clef treble bes8\sf\staccato c'16( d' ees' f' g' a') bes'8\sf\staccato r8 r4
 << { c''2 ees'' <bes' d''>4\staccato } \\ { <f' a' c''>1\p s4 } >> r4 \clef bass r2
 << { bes,8^\ff\staccato c16( d ees f g a) s2 } \\
 { bes,,8\ff\staccato c,16( d, ees, f, g, a,) bes,8\sf\staccato c16( d ees f g a) } >>
 \clef treble bes8\sf\staccato c'16( d' ees' f' g' a') bes'8\sf\staccato r8 r4
 << { c''2 ees'' } \\ { <f' a' c''>1\p } >> << { ees''2( d''4) } \\ { bes'2. } >> \clef bass << { f16( e f e) } \\ { g,4\rest } >>
 << { f8^\f\staccato g16( a bes c' d' ees') } \\ { <ees,! ees!>4.\sf <c, c>8 } >> <ees, ees>4.\sf <c, c>8
 <d, d>4.\sf <bes,, bes,>8 <d, d>4.\sf <bes,, bes,>8 <ees, ees>4.\sf <c, c>8
 << { f'8^\sf\staccato ees'16( d' c' bes a g) } \\ { <ees, ees>4.\sf \stemDown <c, c>8 } >>
 << { f8 ees16( d c bes, a, g,) r2 bes,8^\ff\staccato c16( d ees f g a) } \\
 { <d, d>4 d,4\rest f,16( e, f, g, f, ees, d, c,) bes,,8\ff\staccato c,16( d, ees, f, g, a,) } >>
 bes,8\staccato c16( d ees f g a) \clef treble bes8\staccato c'16( d' ees' f' g' a') bes'8\staccato r8 r4
 << { c''2 ees'' } \\ { <f' a' c''>1\p } >> \set doubleSlurs = ##t <bes' ees''>2( <bes' d''>8\staccato)
 \set doubleSlurs = ##f \bar "|."
 \break

 \clef bass r8 r4 r4 <bes, bes> r <bes, bes> r4 <bes, bes> r2 r4 <f, f> r <f, f> r4 <bes,, bes,> r2
 <bes,, bes,>4 r <bes,, bes,> r <bes,, bes,> r r2 r4 <f, f> <f, f> <f, f> r4 <bes,, bes,> <bes, bes> r R1
 r4 e,8( f,) f,( bes,,) r4 R1 r4 g,8( f,) f,( bes,,) r4 r4 <bes, bes> r <bes, bes>r4 <bes, bes> r2
 r4 <f, f> <f, f> <f, f> r4 <bes,, bes,> <bes, bes> \bar "|."
 \break

 \key bes \minor
 r4 r4 <f bes des'>8.\p\staccato <f bes des'>16\staccato
 <ges bes ees'>8.\staccato <ges bes ees'>16\staccato <ees bes c'>8.\staccato <ees bes c'>16\staccato
 <f bes des'>4\staccato <des bes>8.\staccato <des bes>16\staccato
 <f des'>8.\staccato <f des'>16\staccato <des bes>8.\staccato <des bes>16\staccato
 <c a>4\staccato <a c'>8.\staccato <a c'>16\staccato <a f'>8.\staccato <a f'>16\staccato
 <c' ees'>8.\staccato <c' ees'>16\staccato \clef treble <bes des'>4\staccato <bes des'>8. <bes des'>16
 <des' f'>8. <des' f'>16 <des' bes'>8. <des' bes'>16
 <f' des''>4 <f' bes' des''>8. <f' bes' des''>16 <ges' bes' ees''>8. <ges' bes' ees''>16
 <ees' bes' c''>8. <ees' bes' c''>16 <f' bes' des''>8. <f' bes' des''>16
 <des' f' bes'>8. <des' f' bes'>16 <bes des' f'>8. <bes des' f'>16 <bes des' e'>8. <bes des' e'>16
 \clef bass <f bes des'>8.\ff <f bes des'>16 <f bes des'>8. <f bes des'>16 <f bes des'>8. <f bes des'>16
 <f a c'>8. <f a c'>16 <bes, des f bes>4 <bes,, bes,> <bes,,  bes,> \clef treble <des' f'>8. <des' f'>16
 <ees' ges'>4\sf <ees' ges'>8. <ees' ges'>16 <a c'>4 <a c'>8. <a c'>16
 <bes des'>4\sf <bes des'>8. <bes des'>16 <des' f'>4 <des' f'>8. <des' f'>16
 <ees' ges'>4\sf <ees' ges'>8. <ees' ges'>16 <a c'>4 <a c'>8. <a c'>16
 <bes des'>4\sf <bes des'>8. <bes des'>16 <des' f'>8. <des' f'>16 <d' f'>8. <d' f'>16
 <f' aes'!>4\fp_\markup { "tenute" } <f' aes'>8. <f' aes'>16 <f' ges'>4 <ees' ges'>8. <ees' ges'>16
 <ees' f'>4 <des'! f'>8. <des' f'>16 \clef bass <ges! bes des' e'>4 <ges bes des' e'>8. <ges bes des' e'>16
 <f bes des'>8.\ff\staccato  <f bes des'>16\staccato  <f bes des'>8.\staccato  <f bes des'>16\staccato
  <f bes des'>8.\staccato  <f bes des'>16\staccato <f a c'>8.\staccato <f a c'>16\staccato
 <bes, des f bes>4 <bes,, bes,> <bes,, bes,> \bar "|."
 \break

 \key bes \major
 r4 bes,,4\f\staccato_\markup { \italic "   sempre" } d,\staccato f,\staccato bes,\staccato
 d\staccato f\staccato bes\staccato g\staccato ees\staccato e\staccato f\staccato f,\staccato
 fis,4\staccato fis\staccato g\staccato f\staccato e\staccato c,^\markup { \italic "sempre staccato e forte" } d, e,
 f,4 g, a, bes, ees e f f, bes, f, bes,, r4
 \repeat volta 2 { ees4 c f, ees d4 bes, f, d c4 a, ees, c bes,4 f, d, f, bes,,4\sf d, f, bes,
 d4 f bes g ees e f f, }
 \alternative { { bes,4 f, << { \override TupletBracket #'transparent = ##t \times 2/3 { f8\rest d8[ f] } } \\
 { bes,,4 } >> r4 } { bes,4 f, bes,,8 } } \bar "|."
 \break

 r8 r4 r8 <bes,, bes,>8\staccato[ <d, d>\staccato <ees, ees>\staccato]
 <f, f>4\staccato <bes, bes>4\sf~ <bes, bes>8[ <bes, bes>8\staccato <a, a>\staccato <g, g>\staccato]
 <f, f>4\staccato <g, g>4\sf~ <g, g>8[ <f, f>8\staccato <ees, ees>\staccato <d, d>\staccato]
 <c, c>4\staccato <f, f>4\sf~ <f, f>8[ <ees, ees>\staccato <d, d>\staccato <c, c>\staccato]
 <bes,, bes,>4\staccato r4 \times 2/3 { bes,,8[ d, f,] } \times 2/3 { bes,8[ d f] } \times 2/3 { bes8[ d' f'] }
 \times 2/3 { bes8[ ees' g'] } \override TupletNumber #'transparent = ##t
 \times 2/3 { bes8[ f' d'] } \times 2/3 { bes8[ f d] } \times 2/3 { bes,8[ f ees] }
 \times 2/3 { d8[ c bes,] } \times 2/3 { f,8[ a, c] } \times 2/3 { f8[ a c'] } \times 2/3 { f8[ a c'] } \times 2/3 { ees8[ a c'] }
 \times 2/3 { d8[ f bes] } \times 2/3 { bes,8[ f bes] } \times 2/3 { bes,8[ f ees] } \times 2/3 { d8[ c bes,] }
 \times 2/3 { ees8[ d ees] } \times 2/3 { c8[ a, f,] } \times 2/3 { ees,8[ c c] } \times 2/3 { ees,8[ c c] }
 \times 2/3 { d,8[ f, bes,] } \times 2/3 { d8[ f bes] } \times 2/3 { d'8[ f' ees'] } \times 2/3 { d'8[ c' bes] }
 \times 2/3 { ees8[ d ees] } \times 2/3 { c8[ a, f,] } \times 2/3 { ees,[ c c] } \times 2/3 { ees,8[ c c] }
 \times 2/3 { d,8[ f, bes,] } \times 2/3 { d8[ f bes] } \times 2/3 { d'8[ g' f'] } \times 2/3 { ees'8[ d' c'] }
 \times 2/3 { bes8[ f' d'] } \times 2/3 { bes8[ f d] } \times 2/3 { bes,8[ d f] } \times 2/3 { bes,8[ ees g] }
 \times 2/3 { bes,8[ d f] } \times 2/3 { bes8[ d' f'] } \times 2/3 { bes'[ f' ees'] } \times 2/3 { d'8[ c' bes] }
 \times 2/3 { ees,8[ ees ees] } \times 2/3 { e,8[ e e] } \times 2/3 { f,8[ f f] } \times 2/3 { f,8[ f f] }
 \times 2/3 { bes,8[ f d] } \times 2/3 { bes,8[ f, d,] } bes,,4 r4 R1 R1 R1 R1 R1
 R1 R1^\fermata \bar "||"

 \key g \major
 \time 6/8 g8( b d' c g c') g( ais b e gis b) a,!( e a! d fis a) g,( b, d g b d') g( b d') c( g c') g( ais b) e( gis b)
 a,!8( e a!) d( fis a) <g, b, d g>4 r8 \clef treble <f' g'>8\pp\staccato[ <ees' g'>\staccato <d' g'>\staccato]
 <c' g'>4\staccato r8 <ees' f'>8\staccato[ <d' f'>\staccato <c' f'>\staccato]
 <bes f'>4\staccato r8 \clef bass <f g>8\staccato[ <ees g>\staccato <d g>\staccato]
 <c g>4\staccato r8 <ees f>8\staccato[ <d f>\staccato <c f>\staccato] <bes, f>4\staccato r8 r4 r8 \bar "||"

 \key bes \major
 bes,,8\f bes, bes, ees, ees ees d, d d g, g g c, c c f, f f bes,, bes, bes, bes, bes, bes,
 bes,,8 bes, bes, ees, ees ees d, d d g, g g c, c c f, f f
 bes,4 r8 <ees, ees>4.\sf <d, d>4 r8 <ees, ees>4.\sf <d, d>4 r8 ees4\p r8
 f4 r8 f,4 r8 bes,4 r8 <ees, ees>4. <d, d>4 r8 <ees, ees>4. <d, d>4 r8 ees4 r8 f4 r8 f,4 r8
 bes,,8\staccato bes,\staccato c\staccato d\staccato ees\staccato e\staccato
 f4\staccato <f a>8\sf(~ <f a>8 <g bes>) <a c'>\staccato]
 bes8\staccato bes,\staccato c\staccato d\staccato ees\staccato e\staccato
 f4\staccato <f a>8\sf(~ <f a>8 <g bes>) <a c'>\staccato]
 bes8 <f, f>\ff[ <f, f>] <f, f>[ <g, g> <a, a>] <bes, bes>4\staccato r8 r4 r8 R2.
 r4 r8 <ees, ees>4\p\staccato r8 <d, d>4\staccato r8 <c, c>4\staccato r8 <bes,, bes,>4\staccato r8 r4 r8 R2.
 a,16\p bes, c d ees f g a bes c' d' ees' s4 s8 s4 s8 \bar "||"
 \time 4/4 <e bes c'>4\staccato <e bes c'>4.\sf <e bes c'>8\staccato[ <e bes c'>\staccato <e bes c'>\staccato]
 <f bes d'>4\staccato <d' f'>4.\sf <d' f'>8\staccato[ <c' ees'!>\staccato <bes d'>\staccato]
 <a c'>4\staccato r4 <f,, f,>2^\sf <bes,, bes,>4\ff <bes, bes>4\staccato <bes, bes>8\staccato \bar "|."
}