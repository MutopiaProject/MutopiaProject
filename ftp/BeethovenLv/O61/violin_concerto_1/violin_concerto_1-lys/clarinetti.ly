\version "2.10.3"

 clarinetti = {
 \set Staff.instrumentName = \markup { \center-align { "Clarinetti" "in A." } }
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key f \major
 \time 4/4
 R1 <a' c''>2\p_\markup { \italic "    dolce" }( <bes' d''> <g' bes'>2.) <f' a'>4( <bes' d''> <a' c''> <g' bes'> <f' a'>) <e' g'>4 r4 r2
 <g' bes'>2_\markup { \italic "cresc." }( <f' a'> <bes' d''>2.\sf\>) <a' c''>4\!( <g' bes'>\p <f' a'> <e' g'>) <e' g'>4
 \set doubleSlurs = ##t <g' bes'>2( <f' a'>4) r4 R1 R1 R1 R1 R1 R1 R1 R1 \set doubleSlurs = ##f
 << { f'2_\markup { \italic "dolce" }~f'8( g' a' bes' c'' d'' e'' f'' g'' a'') f'8\staccato[ f'\staccato] } \\ { R1 R1 } >>
 <e' g'>2_\markup { \italic "dolce" }~ <e' g'>8( <f' a'> <g' bes'> <a' c''> <bes' d''> <c'' e''> <d'' f''> <e'' g''> <f'' a''> <g'' bes''>)
 <e' g'>8\staccato[ <e' g'>\staccato] \setTextCresc <f' a'>2\<~ <f' a'>8( <g' bes'> <a' c''> <bes' d''>
 <c'' e''> <d'' f''> <e'' g''> <f'' a''> <g'' bes''> <a'' c'''>) <a'' c'''>8\staccato[ <a'' c'''>\staccato\!]
 <a'' c'''>1\f~ <a'' c'''>4 << { a''4( f'' d'') c''1~ c''2( bes') } \\
 { a''4_\markup { \italic "dimin." }( f'' d'') c''4\pp e'4\rest f'2\rest R1 } >>
 <f' aes'>2\ff <aes' des''>8 r <des'' f''> r <f'' aes''>8 r r4 r2 <c'' ees''>2 <c'' ees''>8 r <c'' ees''> r  <c'' ees''>4 r r2
 <bes' des''>2 <bes' des''>8 r r4 <g' c''>2 <g' g''>8 r <c'' c'''> r <c'' aes''>4. r8 <b' f''>4. r8 <c'' e''>4 r4 r2
 r4 << { c''4( aes'8) } \\ { c''4\sf( aes'8) } >> r8 << { f'4( c'8) } \\ { f'4\sf( c'8) } >> r8 r4 r2
 r4 << { c''4( aes'8) } \\ { c''4\sf( aes'8) } >> r8 << { f'4( c'8) } \\ { f'4\sf( c'8) } >> r8 r4 r2
 R1 R1 R1 <f' a'!>4\p( <g' bes'> <a' c''> <bes' d''>8 <g' e''>) << { f''2( c'') } \\ { a'2 a' } >>
 <g' bes'>4( <f' a'> <e' g'> <f' a'>8 <d' f'>) << { g'2( c') } \\ { e'2( c') } >>
 <f' a'>4( <g' bes'> <a' c''> <bes' d''>8 <g' e''>) << { f''2( c'') } \\ { a'2 a' } >>
 << { d''4( bes' g' c'') f'4 } \\ { bes'4( g' e') e' f'4 } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1
 R1 <f' aes'>2.\p( <g' bes'>8 <aes' c''>) << { des''4( c'' bes' ees'') } \\ { bes'4_\markup { \italic "cresc." }( aes' g') g' } >>
 <aes' c''>1 \set doubleSlurs = ##t <g' bes'>4( <f' aes'> <e'! g'> <c' c''>)~ <c' c''>4 r4 r2 \set doubleSlurs = ##f
 R1 R1 R1 R1 << { r2 a'2_\markup { \italic "cresc." }( c'' ees''2) } \\ { R1 R1 } >> <bes' d''>1\f <g' e''!>1\f
 <a' f''>2\ff <a' f''>4 r <bes' d''>2 <bes' d''>4 r <a' c''>4\f r <f' a'>\f r <g' bes'>\f r <e' g'>\f r <f' a'>1\ff~ <f' a'>1
 <e' g'>1~ <e' g'>1 f'2( a'4 c'' d'' e'' f'' g''8 f'') <e' g'>1~ <e' g'>1 <f' a'>4 r <e' g'> r <f' a'> r <e' g'> r R1 R1
 R1 R1 <bes' e''>4\f r r2 <bes' e''>4\f r r2 <bes' e''>4\p r4 r2 R1 R1 R1 R1 R1
 R1 <bes' e''>1\p <a' f''>4 r r2 \set doubleSlurs = ##t <a' c''>2\p( <bes' d''>) <g' bes'>2.( <f' a'>4)
 \set doubleSlurs = ##f <bes' d''>4( <a' c''> <g' bes'> <f' a'>) <e' g'>4 r r2
 \set doubleSlurs = ##t <g' bes'>2_\markup { \italic "cresc." }( <f' a'>2) <bes' d''>2.\sf\>( <a' c''>4\!\p)
 \set doubleSlurs = ##f <g' bes'>4( <f' a'> <e' g'>) <e' g'> \set doubleSlurs = ##t <g' bes'>2( <f' a'>4) r4
 \set doubleSlurs = ##f R1 R1 R1 R1 R1 R1 R1 R1
 << { f'2_\markup { \italic "dolce" }~ f'8( g' a' bes' c'' d'' e'' f'' g''[ a'']) f'\staccato f'\staccato } \\ { R1 R1 } >>
 <e' g'>2_\markup { \italic "dolce" }~ <e' g'>8( <f' a'> <g' bes'> <a' c''> <bes' d''> <c'' e''> <d'' f''> <e'' g''>
 <f'' a''> <g'' bes''>) <e' g'>\staccato <e' g'>\staccato
 <a' f''>2\f <a' f''>8 r r4 R1 <g' e''>2 <g' e''>8 r r4 R1 R1 R1 R1 R1 R1 R1 R1
 R1 r4 r8 <b' d''>8\p <c'' ees''>4 r8 <c'' ees''> <b' d''>4 r r2 r4 r8 <b' d''> <c'' ees''>8[ <c'' ees''>] r <c'' ees''> <b' d''>4 r r2
 R1 R1 R1 R1 R1 R1 <c'' e''>4\p_\markup { \italic "    dolce" }( <d'' f''> <e'' g''> <f'' a''>8 <d'' b''>)
 << { c'''2( g'') } \\ { e''2 e'' } >> <d'' f''>4( <c'' e''> <b' d''> <c'' e''>8 <a' c''>) << { d''2( g') } \\ { b'2( g') } >>
 << { e''1~ e''1 d''1 c''4 } \\ { c''1~ c''1~ c''2 b' c''4 } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { f''4\rest c''2\p( d''8 ees'') \setTextCresc f''4\<( ees'' d'') d'' ees''1 d''4( c'' b'\!\f g'\sf)~ g'1\>~ g'1\!\p~ g'1~ g'1~ g'1~
 g'4 e''4\rest d''2\rest } \\ { R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 } >>
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1

 R1 R1 R1 << { f''4\rest f''4^\p f''\rest f'' f''\rest c'' f''\rest b' } \\ { R1 R1 } >> R1 R1 R1
 r4 << { a'4( c'' bes'8 g') } \\ { f'4_\markup { \italic "cresc." } e' e' } >> <f' a'>4\f r4 r2 R1 <c'' ees''>4\f r4 r2 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 r4 <c'' ees''>8\p r8
 <c'' e''!>8_\markup { \italic "cresc." } r <c'' e''> r <c'' e''> r <c'' e''> r <e'' g''>1\fp
 <b' d''>8_\markup { \italic "cresc." } r <b' d''> r <b' d''> r <b' d''> r
 <b' f''>1\fp~ <b' f''>~ <b' f''>~ <b' f''>~ <b' f''>_\markup { \italic "cresc." }~ <b' f''>~ <b' f''>~ <b' f''>
 << { c''2 } \\ { c''2\ff } >> <c'' ees''>8 r <c'' ees''> r <c'' ees''>8 r r4 r2
 <bes' des''>2 <bes' des''>8 r <bes' des''> r <bes' c''>8 r r4 r2 <aes' c''>2 <aes' c''>8 r r4
 <g' d''!>2 << { d''8 } \\ { d''8 } >> r8 << { g''8 } \\ { g''8 } >> r8 <c'' ees''>4~ <c'' ees''>8 r <aes' c''>4~ <aes' c''>8 r
 <g' g''>8 r r4 r2 r4 << { g''4( ees''8) } \\ { g''4\sf( ees''8) } >> r8 << { c''4( g'8) } \\ { c''4\sf( g'8) } >> r8 r4 r2
 r4 << { g''4( ees''8) } \\ { g''4\sf( ees''8) } >> r8 << { c''4( g'8) } \\ { c''4\sf( g'8) } >> r8 r4 r2 R1 R1 R1
 <c' e'>4\p_\markup { \italic "    dolce" }( <d' f'> <e' g'> <a' f'>8 <d' b'>) << { c''2( g') } \\ { e'2 e' } >>
 <d'' f''>4( <c'' e''> <b' d''> <c'' e''>8 <a' c''>) << { d''2( g') } \\ { b'2( g'2) } >>
 <c' e'>4( <d' f'> <e' g'> <a' f'>8 <d' b'>) << { c''2( g'') a''4( f'' d'' g'') c'' } \\ { e'2 e'' f''4( d'' b' b') c'' } >> r4 r2
 <g' g''>4\ff( <f' f''> <ees' ees''> <d' d''>) << { c''2( g'') } \\ { c'2 g''2 } >> f''4( ees'' d'' ees''8 c'') d''2( g')
 g''4( f'' ees'' d'') c''2( g''2) R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 <ees'' g''>2_\markup { \italic "sempre f" } <ees'' g''>4 r <c'' aes''>2 <c'' aes''>4 r
 <g'' bes''>4 r <ees'' g''> r <f'' aes''> r <d'' f''> r << { ees''4 } \\ { ees''4 } >> r4 r2 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1

 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 <f' f''>8 r <f' f''> r <f' f''> r <f' f''> r \set doubleSlurs = ##t <a' c''>2( <bes' d''>)
 \set doubleSlurs = ##f <g' bes'>2.\sf <f' a'>4( <bes' d''> <a' c''> <g' bes'> <f' a'>) <e' g'>4 r r2
 \set doubleSlurs = ##t <g' bes'>2( <f' a'>)
 \set doubleSlurs = ##f <bes' d''>2. << { c''4( bes' a' g' c''8 g') } \\ { a'4( g' f' e' e') } >>
 \set doubleSlurs = ##t <g' bes'>2( <f' a'>4) r4 \set doubleSlurs = ##f
 R1 <bes' e''>1 R1 <bes' d''>1\sf~ <bes' d''>2_\markup { "sempre f" }( <a' c''> <g' bes'> <f' a'>)
 << { g''2~ g''8([ f'' e'' d'']) c''2~ c''8[ c''( bes' g')] f'2 f'8 } \\ { g'1 g'1 f'2 f'8 } >> r8 r4 R1 <e' g'>2 <e' g'>8 r r4 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 r4 << { d''4( bes' g') f' } \\ { d''4\p( bes' g') f' } >> r4 r2 R1 R1
 R1 R1 << { g'2\p~ g'8([ a' bes' c''] d''[ e'' fis'' g''] a''[ bes'' g'\staccato g'\staccato]) } \\ { R1 R1 } >> R1 R1 R1
 R1 r4 r8 << { c''8 c''4 } \\ { c''8\p c''4 } >> r8 << { c''8 c''4 } \\ { c''8 c''4 } >> r4 r2
 r4 r8 << { c''8 c''[ c''] } \\ { c''8 c''[ c''] } >> r8 << { c''8 c''4 } \\ { c''8 c''4 } >> r4 r2 R1 R1 R1
 R1 R1 R1 <f' a'>4\p_\markup { \italic "    dolce" }( <g' bes'> <a' c''> <bes' d''>8 <g' e''>)
 << { f''2( c'') } \\ { a'2 a' } >> R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 <a' f''>1\p^\markup { "TUTTI." }~ <a' f''>1 <g' e''>1~ <g' e''>1 <a' f''>4 r4 r2 R1 R1 R1
 R1 R1 R1 r4 <bes' d''>\p r <bes' d''> r <f' a'> r <g' bes'> <f' a'>4 r r2 R1 R1
 r4 << { d''4( f'' ees''8 c'') s4 } \\ { \setTextCresc bes'4\< a' a' <bes' d''>\!\f } >> r4 r2 R1 <d'' f''>4\f r r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { f'2 } \\ { f'2\ff } >> <f' f''>8 r <f' f''> r <f' f''>4 r4 r2 <c'' ees''>2 <c'' ees''>8 r <c'' ees''> r <c'' ees''>4 r4 r2
 <bes' des''>2 <bes' des''>8 r8 r4 <g' c''>2 <g' g''>8 r <c'' c'''> r <c'' aes''>4. r8 <b' f''>4. r8 <c'' e''!>4 r4 r2
 r4 << { c''4( aes'8) } \\ { c''4\sf( aes'8) } >> r8 << { f'4( c'8) } \\ { f'4\sf( c'8) } >> r8 r4 r2
 r4 << { c''4( aes'8) } \\ { c''4\sf( aes'8) } >> r8 << { f'4( c'8) } \\ { f'4\sf( c'8) } >> r8 r4 r2
 r4 <a'! f''>4\ff <a' f''> <a' f''> <a' f''>2^\fermata r2^\fermata R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 r2 <g' e''>4\f r <a' f''>4\ff r <f' f''> r << { f'4 } \\ { f'4 } >> r4 r2 \bar "|."
}