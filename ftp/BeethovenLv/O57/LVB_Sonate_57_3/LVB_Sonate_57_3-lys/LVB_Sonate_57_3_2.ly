\version "2.10.3"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key f \minor
 \time 2/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 134
 \clef bass
 \key f \minor
 \time 2/4
 <bes, g>4.\sustainDown <bes, g>8 <bes, g>4. <bes, g>8 <bes, g>8.[ <bes, g>16 <bes, g>8. <bes, g>16]
 <bes, g>8.[ <bes, g>16 <bes, g>8. <bes, g>16] <bes, g>4 r4\sustainUp R2 R2 R2 R2 R2 R2 R2
 r4 c,16\f des, c, b,, c, des, c, b,, c, des, c, b,, c, des, c, b,, c, des, c, b,,
 bes,,! c, bes,, a,, bes,, c, bes,, a,, bes,, c, bes,, a,, bes,, c, bes,, a,, bes,, c, bes,, a,, bes,, c, bes,, a,,
 bes,, g,, aes,,! bes,, c, bes,, aes,, g,, f,,4 r r4 r8 r16 f, f,,4 r r4 r8 r16 f, bes,,4 r r4 r8 r16 des, c,8 r des, r bes,, r c, r
 <f,, f,>4 r8 r16 \clef treble <aes' c''>16 <aes' c''>4\sf( <f' aes'>8) r \clef bass
 <f,, f,>4 r8 r16 \clef treble <aes' c''>16 <aes' c''>4\sf( <f' aes'>8) r \clef bass
 <bes,, bes,>4 r8 r16 \clef treble <bes' des''>16 <bes' des''>2\sf
 \new Voice { <bes' c''>8\p } \clef bass <c, c>8 r <des, des> r8 <bes,, bes,> r <c, c>
 <f,, f,>4 r8 r16 <f aes>16 <f aes>4 r8 r16 <f aes> <c f aes>2\sf <c e g>8 r r4
 <c, c>4 r8 r16 <g bes!> <g bes>4 r8 r16 <g bes> <f g bes>2\sf <f aes>8 r r4
 <f, f>4 r8 r16 <c' ees'!>16 <c' ees'>4 r8 r16 <c' ees'>
 <bes c' ees'>2\sf~ <bes c' ees'>8[ <bes des'> <aes! c'> <g bes>] <c f aes>4 r8 r16 <f aes> <c g bes>4 r8 r16 <e g>
 f16 c' aes f c aes f c aes, f c aes, f, c aes, f, c, f, aes, c b, c b, c b, c g, c e, c g, c
 c,16 e, g, c e, g, c e g, c e g c e g c' f aes c' f' e' f' e' f' e' f' c' f' aes f' c' f'
 f16 a c' f' \clef treble a c' f' a' c' f' a' c'' f' a' c'' f'' a' f'' e'' f'' a' f'' a' f'' a' f'' bes' f'' c'' f'' des'' f''
 c' f' aes'! c'' b' c'' b' c'' c' e' g' c'' c' g' bes'! c''
 f16 <f' aes'>[ <c' c''> <f' aes'>] <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'>
 <c' c''> <f' aes'> <c' c''> <f' aes'> f16 <f' aes'>[ <c' c''> <f' aes'>] <c' c''> <f' aes'> <c' c''> <f' aes'>
 <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'>
 \clef bass g,16 <f g>[ <d b> <f g>] <d b> <f g> <d b> <f g> <d b> <f aes> <d b> <f aes> <d b> <f g> <d b> <f g>
 g,16 <f g> <d b> <f g> <d b> <f g> <d b> <f g> <d b> <f aes> <d b> <f aes> <d b> <f g> <d b> <f g>
 c16 \clef treble <c' ees'>[ <g g'> <c' ees'>] <g g'> <c' ees'> <g g'> <c' ees'>
 <g g'> <c' ees'> <g g'> <c' ees'> <g g'> <c' ees'> <g g'> <c' ees'> \clef bass c8 \clef treble g'16[ ees'] c''[ g' c'' g']
 ees''16 c'' ees'' c'' g'' ees'' g'' ees'' <f'' aes''>4.\sfp( <ees'' g''>8 <d'' f''>4 <ees'' g''>)
 <f'' aes''>4.\sfp( <ees'' g''>8 <d'' f''>4 <ees'' g''>)
 <f'' aes''>4.( <ees'' g''>8 <d'' f''>4 <c'' ees''> <b' d''> <a' c''> <aes'! c''> <g' c''>)
 << { fis'4 a'4 <g g'>2 } \\ { fis'2( ees'4 d'4) } >>
 \clef bass <f aes des'!>4.\sfp( <ees g c'>8 <d f b>4 <ees g c'>) <f aes des'!>4.\sfp( <ees g c'>8 <d f b>4 <ees g c'>)
 <f aes des'!>4.\sfp( <ees g c'>8 <d f b>4 <c ees aes> <b, d g> <a, c ees fis> <b, d f!> <c ees>)
 << { ees4( d c b,) } \\ { <fis, a,>2 g,2 } >> <c, ees, g, c>8\f r8 \clef treble r16 g[ c' ees'] g' aes' g' f' ees' d' c' bes
 \clef bass aes16 g f ees d ees f ees d c b, aes, g, f, ees, d, <c, ees, g, c>16\f r16 r8 \clef treble r16 g'[ c'' ees'']
 g''16 aes'' g'' f'' ees'' d'' c'' bes' aes' g' f' ees' d' ees' f' ees' \clef bass d' c' b aes g f ees d c d ees f g a b c'
 d'16 c' b a g f ees d c d ees f g a b c' d' c' b a g f ees d c d ees f g a b c' bes! aes! g f e des! c bes,
 aes, bes, c d e f g aes g f e des! c bes, aes, g, <ges,, ges,>8\sustainDown r8 r4 R2 R2
 \new Voice { \stemDown f,4\rest a,,16\rest ees,16 c, a,, }
 ges,,16^\markup { \italic "dimin." } a,, c, ees, ges,, a,, c, ees, ges,, a,, c, ees, ges,, a,, c, ees,\sustainUp
 \break

 \repeat volta 2 { f,,4\pp r r4 r8 r16 f,16 f,,4 r r4 r8 r16 f,16 f,,4 r8 a16 bes c' des' c' bes a8 a16 bes
 c'16 des' c' bes a8 a16 bes c' des' c' bes a ges f ees
 << { des16 f bes f bes f bes f bes f bes f bes f bes f des f bes f bes f bes f bes f bes f bes f bes f
 ees ges ces' ges ces' ges ces' ges ces' ges ces' ges ces' ges ces' ges f bes des' bes des' bes des' bes ees f c' f c' f c' f } \\
 { des2~ des2 des2~ des2 ees2~ ees2 f2 ees2 } >>
 des16[ f'] r8 \clef treble << { bes16 des' f' des' a^\accent des' f' des' bes des' f' des' } \\ { bes4( a bes) } >>
 \clef bass des16[ f'] r8 \clef treble << { bes16 des' f' des' a^\accent des' f' des' bes des' f' des' } \\ { bes4( a bes) } >>
 \clef bass ees16\f \clef treble <ges' ces''>[ ees' <ges' ces''>]
 ees' <ges' ces''> ees' <ges' ces''> ees' <ges' ces''> ees' <ges' ces''> ees' <ges' ces''> ees' <ges' ces''>
 f' <a' c''! ees''> f' <a' c'' ees''> f' <a' c'' ees''> f' <a' c'' ees''> f' a' f' a' \clef bass f f' f f'
 bes,8 \clef treble <bes des'>16[ f'] <bes des'> f' <bes des'> f' <bes des'> f' <bes des'> e' <bes des'> e' <bes des'> e'
 <a c'> e' <a c'> f' <a c'> f' <a c'> f' <a c'> f' <a c'> f' <a c'> f' <a c'> f'
 <bes des'> f' <bes des'> f' <bes des'> f' <bes des'> f' <bes des'> f' <bes des'> e' <bes des'> e' <bes des'> e'
 <a c'> e' <a c'> f' <a c'> f' <a c'> f' <a c'> f' <a c'> f' <a c'> f' <a c'> f' <bes des'>[ f']
 \clef bass <e g>[ c'] <e g> c' <e g> c' <f aes> c' <f aes> d' <f aes> d' <f aes> d'
 <e g>16 d' <e g> c' <e g> c' <e g> c' <e g> c' <e g> c' <e g> c' <e g> c' <f aes> c' <f aes> c' <f aes> c' <f aes> c'
 <f aes> c' <f aes> d' <f aes> d' <f aes> d' <e g> d' <e g> c' <e g> c' <e g> c' <e g> c' <e g> c' <e g> c' <e g> c'
 <f, aes, c f>4 r16 c16[ f aes] c' des' c' bes aes bes c' aes bes c' bes aes ges des ges bes
 des' ees' des' c' bes c' des' bes c' des' c' bes a ees a c' ees' f' ees' des' c' des' ees' c'
 des'\ff f bes des' f' ges' f' ees' des' c' bes aes! ges! f ees des
 \new Voice { \stemDown c16 bes, aes, ges, f, ees, des, c, }
 << { bes,16 c des c bes,8 <b, d f aes> <c e g>16[ <c c'>] r <c c'> r <c c'>[ a\rest <c c'>]
 a\rest <c c'>[ a\rest <c c'> a\rest <c c'> a\rest <c c'>] } \\
 { bes,,16 c, des, c, bes,,8 b,, c,8\staccato[ e,\staccato c,\staccato f,\staccato] c,\staccato[ g,\staccato c,\staccato aes,\staccato] } >>
 c,8\staccato[ bes,\staccato c,\staccato aes,\staccato] c,\staccato[ g,\staccato c,\staccato f,\staccato]
 c,\staccato[ e,\staccato c,\staccato f,\staccato] c,\staccato[ g,\staccato c,\staccato aes,\staccato]
 c,\staccato[ a,\staccato c,\staccato bes,\staccato] c,\staccato[ b,\staccato c,\staccato c\staccato]
 << { s16 des16[ ges bes] des'8 d'8\rest } \\ { <bes,,! des, ges, bes,!>8 g,8\rest g,16\rest bes,[ des ges] } >>
 bes8 r8 \clef treble r16 bes16[ des' ges'] bes'8 r r4 R2
 \clef bass << { s16 e16[ g bes] } \\ { <c, g,! bes, c>8 g,8\rest } >> r16 c16[ g bes]
 c'8 r \clef treble r16 c'16[ g' bes'] c''8 r r4 R2
 \clef bass \times 2/3 { des,8[ des e] } r4 R2
 \times 2/3 { e,8[ e g] } r4 R2 \times 2/3 { g,8[ g bes] } r4 R2 \times 2/3 { bes,8[ bes des'] } r4 R2
 des8_\markup { \italic "sempre pianissimo" }[ e g bes] des'8 r8 r4 R2 R2 R2 R2 R2 R2 R2 e,2 des,2 bes,,2 g,,2~ g,,2
 c,2\sustainDown^\pp~ c,2~ c,2~ c,2~ c,2~ c,4 c,8. c,16\sustainUp <f,, f,>4 r4 R2 <f,, f,>4 r8 r16 \clef treble <aes' c''>16
 \set doubleSlurs = ##t  <aes' c''>4\sf( <f' aes'>8) r8
 \set doubleSlurs = ##f \clef bass <bes,, bes,>4 r8 r16 \clef treble <bes' des''>16
 <bes' des''>2\sf \new Voice { <bes' c''>8\p } \clef bass <c, c>8 r <des, des> r8 <bes,, bes,> r <c, c>
 <f,, f,>16 c[ f aes] c' des' c' bes aes bes aes g f g aes f aes c f aes c' des' c' bes aes bes aes g f g aes f
 bes16 des ges bes des' ees' des' c' bes c' bes aes ges aes ges f e f g! aes bes aes g f e f e des c bes, aes, g,
 f,4 r8 r16 <f aes>16 <f aes> 4 r8 r16 <f aes> <c f aes>2\sf <c e g>8 r r4 <c, c>4 r8 r16 <g bes> <g bes>4 r8 r16 <g bes>
 <f g bes>2\sf <f aes>8 r r4 <f, f>4 r8 r16 <c' ees'!> <c' ees'>4 r8 r16 <c' ees'>
 <bes c' ees'>2\sf~ <bes c' ees'>8[ <bes des'> <aes! c'> <g bes>] <c f aes>4\p r8 r16 <f aes>
 <c g bes>4 r8 r16 <e g> f16 c' aes f c aes f c aes, f c aes, f, c aes, f, c, f, aes, c b, c b, c b, c g, c e, c g, c
 c,16 e, g, c e, g, c e g, c e g c e g c' f aes c' f' e' f' e' f' e' f' c' f' aes f' c' f'
 f16 a c' f' \clef treble a c' f' a' c' f' a' c'' f' a' c'' f'' a' f'' e'' f'' a' f'' a' f'' a' f'' bes' f'' c'' f'' des'' f''
 c' f' aes'! c'' b' c'' b' c'' c' e' g' c'' c' g' bes'! c''
 f16 <f' aes'>[ <c' c''> <f' aes'>] <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'>
 f16 <f' aes'>[ <c' c''> <f' aes'>] <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'> <c' c''> <f' aes'>
 \clef bass aes, <ges aes>[ <ees c'> <ges aes>] <ees c'> <ges aes> <ees c'> <ges aes>
 aes, <ges aes>[ <ees c'> <ges aes>] <ees c'> <ges aes> <ees c'> <ges aes>
 aes, <ges aes>[ <ees c'> <ges aes>] <ees c'> <ges aes> <ees c'> <ges aes>
 aes, <ges aes>[ <ees c'> <ges aes>] <ees c'> <ges aes> <ees c'> <ges aes>
 des16 \clef treble <des' f'>[ <aes aes'> <des' f'>] <aes aes'> <des' f'> <aes aes'> <des' f'>
 \clef bass des \clef treble <des' f'>[ <aes aes'> <des' f'>] <aes aes'> <des' f'> <aes aes'> <des' f'>
 \clef bass des16 \clef treble <des' f'>[ <aes aes'> <des' f'>] aes'8\staccato des''\staccato
 f''8\staccato[ aes''\staccato des'''\staccato des'''\staccato] <bes'' des'''>4.\fp( <aes'' c'''>8 <g''! bes''>4 <aes'' c'''>)
 <bes'' des'''>4.\fp( <aes'' c'''>8 <g''! bes''>4 <aes'' c'''>)
 <bes'' des'''>4.\fp( <aes'' c'''>8 <g'' bes''>4 <f'' aes''> <e'' g''>4 <d'' f''> <des''! f''> <c'' f''>)
 << { b'4 d''! <c' c''>2 } \\ { b'2( aes'4 g'4) } >> \clef bass <bes, des ges>4.\sfp( <aes, c f>8 <g,! bes, e>4 <aes, c f>)
 <bes, des ges>4.\sfp( <aes, c f>8 <g,! bes, e>4 <aes, c f>)
 <bes, des ges>4.\sfp( <aes, c f>8 <g,! bes, e>4 <f, aes, des> <e, g, c> <d, f, aes, b,> <e, g, bes,!> <f, aes,>)
 << { aes,4( g, f, e,) } \\ { b,,2 c,2 } >> <f,, aes,, c, f,>8 r8 r16 c[ f aes] c' des' c' bes aes g f ees
 \new Voice { \stemDown des16 c bes, aes, g, aes, bes, aes, g, f, e, d, c, bes,, aes,, g,, <f,, aes,, c, f,>8\f }
 r8 \clef treble r16 c'16[ f' aes'] c'' des'' c'' bes' aes' g' f' ees' des' c' bes aes \clef bass g aes bes aes
 g16 f e d c bes, aes, g, f, g, aes, bes, c d e f g f e d c bes, aes, g, f, g, aes, bes, c d e f g f e d c bes, aes, g, }
 \alternative {
 { f,16 e, d, c, bes,, aes,, g,, f,, g,, aes,, bes,, c, d, e, f, g, <ges,, ges,>8\sustainDown r8 r4 R2 R2
 \new Voice { f,4\rest c,16\rest \stemDown ees,16[ c, a,,] }
 ges,,16^\markup { \italic "dimin." } ees, c, a,, ges,, ees, c, a,, ges,, ees, c, a,, ges,, ees, c, a,,\sustainUp }
 { f,4 r8 <c, f, aes, c>8 <c, e, g, bes, c>8[ <c, e, g, bes, c> <c, e, g, bes, c> <c, e, g, bes, c>] } }
 <c, f, aes, c>4 r8 <c f aes c'>8 <c e g bes c'>8[ <c e g bes c'> <c e g bes c'> <c e g bes c'>] <c f aes c'>4 r8 <c, f, aes, c>8
 <c, e, g, bes, c>8[ <c, e, g, bes, c> <c, e, g, bes, c> <c, e, g, bes, c>]
 <c, e, g, bes, c>8[ <c, e, g, bes, c> <c, e, g, bes, c> <c, e, g, bes, c>]
 <c, e, g, bes, c>8[ <c, e, g, bes, c> <c, e, g, bes, c> <c, e, g, bes, c>] \bar "||"
 \break

 \repeat volta 2 { <f,, aes,, c, f,>2\ff <f,, aes,, c, f,>\sf
 <c, c>8\p\staccato[ c,\staccato c,\staccato c,\staccato]
 <f,, f,>\staccato[ f,\staccato f,\staccato f,\staccato] <c, c>8\staccato[ c,\staccato c,\staccato c,\staccato]
 <f,, f,>\staccato[ f,\staccato f,\staccato f,\staccato] f,,\staccato[ f,\staccato f,,\staccato f,,\staccato] }
 \alternative { { c,4 r8 c,32([ bes,,!32 aes,, g,,]) } { c,4 r8 \times 2/3 { ees,!16[ f, g,] } } }
 \repeat volta 2 { <aes,, c, ees, aes,>2\ff  <aes,, c, ees, aes,>\sf
 <ees, ees>8\p\staccato[ ees,\staccato ees,\staccato ees,\staccato]
 <aes,, aes,>\staccato[ aes,\staccato aes,\staccato aes,\staccato]
 <ees, ees>8\staccato[ ees,\staccato ees,\staccato ees,\staccato] <aes,, aes,>\staccato[ aes,\staccato aes,\staccato aes,\staccato]
 <f,, f,>8\staccato[ f,,\staccato f,,\staccato f,,\staccato] <bes,, bes,>\staccato[ bes,\staccato bes,\staccato bes,\staccato]
 c,\staccato[ c\staccato c,\staccato c,\staccato] }
 \alternative { { <f,, f,>4 r8 \times 2/3 { ees,!16[ f, g,] } }
 { <f,, f,>16 \set tieWaitForNote = ##t f,16[~ aes,~ c~] <f, aes, c f>4^\sf~ } } <f, aes, c f>16
 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t \stemDown f,8. s4 s16 f,8. s4 s16 f,8. s4 } \\
 { \stemDown s16 aes,8 s4 s8 aes,8 s4 s8 aes,8 s4 } \\
 { \set tieWaitForNote = ##t \stemUp f,16[~ aes,16~ c16]~ <f, aes, c f>4^\sf~ <f, aes, c f>16
 f,16[~ aes,16~ c16]~ <f, aes, c f>4^\sf~ <f, aes, c f>16 f,16[~ aes,16~ c16]~ <f, aes, c f>4^\sf } >>
 r16 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t \stemDown bes,8. s4 s16 bes,8. s4 } \\
 { \stemDown s16 des8 s4 s8 des8 s4 } \\
 { \set tieWaitForNote = ##t \stemUp bes,16[~ des16~ ges16]~ <bes, des ges bes>4^\sf~ <bes, des ges bes>16
 bes,16[~ des16~ ges16]~ <bes, des ges bes>4^\sf } >>
 r16 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t \stemDown c8. s4 s16 c8. s4 } \\
 { \stemDown s16 g!8 s4 s8 g8 s4 } \\
 { \set tieWaitForNote = ##t \stemUp c16[~ g16~ bes16]~ <c g bes c'>4^\sf~ <c g bes c'>16
 c16[~ g16~ bes16]~ <c g bes c'>4^\sf  } >>
 r16 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t
 \stemDown f8. s4 s16 f8. s4 s16 f8. s4 s16 f8. s4 } \\ { \stemDown s16 aes8 s4 s8 aes8 s4 s8 aes8 s4 s8 aes8 s4 } \\
 { \set tieWaitForNote = ##t \stemUp f16[~ aes16~ c'16]~ <f aes c' f'>4^\sf~ <f aes c' f'>16
 f16[~ aes16~ c'16]~ <f aes c' f'>4^\sf~ <f aes c' f'>16 f16[~ aes16~ c'16]~ <f aes c' f'>4^\sf~
 <f aes c' f'>16 f16[~ aes16~ c'16]~ <f aes c' f'>4^\sf } >>
 \clef treble r16 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t \stemDown bes8. s4 s16 bes8. s4 } \\
 { \stemDown s16 des'8 s4 s8 des'8 s4 } \\
 { \set tieWaitForNote = ##t \stemUp bes16[~ des'16~ ges'16]~ <bes des' ges' bes'>4^\sf~ <bes des' ges' bes'>16
 bes16[~ des'16~ ges'16]~ <bes des' ges' bes'>4^\sf } >>
 r16 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t \stemDown c'8. s4 } \\ { \stemDown s16 e'8 s4 } \\
 { \set tieWaitForNote = ##t \stemUp c'16[~ e'16~ g'16]~ <c' e' g' c''>4^\sf } >>
 \clef bass r16 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t \stemDown c8. s4 } \\
 { \stemDown s16 e8 s4 } \\ { \set tieWaitForNote = ##t \stemUp c16[~ e16~ g16]~ <c e g c'>4^\sf } >>
 <f, f>8 r8 r \clef treble << { \set tieWaitForNote = ##t \stemUp c''16~ f''~ \stemDown <c'' f''>4. } \\
 { \stemDown c''8 s4. } \\ { \stemUp s8 aes''4. } >> c'8\staccato
 f'8\staccato r8 r << { \set tieWaitForNote = ##t \stemUp c''16~ f''~ \stemDown <c'' f''>4. } \\
 { \stemDown c''8 s4. } \\ { \stemUp s8 aes''4. } >> c'8\staccato
 f'8\staccato r8 r << { \set tieWaitForNote = ##t \stemUp c''16~ f''~ \stemDown <c'' f''>4. } \\
 { \stemDown c''8 s4. } \\ { \stemUp s8 aes''4. } >> c'8\staccato
 f'8\staccato r8 r << { \set tieWaitForNote = ##t \stemUp c''16~ f''~ \stemDown <c'' f''>4. } \\
 { \stemDown c''8 s4. } \\ { \stemUp s8 aes''4. } >> c'8\staccato
 f'4 r8 \clef bass c'8 f4 r8 c f,4 r8 c, f,,8[ c, f,, c,] f,,16\sustainDown[ aes,, c, f,] f,,[ aes,, c, f,] f,,[ aes,, c, f,] f,,[ aes,, c, f,]
 f,,[ aes,, c, f,] f,,[ aes,, c, f,] f,,[ aes,, c, f,] f,,[ aes,, c, f,]
 \new Voice { \stemDown f,,16[ aes,, c, f,] f,,[ aes,, c, f,] f,,[ aes,, c, f,] f,,[ aes,, c, f,] <f,, aes,, c, f,>8 f,8\rest f,4\rest }
 <f,, aes,, c, f,>8 r r4 << { <f aes>8 } \\ { <f,, aes,, c, f,>8 } >> r8 r4\sustainUp \bar "|."
}