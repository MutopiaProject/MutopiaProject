\version "2.16.2"

 trombec = {
 \set Staff.instrumentName = "Corni in Es."
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 2/4
 \repeat volta 2 {
 R2 r2^\fermata R2 R2 r2^\fermata R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 r8 <g g'>8_\markup {  \dynamic p \italic "cresc." }[ <g g'> <g g'>] <c' c''>4\f r <c' c''> r <g g'> r4^\fermata
 R2 R2 r2^\fermata R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 <c' c''>4\f r <c' c''>\f r R2 R2 r4 <c' c''>8 <c' c''> <g g'>4 r R2 R2
 r4 <c' c''>8 <c' c''> <c' c''>2\ff~ <c' c''>~ <c' c''>~ <c' c''> <c' c''>4 r R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 << { f''2~ f''4 } \\ { f''2\ff~ f''4 } >> r4 R2 R2 <g g'>4\f r <c' c''> r R2 R2 << { f''2~ f''2 g''4 } \\ { f''2\ff~ f''2 g''4 } >> <g' g''>4
 R2 r4 <g g'> r <c' c''> R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 }

 R2 R2 R2 r2^\fermata R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 <g g'>4\pp r4 R2 << { c'4 } \\ { c'4 } >> r4 R2 << { c'4 } \\ { c'4 } >> r4 R2
 <g g'>4 r R2 <g g'>4 r R2 <c' c''>2\f~ <c' c''>2 <c' c''>4 r r8 <e' e''>8[ <e' e''> <e' e''>]
 <e' e''>2~ <e' e''>2 <e' e''>4 r
 \set crescendoText = \markup { \italic "piu f" } %\set crescendoSpanner = #'dashed-line
 r8 <g' g''>\cresc[ <g' g''> <g' g''>] <g' g''>4 r r4 <g' g''>8 <g' g''> <g' g''>4\! r4 << { d''4 } \\ { d''4 } >> r4
 R2 R2 r4 << { c'8 c' c'4 } \\ { c'8 c' c'4 } >> r4 R2 R2 r4 << { d''8 d'' } \\ { d''8 d'' } >> <g' d''>4 r R2 R2
 R2 R2 R2 R2 r4 <g g'>8 <g g'> <c' c''>4 r4 << { c'2 c'2 } \\ { c'2 c'2 } >> R2 R2 << { c'2 c'2 } \\ { c'2 c'2 } >>
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 r8 << { d''8[ d'' d''] d''2 d''2 d''2~ d''2 } \\ { d''8\ff[ d'' d''] d''2 d''2 d''2~ d''2 } >>
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 r8 <g' g''>8\ff[ <g' g''> <g' g''>]
 <g' g''>2^\fermata r8 <g' g''>[ <g' g''> <g' g''>]  <g' g''>2~ <g' g''>2^\fermata R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 <c' c''>4\p r4

 \cadenzaOn 
<g g'>4\f %s4 s2 s2
 r4^\fermata %s2 s4 \cadenzaOff \bar "|"
s2*4    \cadenzaOff
s2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 <c' c''>4\f r R2 <c' c''>4 r
 R2 R2 R2 R2 R2 R2 <c' c''>4\f r <c' c''>\f r R2 R2 r4 <c' c''>8[ <c' c''>] <g g'>4 r
 R2 R2 r4 <c' c''>8[ <c' c''>] <c' c''>2\ff~ <c' c''>~ <c' c''>~ <c' c''> <c' c''>4 r R2 <g g'>4 r R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 <g' d''>2\ff~ <g' d''>4 <g' d''> <e' c''>4 r <g g'> r <c' c''> r
 <c' c''>4 r <c' c''> r <g g'> r <g' d''>2~ <g' d''>2 <c'' e''>4 <c' c''> r <g g'> r <c' c''> r <c' c''> r <c'' e''> r <g' d''>
 <e' c''>4 r4 R2 R2 r8 <g g'>8[ <g g'> <g g'>] <c' c''>4 r R2 R2 r8 <g g'>[ <g g'> <g g'>] <c' c''>4 r
 r8 <g g'>[ <g g'> <g g'>] <c' c''>4 r r8 <g g'>[ <g g'> <g g'>] <c' c''>2:8
 <c' c''>2~ <c' c''>2:8 <c' c''>2~ <c' c''>2:8 <c' c''>2~ <c' c''>2:8 <c' c''>2 R2 R2 R2 R2 R2 R2
 R2 R2 r8 <c' c''>8\ff[ <c' c''> <c' c''>] <c' c''>2~ <c' c''>~ <c' c''>~ <c' c''> <c' c''>4 r4
 r8 <c' c''>8[ <c' c''> <c' c''>] <c' c''>4 r4 R2 <g g'>4 r4 R2 R2 R2 <g g'>4 r4
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 r4 <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <c' c''> <c' c''> <c' c''>
 <c' c''>4 <g g'> <g g'> <g g'> <g g'> <g g'> <c' c''>2~ <c' c''> <c' c''>~ <c' c''> <c' c''>~ <c' c''> <c' c''>~ <c' c''>
 <g g'>2 <g g'> <c' c''>4\staccato r <c' c''>\staccato r <c' c''>\staccato r <c' c''>\staccato r
 <g g'>4\staccato r <g g'>\staccato r <c' c''>2
 <c' c''>4 <c' c''> <c' c''>2 <c' c''>4 <c' c''> <c' c''>2 <c' c''>4 <c' c''> <c' c''>2
 <g g'>4 <g g'> <g g'>2 <g g'>4 <g g'> <g g'>2 <g g'>4 <g g'> <g g'>2 <g g'>4 <g g'> <c' g'>4 r4 R2 R2
 <c' c''>4 <c' c''> R2 <c' c''>4 <c' c''> r4 <g g'> r <g g'> R2 R2
 <c' c''>4 <c' c''> <c' c''> <c' c''> <c' c''> <c' c''> <c' c''> <c' c''> r4 <g g'> r <g g'> <c' c''> r
 R2 R2 R2 R2 r8 <g g'>8[ <g g'> <g g'>] <c' c''>4 r4
 R2 R2 r8 <g g'>[ <g g'> <g g'>] <g g'>2\ff^\fermata r8 <g g'>[ <g g'> <g g'>] <g g'>2~ <g g'>2^\fermata
 R2 R2 R2 R2 R2 R2 R2 R2 r8 <g g'>\ff[ <g g'> <g g'>] <c' c''>4 r r8 <g g'>[ <g g'> <g g'>] <c' c''>4 r
 r8 <g g'>[ <g g'> <g g'>] <c' c''>4 <g g'> <c' c''> <g g'> <c' c''> <g g'> <c' c''> <g g'>
 <c' c''>4 r <g g'> r << { c'4 } \\ { c'4 } >> r4 \bar "|."
}
