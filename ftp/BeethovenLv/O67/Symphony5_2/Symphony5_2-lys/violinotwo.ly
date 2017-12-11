\version "2.16.2"

pizz = \markup{\italic "pizz."} 
arco = \markup{\italic "arco"} 

violinotwo = {
 %\set Staff.instrumentName = "Violino II.   "
 \set Staff.midiInstrument = "violin"
 \override MultiMeasureRest #'expand-limit = 1
 \compressFullBarRests

 \clef treble
 \key aes \major
 \time 3/8
 \partial 8 r8 R4.*7 r8 r8 ees'16.\p( c'32) bes4.\f( c'8\p) r r R4.*4 r8 r16 aes16\p([ c' ees']) ees'16([ des']) c'8. c'16 c'16_\markup { \italic "cresc." }( bes) aes8.[ aes16]
 g4\f \times 2/3 { g16([ aes bes]) } aes8\p r r r8 r \times 2/3 { bes16([ aes g]) } aes16 r aes\p r aes r
 aes8 r r r8 ees'8_\markup {\dynamic p \italic "dolce" }( g' aes') r8 r r8 aes'8( bes' c'') r r
 r8 a'4\pp r8 a'4 ees''4.\ff e''16.\staccato c''32\staccato g'8\staccato[ <g f' b'>\staccato] <g e' c''>8 r r
 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { e'16\staccato_\markup { \dynamic ff \italic "sempre" }[ c''\staccato g'\staccato] e'[ c'' g'] g'[ d'' b']
 g'[ e'' c''] g'[ e' c'] g'[ c'' d''] g'[ e'' c''] g'[ e'' c''] g'[ f'' d'']
 g'\sf[ g'' e''] c''[ g' e'] c'[ e'' f''] c'\sf[ g'' e''] c''[ g' e'] c'[ c'' d''] }
 e''8 r r r8 r bes'8\pp~ bes'4 bes'8~ bes'4 bes'8~ bes'4._\markup { \dynamic p \italic "sempre" }
 ces''4.~ ces''4. ces''4.( bes'4.) aes'4.~ aes'4._\markup { \italic "cresc." } g'8\f r r r8 r c'8\p c'8 r r f' r r
 des'8[ bes des'] g8 r c' c'[ des'] r bes[ c'] r <ees' bes'>8\f[ <ees' bes'> <ees' bes'>]
 <ees' bes'>8\p r16 ees'16^\arco_\markup { \italic "cresc." }[ ees'( c')] bes4.\f c'8\p r r R4.
 \override TupletNumber #'transparent = ##f
 R4.*3 r8 r16 aes16\p([ c' ees']) ees'16([ des']) c'8. c'16 c'16_\markup { \italic "cresc." }([ bes])
 aes8. aes16 g4\f \times 2/3 { g16([ aes bes]) } aes8\p r r r8 r \times 2/3 { bes16\f([ aes g]) }
 aes16 r aes\p r aes r aes8 r r r8 ees'8_\markup { \italic "dolce" }( g' aes') r r r8 aes'( bes' c'') r r
 r32 a'32\pp[ a' a'] a'16[ a' a'] r r32 a'32[ a' a'] a'16[ a' a'] r
 ees''32\ff[ ees'' ees'' ees''] ees''[ ees'' ees'' ees''] ees''[ ees'' ees'' ees'']
 e''[ e'' e'' c''] g'[ g' g' e'] <f' b'>[ <f' b'> <f' b'> <f' b'>] <e' c''>8 r r
 e'32\staccato[ g'\staccato c''\staccato g'\staccato] e'[ g' c'' g'] g'[ b' d'' b']
 g'[ c'' e'' c''] g'[ c'' g' e'] c'[ g' c'' d''] g'[ c'' e'' c''] g'[ c'' e'' c''] g'[ d'' f'' d'']
 g'\sf[ e'' g'' e''] c''[ g' e' g'] c'[ c'' e'' f''] g'\sf[ e'' g'' e''] c''[ g' e' g'] c'[ c'' c'' d'']
 e''8 r r r8 r bes'8\pp~ bes'4 bes'8~ bes'4 bes'8~ bes'4._\markup { \dynamic pp \italic "sempre" }
 ces''4.~ ces''4. ces''4.( bes'4.) aes'4.~ aes'4._\markup { \italic "cresc." } g'8\f r8 r
 r8 r c'8\p^\pizz c'8[ c'] r16 c' f'8[ f'] r16 f' des'8[ des'] r16 des' c'8[ c'] r16 c'
 a'8[ bes'] r16 bes' g'8[ aes'!] r16 aes'
 g'8\pp[ <g' bes'> <g ees' bes'>] <aes ees' c''>8 r r aes'4.\pp_\markup { \italic "     sempre" }^\arco ~
 aes'8 bes'4~ bes'4.( g'4 c''8)~ c''8( des''4) bes'8( c''4) <ees' bes'>4. <ees' c''>16[ <ees' c''>\f] <ees' c''>4:16
 <ees' c''>4.:16 <ees' c''>16 ees'' des''4:16 des''4:16 d''16 d'' e''16[ <c'' e''>] <c'' e''>4:16
 ees''!16 ees'' des''4:16 des''16 des'' c''4:16 <ees' bes'>8~ <ees' bes'>32 ees'( f' g' aes'[ bes' c'' d''])
 ees''8~ ees''16( f''32 g'' aes''[ bes'' c''' d''']) ees'''4^\fermata bes8\pp bes8 r bes bes r bes
 bes8 r bes bes8_\markup { \italic "sempre" \dynamic pp } r bes bes r bes
 bes8 r aes aes r aes aes r d' d'8\f r r R4.*10 r8 r r16 des''16\p\staccato c''16\staccato[ bes'\staccato aes'\staccato] r r8
 R4.*2 r8 r e'16.\ff g'32 <g e' c''>8[ <g e' c''> <g d' b'>] <g e' c''>4.~ c''4 e'16.[ b'32]
 <g e' c''>8[ <g e' c''> <g f' d''>] <g g' e''>4.~ e''4 c''16.[ d''32] <g g' e''>4 c''16.[ d''32] <g g' e''>4 c''16.[ d''32]
 <g g' e''>4 r8 R4. <g e'>8\p^\pizz r8 r <aes f'>8 r r <bes g'> r r
 R4.*5 r8 r ces'8^\pizz
 ces'8[ ces' ces'] bes[ bes bes] ces'[ ces' ces'] des'![ des' des'] ees'[ ees' ees']
 des'![ des' des'] ces'[ ces' ces'] bes8[ bes16_\markup { \italic "cresc." } ces' ces' ces']
 bes8[ bes16 ces' ces' ces'] bes16\f\staccato[ <g ees'>\staccato] r8 r R4.*2 r8 c'16_\markup { \dynamic p\italic "dolce" }^\arco ([ des' ees' f']) a([ bes c' des']) r8 R4.
 r8 r8 r32  ees'\cresc([ f' g'] aes'[ bes' c'' des''] ees''8.) r16 r16 ees''8[ ees''8( des''16\!)]
 <ees' c''>8\ff[ c''16.( bes'32 aes'16. c''32)] f'8[~ f'16.( a'32 bes'16. c''32)]
 des''16.([ c''32 bes'16. des''32 g'16. bes'32]) e'16.([ g'32]) c''8[~ c''16. bes'32]
 a'16.([ f'32]) bes'8.( des''16) g'16.([ ees'32]) aes'!8[ aes'16.( c''32)]
 ees''4.\sf c''32 <c' ees'>[ <c' ees'> <c' ees'>] <c' ees'>4:32 <bes ees'>4.:32
 <c' ees'>32[ aes bes c'] des'[ ees' f' g'] aes'[ bes' c'' des''] ees''8 r r R4.*4 <aes aes'>4.\p ees'4. <des' ees'>8[ <des' ees'> <des' ees'>]
 <c' ees'>8 r des'( c') r \times 2/3 { bes16([ aes bes]) }
 aes16\pp[ ees'] r ees' r ees' r16 ees' r ees' r ees' r16 f' r f' r f'
 r16 fes' r fes' r fes' r ees' r ees' r <c' ees'> r <c' ees'> r <c' ees'> r <c' ees'>
 r16 <des' f'> r <des' f'> r <des' f'> r des' r des' r des' c'32[ <c' ees'> <c' ees'> <c' ees'>]
 <c' ees'>4:32_\markup { \italic "cresc." } <c' ees'>4:32 <bes ees'>32\f[ <bes ees'> <bes ees'> <bes ees'>]
 <c' ees'>32[ <c' ees'> <c' ees'> <c' ees'>] <c' ees'>4:32\p_\markup { \italic "    cresc." }
 <c' ees'>4:32 <bes ees'>32\f[ <bes ees'> <bes ees'> <bes ees'>]
 <c' ees'>32[ <c' ees'> <c' ees'> <c' ees'>] <c' ees'>4:32_\markup {\dynamic p \italic "cresc." }
 <c' ees'>32\f[ <c' ees'> <c' ees'> <c' ees'>] <bes ees'>8 r8 R4.*5 aes'4_\markup { \italic "cresc." }~ aes'16[ aes'] ees''16\f([ des''] c''8.\sf)[ c''16]
 g'8\f([ aes'8.\sf\>]) ees'16 des'8\p\! r8 r
 des'8\pp r r c'4.~ c'4 c'16.( aes'32) c''4.~ c''4 aes'16.( c''32) c''4.~ c''4 c'16.( ees'32 aes'4) r8 R4.*4 r8 r \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { aes'16\f\staccato[ c'\staccato ees'\staccato]
 aes'[ <ees' c''> <ees' c''>] <ees' c''>[ <ees' c''> <ees' c''>] <ees' c''>[ <ees' c''> <ees' c''>] }
 <ees' c''>8\ff r r <ees' bes' g''>8\ff r r <ees' c'' aes''>8 r <ees' bes' g''>\p\staccato
 <ees' c'' aes''>8\staccato r r <ees' bes' g''>\ff r r <aes ees' c'' aes''>8 r \bar "|."
}

