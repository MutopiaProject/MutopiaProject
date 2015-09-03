\version "2.18.2"

\include "defs.ily"

 viola =  {
 \set Staff.instrumentName = "Viola"
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key f \minor
 \time 3/2
 \moreAccidentalPadding
 f1.\fermata_\forteSforzato-\hideF
 <c f>2\staccato_\txtMarcato <c f>\staccato r4 r8 <c f>8
 ees2\staccato ees2\staccato r4 r8 c8 g2\staccato g2\staccato r4 r8 d8\p
 c4 r4 r2 r2 R1. R1.
 << { r2 r4 \stemDown des'!2( c'4) \stemNeutral } \\
 { \spaceSpannerF s4 s4 s4\< s4\! s4\> s8 s8\! } >> f1.\ff
 c2\staccato c2\staccato r4 r8 c8 ees2\staccato ees2\staccato r2 R1. R1.
 r2 r2 <ees ges>2\p
 f16\pp <f aes> <f aes> <f aes> <f aes> <f aes> <f aes> <f aes> <f aes>2:16 <f aes>2:16
 <f aes>16 <f aes> <f aes> <f aes> <f aes> <f aes> <f aes> <f aes> <f aes>2:16 <f aes>2:16
 <ges a>2:16 <ges a>2:16 <ges a>2:16
 <ges c'>16 <ges c'>16 <ges c'>16 <ges c'>16 <ges c'>16 <ges c'>16 <ges c'>16 <ges c'>16
 <ges c'>2:16 <ges c'>2:16
 <f bes>2:16 <f bes>2:16 <f bes>2:16 <e bes>2:16 <e bes>2:16 <e bes>2:16
 << { bes2:16 bes2:16 bes2:16 } \\ { <e g>2:16 <e g>2:16 <e g>2:16 } >>
 << { bes4 } \\ { <e g>4 } >> r4 r2 r4 r8 << { bes8 } \\ { <e g>8 } >>
 << { bes4 } \\ { <e g>4 } >> r4 r2 r4 r8 << { bes8 } \\ { <e g>8 } >>
 << { bes4 } \\ { <e g>4 } >> r4 r2 r2 \bar "||"

 \time 3/4 R2. R2. R2. r4 r4 f'8\sfp f'-\hideP f' f' f' f' f' f' f' f' f' f' f' f'
 f' f' f' f' f' f' g'[ g' g' g'] e'\sfp[ e'] e'2.:8 e'2.:8 e'2.:8 e'8 e' f' f'
 \hairpinPastBarline f4\< ~ f4.\> f8_\staccato f_\staccato g_\staccato\!
 aes4( f) \hairpinPastBarline f4\< ~ f4.\> f8\staccato f\staccato g\staccato\!
 aes4( f) \hairpinPastBarline f4\< ~ f4.\> f8\staccato f\staccato g\staccato\!
 aes4 r8 f'8\staccato[ f'\staccato c'\staccato]
 c'4 r8 e'8[ e' f'] f'8 c' c'2 c'8 c' c'2 c'8 c' c'2
 <c bes>2.\cresc ~ <c bes>2. ~ <c bes>2. ~ <c bes>2.
 <c bes>2. ~ <c bes>2. ~ <c bes>2. ~ <c bes>2.
 <c bes>2. ~ <c bes>2. ~ <c bes>2. ~ <c bes>4 r4 c8\ff([ des]
 c8 des c des c des) c( des c des c des) c( des c des c des)
 c8( des c des c des) c( des c des c des) c( des c des c des) c( des c des) c4
 f4 r8 aes\staccato[ g\staccato f\staccato] bes4 r8 bes[ aes g] c'4 r8 c'[ bes aes]
 des'4 bes g8 c' f4 r8 aes[ g f] bes4 r8 bes[ aes g] c'4 r8 c'[ bes aes] aes'4 aes aes
 g2\sf( bes8 des') aes2\sf( c'8 ees') f2\sf( aes8 c') ees2\sf( g8 bes)
 ees2\sf( des8 ees) c2\sf( ees8 aes) d2\sf( f8 bes) bes4 r r
 aes4\ff\staccato aes4\staccato r8 aes8 aes4 aes r R2. R2.
 aes4\ff aes r8 aes aes4 aes r R2. R2. aes4\ff aes r8 aes aes4 aes r
 \once \override TextScript.padding = #1.5
 a2._\pCresc-\hideP ~ a2. ~ a2. ~ a2. ~ a2. ~ a2. aes!2.\f g2.\ff
 \tupletSpan 4
 \tuplet 3/2 { c8[ c c] c[ c c] c\sf[ c c] f[ f f] f[ f f] f\sf[ f f]
 des8[ des des] des[ des des] des\sf[ des des] des[ des des] des[ des des] des[ des des] }
 c4\f r r R2. aes4 r r R2. aes4 r r R2. <bes des'>2.:8\sf <bes des'>2.:8\sf
 <aes c'>8\sf <aes c'> <aes c'> <aes c'> <c' ees'> <c' ees'> <bes des'>2.:8\sf
 <aes c'>8\sf <aes c'> <aes c'> <aes c'> <c' ees'> <c' ees'> <bes des'>2.:8\sf
 \stemUp aes'8\fp[ <ees aes>] <ees aes>[ <ees aes> <ees aes> <ees aes>]
 <ees aes>2.:8 <ees aes>2.:8 <ees aes>2.:8 <ees g>2.:8 <ees g>2.:8 <ees g>2.:8
 <ees g>8[ <ees g> <ees g> <ees g>] \stemDown ees'4\f\staccato
 \stemUp aes8\noBeam <ees aes>\p <ees aes>[ <ees aes> <ees aes> <ees aes>]
 <ees aes>2.:8 <ees aes>2.:8 <ees aes>8[ <ees aes> <ees aes> <ees aes>] ges[ ges]
 f2.:8 f2.:8 f2.:8 f8 f f f \stemDown f'4\f\staccato
 \stemUp bes8\staccato <f bes>\p <f bes>[ <f bes> <f bes> <f bes>]
 <f bes>2.:8 <f bes>2.:8 <f bes>2.:8 f2.:8 f2.:8 f2.:8 f8[ f f f] \stemDown f'4\f\staccato
 \stemUp <f bes>8\staccato <f bes>\p <f bes>[ <f bes> <f bes> <f bes>] <f bes>2.:8 <f bes>2.:8
 <f bes>8[ <f bes> <f bes> <f bes>] <f b>[ <f b>] <f b>2.:8 <f b>8[ <f b> <f b> <f b>]
 \spaceSpannerA
 g8\p\<([ aes] g[ aes g aes g aes]) g( aes g aes g aes\!) g\>( aes g aes g aes\!)
 g8\<( aes g aes g aes) g( aes g aes g aes) g( aes g aes g aes) g( aes g aes) g4\!
 R2. R2. R2. R2. r8 bes8\pp([ c' bes aes g]) r bes([ c' bes aes g])
 r8 \spaceSpannerB bes([\cresc c' bes aes g]) c'([ bes aes g c' bes]) aes([ g c' bes aes g]) c'([ bes aes g])
 \stemDown f'8\sfp[ f'] f' f' f' f' f' f' f' f' f' f' f' f' f' f' f' f' f' f' g'[ g' g' g']
 e'8\sfp[ e'] e' e' e' e' e' e' e' e' e' e' e' e' e' e' e' e' e' e' e'[ e' f' f']
 \stemUp \hairpinPastBarline f4\< ~ f4.\!\> f8\staccato[ f\staccato g\staccato\!] aes4( f) \hairpinPastBarline f4\< ~ f2.\!\> ~ f4\! r
 \hairpinPastBarline f4\< ~ f4.\> f8\staccato f\staccato g\staccato\! aes4 r8
 \stemDown f'8\staccato[ f'\staccato c'\staccato] c'4 r8 e'[ e' f'] f'[ c'] c'2
 c'8[ c'] c'2 c'8[ c'] c'2
 \stemUp <c bes>2.\cresc ~ <c bes>2. ~ <c bes>2. ~ <c bes>2.
 <c bes>2. ~ <c bes>2. ~ <c bes>2. ~ <c bes>2.
 <c bes>2. ~ <c bes>2. ~ <c bes>2. ~ <c bes>4 r4 c8\ff([ des] c[ des c des c des])
 c8( des c des c des) c( des c des c des) c( des c des c des) c( des c des c des)
 c8( des c des c des) c8([ des c des]) c4 f r
 f4\f ~ f4. f8\staccato[ f\staccato g\staccato] aes4( f)
 f4 ~ f4. f8\staccato[ f\staccato g\staccato] aes4( f)
 f4 ~ f4. f8\staccato[ f\staccato g\staccato] aes4( f) r4
 f4 r8 f8\staccato[ ees\staccato des\staccato] ges4 r8 ges[ f ees] aes4 r8 aes[ ges f]
 bes4 ges aes f r8 f[ ees des!] ges4 r8 ges[ f ees] aes4 r8 aes[ ges f]
 \stemDown des'4 des' c' \stemUp bes8[ g!] g[ g g g] \stemDown ees' ees' ees' ees' ees' ees'
 \stemUp aes2\sf( \stemDown c'8 ees') \stemUp f2\sf( aes8 des') ees2\sf( g8 bes)
 ees2\sf( aes8 c') c2\sf( ees8 ges) des2\sf( f8 aes) des2\sf( ees8 des) c4 r r
 f4\ff\staccato f4\staccato r8 f ges4 ges r R2. R2. f4\ff f4 r8 f ges4 ges r R2. R2.
 \stemDown des'4\ff des' r8 des' des'4 des' r
 \stemUp <d d'>2.-\hideP_\pCresc ~ <d d'>2. ~ <d d'>2. ~ <d d'>2. ~ <d d'>2. ~ <d d'>2.
 \tupletSpan 4
 \stemDown \tuplet 3/2 { ges'8\f[ ges' ges'] ges'[ ges' ges'] ges'[ ges' ges']
 \hideTupletNumber <aes ges'>8\ff[ <aes ges'> <aes ges'>] <aes ges'>[ <aes ges'> <aes ges'>]
 <aes ges'>8[ <aes ges'> <aes ges'>] f'[ f' f'] \stemUp f[ f f] f\sf[ f f]
 bes8[ bes bes] bes8[ bes bes] bes8\sf[ bes bes] ges[ ges ges] ges[ ges ges] ges\sf[ ges ges]
 <ees ges>8[ <ees ges> <ees ges>] <ees ges>[ <ees ges> <ees ges>] <ees ges>[ <ees ges> <ees ges>] }
 << { f8[ f] <f aes>8[ <f aes> <f aes> <f aes>] <f aes> <f aes> <f aes> <f aes> <f aes> <f aes>
 <f aes>2.:8 <f aes>2.:8 <f aes>2.:8 <f aes>2.:8
 <ges aes>2.:8 <ges aes>2.:8 <f aes>2.:8 <ges aes>2.:8 <f aes>2.:8 <ges aes>2.:8 <f aes>4 } \\
 { des8\f[ des] des[ des des des] des des des des des des des2.:8 des2.:8 des2.:8 des2.:8
 ees2.\sf ees2.\sf des2.\sf ees2.\sf des2.\sf ees2.\sf des4 } >> r4 r R2. R2. R2.
 \stemNeutral des'4\p\staccato des'4\staccato r des'4\staccato des'4\staccato r ees'4 ees' r c' c' r R2. R2. R2. R2.
 \stemUp bes4\p\staccato bes\staccato r bes4 bes r bes bes r g! g r
 <f aes>4\ff <f aes> r8 <f aes> <f aes>4 <f aes> r8 <f aes> g4 g r r4 r r8 r^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \key f \major \time 4/4
 \stemDown e'16\pp e' e' e' e' e' e' e' e'2:16 e'2:16 e'2:16 aes'2:16 aes'2:16 aes'2:16 aes'2:16
 g'16_\txtCresc g' g' g' e' e' e' e' g' g' g' g' e' e' e' e'
 a'!16 a' a' a' f' f' f' f' a' a' a' a' f' f' f' f'
 \stemUp c'8( b) c'\staccato c'\staccato c'( b) c'\staccato c'\staccato
 \stemDown g'16 c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c''
 c''2:16\ff c''2:16 c''2:16\sf c''2:16 c''2:16\sf c''2:16\sf c''2:16\sf c''2:16\sf
 c''8 g'16[ g'] f' f' e' e' f' f' e' e' d' d' cis' cis'
 d'16 d' c'! c' \stemUp bes bes a a bes bes g g \stemDown c' c' c' c'
 f'16\sf c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c''
 c''2:16\sf c''2:16 c''2:16\sf c''2:16\sf c''2:16\sf c''2:16\sf
 c''8 g'16[ g'] f' f' e' e' f' f' e' e' d' d' cis' cis'
 d'16 d' c'! c' \stemUp bes bes a a bes bes g g \stemDown c' c' c' c'
 f'4\sf( ees' d' fis') g'\sf( des' c' e'!)
 f'!4\sf( ees' d' fis') g'\sf( des' c' e'!)
 f'!4\sf( ees' d' fis') g'\sf( des' c' e'!)
 \stemUp f4\sf( ees d fis) g\sf( des c <c c'>)
 a8\ff a bes c' d' c' bes a bes\sf c des bes e g g c'
 f2_\txtMarcato e f g gis4 a2. ~ a1
 \tupletSpan 4
 \tuplet 3/2 { <g! bes>8[ <g e'> <g e'>] <g e'>[ <g e'> <g e'>]
 <g e'>8[ <g e'> <g e'>] <g e'>[ <g e'> <g e'>]
 <g e'>8[ <g e'> <g e'>] <g e'>[ <g e'> <g e'>] 
 <g e'>8[ <g e'> <g e'>] <g e'>[ <g e'> <g e'>] }
 f4. f8 e4. e8 f4. f8 g4. g8 gis4 a2. ~ a1
 \tuplet 3/2 { <g! e'>8[ <g e'> <g e'>] <g e'>[ <g e'> <g e'>]
 <g e'>8[ <g e'> <g e'>] <g e'>[ <g e'> <g e'>]
 <g e'>8[ <g e'> <g e'>] <g e'>[ <g e'> <g e'>] 
 <g e'>8[ <g e'> <g e'>] <g e'>[ <g e'> <g e'>] }
 \stemDown <a f'>2.\sf c'4 f'4\staccato c'\staccato \stemUp a\staccato \stemUp c'\staccato
 \stemDown f'2.\sf c'4 f'4\staccato c'\staccato \stemUp a\staccato \stemUp c'\staccato
 \stemDown f'2\staccato a'2\staccato c''2.\sf c'4 f'2\staccato a'2\staccato
 c''2.\sf c'4 f'2\staccato a'2\staccato c''2.\sf c'4 c''2.\sf c'4 c''2.\sf c'4
 c''16\ff c'' f' f' g' g' a' a' bes' bes' a' a' bes' bes' c'' c''
 d''16 d'' c'' c'' d'' d'' e'' e'' f'' f'' e'' e'' f'' f'' e'' e''
 f''4 r r2 \stemUp <c c' a'>4 r r2 <c c' a'>4 r r2
 <c a f'>4 r <c a f'>4 r <c a f'>4 r r2 \bar "|."
}