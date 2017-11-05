\version "2.16.2"

 fagotti = {
 \set Staff.instrumentName = "Fagotti.       "
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key aes \major
 \time 3/8
 \partial 8 r8 R4. R4. R4. R4. R4. R4. R4.
 \clef tenor r8 r8 << { aes16.( c'32) ees'4.( c'8) } \\ { aes16.\p c'32 ees'4.\f c'8\p } >> r8
 << { aes'16. aes'32 g'4. f'4. c'4. ees'8[ ees' ees'] ees'8 }
 \\ { aes'16. aes'32 ees'4.\f\> f'4.\!\p c'4. ees'8[ ees' ees'] aes8 } >> r8 r8
 \clef bass << { aes4. aes4. bes8[ bes bes16.( g32)] aes8 } \\
 { aes,4.\p ees4._\markup { \italic "cresc." } ees8\f[ ees ees] ees8\p } >> r8
 \clef tenor << { ees'8~ ees'8 } \\ { ees'8( aes) } >> r8 << { ees'8~ ees'16 } \\ { ees8~ ees16 } >> r16
 << { c'16 } \\ { ees16\p } >> r16 << { c'16 } \\ { ees16 } >> r16
 << { aes8 } \\ { c8 } >> r8 ees16._\markup { \italic "dolce" }( g32)
 \clef bass <c aes>8[ <c aes>( <ees bes>] <aes c'>4) <c aes>16.( <ees bes>32)
 <aes c'>8[ <aes c'>( <bes des'>] <c' ees'>4) r8 R4. r8 r8 \clef tenor ees'16.\pp( f'32) <c' fis'>4.\ff
 <e' g'>16.( <c' e'>32) <g c'>8\staccato[ <b d'>\staccato] << { c'8 } \\ { c'8 } >> r8 r R4. R4. R4. R4. R4.
 \clef bass R4. R4. << { g4.~ g4.~ g8 bes4 ces'4.~ ces'4. ces'4.( fes'4. ees'4. des'4.) bes8 } \\
 { e4.\pp~ e4. e4._\markup { \dynamic p \italic "sempre" } e4.( ees!4.)( d4. des!4. c4.
 des4._\markup { \italic "cresc." }) ees8\f } >> r8 << { ees'8\staccato } \\ { ees'8\f } >> R4. R4. R4.
 R4. R4. R4. R4. << { bes8[ bes bes]
 c'16 g16_\markup { \italic "cresc." }[ \acciaccatura bes32 aes16 g aes c']
 d'16\f( ees' f' ees' d' ees') c'8\p } \\ { ees8\f[ ees ees] ees16 b,16\rest b,8\rest b,8\rest R4. b,8\rest } >>
 \clef tenor r16 << { aes'16[ aes' aes'] g'4. f'4. c'4. ees'8[ ees' ees'] ees'8 } \\
 { aes'16_\markup { \italic "cresc." }[ aes' aes'] ees'4.\f f'4.\p c'4. ees'8[ ees' ees'] aes8 } >> r8 r
 \clef bass << { aes4. aes4. bes8[ bes bes16.( g32)] aes8 } \\ { aes,4.\p ees4._\markup { \italic "cresc." }
 ees8\f[ ees ees] ees8\p } >> r8 \clef tenor << { ees'8~ ees' } \\ { ees'8( aes) } >> r8
 << { ees'8~ ees'16 } \\ { ees8\f~ ees16 } >> r16 << { c'16 } \\ { ees16\p } >> r16 << { c'16 } \\ { ees16 } >> r16
 << { aes8 } \\ { c8 } >> r8 ees16._\markup { \italic "dolce" }( g32)
 \clef bass <c aes>8[ <c aes>( <ees bes>] <aes c'>4) <c aes>16.( <ees bes>32)
 <aes c'>8[ <aes c'>( <bes des'>] <c' ees'>4) r8 R4. << { a8\rest a8\rest ees'16.\pp( f'32) } \\ { R4. } >>
 <c' fis'>4.\ff \clef tenor <e' g'>16.[ <c' e'>32] <g c'>8\staccato[ <b d'>\staccato] << { c'8 } \\ { c'8 } >> r8 r
 R4. R4. R4. \clef bass R4. R4. R4. R4.
 << { g4.~ g4.~ g8 bes4 ces'4.~ ces'4. ces'4.( fes'4.)( ees'4. des'4.) bes16
 ees16\staccato[ ees'\staccato] } \\
 { e4.\pp~ e4.~ e4._\markup {\dynamic pp \italic "sempre" }~ e4.( ees!4. d4. des!4. c4.
 des4._\markup { \italic "cresc." }) ees16\f ees16\ff[ ees'] } >> r16 r8
 << { ees'4.\f\>~ ees'4.\!\p~ ees'4.~ ees'4.( e'4.) f'4.~ f'8 ees'!4~ ees'4.\pp c'8 a8\rest a8\rest
 a16\rest c16\p\staccato[ c'\staccato] a16\rest a8\rest a16\rest f[ f'] a\rest a8\rest a16\rest des[ des'] a\rest a8\rest
 a16\rest c16[ c'] a16\rest a8\rest a16\rest f16[ f'] a16\rest a8\rest a16\rest ees16[ ees'] a16\rest a8\rest
 a16\rest ees[ ees'] ees16\rest ees16\rest ees'16 c'16 ees'16 ees'4:16 } \\
 { R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. a,16\rest c'16\f c'4:16 } >>
 <c' ees'>4.:16 <c' ees'>16 <c' ees'> <bes des'>4:16 <bes des'>4:16 <b d'>16 <b d'> <c' e'>4.:16
 << { ees'!16 ees' des'!4:16 des'16 des' c'4:16 bes4. } \\ { c'4:16 bes16 bes bes4:16 aes16 aes g4. } >>
 << { ees8~ ees16( f32 g aes[ bes c' d']) ees'4^\fermata } \\ { ees8~ ees16 f32 g aes[ bes c' d'] ees4 } >> r8
 R4. R4. R4. R4. R4. << { a8\rest a8\rest ees16_\markup { \italic "dolce" }( aes c'8\staccato)[ c'16( bes aes c')]
 ees'4 a8\rest } \\ { R4. R4. R4. } >> R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. r8 r << { e16. g32 } \\ { e16.\ff g32 } >> <e c'>8\ff[ <e c'> <d b>] <e c'>4.~
 <e c'>4 <e c'>16.[ <d b>32] <e c'>8[ <c e> <d f>] <e g>4.~ <e g>4 <c e>16.[ <d f>32] <e g>4 <c e>16.[ <d f>32] <e g>4
 <c e>16.[ <d f>32]  <e g>4.\>~ <e g>4.~ <e g>8\!\p r8 r R4. R4.
 R4. R4. R4. R4. R4. << { a8\rest a\rest ees16\p\staccato[ f32\rest aes\staccato]
 ces'8 ces'16\staccato[ b32\rest bes\staccato aes16\staccato a32\rest ces'\staccato]
 g4 aes16\staccato[ a32\rest bes\staccato]
 ces'8 ces'16\staccato[ b32\rest bes\staccato aes16\staccato a32\rest ces'\staccato]
 des'!4 ces'16\staccato[ b32\rest des'32\staccato]
 ees'8[ ees'16\staccato d'32\rest des'!\staccato ces'16\staccato c'32\rest ees'\staccato]
 des'!4 ees'16\staccato[ d'32\rest des'\staccato]
 ces'8[ ces'16\staccato b32\rest bes\staccato aes16\staccato b32\rest ces'\staccato] bes8.([ ces'16 aes ces']) } \\
 { R4. R4. R4. R4. R4. R4. R4. R4. ees4_\markup { \italic "cresc." }~ ees16[ aes] } >>
 <g bes>8.([ <aes ces'>16 <ees aes> <aes ces'>]) <g bes>16\f\staccato[ <g ees'>\staccato] r8 r R4.
 R4. R4. R4. R4. R4. R4. << { a8\rest bes,32_\markup { \italic "cresc." }([ c des ees] f[ g aes bes]) } \\ { R4. } >>
 c'4.\ff~ c'16.([ bes32 aes16. c'32]) f8~ f8 des'16.([ c'32 bes16. des'32])
 g16.([ bes32 e16. g32]) c'8~ c'8 des'16.([ bes32]) f'8 bes8 c'16.([ aes32]) ees'8
 << { bes8 } \\ { g8 } >> r8 r << { c'8 } \\ { aes8 } >> r8 r
 << { ees32[ d ees f] g[ aes bes c'] des'![ ees f g] aes8 } \\ { g,8\rest g,8\rest c32\rest ees32[ f g] aes,8 } >>
 r8 << { aes16.( c'32) ees'4. f'4. c'4. ees'8[ ees' ees'] ees'8 } \\
 { aes,16.( c32) ees'4.\sf f'4._\markup {\dynamic f \italic dolce } c'4. ees'8[ ees' ees'] aes8 } >> r8 r8 R4. R4. R4.
 r8 r << { ees'8 ees'8 } \\ { ees8\p ees8 } >> r8 r
 \clef tenor << { e'8\rest e'8\rest c'16_\markup { \italic "dolce" }( ees' ges'8)[ ges'16( f' ees' ges')]
 f'4 des'16( ees' fes'8)[ fes'16( ees' des' fes')] ees'4 } \\ { R4. R4. R4. R4. e8\rest e8\rest } >>
 \clef bass << { a8\rest a8\rest c' a\rest a\rest des' a\rest a\rest des' a\rest c'8 } \\
 { aes,16\pp[ aes,] aes,[ aes, aes, aes, aes, aes,] aes,4.:16 aes,4.:16 aes,8 } >> r8 r
 r8 r << { ees'8( c') } \\ { g8\f( aes) } >> r8 r r8 r
 << { bes8( c') \override TupletBracket #'transparent = ##t
 \times 2/3 { a16\rest aes,_\markup {\dynamic p \italic "cresc." }([ c] } \times 2/3 { ees[ aes c']) }
 \times 2/3 { ees16([ aes c']) } ees'8 } \\
 { g8\f( aes) s8 \override TupletBracket #'transparent = ##t \times 2/3 { g,16\rest g,16\rest c16 }
 \times 2/3 { ees16\f[ aes c'] } ees'8 } >> r8 R4. << { f'4. c'4. ees'8[ ees' ees'] } \\
 { f'4._\markup { \dynamic p \italic dolce } c'4. ees'8[ ees' ees'] } >> <aes ees'>8 r8 r
 <aes, aes>4~ <aes, aes>16_\markup { \italic "cresc." }[ <aes c'>] <des' f'>8([ <c' ees'>8.\sf]) <c' ees'>16\f
 << { ees'16([ des'] c'8.) } \\ { g8[ aes8.\sf] } >> r16 R4.
 R4. r8 r ees16_\markup { \italic "dolce" }( aes <aes c'>8)[ <aes c'>16( <ees bes> <c aes>16. <aes c'>32]
 <c' ees'>4) <c aes>16([ <aes c'>] <c' ees'>8)[ <c' ees'>16( <bes des'> <aes c'>16. <c' ees'>32)]
 <aes ees'>4.~ <aes ees'>4.~ <aes ees'>4._\markup { \italic "cresc." }~ <aes ees'>4.
 <aes ees'>8[ <aes ees'> <aes ees'>] <aes ees'>[ <aes ees'> <aes ees'>]
 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { <aes ees'>16\f[ <aes ees'> <aes ees'>]
 <aes ees'>[ <aes ees'> <aes ees'>] <aes ees'>[ <aes ees'> <aes ees'>] <aes ees'>[ <aes ees'> <aes ees'>]
 <aes ees'>[ <aes ees'> <aes ees'>] <aes ees'>[ <aes ees'> <aes ees'>]
 <aes ees'>[ <aes ees'> <aes ees'>] <aes ees'>[ <aes ees'> <aes ees'>] }
 << { \override TupletNumber #'transparent = ##t \times 2/3 { aes16[ c' es'] } aes'8 } \\
 { \override TupletNumber #'transparent = ##t \times 2/3 { aes16[ c' es'] } aes8 } >> r8
 << { aes16. c'32 ees'4. c'8 } \\ { aes16. c'32 ees'4.\sf c'8 } >> r8
 << { ees'8\staccato c'\staccato } \\ { g8\p aes } >> r8
 << { aes16. c'32 ees'4. aes8 } \\ { aes16.\f c'32 ees'4.\ff aes8 } >> r8 \bar "|."

}
