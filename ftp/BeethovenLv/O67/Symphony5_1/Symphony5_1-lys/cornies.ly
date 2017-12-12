\version "2.16.2"

cornies = {
 \set Staff.instrumentName = "Corni in Es."
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 2/4
 \repeat volta 2 {
 R2 r2^\fermata R2 R2 r2^\fermata R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 r8 << { e''8[ e'' e''] e''4 } \\ { e''8_\markup {  \dynamic p \italic "cresc." }[ e'' e''] e''4\f } >> r4 <c' c''>4 r <e' e''> r4^\fermata
 r8 << { f''8[ f'' f''] d''2~ d''2^\fermata } \\ { f''8\ff[ f'' f''] d''2~ d''2 } >>
 R2 R2 R2 R2 R2 R2 R2 r8 <e' e''>8\p[ <e' e''> <e' e''>] <e' e''>4 r4 <d'' f''>2~ <d'' f''>4 r4 R2 R2 R2
 R2 R2 R2 R2 <d'' f''>4\sf r <c'' e''>2\f~ <c'' e''>~ <c'' e''>~ <c'' e''> <d'' e''>~ <d'' e''>~ <d'' e''>~ <d'' e''>4 <c'' e''>
 <c'' ees''>2\ff~ <c'' ees''>~ <c'' ees''>~ <c'' ees''> <c'' ees''>4 r R2 <g' d''>4 r
 r8 g''8\ff[ g'' g''] c''2\sf d''2\sf g'2\sf\>~ g'2\!\p~ g'2~ g'2~ g'2~ g'2~ g'2~ g'2~ g'2~ g'2~ g'2~ g'2~ g'2
 R2 R2 R2 R2 R2 R2 R2 R2 <c' c''>2\p~  <c' c''>2\cresc ~ <c' c''>~ <c' c''>~ <c' c''>~
 <c' c''>~ <c' c''>~ <c' c''>~ <c' c''>~ <c' c''>4 <c' c''> <c' c''> <c' c''>\!
 <g' d''>2\ff~ <g' d''>4 <g g'> <g g'> r <g g'> r <g g'> r <c' c''> r <c'' e''> r <g' d''>
 <g g'>4~ <g g'>2\ff~ <g g'>2~ <g g'>4 <g g'> r4 <g g'> r <c' c''> r <c' c''> r <c' c''> r <g g'>
 <c' c''>4 r r8 <g' g''>[ <g' g''> <g' g''>] <e' e''> <c' c''>[ <c' c''> <c' c''>] <g g'>2~ <g g'>4 r
 r8 <g' g''>8[ <g' g''> <g' g''>] <e' e''> <c' c''>[ <c' c''> <c' c''>] <g g'>2~ <g g'>4 r
 r8 <g g'>[ <g g'> <g g'>] <c' c''>4 r r8 <g' d''>[ <g' d''> <g' d''>] <c' c''>4 r R2 R2 }

 r8 << { g''8[ g'' g''] e''2~ e''2~ e''2^\fermata } \\ { g''8\ff[ g'' g''] e''2~ e''2~ e''2 } >>
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 r4 << { c''4 d'' dis'' } \\ {  c''4\< d'' dis''\! } >>
 <e' e''>2\p~ <e' e''>~ <e' e''>~ <e' e''>~ <e' e''>~ <e' e''>4 r R2 R2
 R2 R2 R2 R2 R2 r8 <e' e''>8\p[ <e' e''> <e' e''>] <e' e''>4 r4 r8 <c' c''>[ <c' c''> <c' c''>] <c' c''>4 r4
 r8 <c' c''>[ <c' c''> <c' c''>] <c' c''>4 r4 r8 <e' e''>8[ <e' e''> <e' e''>] <e' e''>4 r
 r8 <e' e''>_\markup { \italic "cresc." }[ <e' e''> <e' e''>] <e' e''>4 <e' e''>4
 <c' c''>2\f~ <c' c''>2 <c' c''>4 r r8 <e' e''>8[ <e' e''> <e' e''>] <e' e''>2~ <e' e''>2 <e' e''>4 r
 \set crescendoText = \markup { \italic "piu f" } %\set crescendoSpanner = #'dashed-line
 r8 <e' e''>\cresc[ <e' e''> <e' e''>] <e' e''>4\! r4 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 r4 << { d''8 d'' d''4 } \\ { d''8 d'' d''4 } >> r4 R2 r4 << { e''8 e'' e''4 } \\ { e''8 e'' e''4 } >> r4
 << { d''2 e'' } \\ { d''2 e'' } >> R2 R2 << { d''2 e'' } \\ { d''2 e'' } >> R2 R2
 << { d''2 ees'' } \\ { d''2 ees'' } >> R2 R2 << { d''2 d'' } \\ { d''2 d'' } >>
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 <d'' f''>2\pp R2 <d'' f''>2 R2 <d'' f''>2 R2 r8
 << { f''8[ f'' f''] d''2~ d''8 f''8[ f'' f''] d''2~ d''8 f''8[ f'' f''] d''4 f'' d'' f'' d'' f'' d''8 e''[ e'' e''] c''2^\fermata } \\
 { f''8\ff[ f'' f''] d''2~ d''8 f''8[ f'' f''] d''2~ d''8 f''8[ f'' f''] d''4 f'' d'' f'' d'' f'' d''8 e''[ e'' e''] c''2 } >>
 r8 <e' e''>[ <e' e''> <e' e''>] <e' e''>2~ <e' e''>2^\fermata R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2

 \cadenzaOn % s2 s2 s2 
r2^\fermata %\cadenzaOff \bar "|"
s2*4    \cadenzaOff
s2
 R2 R2 R2 R2 R2 << { d''2~ d''2~ d''2 c''4 } \\ { d''2_\markup { \italic "cresc." }~ d''2~ d''2 c''4\f } >> r4
 r8 <d'' f''>8[ <d'' f''> <d'' f''>] <d'' f''>4 r r8 <c'' e''>[ <c'' e''> <c'' e''>]
 <c'' e''>4 r R2 R2 R2 R2 R2 <d'' f''>4\f r4 <c'' e''>2\f~ <c'' e''>~ <c'' e''>~ <c'' e''>
 <d'' e''>2~ <d'' e''>~ <d'' e''>~ <d'' e''>4 <c'' e''> <c' c''>2\ff~ <c' c''>~ <c' c''>~ <c' c''> <c' c''>4 r R2
 <e' e''>4 r R2 R2 R2 e'2\sf\>~ e'2\!\p~ e'2~ e'2~ e'2~ e'~ e'~ e'~ e'~ e'~ e'~ e'~ e'~ e'~ e'~ e' R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 r4 << { d''4 } \\ { d''4 } >> r4 << { d''4 } \\ { d''4 } >> r4 << { d''4 } \\ { d''4 } >> r4 << { d''4 } \\ { d''4 } >>
 << { e''2~ e''4 e'' e''4 } \\ { e''2\ff~ e''4 e'' e''4 } >> r4 <d'' e''>4 r << { e''4 } \\ { e''4 } >> r4
 << { d''4 } \\ { d''4 } >> r4 << { e''4 } \\ { e''4 } >> r4 << { e''4 } \\ { e''4 } >> r4 <e' e''>2~ <e' e''>2
 <e' e''>4 <e' e''> r <e' e''> r <e' e''> r4 << { d''4 } \\ { d''4 } >> r4 << { e''4 } \\ { e''4 } >>
 r4 << { e''4 e''4 } \\ { e''4 e''4 } >> r4 R2 R2 r8 << { e''8[ e'' e''] e''4 } \\ { e''8[ e'' e''] e''4 } >> r4 R2 R2
 r8 << { e''8[ e'' e''] e''4 } \\ { e''8[ e'' e''] e''4 } >> r4 r8 <e' e''>8[ <e' e''> <e' e''>] <e' e''>4 r4
 r8 <e' e''>[ <e' e''> <e' e''>] << { e''4 } \\ { e''4 } >> r4 R2 << { d''4 } \\ { d''4 } >> r4 R2
 << { e''4 } \\ { e''4 } >> r4 R2 << { f''4 } \\ { f''4 } >> r4 R2 <d'' f''>2~ <d'' f''>~ <d'' f''>~ <d'' f''> <d'' f''>4 r4
 r8 << { d''8[ d'' d''] f''4 } \\ { d''8\p[ d'' d''] f''4 } >> r4 R2
 r8 << { c''8[ c'' c''] c''2~ c''~ c''~ c'' c''4 } \\ { c''8\ff[ c'' c''] c''2~ c''~ c''~ c'' c''4 } >> r4 R2 R2 R2 R2 R2
 << { f''2~ f''4 e''4 } \\ { d''2~ d''2 } >> R2 R2 << { f''2~ f''4 e''4 } \\ { d''2~ d''2 } >> R2 R2 R2 R2 R2 R2
 << { f''4 g'' e'' f'' d'' } \\ { f''4 g'' e'' f'' d'' } >> r4 r4 << { c''4 d'' } \\ { c''4 d'' } >> r4
 r4 << { e''4 f'' e'' f'' e'' } \\ { e''4 f'' e'' f'' e'' } >> r4 << { e''4 } \\ { e''4 } >> <d'' e''>4 <d'' e''>
 << { c''2~ c'' d''~ d'' e''~ e'' f'' d''4 d'' d''2 e'' e''4\staccato } \\ { c''2~ c'' d''~ d'' e''~ e'' f'' d''4 d'' d''2 e'' e''4 } >> r4
 << { f''4\staccato } \\ { f''4 } >> r4 <d'' f''>4\staccato r <d'' f''>\staccato r << { e''4\staccato } \\ { e''4 } >> r4
 << { e''4\staccato } \\ { e''4 } >> r4 R2 R2 R2 R2 R2 R2 R2
 R2 R2 << { e''4 e'' e''2 } \\ { e''4 e'' e''2 } >> R2 R2 << { e''4 e'' e''2 } \\ { e''4 e'' e''2 } >>
 << { c''4 c'' d'' } \\ { c''4 c'' d'' } >> <c' c''>4 R2 <d'' f''>4\sf( <c'' e''>) <d'' f''>( <c'' e''>)
 r4 << { c''4 } \\ { c''4 } >> r4 << { e''4 } \\ { e''4 } >>
 R2 R2 <d'' f''>4( <c'' e''>) <d'' f''>( <c'' e''>) <d'' f''>( <c'' e''>) <d'' f''>( <c'' e''>)
 r4 << { e''4 } \\ { e''4 } >> r4 << { e''4 } \\ { e''4 } >> <c'' e''>4 r4 R2 R2 R2
 r4 <d'' e''>4 <c'' e''> <d'' e''> << { c''4 } \\ { c''4 } >> r4
 r8 << { e''8[ e'' e''] e''2:8 e''2:8 c''2:8^\fermata } \\ { e''8[ e'' e''] e''2:8 e''2:8 c''2:8\ff } >>
 r8 << { e''8[ e'' e''] e''2~ e''2^\fermata } \\ { e''8[ e'' e''] e''2~ e''2 } >> R2 R2 R2 R2 R2 R2 R2
 R2 r8 << { e''8[ e'' e''] e''4 } \\ { e''8\ff[ e'' e''] e''4 } >> r4
 r8 << { e''8[ e'' e''] e''4 } \\ { e''8\ff[ e'' e''] e''4 } >> r4
 r8 << { e''8[ e'' e''] e''4 e'' e'' e'' e'' e'' e'' e'' e'' } \\
 { e''8\ff[ e'' e''] e''4 e'' e'' e'' e'' e'' e'' e'' e'' } >> r4 << { e''4 } \\ { e''4 } >> r4 << { e''4 } \\ { e''4 } >> r4 \bar "|."
}
