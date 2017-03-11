\version "2.16.2"

clarinetti = {
 \set Staff.instrumentName = "Clarinetti in B."
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key d \minor
 \time 2/4
 \repeat volta 2 {
 r8 << { a'8[ a' a'] f'2^\fermata } \\ { a'8\ff[ a' a'] f'2 } >> r8 << { g'8[ g' g'] e'2~ e'2^\fermata } \\ { g'8[ g' g'] e'2~ e'2 } >>
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 r8 <a cis'>8[ <cis' e'>_\markup {  \dynamic p\italic "cresc." } <e' a'>]
 <f' a'>4\f r <d' gis'> r <cis' e'>4 r4^\fermata
 r8 << { bes'8[ bes' bes'] g'2~ g'2^\fermata } \\ { bes'8\ff[ bes' bes'] g'2~ g'2 } >>
 R2 R2 R2 R2 R2 R2 R2 << { e''8\rest e''8\p[ e'' e''] d''4 e''4\rest } \\ { R2 R2 } >> R2 R2 R2 R2 <g' bes'>4\sf r4
 <fis' a'>4\sf r <g' bes'>\sf r <a' c''>\sf r <g' bes'>\sf r <e' g'>\sf r
 <f' a'>2\f~ <f' a'>~ <f' a'>~ <f' a'> <e' g'>2~ <e' g'>~ <e' g'>~ <e' g'>4 <d' f'>4
 <aes' f''>2\ff~ <aes' f''>~ <aes' f''>~ <aes' f''> <aes' f''>4 r R2 << { c''4 } \\ { c''4 } >> r4
 R2 R2 R2 R2 R2 R2 R2 R2 << { c''4\p( f'' e'' f'' g'' d'') d''( c'') } \\ { R2 R2 R2 R2 } >> R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2  <d'' f''>2\cresc ~ <d'' f''>~ <d'' f''> <c'' f''>~ <c'' f''> <b' f''>~ <b' f''>~ <b' f''>~ <b' f''>~ <b' f''>4 <b' f''>
 <b' f''>4 <b' f''>\!
 <bes'~ c''>2\ff~ <bes' c''>4 <g' c''> <a' c''>4 r <bes' c''> r <a' c''> r <g' d''> r <a' c''> r
 <g' c''>8 <b' b''>([ <c'' c'''> <b' b''>] <c'' c'''>\ff[ <b' b''> <c'' c'''> <b' b''>])
 <c'' c'''>8\staccato[ <d'' d'''>\staccato <c'' c'''>\staccato <bes'! bes''!>\staccato] <a' a''>4 <a' a''>
 r4 <g' e''> r <a' f''> r <g' bes'> r <f' a'> r <g' e''>
 <a' f''>8 << { a''8[ a'' a''] e''8 } \\ { a''8[ a'' a''] e''8 } >> <c'' c'''>8[ <c'' c'''> <c'' c'''>] <a' a''>8 <f' f''>[ <f' f''> <f' f''>]
 <c' c''>2~ <c' c''>8 << { a''8[ a'' a''] e''8 } \\ { a''8[ a'' a''] e''8 } >> <c'' c'''>8[ <c'' c'''> <c'' c'''>]
 <a' a''>8 <f' f''>[ <f' f''> <f' f''>] <c' c''>2~ <c' c''>4 r4 r8 <g' e''>8[ <g' e''> <g' e''>] <a' f''>4 r
 r8 <e'' g''>8[ <e'' g''> <e'' g''>] <a' f''>4 r R2 R2 }

 r8 << { c''8[ c'' c''] a'2~ a'2~ a'2^\fermata } \\ { c''8\ff[ c'' c''] a'2~ a'2~ a'2 } >>
 R2 r8 << { ees''8[ ees'' ees''] d''2~ d''2~ d''2~ d''8 ees''8[ ees'' ees''] d''2~ d''2~ d''2 d''2~ d''2~ d''2~ d''2~ d''4 } \\
 { ees''8\p[ ees'' ees''] d''2~ d''2~ d''2~ d''8 ees''8[ ees'' ees''] d''2~ d''2~ d''2 bes'2( a'2 bes'2 a'2 bes'4) } >> r4
 R2 R2 R2 <d'' f''>2\p( <cis'' e''> <d'' f''> <cis'' e''> <d'' f''>4) r R2 R2
 r8 <gis' e''>8\p[ <gis' e''> <b' d''>] <a' c''>2 <gis' b'>8[ <gis' e''> <gis' e''> <b' d''>] <a' c''>2 <gis' b'>2
 << { c''2~ c''8[ a' b' c''] d''4 } \\ { a'2~ a'8 c'8\rest c'4\rest gis'4 } >> r4 << { f''8\rest gis'8[ b' c''] d''4 } \\ { R2 gis'4 } >> r4
 << { f''8\rest b'8[ c'' d''] } \\ { R2 } >> <a' e''>4 r << { e''8\rest a'8[ c'' d''] } \\ { R2 } >> <a' e''>4 r4
 r8 <a' c''>8_\markup { \italic "cresc." }[ <b' d''> <c'' e''>] <gis' b'>2\f~ <gis' b'>2 <gis' b'>4 r
 r8 <a' c''>8[ <a' c''> <a' c''>] <a' c''>2~ <a' c''>2 <a' c''>4 r
 \set crescendoText = \markup { \italic "piu f" } %\set crescendoSpanner = #'dashed-line
 r8 <a' c''>\cresc[ <a' c''> <a' c''>] <a' c''>4 r r4 <a' c''>8 <a' c''> <a' c''>4 <e' b'>8 <e' b'> <e' b'>4\! r R2 R2 R2 R2
 r4 << { d''8[ d''] d''4 } \\ { d''8[ d''] d''4 } >> r4 r <gis' b'>8 <gis' b'> <a' cis''>4 r R2 R2
 R2 R2 r4 << { cis''8 cis'' cis''4 } \\ { cis''8 cis'' cis''4 } >> r4 r4 <cis'' e''>8 <cis'' e''>
 <d'' fis''>8 <d'' d'''>\ff[ <d'' d'''> <d'' d'''>] <g' g''>2 <a' a''> R2 R2 <g' g''>2 <a' a''>
 R2 R2 <bes' d''>2 <aes' ees''> R2 R2 <b' f''>2 <c'' ees''>
 R2 << { des''2_\markup { \italic "dimin." } } \\ { R2 } >> R2 <bes' ees''>2 R2 <b' ees''>2 R2
 <b' ees''>2_\markup { \italic "sempre più"  \dynamic p } R2 <b' ees''>2 R2 <b' e''!>2\pp R2 <b' e''>2 R2 <b' e''>2
 R2 <b' e''>2 r8 << { e''8[ e'' e''] cis''2 d''2 b'~ b' } \\ { e''8\ff[ e'' e''] cis''2 d''2 b'~ b' } >>
 <bes'! e''>2\pp R2 <bes' e''>2 R2 <bes' e''>2 R2 <bes' e''>2 R2
 r8 <bes' bes''>8\ff[ <bes' bes''> <bes' bes''>] <g' g''>2~ <g' g''>8 <bes' bes''>8[ <bes' bes''> <bes' bes''>]
 <g' g''>2~ <g' g''>8 <bes' bes''>8[ <bes' bes''> <bes' bes''>] <g' g''> <bes' bes''>[ <bes' bes''> <bes' bes''>]
 <g' g''>[ <bes' bes''> <bes' bes''> <bes' bes''>] <g' g''>[ <a' a''> <a' a''> <a' a''>]
 <f' f''>2^\fermata r8 <g' g''>[ <g' g''> <g' g''>] <e' e''>2~ <e' e''>2^\fermata R2 R2 R2 <f' a'>2\p~ <f' a'>2
 <e' a'>4 r4 R2 <e' a'>2~ <e' a'>2 <f' a'>4 r4 R2 R2 R2 R2 <d' gis'>2_\markup { \italic "cresc." }

 \cadenzaOn
 <cis' a'>4\f 
%s4 s2 s2
 r4^\fermata %s2 s4 \cadenzaOff \bar "|"
s2*4    \cadenzaOff
s2
 R2 R2 R2 R2 R2 R2 << { cis''2_\markup { \italic "cresc." }~ cis''2 d''4\f e''4\rest } \\ { R2 R2 R2 } >>
 R2 R2 R2 R2 <g' bes'>4\sf r <fis' a'>\sf r <g' bes'>\sf r <a' c''>\sf r <g' bes'>\sf r <e' g'>\sf r
 <f' a'>2\f~ <f' a'>~ <f' a'>~ <f' a'> <e' g'>2~ <e' g'>~ <e' g'>~ <e' g'>4 <d' f'>
 <gis' f''>2\ff~ <gis' f''>~ <gis' f''>~ <gis' f''> <b' f''>4 r R2 <cis'' e''>4 r R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 << { c''4\p( d'' c'' b') } \\ { R2 R2 } >> R2 R2
 << { d''4( e'' d'' cis'') } \\ { R2 R2 } >> R2 R2 R2 R2 R2  <bes' bes''>4\cresc( <a' a''> <g' g''> <a' a''>)
 <bes' bes''>( <a' a''> <gis' gis''> <a' a''>) <b' b''>( <a' a''> <gis' gis''> <a' a''>)
 <b' b''>( <a' a''> <gis' gis''> <a' a''> <gis' gis''> <a' a''> <gis' gis''> <a' a''>\!)
 <g''! a''>2\ff~ <g'' a''>4 <e'' a''> <fis'' a''>4 r <cis'' g''> r <d'' fis''> r <d'' e''> r <d'' fis''> r <cis'' e''> r
 <e'' g''>2~ <e'' g''>2 <d'' fis''>4 <d'' fis''> r4 <cis'' e''> r <d'' fis''> r <d'' e''> r <d'' fis''> r <cis'' e''>
 <fis' d''>8 <fis' fis''>[ <fis' fis''> <fis' fis''>] <d' d''> <a' a''>[ <a' a''> <a' a''>] <fis' fis''> <d' d''>[ <d' d''> <d' d''>]
 <a a'>2~ <a a'>8 <fis' fis''>[ <fis' fis''> <fis' fis''>] <d' d''> <a' a''>[ <a' a''> <a' a''>]
 <fis' fis''> <d' d''>[ <d' d''> <d' d''>] <a a'> <a' cis''>[ <a' cis''> <a' cis''>] <a' d''>4 r r8 <a' cis''>[ <a' cis''> <a' cis''>]
 <a' d''>4 r r8 <cis'' e''>[ <cis'' e''> <cis'' e''>] <d'' fis''>8 <d' d''>[ <d' d''> <d' d''>]
 <d' d''>2~ <d' d''>2:8 <d' d''>2~ <d' d''>2:8 <d' d''>2~ <d' d''>2:8 <d' d''>2
 <bes' ees''>2~ <bes' ees''>2~ <bes' ees''>2~ <bes' ees''>2 <bes' ees''>4 r
 r8 << { g'8[ g' g'] bes'4 } \\ { g'8\p[ g' g'] bes'4 } >> r4 R2 r8 <b' d''>\ff[ <b' d''> <b' d''>]
 <b' d''>2~ <b' d''>~ <b' d''>~ <b' d''> <b' d''>4 r r8 <d' d''>[ <d' d''> <d' d''>] <f' f''>4 r R2 R2 R2
 << { bes''!2~ bes''4 a''4 } \\ { cis''2~ cis''2 } >> R2 R2 << { bes''!2~ bes''4 a''4 } \\ { cis''2~ cis''2 } >> R2 R2
 << { f''4 g'' e'' f'' d'' e'' c'' d'' bes' c'' a' bes' g' } \\ { f''4 g'' e'' f'' d'' e'' c'' d'' bes' c'' a' bes' g' } >>
 <f' a'>4 <e' a'> <f' a'> <g' a'> <f' a'> <g' a'> <a' d''> <bes' d''> <a' d''> <bes' d''> <cis' cis''>
 <d' d''>4 <cis' cis''> <d' d''> <e' e''> <f' d''>2~ <f' d''> <g' d''>2~ <g' d''> <a' d''>~ <a' d''> <bes' d''>( <g' d''>)
 <g' cis''>2 <a' cis''> <a' d''>4\staccato r <bes' d''>\staccato r <bes' d''>\staccato r <d'' e''>\staccato r
 <d'' e''>\staccato r <cis'' e''>\staccato r << { d''2 e''4\staccato f''\staccato g''( e'') } \\ { d''2\ff e''4 f'' g'' e'' } >>
 R2 R2 << { g''4\staccato a''\staccato bes''( g'') } \\ { g''4 a'' bes'' g'' } >>
 R2 R2 <b' d''>4\staccato <cis'' e''>\staccato <d'' f''>( <a' d''>) R2 R2
 <b' d''>4\staccato <cis'' e''>\staccato <d'' f''>( <c''! e''> <bes'! d''> <a' c''> <g' bes'> <f' a'>) R2
 <d' d''>4 <d' d''> <g'' bes''>( <f'' a''>) r4 <d'' f''> r <cis'' a''>
 R2 R2 R2 <d' d''>4 <d' d''> R2 <g' bes'>4( <f' a'>) r <f'' a''> r <e'' a''> << { d''4 } \\ { d''4 } >> r4
 r8 <cis'' e''>[ <cis'' e''> <cis'' e''>]
 <cis'' e''>2~ <cis'' e''>4( <d'' f''> <e'' g''> <cis'' e''> <d'' f''> <e'' g''>) <d'' f''>4 r
 r8 <a' a''>[ <a' a''> <a' a''>] <a' a''>2:8 <a' a''>2:8 <f' f''>2\ff^\fermata
 r8 <g' g''>[ <g' g''> <g' g''>] <e' e''>2~ <e' e''>2^\fermata R2
 << { f''4\rest bes'4\p( a' f'' d''2)~ d''4 f''4\rest f''4\rest bes'4( a' f'' d''2)~ d''8 } \\
 { R2 R2 R2 R2 R2 R2 R2 e'8\rest } >> <cis'' e''>8\ff[ <cis'' e''> <cis'' e''>] <d'' f''>4 r
 r8 <cis'' e''>[ <cis'' e''> <cis'' e''>] <d'' f''>4 r
 r8 <cis'' e''>[ <cis'' e''> <cis'' e''>] <d'' f''>4 <cis'' e''> <d'' f''> <cis'' e''> <d'' f''> <cis'' e''>
 <d'' f''>4 <cis'' e''> <d'' f''>4 r <cis'' e''> r << { d''4 } \\ { d''4 } >> r4 \bar "|."
}
