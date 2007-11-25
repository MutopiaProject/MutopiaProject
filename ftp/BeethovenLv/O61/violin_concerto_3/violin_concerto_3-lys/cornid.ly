\version "2.10.3"

 cornid = {
 \set Staff.instrumentName = "Corni in D."
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 6/8
 \partial 8 r8 R2. R2. R2. R2. R2. R2. R2. R2. r8 <g g'>8\p[ <g g'>] <g g'> r8 << { g'8 } \\ { g'8\p } >>
 \set doubleSlurs = ##t <g' d''>4\<( <c'' e''>8\!) <g' d''>4\>^\fermata r8\! R2. R2. R2. R2. R2. R2. R2. R2.
 r8 <g g'>8\p[ <g g'>] <g g'>4 << { g'8 } \\ { g'8 } >> <g' d''>4\<( <c'' e''>8\!) <g' d''>4\>^\fermata c''8\!\ff
 \set doubleSlurs = ##f
 << { g'4^\markup { "ten." } c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } \\
 { g'4 c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } >> r8
 r8 <g' d''>[ <c'' e''>] r <c' c''>[ <d'' f''>] <g' d''>[ <g' d''> <c'' e''>] <g' d''>4
 << { c''8\staccato g'4^\markup { "ten." } c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } \\
 { c''8\staccato g'4 c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } >> r8
 r8 <g' d''>[ <c'' e''>] r <c' c''>[ <d'' f''>] R2. r4 r8 <c' c''>8[ <c' c''> <c' c''>]
 <c' c''>8[ <c' c''> <c' c''>] <c' c''>[ <c' c''> <c' c''>] <c' c''>4.\sf r4 r8 r4 r8 <g' d''>4 <g' d''>8
 <c' c''>4. r4 r8 r4 r8 <g' d''>4 <g' d''>8 <c'' e''>4. <c'' d''>4. <c'' e''>4. <g' d''>4. <e' c''>4 r8 r4 r8
 r4 r8 <g' d''>8.[ <g' d''>16 <g' d''>8] <c' c''>4. r4 r8 r4 r8 <g' d''>8.[ <g' d''>16 <g' d''>8]
 <e' c''>4 r8 <e' c''>4_\markup { \italic "dimin." } r8 <e' c''>4 r8 <e' c''>4 r8 <e' c''>4\p r8 r4 r8 R2. R2.
 <c'' e''>8\p\staccato[ <d'' f''>\staccato <e'' g''>\staccato] <d'' f''>\staccato[ <c'' e''>\staccato <g' d''>\staccato]
 <e' c''>8\staccato[ <g' d''>\staccato <c'' e''>\staccato] <g' d''>\staccato[ <c'' e''>\staccato <d'' f''>\staccato]
 <e' c''>8\staccato[ <g' d''>\staccato <c'' e''>\staccato] <d'' f''>\staccato[ <g' d''>\staccato <c'' e''>\staccato]
 <g' d''>4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { d''4. d''4. d''4.~ d''8 } \\ { d''4.\f d''4. d''4.~ d''8 } >> r8 r R2. R2.
 << { d''4. d''4. d''4.~ d''8 } \\ { d''4.\f d''4. d''4.~ d''8 } >> r8 r
 R2. R2. R2. <g g'>2.\p~ <g g'>2. <g g'>2.~ <g g'>2. <g g'>2.~ <g g'>4 r8 r4 r8 R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.

 R2. \cadenzaOn s4 s8 s4 s4 s4 s8 \cadenzaOff \bar "|" R2. R2. R2. R2. R2. R2. R2.
 R2. r8 <g g'>8\p[ <g g'>] <g g'> r8 << { g'8 } \\ { g'8\p } >>
 \set doubleSlurs = ##t <g' d''>4\<( <c'' e''>8\!) <g' d''>4\>^\fermata r8\! R2. R2. R2. R2. R2. R2. R2. R2.
 r8 <g g'>8\p[ <g g'>] <g g'>4 << { g'8 } \\ { g'8 } >> <g' d''>4\<( <c'' e''>8\!) <g' d''>4\>^\fermata c''8\!\ff
 \set doubleSlurs = ##f
 << { g'4^\markup { "ten." } c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } \\
 { g'4 c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } >> r8
 r8 <g' d''>[ <c'' e''>] r <c' c''>[ <d'' f''>] <g' d''>[ <g' d''> <c'' e''>] <g' d''>4 <c' c''>8 <c' c''>4 <c' c''>8 <c' c''>4 r8
 r4 r8 r4 << { f''8 f''4 f''8 f''4 } \\ { f''8 f''4 f''8 f''4 } >> r8 r8 << { f''8[ f''] f''4 } \\ { f''8[ f''] f''4 } >> <g' g''>8
 <g' g''>4 <g' g''>8 <g' g''>4 <g' g''>8\staccato <c' c''>4 <e' e''>8\staccato <g' g''>8([ <c'' c'''>]) r8
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 <g g'>2.^\pp~ <g g'>2.~ <g g'>2.~ <g g'>2.~ <g g'>2.~ <g g'>2. <g g'>4 r8 r4 r8 R2.
 R2. R2. << { d''2. } \\ { d''2._\markup { \italic "cresc." } } >> <g' d''>4\f r8 r4 r8 R2. R2.
 R2. R2. R2. R2. R2. R2. R2. r8 <g g'>8\p[ <g g'>] <g g'> r8 << { g'8 } \\ { g'8\p } >>
 \set doubleSlurs = ##t <g' d''>4\<( <c'' e''>8\!) <g' d''>4\>^\fermata r8\!
 R2. R2. R2. R2. R2. R2. R2. R2.
 r8 <g g'>8\p[ <g g'>] <g g'>4 << { g'8 } \\ { g'8 } >> <g' d''>4\<( <c'' e''>8\!) <g' d''>4\>^\fermata c''8\!\ff
 \set doubleSlurs = ##f
 << { g'4^\markup { "ten." } c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } \\
 { g'4 c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } >> r8
 r8 <g' d''>[ <c'' e''>] r <c' c''>[ <d'' f''>] <g' d''>[ <g' d''> <c'' e''>] <g' d''>4
 << { c''8\staccato g'4^\markup { "ten." } c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } \\
 { c''8\staccato g'4 c''8\staccato e''8([ g'']) c''\staccato g'4 c''8\staccato e''8([ g'']) } >> r8
 r8 <g' d''>[ <c'' e''>] r <c' c''>[ <d'' f''>] R2. r4 r8 <c' c''>8[ <c' c''> <c' c''>]
 <c' c''>8[ <c' c''> <c' c''>] <c' c''>[ <c' c''> <c' c''>] <c' c''>4.\sf r4 r8 r4 r8 <g' d''>4 <g' d''>8
 <c' c''>4. r4 r8 r4 r8 <g' d''>4 <g' d''>8 <c'' e''>4. <c'' d''>4. <c'' e''>4. <g' d''>4. <e' c''>4 r8 r4 r8
 r4 r8 <g' d''>8.[ <g' d''>16 <g' d''>8] <c' c''>4. r4 r8 r4 r8 <g' d''>8.[ <g' d''>16 <g' d''>8]
 <e' c''>4 r8 <e' c''>4_\markup { \italic "dimin." } r8 <e' c''>4 r8 <e' c''>4 r8 <e' c''>4\p r8 r4 r8 R2. R2.
 <c'' e''>8\p\staccato[ <d'' f''>\staccato <e'' g''>\staccato] <d'' f''>\staccato[ <c'' e''>\staccato <g' d''>\staccato]
 <e' c''>8\staccato[ <g' d''>\staccato <c'' e''>\staccato] <g' d''>\staccato[ <c'' e''>\staccato <d'' f''>\staccato]
 <e' c''>8\staccato[ <g' d''>\staccato <c'' e''>\staccato] <d'' f''>\staccato[ <g' d''>\staccato <c'' e''>\staccato]
 <g' d''>4 r8 <c' c''>4.~ <c' c''>4 r8 r4 r8 R2. R2. R2. R2. r4 r8 r4 <g' d''>8\p
 <e' c''>8\staccato[ <g' d''>\staccato <c'' e''>\staccato] <d'' f''>\staccato[ <g' d''>\staccato <c'' e''>\staccato]
 <g' d''>4 r8 r4 <g' d''>8 <e' c''>8[ <g' d''> <c'' e''>] <d'' f''>[ <g' d''> <c'' e''>]
 <g' d''>4 r8 <g' d''>4 r8 <g' d''>4 r8 r4 r8 <e' c''>4.\f <g' d''>4.
 \set doubleSlurs = ##t <c'' e''>4.( <e' c''>8) r8 r R2. R2. \set doubleSlurs = ##f
 <c' c''>4.\f <g g'>4. <c' c''>4.~ <c' c''>8 r8 r R2. R2. R2. <c' c''>2.~ <c' c''>2. <c' c''>2.~ <c' c''>2. <c' c''>2.~
 <c' c''>8 r8 r r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2.

 R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r8 <c' c''>4._\markup { \italic "dimin." }~ <c' c''>2.
 <c'' e''>8\pp\staccato <d'' f''>\staccato <e'' g''>\staccato <d'' f''>\staccato <c'' e''>\staccato <g' d''>\staccato
 <e' c''>\staccato <g' d''>\staccato <c'' e''>\staccato <g' d''>\staccato <c'' e''>\staccato <d'' f''>\staccato
 <c'' e''>8\staccato_\markup { \italic "cresc." } <d'' f''>\staccato <e'' g''>\staccato
 <d'' f''>\staccato <c'' e''>\staccato <g' d''>\staccato
 <e' c''>\staccato <g' d''>\staccato <c'' e''>\staccato <g' d''>\staccato <c'' e''>\staccato <d'' f''>\staccato
 <c'' e''>8 <g' g''> <g' g''> <g' g''> <g' g''> <g' g''> <g' g''> <g' g''> <g' g''> <g' g''> <g' g''> <g' g''>
 <g' g''>8 <g' g''> <g' g''> <g' g''> <g' g''> <g' g''> <g' g''>\sf <g' g''> <g' g''> <g' g''>\sf <g' g''> <g' g''>
 <g' g''>4. <c'' e''>4.\sf <c'' e''>4.\sf <c'' e''>4.\sf <c'' e''>2.\sf^\fermata R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. <c'' e''>2.\pp~ <c'' e''>2.\ppp <g' d''>2.~ <g' d''>2. R2. R2. R2. R2. R2. R2. R2.
 << { d''4\rest d''8\rest d''4\rest c''8\p\staccato g'4 c''8\staccato e''8([ g'']) c''
 g'4 c''8\staccato e''8([ g'']) c'' g'4 d''8\rest d''4\rest d''8\rest } \\ { R2. R2. R2. R2. } >>
 R2. R2. R2. <c' c''>2.\p_\markup { \italic "   cresc." }~ <c' c''>2.~ <c' c''>2.~ <c' c''>2.
 <e' c''>4\ff <e' c''>8 <e' c''>4 <e' c''>8 <e' c''>4 r8 r4 r8 <e' c''>4 <e' c''>8 <e' c''>4 <e' c''>8 <e' c''>4 r8 r4 r8
 <c'' d''>4 r8 r4 r8 <g' d''>4 r8 r4 r8 <c' c''>4 <e' c''>8 <e' c''>4 <e' c''>8 <e' c''>4 r8 r4 r8
 <e' c''>4 <e' c''>8 <e' c''>4 <e' c''>8 <e' c''>4 r8 r4 r8 <c'' d''>4 r8 r4 r8
 <g' d''>4 r8 r4 r8 <c' c''>8\ff <c' c''>4 <c' c''> <c' c''>8~ <c' c''>8 <c' c''>4 <c' c''> <c' c''>8
 << { <c' c''>2. } \\ { s16\sf s16\> s4 s4.\! } >> R2.
 <c' c''>8\ff <c' c''>4 <c' c''> <c' c''>8~ <c' c''>8 <c' c''>4 <c' c''> <c' c''>8
 << { <c' c''>2. } \\ { s16\sf s16\> s4 s4.\! } >> <e' c''>4\p r8 <g' d''> r <g' g''>8\ff
 <c' c''>4.~ <c' c''>4 <c' c''>8 <e' e''>4.~ <e' e''>4 <e' e''>8 <g' g''>4.~ <g' g''>4 <g' g''>8
 <c' c''>4._\markup { \italic "dimin." } <c' g'>4. <c' g'>2.\pp~ <c' g'>2._\markup { \italic "perdendosi" }
 <c' g'>2.\pp~ <c' g'>2.~ <c' g'>4 r8 r4 r8 R2. r4 r8 r4 <g' d''>8\ff <e' c''>4 r8 r4 \bar "|."
}