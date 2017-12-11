\version "2.16.2"

clarinetti = {
 \set Staff.instrumentName = "Clarinetti in B."
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key bes \major
 \time 3/8
 \partial 8 r8 R4. R4. R4. R4. R4. R4. R4. R4. R4. r8 r8
 << { f''16. d''32 f''4. ees''8( d''4) c''8( bes'4) ees''8[ ees'' ees''] d''8 } \\
 { d''16.\p bes'32 c''4.\f\> bes'4.\!\p f'4. c''8[ c'' c''16.( a'32)] bes'8 } >> r8 r R4.
 r8 r <d' f'>8_\markup { \italic "cresc." } <ees' f'>8\f[ <ees' f'> <ees' f'>]
 <d' f'>8\p r << { ees''8( d'') } \\ { c''16. a'32 bes'8 } >> r8 <a c'>8\f( <bes d'>16) r <bes d'>\p r <bes d'> r
 <bes d'>8 r f'16._\markup { \italic "dolce" }( a'32) <f' bes'>8[ <f' bes'>( <a' c''>] <bes' d''>4) <f' bes'>16.( <a' c''>32)
 <bes' d''>8[ <bes' d''>( <c'' ees''>] <d'' f''>4) <d'' f''>8\pp~ <d'' f''>4 <d'' f''>8~ <d'' f''>4 r8
 <f' d''>4. <fis' d''>8\staccato[ <fis' a'>\staccato <g' a'>\staccato] <fis' a'>8 r r R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 << { f''4.\f\<~ f''4.\!\p~ f''4.~ f''4.( fis''4. g''4.)~ g''8 f''!4~ f''16[ f''( g'' f'' e'' f'')] d''4 } \\
 { R4. R4. R4. R4. R4. R4. R4. a'8\f[ a' a'] bes'4\p } >> r8 R4.
 r8 r16 << { f''16\staccato[ f''( d'')] f''4. ees''8( d''4) c''8( bes'4) ees''8[ ees'' ees''] d''8 } \\
 { d''16_\markup { \italic "cresc." }[ d'' bes'] c''4.\f bes'4.\p f'4. c''8[ c'' c''16.( a'32)] bes'8 } >> r8 r8 R4.
 r8 r8 << { f'8 f'[ f' f'] f' } \\ { d'8_\markup { \italic "cresc." } ees'8\f[ ees' ees'] d'\p } >> r8
 << { ees''8( d'') } \\ { c''16.( a'32) bes'8 } >> r8 << { c'8( d'16) } \\ { a8\f( bes16) } >> r16
 << { d'16 } \\ { bes16\p } >> r16 << { d'16 } \\ { bes16 } >> r16 << { d'8 } \\ { bes8 } >> r8
 f'16._\markup { \italic "dolce" }( a'32)
 <f' bes'>8[ <f' bes'>( <a' c''>] <bes' d''>4) <f' bes'>16.( <a' c''>32)
 <bes' d''>8[ <bes' d''>( <c'' ees''>] <d'' f''>4) <d'' f''>8\pp~ <d'' f''>4 <d'' f''>8~ <d'' f''>4 r8
 <f' d''>4.\ff <fis' d''>8\staccato[ <fis' a'>\staccato <g' a'>\staccato] <fis' a'>8 r8 r R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. r8 r16 << { f'16\staccato[ f''\staccato] } \\ { f'16\ff[ f''] } >> r16 R4. R4.
 R4. R4. R4. R4. R4. R4. R4. r8 r16 d'16\p\staccato[ d''\staccato] r r8 r16 g'16[ g''] r r8 r16 ees'16[ ees''] r
 r8 r16 d'[ d''] r r8 r16 ees'[ ees''] r r8 r16 d'[ d''] r r8 r16 f'[ f''] f'' << { d''16 d''16 d''4:16 } \\ { d'16\rest bes'16\f bes'4:16 } >>
 <bes' d''>4.:16 <b' d''>16 <b' d''> <c'' ees''>4:16 <c'' ees''>4:16 <cis'' e''>16 <cis'' e''> <a' d''>4.:16
 << { f''16 f'' ees''!4:16 ees''16 ees'' d''4:16 c''4. } \\ { d''4:16 c''16 c'' c''4:16 bes'16 bes' a'4. } >>
 << { f'8~ f'16( g'32 a' bes'32[ c'' d'' e'']) f''4^\fermata } \\ { f'8~ f'16 g'32 a' bes'32[ c'' d'' e''] f''4 } >> r8
 R4. R4. R4. << { f''8\rest f''8\rest f'16_\markup { \italic "dolce" }( a' c''8\staccato)[ c''16( bes' a' c'')] ees''4 e''8\rest } \\
 { R4. R4. R4. } >> R4. R4. R4. r8 r <bes' d''>16\p( <g' bes'> <e' g'>8\staccato)[ <e' g'>16( <f' a'> <g' bes'> <a' c''>]
 <bes' d''>8)[ <bes' d''>16( <a' c''> <g' bes'> <f' a'>)] <e' g'>16([ <f' a'> <g' bes'> <a' c''> <bes' d''> <a' c''>]
 <g' bes'>[ <f' a'> <e' g'>) <c' e'>( <d' f'> <e' g'>] <f' a'>[ <g' bes'> <a' c''> <bes' d''> <c'' ees''!> <d'' f''>]
 <ees'' g''>8)[ <ees'' g''>16( <d'' f''> <c'' ees''> <bes' d''>] <a' c''>8)[ <a' c''>16( <bes' d''> <c'' ees''> <d'' f''>]
 <ees'' g''>16[ <d'' f''> <c'' ees''> <bes' d''> <a' c''> <bes' d''>] <c'' ees''>[ <d'' f''> <ees'' g''>)
 <d'' f''>\staccato <bes' d''>\staccato <c'' ees''>\staccato] <d'' f''>\staccato[ <g' bes'>\staccato <a' c''>\staccato
 <bes' d''>\staccato <c'' ees''>\staccato] r r8 r16 <g' bes'>\staccato[ <a' c''>\staccato <bes' d''>\staccato]
 <c'' ees''>4.:16_\markup { \italic "cresc." } <cis'' e''>4:16 r8 R4.
 << { d'8[ d' e'] } \\ { d'8\ff[ d' cis'] } >> <d' fis'>4.~ <d' fis'>4 << { d'16.[ e'32] } \\ { d'16.[ cis'32] } >>
 <d' fis'>8[ <d' fis'> <e' g'>] <fis' a'>4.~ <fis' a'>4 <d' fis'>16.[ <e' g'>32]
 <fis' a'>4 <d' fis'>16.[ <e' g'>32] <fis' a'>4 <d' fis'>16.[ <e' g'>32]
 <d' fis'>8 r8 r R4. R4. R4. R4. R4. R4. R4. R4. R4.
 << { f''8\rest f''8\rest f'16\p\staccato[ e'32\rest bes'\staccato]
 des''8 des''16\staccato[ c''32\rest c''\staccato bes'16\staccato c''32\rest des''\staccato]
 a'4 bes'16\staccato[ b'32\rest c''\staccato]
 des''8 des''16\staccato[ c''32\rest c''\staccato bes'16\staccato c''32\rest des''\staccato]
 ees''!4 des''16\staccato[ d''32\rest ees''32\staccato]
 f''8[ f''16\staccato e''32\rest ees''!\staccato des''16\staccato e''32\rest f''\staccato]
 ees''!4 f''16\staccato[ e''32\rest ees''\staccato]
 des''8[ des''16\staccato d''32\rest c''32\staccato bes'16\staccato c''32\rest des''32\staccato]
 c''8._\markup { \italic "cresc." }([ des''16 bes' des'']) } \\
 { R4. R4. R4. R4. R4. R4. R4. R4. e'8\rest e'8\rest e'16\rest bes'16 } >> <a' c''>8.([ <bes' des''>16 <f' bes'> <bes' des''>])
 <a' c''>16\f\staccato[ <a' f''>\staccato] r8 r8
 << { f''8\rest f''8\rest b'16_\markup { \dynamic p \italic "dolce" }( c'' d''[ ees'' f'' g'')
 b'( c''] d''[ ees'']) f''8\rest f''8\rest } \\ { R4. R4. R4. } >>
 R4. R4. R4. R4. r8 c'32_\markup { \italic "cresc." }([ d' ees' f'] g'[ a' bes' c''])
 d''4.\ff~ d''16.([ c''32 bes'16. d''32]) g'8~ g'8 ees''16.([ d''32 c''16. ees''32])
 a'16.([ c''32 fis'16. a'32]) d''8~ d''8 ees''16.([ c''32]) g''8 c''8 d''16.([ bes'32]) f''8
 << { f''8 } \\ { c''8 } >> r8 r << { f''8 } \\ { d''8 } >> r8 r
 << { f'32[ e' f' g'] a'[ bes' c'' d''] ees''![ f'' g'' a''] bes''8 } \\ { f'32[ e' f' g'] a'[ bes' c' d'] ees'![ f' g' a'] bes'8 } >> r8
 << { bes'16.( d''32) f''4. ees''8( d''4) c''8( bes'4) ees''8[ ees'' ees''] d''8 } \\
 { bes16.( d'32) f'8\sf f'8\rest f'8\rest bes'4.\p_\markup { \italic "    dolce" } f'4. c''8[ c'' c''16.( a'32)] bes'8 } >> r8 r8
 R4. R4. R4. << { f''8\rest f''8\rest \times 2/3 { ees''16\p([ d'' ees'']) } d''8 f''8\rest f''8\rest } \\ { R4. R4. } >> R4. R4. R4.
 R4. R4. R4. R4. R4. R4. r8 r << { f''8( d'') } \\ { a'8\f( bes') } >> r8 r r8 r
 << { f''8~ f''8 \override TupletBracket #'transparent = ##t
 \times 2/3 { r16 bes16([ d'] } \times 2/3 { f'16[ bes' d'']) } \times 2/3 { f'16([ bes' d'']) } f''8 f''8\rest
 c''8( f''4) ees''8( d''4) c''8( bes'4) ees''8[ ees'' ees''] d''8 } \\
 { a'8( d'') a8\rest \override TupletBracket #'transparent = ##t
 \times 2/3 { c'16\rest c'16\rest d'16 } \times 2/3 { f'16\ff[ bes' d''] } f''8 a'8~ a'4.
 bes'4._\markup { \dynamic p\italic dolce } f'4. c''8[ c'' c''16.( a'32)] bes'8 } >> r8 r R4.
 r8 r r16 << { f''16 f''16([ ees''] d''8.) } \\ { d''16\f a'8[ bes'8.\sf] } >> r16 R4.
 R4. r8 r f'16_\markup { \italic "dolce" }( bes' <bes' d''>8)[ <bes' d''>16( <f' c''> <d' bes'>16. <bes' d''>32]
 <d'' f''>4) <d' bes'>16([ <bes' d''>] <d'' f''>8)[ <d'' f''>16( <c'' ees''> <bes' d''>16. <d'' f''>32)]
 <d'' bes''>4.~ <d'' bes''>4.~ <d'' bes''>4._\markup { \italic "cresc." }~ <d'' bes''>4.
 <d'' bes''>8[ <d'' bes''> <d'' bes''>] <d'' bes''>[ <d'' bes''> <d'' bes''>]
 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { <d'' bes''>16\f[ <d'' bes''> <d'' bes''>]
 <d'' bes''>[ <d'' bes''> <d'' bes''>] <d'' bes''>[ <d'' bes''> <d'' bes''>] <d'' bes''>[ <d'' bes''> <d'' bes''>]
 <d'' bes''>[ <d'' bes''> <d'' bes''>] <d'' bes''>[ <d'' bes''> <d'' bes''>]
 <d'' bes''>[ <d'' bes''> <d'' bes''>] <d'' bes''>[ <d'' bes''> <d'' bes''>] }
 << { \override TupletNumber #'transparent = ##t \times 2/3 { bes'16[ d'' f''] } bes''8 } \\
 { \override TupletNumber #'transparent = ##t \times 2/3 { bes'16[ d'' f''] } bes'8 } >> r8
 << { bes'16. d''32 f''4. d''8 } \\ { bes'16. d''32 f''4.\sf d''8 } >> r8
 << { c''8\staccato d''\staccato } \\ { a'8\p bes' } >> r8
 << { bes'16. d''32 f''4. bes'8 } \\ { bes'16.\f d''32 f''4.\ff bes'8 } >> r8 \bar "|."
}
