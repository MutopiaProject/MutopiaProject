\version "2.16.2"

 oboi = {
 \set Staff.instrumentName = "Oboi.          "
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key aes \major
 \time 3/8
 \partial 8 r8 R4. R4. R4. R4. R4. R4. R4. R4. R4.
 << { f''8\rest f''8\rest ees''8\p ees''4\f f''16\> g'' aes''4.\!\p ees''4. ees''8[ ees'' ees'']
 ees''8 f''\rest f''\rest } \\ { R4. R4. R4. R4. R4. R4. } >> R4. R4. R4.
 << { f''8\rest f''\rest ees''~ ees'' f''\rest g''( aes''16) } \\ { R4. f'8\rest f'\rest bes'\f( c''16) } >> r16
 << { ees''16\p } \\ { c''16 } >> r16 << { ees''16 } \\ { c''16 } >> r16
 <c'' ees''>8 r r R4. R4. R4. R4. R4. << { f''8\rest f''8\rest ees''16.\pp( f''32) } \\ { R4. } >>
 <ees'' fis''>4.\ff <e'' g''>16. <c'' e''>32 <g' c''>8\staccato[ <b' d''>\staccato]
 <g' c''>8 r8 << { e'16. g'32 } \\ { e'16. g'32 } >> 
<e' c''>8_\markup { \dynamic ff \italic "sempre" }[ <e' c''> <g' d''>]
 <c'' e''>4 <e' c''>16.[ <g' d''>32] <c'' e''>8[ <c'' e''> < d'' f''>] <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32]
 <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32] <e'' g''>4.\sf\>~ <e'' g''>8\!\p r8 r
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. <g' bes'>8\f[ <g' bes'> <g' bes'>] <aes' c''>4\p r8 R4.
 << { f''8\rest f''16\rest ees''16_\markup { \italic "cresc." }[ ees'' ees'']
 ees''4\f( f''16 g'') aes''4.\p ees''4. ees''8[ ees'' ees'']
 ees''8 f''8\rest f''8\rest } \\ { R4. R4. R4. R4. R4. R4. } >> R4. R4. R4.
 << { f''8\rest f''8\rest ees''8~ ees''8 } \\ { R4. e'8\rest } >> r8 << { g''8( aes''16) } \\ { bes'8\f( c''16) } >> r16
 << { ees''16 } \\ { c''16\p } >> r16 << { ees''16 } \\ { c''16 } >> r16 << { ees''8 } \\ { c''8 } >> r8 r8
 R4. R4. R4. R4. R4. << { f''8\rest f''8\rest ees''16.\pp( f''32) } \\ { R4. } >>
 <ees'' fis''>4.\ff <e'' g''>16.[ <c'' e''>32] <g' c''>8\staccato <b' d''>\staccato
 <g' c''>8 r << { e'16.[ g'32] } \\ { e'16.[ g'32] } >> <e' c''>8[ <e' c''> <g' d''>]
 <c'' e''>4 <e' c''>16.[ <g' d''>32] <c'' e''>8[ <c'' e''> <d'' f''>]
 <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32] <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32]
 <e'' g''>4._\markup { \dynamic f \italic "dimin." }~ <e'' g''>8\p r8 r R4. R4. R4.
 R4. R4. R4. R4. R4. R4. r8 r8 r16 << { ees''16\staccato ees''4.\f\>~ ees''4.\!\p~
 ees''4.~ ees''4.( e''4.) f''4.~ f''8 ees''!4~ ees''4.\pp c''8 e''8\rest e''8\rest } \\
 { ees''16\ff ees''8 a'8\rest a'8\rest R4. R4. R4. R4. R4. R4. R4. R4. } >> R4. R4. R4.
 R4. R4. R4. R4. r16 <c'' ees''>16\f <c'' ees''>4:16
 <c'' ees''>4.:16 <ees'' f''>16 <ees'' f''> <des'' f''>4:16 <des'' f''>4:16 <d'' g''>16 <d'' g''> <e'' g''>4.:16
 << { f''16[ c'''] c'''[ c''' bes'' bes''] bes''4:16 aes''16 aes'' g''4. } \\
 { ees''!16 ees'' des''4:16 des''16 des'' c''4:16 ees''4. } >>
 << { ees'8~ ees'16( f'32 g' aes'[ bes' c'' d'']) ees''4^\fermata } \\ { ees'8~ ees'16 f'32 g' aes'[ bes' c'' d''] ees''4 } >> r8
 R4. R4. R4. R4. R4.
 R4. R4. R4. << { f''8\rest f''8\rest aes'16_\markup { \italic "dolce" }( d'' f''8\staccato)[ f''16( ees'' d'' f'']
 aes''8)[ aes''16( g'' f'' ees''] d''8)[ d''16( ees'' f'' g'']) aes''16([ g'' f'' ees'' d'' ees''] f''[ g'' aes'')
 aes''( g'' f''] ees''4.)~ ees''16([ f'' g'' aes'' bes'' c''']
 des'''8)[ des'''16( c''' bes'' aes''] g''[ aes'' bes'' c''' des''' c'''] bes''[ aes'' g'')
 des'''\staccato c'''\staccato bes''\staccato] aes''16\staccato[ c'''\staccato bes''\staccato aes''\staccato
 g''\staccato] f''16\rest f''8\rest f''16\rest aes''16\staccato[ g''\staccato f''\staccato]
 f''4.:16_\markup { \italic "cresc." } f''4:16 f''8\rest } \\
 { R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. } >>
 r8 r << { e'16. g'32 } \\ { e'16.\ff g'32 } >> <e' c''>8[ <e' c''> <b' d''>] <c'' e''>4.~
 <c'' e''>4 <e' c''>16.[ <b' d''>32] <c'' e''>8[ <c'' e''> <d'' f''>]
 <e'' g''>4.~ <e'' g''>4 <c'' e''>16.[ <d'' f''>32] <e'' g''>4 <c'' e''>16.[ <d'' f''>32] <e'' g''>4
 <c'' e''>16.[ <d'' f''>32]  <e'' g''>4.\>~ <e'' g''>4.~ <e'' g''>8\!\p r8 r R4. R4.
 R4. R4. R4. R4. R4. R4.
 << { e''8\rest ees''16\p e''16\rest e''8\rest e''8\rest ees''16 e''16\rest e''8\rest
 e''8\rest ees''16 e''16\rest e''8\rest e''8\rest ges''16 e''16\rest e''8\rest e''8\rest ges''16 e''16\rest e''8\rest
 e''8\rest ges''16 e''16\rest e''8\rest e''8\rest ees''16 e''16\rest e''8\rest e''8\rest ees''16 e''16\rest e''8\rest
 e''8\rest ees''8 e''16\rest ees'' ees''16\f[ ees''8\sf] e''16\rest e''8\rest } \\
 { R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. } >> R4. R4. R4. R4. R4. R4. R4.
 r8 r16 <ees' ees''>_\markup { \italic "cresc." }[ <ees' ees''> <ees' ees''>]
 <ees' ees''>4.\ff <f' f''>4. <f'' g''>4. << { g''4. f''4. ees''4. } \\ { e''4 c''8~ c''8 des''4 bes'8 c''4 } >>
 <ees'' bes''>8 r r <ees'' c'''> r r <ees'' bes''> r r << { c'''16 } \\ { ees''16 } >> r16 r8
 << { aes'16.( c''32) ees''4( f''16 g'') aes''4._\markup {\dynamic p \italic dolce } ees''4.
 ees''8[ ees'' ees''] ees''8 f''8\rest f''8\rest } \\ { aes'16.( c''32) ees''8\sf g'8\rest g'8\rest R4. R4. R4. R4. } >>
 R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. << { f''8\rest \grace { ees''16[ f''] } ges''8\p\staccato f''8\rest
 f''8\rest \grace { des''16[ ees''] } f''8\staccato f''8\rest f''8\rest \grace { des''16[ ees''] } fes''8\staccato f''8\rest
 ees''8 f''8\rest f''8\rest } \\ { R4. R4. R4. R4. } >>
 r8 r << { ees''8( c'') } \\ { bes'8\f( aes') } >> r8 r r8 r << { bes''8( c''') } \\ { g''8\f( aes'') } >> r8 r
 << { ees''8[ ees''] } \\ { c''8\ff[ bes'] } >> r8 << { f''8\rest ees''8([ f''16 g'']) aes''4._\markup { \dynamic p\italic dolce }
 ees''4. ees''8[ ees'' ees''] ees''8 f''8\rest f''8\rest } \\ { R4. R4. R4. R4. R4. } >> R4.
 r8 r8 r16 << { ees''16 g''8[ aes''8.] } \\ { ees''16 ees''8[ ees''8.\sf] } >> r16 R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. r8 r \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { <c'' ees''>16\f[ <c'' ees''> <c'' ees''>]
 <c'' ees''>[ <c'' ees''> <c'' ees''>] <c'' ees''>[ <c'' ees''> <c'' ees''>] <c'' ees''>[ <c'' ees''> <c'' ees''>] }
 <c'' ees''>8\ff r8 r << { ees''4. c''8 } \\ { ees''4.\sf c''8 } >> r8
 << { ees''8\staccato c''\staccato } \\ { g'8\p aes' } >> r8
 << { aes'16. c''32 ees''4. aes''8 } \\ { aes'16.\f c''32 ees''4.\ff c''8 } >> r8 \bar "|."
}
