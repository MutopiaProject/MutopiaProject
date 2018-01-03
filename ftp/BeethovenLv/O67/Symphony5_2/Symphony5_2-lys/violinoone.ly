\version "2.16.2"

pizz = \markup{\italic "pizz."} 
arco = \markup{\italic "arco"} 


 violinoone = {
 %\set Staff.instrumentName = "Violino I.    "
 \set Staff.midiInstrument = "violin"
 \override MultiMeasureRest #'expand-limit = 1
 \compressFullBarRests

 \clef treble
 \key aes \major
 \time 3/8
 \partial 8 r8 R4.*7 r8 r8 aes'16.\p( c''32) ees''4.\f( c''8\p) r r R4.*4 r8 r16 aes'16\p([ c'' ees'']) ees''16([ des'']) c''8. c''16 c''16_\markup { \italic "cresc." }( bes') aes'8.[ aes'16]
 g'4\f \times 2/3 { g'16([ aes' bes']) } aes'8\p r r r8 r \times 2/3 { g'16([ aes' bes']) } aes'16 r aes'\p r aes' r
 aes'8 r r r8 aes'8_\markup { \dynamic p \italic "dolce" }( bes' c'') r8 r r8 c''8( des'' ees'') r ees''16.\pp( f''32)
 ges''4 ees''16.( f''32) ges''4 ees''16.( f''32) fis''4.\ff
 g''16.\staccato e''32\staccato <g e' c''>8\staccato[ <g f' d''>\staccato] <g e' c''>8 r r
 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { e'16\staccato_\markup { \dynamic ff \italic "sempre" }[ c''\staccato g'\staccato] e'[ c'' g'] g'[ d'' b']
 g'[ e'' c''] g'[ e' c'] g'[ c'' d''] g'[ e'' c''] g'[ e'' c''] g'[ f'' d'']
 g'\sf[ g'' e''] c''[ g' e'] c'[ e'' f''] c'\sf[ g'' e''] c''[ g' e'] c'[ e'' f''] } <e' c'' g''>8 r r r8 r bes'16.\pp( c''32)
 des''4 bes'16.( c''32) des''4 bes'16.( c''32) des''4._\markup {\dynamic p \italic "sempre" } (
 d''4. ees''4. f''4. g''4. aes''4. f''4._\markup { \italic "cresc." }) ees''8\f r r r8 r c''8\p^\pizz
 c''8 r r f' r r des''8[ bes' des''] g'8 r c'' c''[ des''] r bes'[ c''] r <g ees'>8\f[ <g ees'> <g ees'>]
 aes16\p g'16^\arco_\markup { \italic "cresc." }[ \acciaccatura bes'32 aes'16 g' aes' c'']
 d''16\f( ees'' f'' ees'' d'' ees'') c''8\p r r R4.
 \override TupletNumber #'transparent = ##f
 R4.*3 r8 r16 aes'16\p([ c'' ees'']) ees''16([ des'']) c''8. c''16 c''16_\markup { \italic "cresc." }([ bes'])
 aes'8. aes'16 g'4\f \times 2/3 { g'16([ aes' bes']) } aes'8\p r r r8 r \times 2/3 { g'16\f([ aes' bes']) }
 aes'16 r aes'\p r aes' r aes'8 r r
 r8 aes'8_\markup { \italic "dolce" }( bes' c'') r r r8 c''( des'' ees'') r ees''16.\pp( f''32)
 ges''4 ees''16.( f''32) ges''4 ees''16.( f''32)
 fis''4.\ff g''16.[ e''32] <g e' c''>8\staccato[ <g f' d''>\staccato] <g e' c''>8 r r
 e'32\staccato[ g'\staccato c''\staccato g'\staccato] e'[ g' c'' g'] g'[ b' d'' b']
 g'[ c'' e'' c''] g'[ c'' g' e'] c'[ g' c'' d''] g'[ c'' e'' c''] g'[ c'' e'' c''] g'[ d'' f'' d'']
 g'\sf[ e'' g'' e''] c''[ g' e' g'] c'[ c'' e'' f''] g'\sf[ e'' g'' e''] c''[ g' e' g'] c'[ c'' e'' f'']
 <e' c'' g''>8 r r r8 r bes'16.\pp( c''32) des''4 bes'16.( c''32) des''4 bes'16.( c''32)
 des''4._\markup {\dynamic pp \italic "sempre" }( d''4. ees''4. f''4. g''4. aes''4. f''4._\markup { \italic "cresc." })
 ees''8\f r8 r r8 r c''8\p^\pizz c''8[ c''] r16 c''16 f'8[ f'] r16 f' des''8[ des''] r16 des''
 c''8[ c''] r16 c'' c''8[ des''] r16 des'' bes'8[ c''] r16 c''
 bes'8\pp[ bes' bes'] c''32 ees'32^\arco_\markup { \italic "dolce" }[ des' c'] des'[ ees' f' g']
 \acciaccatura bes'64 aes'32[ g' aes' bes']
 c''32_\markup { \dynamic pp \italic sempre }([ bes' aes' g'] aes'[ bes' aes' g'] aes'[ bes' c'' aes'])
 f'([ g' f' e'] f'[ a' bes' a'] bes'[ c'' des'' c'']) des''([ c'' des'' c''] bes'[ des'' aes'! des''] g'[ des'' f' des''])
 e'32([ c'' g' c''] b'[ c'' g' c''] bes'[ c'' g' c'']) a'([ c'' f' c''] bes'![ des'' f' des''] bes'[ des'' aes'! des''])
 g'([ c'' ees' c''] aes'![ c'' ees' c''] aes'[ c'' ees' c'']) g'([ ees'' c'' ees''] g'[ ees'' bes' ees''] g'[ ees'' bes' ees''])
 c''16[ <ees'' c'''>\f] <ees'' c'''>4:16
 <ees'' c'''>4.:16 <ees'' c'''>16 <ees'' c'''> bes''4:16 bes''4:16 b''16 b'' c'''4.:16 c'''4:16 bes''16 bes''
 bes''4:16 aes''16 aes'' <ees' bes' g''>8~ g''32 ees'( f' g' aes'[ bes' c'' d''])
 ees''8~ ees''16( f''32 g'' aes''[ bes'' c''' d''']) ees'''4^\fermata des'!8\pp des'8 r des' des' r des'
 des'8 r des' des'8_\markup { \italic "sempre" \dynamic  pp } r des' des' r des'
 des'8 r c' c' r c' c' r <aes f'> <aes f'>8\f r r R4.*10 r8 r r16 des''16\p\staccato c''16\staccato[ bes'\staccato aes'\staccato] r r8
 R4.*2 r8 r e'16.\ff g'32 <g e' c''>8[ <g e' c''> <b g' d''>] <c' g' e''>4.~ e''4 c''16.[ d''32]
 <e' c'' e''>8[ <e' c'' e''> <f' c'' f''>] <e' c'' g''>4.~ g''4 e''16.[ f''32] <e' c'' g''>4 e''16.[ f''32]
 <e' c'' g''>4 e''16.[ f''32] <e' c'' g''>4 r8 r8 r c'16.\p([ e'32] g'8\staccato) r8 c'16.([ f'32] aes'8\staccato)
 r8 ees'!16.([ g'32]) \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { bes'16\staccato[ ees'\staccato g'\staccato]
 bes'\staccato[ ees'\staccato g'\staccato] bes'\staccato[ ees'\staccato g'\staccato]
 bes'\staccato_\markup { \italic "più" \dynamic p }[ ees'\staccato g'\staccato]
 bes'\staccato[ ees'\staccato g'\staccato] bes'\staccato[ ees'\staccato g'\staccato] }
 bes'32\pp([ g' ees' g']) bes'([ g' ees' g']) bes'([ g' ees' g']) bes'8 r r
 bes'32([ g' ees' g'] bes'[ g' ees' g'] bes'[ g' ees' g'] bes'[ g' ees' g'] bes'[ g' ees' g']
 bes'[ g' ees' g']) bes'([ g' ees' g'] bes'[ g' ees' g'] ces''[ aes' ees' aes'])
 ces''32([ aes' ees' aes'] ces''[ aes' ees' aes'] ces''[ aes' ees' aes'])
 bes'([ g' ees' g'] bes'[ g' ees' g'] bes'[ g' ees' g'])
 ces''32([ aes' ees' aes'] ces''[ aes' ees' aes'] ces''[ aes' ees' ces''])
 des''([ bes' ges' bes'] des''[ bes' ges' bes'] des''[ bes' ges' bes'])
 ees''([ ces'' ges' ces''] ees''[ ces'' ges' ces''] ees''[ ces'' ges' ees''])
 des''!([ bes' ges' bes'] des''[ bes' ges' bes'] des''[ bes' ges' des''])
 ces''([ aes' ees' aes'] ces''[ aes' ees' aes'] ces''[ aes' ees' ces''])
 bes'_\markup { \italic "cresc." }([ g'! ees' g'] bes'[ ees' ces'' ees'] aes'[ ees' ces'' ees'])
 bes'([ g' ees' g'] bes'[ ees' ces'' ees'] aes'[ ees' ces'' ees']) bes'16\f\staccato[ <ees' ees''>\staccato] r8 r R4.*2 r8 c''16_\markup { \dynamic p \italic "dolce" }([ des'' ees'' f'']) a'([ bes' c'' des'']) r8 R4.*2 r8 r r32  ees''32\cresc([ f'' g''] aes''[ bes'' c''' des''']) ees'''8.( des'''16\!)
 c'''8\ff[ c'''16.( bes''32 aes''16. c'''32)] f''8[~ f''16.( a''32 bes''16. c'''32)]
 des'''16.([ c'''32 bes''16. des'''32 g''16. bes''32]) e''16.([ g''32]) c'''8[~ c'''16. bes''32]
 a''16.([ f''32]) bes''8.( des'''16) g''16.([ ees''32]) aes''!8[ aes''16.( c'''32)]
 ees'''4.\sf c'''32 aes32[ bes c'] des'[ ees' f' g'] aes'[ bes' c'' des''] <ees' ees''>8 r r
 <g ees' c''>32[ aes' bes' c''] des''[ ees'' f'' g''] aes''[ bes'' c''' des'''] ees'''8 r r R4.*3 r8 r16 aes'16\p([ c'' ees'']) ees''16([ des'']) c''8. c''16 c''16([ bes']) aes'8. aes'16
 g'4 \times 2/3 { g'16([ aes' bes']) } aes'8 r \times 2/3 { g'16([ aes' bes']) } aes'8 r \times 2/3 { g'16([ aes' bes']) }
 aes'16[\pp %^\markup { \large "Piu moto." }
 aes'] r aes' r aes' r16 aes' r aes' r aes' r16 aes' r aes' r aes'
 r16 g' r g' r g' r16 aes' r aes' r aes' r aes' r aes' r aes' r aes' r aes' r aes'
 r16 <bes g'> r <bes g'> r <bes g'> <c' g'>8 r16. aes32_\markup { \italic "cresc." }([ c'16. ees'32]
 aes'8[ c'' ees''\f] c''8) r16. aes32_\markup { \dynamic p \italic cresc. }([ c'16. ees'32])
 \override TupletNumber #'transparent = ##f
 \times 2/3 { aes'16([ c'' ees'']) } aes''8( bes''\f c''') \times 2/3 { r16 aes16_\markup { \dynamic p \italic "cresc." }([ c'] }
 \times 2/3 { ees'16[ aes' c'']) } \times 2/3 { ees''16\ff([ aes'' c''']) } ees'''8 r8 R4.*4 r8 r16 aes'16_\markup {\dynamic p \italic dolce }([ c'' ees'']) ees''16_\markup { \italic "cresc." }([ des''] c''8.)[ c''16]
 g''16\f([ f''] ees''8.\sf)[ ees''16] ees''16\f([ des''] c''8.\sf\>)[ c''16] bes'8\!\p r8 r
 ees'8\pp r r aes'4.~ aes'4 aes'16.( c''32) ees''4.~ ees''4 c''16.( ees''32) aes''4 c''16.( ees''32 aes''4) r8
 R4.*5 r8 r
 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { aes'16\f\staccato[ c'\staccato ees'\staccato]
 aes'[ c' ees'] aes'[ c'' ees''] <c'' aes''>[ <c'' aes''> <c'' aes''>] }
 <c'' aes''>8\ff r r <g' ees'' bes''>8\ff r r <aes' ees'' c'''>8 r <g' ees'' bes''>\p\staccato
 <aes' ees'' c'''>8\staccato r r <ees' bes' g''>\ff r r <aes ees' c'' aes''>8 r \bar "|."
}

