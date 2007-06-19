\version "2.10.3"

 corni = {
 \set Staff.instrumentName = "Corni in B."
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 4/4
 \repeat volta 2 { \partial 4 r4 <g' g''>4 <g' g''>8. <g' g''>16 <g' g''>4 <g' g''>8. <g' g''>16
 <g' g''>4 r4 r2 r4 << { c''4 c'' c'' } \\ { c''4 c'' c'' } >>
 <g' g''>4 <g' g''> <g' g''> r4 R1 r2 r4 <g' g''>4~ <g' g''> <d'' f''> <c'' e''> <g' d''>
 <e' c''>4 <e' c''> <e' c''> }
 \repeat volta 2 { \partial 4 <g' g''>8. <g' g''>16 <g' g''>1~ <g' g''>8[ <g' g''> <g' g''> <g' g''>]
 <g' g''>[ <g' g''>] <e' e''>[ <c' c''>] <g' g''>1~ <g' g''>8[ <g' g''> <g' g''> <g' g''>] <g' g''>2
 <g' g''>4 <g' g''>8. <g' g''>16 <g' g''>4 r4 r2 r4 <c'' c'''>8. <c'' c'''>16
 <c'' c'''>4 <c'' c'''>8. <c'' c'''>16 <c'' c'''>4 << { a''4 } \\ { g'4\rest } >>
 <d'' f''>4 <g' d''> <e' c''> <c' c''>8. <c' c''>16 <c' c''>4 <c' c''>2 <c' c''>4~ <c' c''>4 <c' c''>2 <c' c''>4
 <d'' f''>4 <d'' f''> <g' d''> <g' d''> <e' c''> <e' c''> <e' c''> }
}