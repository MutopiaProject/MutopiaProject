\version "2.18.2"

\include "defs.ily"

 clarinetti =  {
 \set Staff.instrumentName = \markup { \center-column { "Clarinetti" "in B" } }
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key g \minor
 \time 3/2
 \moreAccidentalPadding
 <g' g''>1.\fermata_\forteSforzato-\hideF
 R1. R1. R1. R1. r4^\p bes'4( a' e''2) e''4 e''2( d''4) r4 r2 R1.
 <g' g''>1.\ff
 <g' bes'>2\staccato  <g' bes'>2\staccato r4 r8  <g' bes'>8\staccato
 <a' c''>2\staccato  <bes' d''>\staccato r2
 << { \posDynamicTxtB g''4\rest^\p \insideSlur \shapeSlurC ees''!( d'' c''' bes'' aes'' g'' f'' ees''! d'' ees'' c'')
 bes'2( aes'2. f'4) ees'4 } \\
 { e'2\rest e'2\rest r4 aes'4\p( \hairpinNarrow g')^\< d'' \hairpinNarrow bes'\!^\> aes' g' f'\! g'2( f' d') ees'4 } >>
 r4 r2 r2 
 << { \posDynamicTxtB g''4\rest^\pp
 g''4( aes''8 g'' f'' ees'') ees''4 r4 r2 aes'2 aes' r2 aes'2 aes'
 r2 ees' c'' } \\ { R1. R1. R1. R1. } >>
 r2 <ees' c''>2 <ees' c''>2 R1. r4
 \once \stemUp <a' c''>4_\markup { \italic "espressivo" }_( <bes' d''>8 <a' c''> <g' bes'> <fis' a'>)
 <fis' a'>4 r4 R1. R1. \bar "||"

 \time 3/4 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 \posDynamicTxtA r4\p \hairpinPastBarline <d' d''>4-\hideP^(\< <ees' c''>2.\!\> <d' bes'>4)\! r4 r4 R2.
 << { bes'4\p d''4\rest d''\rest }\\{ R2. }>> R2. R2. R2. R2.
 r4 <a' c''>\cresc r r <a' c''> r r <a' c''> r r <a' c''> r r <a' c''> r
 r4 <a' c''> r r <a' c''> r r <a' c''> r r <a' c''> r r <a' c''> r r <a' c''> r r4 <a' c''>
 \doubleSlursOn <bes' d''>4\ff( <bes' g''>2.) ~  \doubleSlursOff <bes' g''> ~ <bes' g''>4 <bes' d''> <bes' d''> <a' c''> r
 \doubleSlursOn <c'' fis''>4\ff( <a' c''>2.) ~ \doubleSlursOff <a' c''>2. ~ <a' c''>4 <a' c''> <a' c''>
 <g' bes'>4 r r <a' c''> r r <bes' d''> r r <c'' ees''> <c'' ees''> <c'' d''>
 <bes' d''>4 r r <a' c''> r r <bes' d''> r <bes' d''> <bes' ees''> <bes' ees''> <bes' e''>
 <a' c''>2.\sf <bes' d''>2.\sf <bes' c''>2.\sf <a' c''>2.\sf
 <a' c''>2.\sf <bes' d''>2.\sf <bes' c''>2.\sf <a' c''>4 r r R2. R2.
 << { f''4-\hideP( c'' ees'' d''2.) } \\ { a'2.-\hideP_\pDolce( bes'2.) } >>
 R2. R2.
 << { f''4( c'' ees'' d''2.) } \\ { a'2._\pDolce( bes'2.) } >>
 R2. R2.
 <b' b''>2._\pCresc ~ <b' b''>2. ~
 <b' b''>2. ~ <b' b''>2. ~ <b' b''>2. ~ <b' b''>2.
 <c'' c'''>2.\f <ees''! c'''>2.\ff <d'' d'''>4 <d'' f''>
 \slurDown <d'' bes''>4\sf( ~ <g'' bes''>4) <ees'' g''> <ees'' g''>\sf ~
 <ees'' g''>4 <c'' ees''> <c'' ees''>\sf ~ <c'' ees''> <c'' ees''> <a' c''>
 <d' bes'>4\f r r R2. <f' bes'>4 r r R2. <bes' d''>4 r r r <d'' f''> <d'' f''>
 << { f''2 a'4\staccato f''2 a'4\staccato f''2 bes'4\staccato
 f''2 a'4\staccato f''2 bes'4\staccato f''2 } \\
 { f''2\sf a'4 f''2\sf a'4 f''2\sf bes'4 f''2\sf a'4 f''2\sf bes'4 f''2\sf } >>
 <a' a'' >4\staccato <bes' bes''>4\staccato r r
 << { f''4\rest f''\rest \shapeSlurA f''_\dolce( \noBreak g'' f'' d'' \noBreak bes')
 d''\rest d''\rest } \\ { R2. R2. R2. } >> R2. R2.
 << { d''4\rest d''\rest c''4_\dolce(
 ees'' c'') c''\staccato d''\staccato } \\ { R2. e'4\rest e'\rest a'\f bes' } >> r4 r
 << { f''4\rest f''\rest f''_\dolce( g'' f'' d'' bes')
 d''\rest d''\rest } \\ { R2. R2. R2. } >> R2. R2.
 r4 r \slurUp <b' d''>_\dolce( <d'' f''>
 <b' d''>) <b' d''>4\f\staccato <c'' ees''>\staccato r r
 << { g''4\rest g''\rest 
 \shapeSlurB g''_\dolce( aes'' g'' ees'' c'')
 d''\rest d''\rest } \\ { R2. R2. R2. } >> R2. R2.
 r4 r \slurUp <b' d''>_\dolce( <d'' f''> <b' d''>)
 <b b'>4\f\staccato <c' c''> r r
 << { g''4\rest g''\rest \shapeSlurA
 g''_\dolce( aes'' g'' ees'' c'')
 d''\rest d''\rest } \\ { R2. R2. R2. } >> r4 r <cis'' e''>\p( <e'' g''> <cis'' e''>) r
 R2. R2. R2. R2. R2. R2. R2. <g' cis''>2.\pp <g' cis''>2. <g' cis''>2. ~ <g' cis''>2.
 <a' c''!>2.\pp\staccato <a' c''>2.\staccato
 <a' c''>2._\txtCresc ~ <a' c''>2. ~ <a' c''>2. ~ <a' c''>2 <bes' d''>4\sfp
 <bes' d''>4 <bes' d''>4 r r <bes' d''>4 r r <g' bes'>4 r r <a' c''>4 r r <a' c''>4 r
 r4 <a' c''>4 r r <a' c''>4 r r <bes' d''> r R2.
 r4 r \spaceSpannerC
 \hairpinPastBarline <bes d'>4\<_( <c' ees'>2.\!\> <bes d'>4\!) r4 r R2. <<{ bes'4\p d''\rest d''\rest }\\{ R2. }>> R2. R2. R2. R2.
 r4 <a' c''>\cresc r r <a' c''> r r <a' c''> r r <a' c''> r r <a' c''> r r <a' c''> r
 r <a' c''> r r <a' c''> r r <a' c''> r r <a' c''> r r <a' c''> r r <a' c''>
 \doubleSlursOn <bes' d''>4\ff( <bes' g''>2.) ~ \doubleSlursOff <bes' g''>2. ~ <bes' g''>4 <bes' d''> <bes' d''>
 <a' d''>4 r \doubleSlursOn <c'' fis''>4\ff( <a' c''>2.) ~ \doubleSlursOff <a' c''>2. ~ <a' c''>4 <a' c''> <a' c''>
 <g' bes'>4 r r R2. r4 r
 << { g''4( f''2 ees''4) d'' } \\ { bes'4\f( c''2.) bes'4 } >> r4 r
 R2. r4 r <bes' ees''>4\ff
 <g' ees''>4 r r <aes' ees''> r r <bes' ees''> r r <aes' c''> <c'' ees''!> <aes' d''>
 <g' ees''> r r <aes' ees''> r r <bes' ees''> r r <c'' f''> <c'' f''> <d'' f''>
 <c'' f''>2. ~ <c'' f''>2.
 <d'' f''>2.\sf <ees'' g''>2.\sf <ees'' f''>2.\sf <d'' f''>2.\sf
 <d'' f''>2.\sf <bes' ees''>2.\sf <c'' ees''>2.\sf <bes' d''>4 r r
 R2. R2. << { \shapeSlurB bes''4-\hideP( f'' aes'') g''2. }
 \\ { f'2._\pDolce-\hideP( g'2.) } >>
 R2. R2. << { \shapeSlurB bes''4( f'' aes'') g''2. }
 \\ { f'2._\pDolce( g'2.) } >>
 R2. R2. R2. R2. R2. R2. R2. <c'' c'''>2._\txtCresc
 <c'' c'''>2.\f <d'' d'''>2.\ff <ees'' ees'''>4 <g' ees''> \doubleSlursOn <g' ees''>\sf( <c'' ees''>)
 <aes' c''>4 <aes' c''>\sf ~ <aes' c''> <aes' c''> <aes' c''>\sf( <aes' d''>) \doubleSlursOff <aes' d''> <aes' d''>
 <g' ees''>4\f r r R2. <g' ees''>4 r r R2. <g' ees''>4 r r r <ees'' g''> <ees'' g''>
 <bes' bes''>2\sf <d' d''>4\staccato <bes' bes''>2\sf <d' d''>4\staccato
 <bes' bes''>2\sf <ees' ees''>4\staccato <bes' bes''>2\sf <d' d''>4\staccato
 <bes' bes''>2\sf <ees' ees''>4\staccato <bes' bes''>2\sf <d' d''>4\staccato
 <g' bes'>4\ff\staccato <g' bes'>4\staccato r8 <g' bes'>8
 <g' bes'>4 <g' bes'> r8 << { g'8 } \\ { g'8 } >>
 <f' aes'>4 <f' aes'> r8 <f' aes'>8 <f' aes'>4 <f' aes'> r R2. R2. R2. R2.
 <ees' g'>4\ff <ees' g'> r8 <ees' g'> <ees' g'>4 <ees' g'> r8 <ees' g'>
 <d' g'>4 <d' g'> r8 <d' g'> <d' g'>4 <d' g'> r R2. R2. R2. R2. R2. R2. R2. r4 r r8 r^\fermata
 g'2.\ppp ~ g'2. ~ <g' bes'>2.^\ppp ~ <g' bes'>2. ~ <g' a'>2. ~ <g' a'>2.
 <fis' a'>2. ~ <fis' a'>2.^\fermata \bar "||"

 \key g \major \time 4/4
 <fis' a'>1\pp <fis' a'> <g' bes'>1 <g' bes'>1
 <a' c''>2_\txtCresc <a' c''>2 <g' b'!> <g' b'> <fis' a'> <g' b'>
 <a' c''>8( <gis' b'>) <a' c''>\staccato <b' d''>\staccato
 <c'' e''>\staccato <d'' fis''>\staccato <e'' g''!>\staccato <fis'' a''>\staccato
 <g'' b''>2\ff ~ <g'' b''>8( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>2\sf ~ <g'' b''>8( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>8\sf( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>8\sf( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>8\sf( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>8\sf( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 << { b''8 a'' g'' fis'' g'' fis'' e'' dis'' e'' d''! c'' b' c'' a' d'' d'' } \\
 { g''8 a' g' fis' g' fis' e' dis'' e'' d''! c'' b' c'' a' d'' d'' } >>
 <g'' b''>2\sf ~ <g'' b''>8( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>2\sf ~ <g'' b''>8( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>8\sf( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>8\sf( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>8\sf( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 <g'' b''>8\sf( <fis'' a''>) <d'' g''>\staccato <fis'' a''>\staccato
 << { b''8 a'' g'' fis'' g'' fis'' e'' dis'' e'' d''! c'' b' c'' a' d'' d'' g'4 } \\
 { g''8 a' g' fis' g' fis' e' dis'' e'' d''! c'' b' c'' a' d'' d'' g'4 } >> r4 r2 R1 R1 R1 R1 R1
 r8-\hideF b'16(\cresc^\aDue c'') d''8\staccato r r
 \tupletSpan 4 \tuplet 3/2 { b'16[ c'' d''] }
 e''8\staccato r
 r8 a'16([ b']) c''8\staccato r r \tuplet 3/2 { a'16[ b' c''] } d''8[ d'']
 <g' g''>4\ff( <f' f''> <e' e''> <gis' gis''>) <a' a''>\sf( <ees' ees''> <d' d''> <fis'! fis''!>)
 << { g'2 a' b' c'' cis''4 d''2. ~ d''1 } \\ { g'2 a' b' c'' cis''4 d''2. ~ d''1 } >>
 <a' fis''>4 <a' fis''> <a' fis''> <a' fis''> <a' fis''> <a' fis''> <a' fis''> <a' fis''>
 << { g'4. g'8 a'4. a'8 b'4. b'8 c''4. c''8 cis''4 d''2. ~ d''1 } \\
 { g'4. g'8 a'4. a'8 b'4. b'8 c''4. c''8 cis''4 d''2. ~ d''1 } >>
 <a' fis''>4 <a' fis''> <a' fis''> <a' fis''> <a' fis''> <a' fis''> <a' fis''> <a' fis''>
 <g' b'>2 <g' b'>2\sf ~ <g' b'>1 ~ <g' b'>2 <b' g''>2\sf ~ <b' g''>1 ~ <b' g''>2 <g' b'>2
 <fis' a'>2.\sf <fis' a'>4 <g' b'>2 <g' b'> <fis' a'>2.\sf <fis' a'>4 <g' b'>2 <g' b'>
 <fis' a'>2.\sf <fis' a'>4 <fis' a'>2.\sf <fis' a'>4 <fis' a'>2.\sf <fis' a'>4
 <d'' d'''>1\ff ~ <d'' d'''>1 <g'' b''>4 r r2 <b' g''>4 r r2 <b' g''>4 r r2
 <b' g''>4 r <b' g''> r <b' g''> r r2 \bar "|."
}