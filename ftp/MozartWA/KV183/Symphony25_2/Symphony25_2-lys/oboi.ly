\version "2.10.3"

 oboi = {
 \set Staff.instrumentName = "Oboi.          "
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key ees \major
 \time 2/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 56
 \repeat volta 2 { \partial 8 r8^\markup { \large "Andante." } R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 << { f''2~ f''2~ f''2~ f''2~ f''8 } \\ { d''2\p ees''4.( c''8) bes'4.( d''8) ees''4.( c''8) bes'8 } >> r8 r4 R2 R2 R2 r4 r8 }
 \repeat volta 2 { r8 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 r8 <f'' aes''!>\p\<[ <f'' aes''> <f'' aes''>\!]
 <f'' aes''>2\< <d'' aes''>4\!\f r4 R2 R2 R2 R2 R2 R2 R2 R2 R2 r8 <g' bes'>8\p <g' bes'>4
 r8 <g' bes'> <g' bes'>4 r8 <f' a'> <a' c''>4 r8 <a' c''> <a' c''>4 r8 <g' b'> <b' d''>4
 r8 <c'' ees''> <bes'! ees''>4 r8 <aes' c''> <bes' d''!>4 r8 <bes' ees''>4( <a' ees''>8) <bes' d''>4 r R2
 R2 R2 R2 R2 R2 R2 <g' bes'>2\p~ <aes' bes'>2~ <g' bes'>2~ <aes' bes'>2~ <g' bes'>4 r4
 R2 R2 R2 r4 r8 } \bar "|."
}