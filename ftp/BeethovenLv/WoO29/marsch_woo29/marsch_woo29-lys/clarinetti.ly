\version "2.10.3"

 clarinetti = {
 \set Staff.instrumentName = "Clarinetti in B."
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key c \major
 \time 4/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 126
 \repeat volta 2 { \partial 4 g'8.[ g'16]
 <e' c''>4 <e' c''>8. <e' c''>16 <f' b'>4 <f' b'>8. <f' b'>16
 << { \appoggiatura d''16 \stemUp c''8.[ b'16 c''8. d''16] } \\ { \stemDown e'4 d'4\rest } >>
 <c'' e''>8.[ <b' d''>16 <c'' e''>8. <d'' f''>16] <e'' g''>2 <f'' a''>8[ <e'' g''> <d'' f''> <c'' e''>]
 <b' d''>4 <b' d''> <b' d''> << { a'8. a'16 } \\ { c'4\rest } >>
 <f' d''>4 <f' d''>8. <f' d''>16 <e' cis''>4 <e' cis''>8. <e' cis''>16
 << { \appoggiatura e''16 \stemUp d''8.[ cis''16 d''8. e''16] f''2~ f''8[ e'' a' d''] c''4 b'4 } \\
 { f'4 d'4\rest e'4\rest b'4 c'' f' e'8.[ g'16 f'8. d'16] } >> <e' c''>4 <e' c''> <e' c''> }
 \repeat volta 2 { \partial 4 <g' g''>8. <g' g''>16
 << { g'4. a'16[ b'] c''8[ d''] } \\ { g'2~ g'8[ b'] } >> <c'' e''>8 <d'' f''>
 \appoggiatura <c'' e''>16 <b' d''>4 <b' d''> <b' d''> <g' g''>8. <g' g''>16
 << { g'4. a'16[ b'] c''8[ d''] } \\ { g'2~ g'8[ b'] } >> <c'' e''>8 <d'' f''>
 \appoggiatura <c'' e''>16 <b' d''>4 <b' d''> <b' d''> << { g'8. g'16 } \\ { g'8. g'16 } >>
 <e' c''>4 <e' c''>8. <e' c''>16 <d' b'>4 << { a'8. a'16 } \\ { a'8. a'16 } >>
 <f' d''>4 <f' d''>8. <f' d''>16 <e' cis''>4 << { c''8. c''16 } \\ { c''8. c''16 } >>
 <f'' a''>4 <f'' a''>8. <f'' a''>16 <f'' a''>8[ <e'' g''> <d'' f''> <cis'' e''>]
 << { g''8[ f'' e'' d''] } \\ { d''4 b'4 } >> <e' c''>4 <c' c''>8. <c' c''>16
 <a' a''>2 <fis' fis''> <g' g''> <e' e''> <f'! f''!>4 <d' d''> <g' g''> <g g'> <c' c''> <c' c''> <c' c''> }
}