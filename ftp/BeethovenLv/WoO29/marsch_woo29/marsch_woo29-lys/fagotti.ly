\version "2.10.3"

 fagotti = {
 \set Staff.instrumentName = "Fagotti."
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key bes \major
 \time 4/4
 \repeat volta 2 { \partial 4 r4
 <bes, bes>4 <bes, bes>8. <bes, bes>16 <f, c'>4 <f, c'>8. <f, c'>16
 <bes, bes>4 r4 r2 r4 <bes, bes> <ees ees'> <e e'>
 <f f'>4 <f, f> <f, f> r4 <c g>4 <c g>8. <c g>16 <g, g>4 <g, g>8. <g, g>16
 <c g>4 << { c'8. d'16 ees'2~ ees'8[ d' g c'] bes4 } \\ { b,4\rest b,4\rest c4 d ees f } >> <f, f>4
 <bes, bes>4 <bes, bes> <bes, bes> }
 \repeat volta 2 { \partial 4 r4
 <f f'>4 <ees ees'> <d d'> <bes, bes> <f, f> <f, f> <f, f> r
 <f f'>4 <ees ees'> <d d'> <bes, bes> <f, f> <f, f> <f, f> r
 <bes, bes>4 <bes, bes>8. <bes, bes>16 <f, f>4 << { g8. g16 } \\ { a,4\rest } >>
 <c g>4 <c g>8. <c g>16 <g, g>4 << { bes8. bes16 } \\ { bes8. bes16 } >>
 <ees ees'>4 <ees ees'>8. <ees ees'>16 <bes, bes>4
 << { g'4~ g'4 f'8 ees' d'4 bes,8. bes,16 } \\ { g4 ees f bes, bes,8. bes,16 } >>
 <g, g>2 <e, e> <f, f> <d, d> <ees,! ees!>4 <c, c> <f, f> <f, f> <bes,, bes,> <bes,, bes,> <bes,, bes,> }
}